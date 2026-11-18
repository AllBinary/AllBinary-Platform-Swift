/*
 *
 * AllBinary Open License Version 1
 * Copyright (c) 2011 AllBinary
 * 
 * By agreeing to this license you and any business entity you represent are
 * legally bound to the AllBinary Open License Version 1 legal agreement.
 * 
 * You may obtain the AllBinary Open License Version 1 legal agreement from
 * AllBinary or the root directory of AllBinary's AllBinary Platform repository.
 * 
 * Created By: Travis Berthelot
 *  
 */
// Generated Code Do Not Modify
// package org.allbinary.canvas

import J2SEForSwiftLibrary
// import javax.microedition.lcdui.CommandListener
// import org.allbinary.TsUtil
// import org.allbinary.game.displayable.canvas.NullWaitGameRunnable
// import org.allbinary.graphics.displayable.MyCanvas
// import org.allbinary.logic.ABSystemWrapper
// import org.allbinary.logic.NullUtil
// import org.allbinary.logic.StdUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.string.CommonLabels
// import org.allbinary.string.CommonStrings
// import org.allbinary.thread.NullThread
// import org.allbinary.thread.RunnableInterface
// import org.allbinary.thread.ThreadObjectUtil
// import org.allbinary.time.TimeDelayHelper
// import org.allbinary.util.BasicArrayList

open class RunnableCanvas: MyCanvas, RunnableInterface {
    public var nullUtil: NullUtil! = nil
    public var stdUtil: StdUtil! = nil
    public var systemWrapper: ABSystemWrapper! = nil
    public var tsUtil: TsUtil! = nil
    fileprivate var thread: Thread! = nil
    fileprivate var currentThread: Thread! = nil
    fileprivate var running: Bool = false
    public var loopTimeHelper: TimeDelayHelper! = nil
    public var runnableCanvasRefreshHelper: Processor! = nil
    public var commonLabels: CommonLabels! = nil
    public var threadObjectUtil: ThreadObjectUtil! = nil
    public var SET_RUNNING: String! = nil
    fileprivate var IS_RUNNING: String! = nil
    fileprivate var THREAD: String! = nil
    fileprivate var NOT_EQUAL: String! = nil
    fileprivate var PAUSE_SLEEP: String! = nil
    fileprivate var START_PAUSE: String! = nil
    fileprivate var END_PAUSE: String! = nil
    fileprivate var PROCESS_LOOP_SLEEP: String! = nil
    fileprivate var pauseWait: Int64 = 0
    fileprivate var notified: Bool = false

    // Each class has its own field initializers
    private func initFields() {
    self.nullUtil = NullUtil.getInstance()
    self.stdUtil = StdUtil.getInstance()
    self.systemWrapper = ABSystemWrapper.getInstance()
    self.tsUtil = TsUtil.getInstance()
    self.thread = NullThread.NULL_THREAD
    self.currentThread = NullThread.NULL_THREAD
    self.running = false
    self.loopTimeHelper = TimeDelayHelper(NullWaitGameRunnable.getInstance().WAIT)
    self.runnableCanvasRefreshHelper = Processor.getInstance()
    self.commonLabels = CommonLabels.getInstance()
    self.threadObjectUtil = ThreadObjectUtil.getInstance()
    self.SET_RUNNING = "setRunning"
    self.IS_RUNNING = "isRunning"
    self.THREAD = "Thread: "
    self.NOT_EQUAL = " != "
    self.PAUSE_SLEEP = "pause sleep"
    self.START_PAUSE = "start pause - game thread sleep at: "
    self.END_PAUSE = "end pause - game thread sleep at: "
    self.PROCESS_LOOP_SLEEP = "processLoopSleep"
    self.pauseWait = 0
    self.notified = false
    }
    

    public init(_ commandListener: CommandListener!, _ childNameList: BasicArrayList!, _ hasParam: Bool) {
        super.init(CommonStrings.getInstance().UNKNOWN, childNameList)
        self.initFields()
        self.logUtil.putF(StringMaker().append("RunnableCanvas delay: ").appendint(self.loopTimeHelper.delay).toString(), self, self.commonStrings.CONSTRUCTOR)
        self.runnableCanvasRefreshHelper = RunnableCanvasRefreshHelper(self)
        if (commandListener != nil) {
            self.initCommands(commandListener)
        } else if (hasParam) {
            self.logUtil.putF("commandListener was null", self, "initCommands")
        }
    }
    

    open func initCommands(_ cmdListener: CommandListener!) {
        self.logUtil.putF(self.commonStrings.NOT_IMPLEMENTED, self, "initCommands")
    }
    

    @discardableResult open func isMainCanvas() -> Bool {
        if (self.getCustomCommandListener() != nil) {
            return true
        } else {
            return false
        }
    }
    

    open override func setThread(_ thread: Thread!) {
        self.thread = thread
    }
    

    open override func setRunning(_ running: Bool) {
        self.running = running
        if (!self.running) {
            self.thread = NullThread.NULL_THREAD
            do {
                self.threadObjectUtil.notifyObject(self)
            }
        }
        self.logUtil.putF(StringMaker().append(self.IS_RUNNING).appendboolean(self.running).toString(), self, self.SET_RUNNING)
    }
    

    @discardableResult open override func isRunning() -> Bool {
        if (self.thread === self.currentThread) {
            return self.running
        } else {
            let stringBuffer: StringMaker! = StringMaker()
            stringBuffer.append(self.THREAD)
            if (self.thread != nil) {
                stringBuffer.append(self.thread.toString())
            }
            stringBuffer.append(self.NOT_EQUAL)
            if (self.currentThread != nil) {
                stringBuffer.append(StringUtil.getInstance().toString(self.currentThread))
            }
            self.logUtil.putF(stringBuffer.toString(), self, self.IS_RUNNING)
            return false
        }
    }
    

    @discardableResult open func getLoopTimeHelperP() -> TimeDelayHelper! {
        return self.loopTimeHelper
    }
    

    open func setWait(_ wait: Int32) {
        self.loopTimeHelper.delay = wait
        self.pauseWait = Int64(truncatingIfNeeded: wait) &* 3
        self.logUtil.putF(StringMaker().append("setWait - delay: ").appendint(self.loopTimeHelper.delay).toString(), self, self.commonStrings.CONSTRUCTOR)
    }
    

    @discardableResult open func getWait() -> Int32 {
        return self.loopTimeHelper.delay
    }
    

    open func setCurrentThread() {
        self.currentThread = Thread.currentThread()
    }
    

    open func setCurrentThreadFake() {
        self.currentThread = self.thread
    }
    

    open override func showNotify() {
        do {
            self.stopWaiting()
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
    

    fileprivate func stopWaiting() {
        self.notified = true
        do {
            self.threadObjectUtil.notifyObject(self)
        }
        self.repaint()
    }
    

    open func waitOnNotify(_ wait: Int64) {
        if (!self.notified) {
            if (wait > 0) {
                self.threadObjectUtil.waitObjectFor(self, wait)
            } else {
                self.threadObjectUtil.waitObject(self)
            }
        }
    }
    

    open func processSleep() {
        Thread.sleep(self.pauseWait)
    }
    

    @discardableResult open func isPausable() -> Bool {
        return false
    }
    

    open func processGameSleep(_ sleep: Int64) {
        Thread.sleep(sleep)
    }
    

    open func processLoopSleep() {
        self.runnableCanvasRefreshHelper.process()
        if (self.isPaused()) {
            let stringMaker: StringMaker! = StringMaker()
            if (self.isRunning() && !self.isSingleThread()) {
                stringMaker.delete(0, stringMaker.length())
                let currentTimeMillis: Int64 = self.systemWrapper.currentTimeMillis()
                self.logUtil.putF(stringMaker.append(self.START_PAUSE).appendlong(currentTimeMillis).append(self.PAUSE_SLEEP).appendlong(self.pauseWait).toString(), self, self.PROCESS_LOOP_SLEEP)
                while (self.isPaused() && self.isRunning() && !self.isSingleThread()) {
                    self.processSleep()
                    if (!self.isPausable()) {
                        stringMaker.delete(0, stringMaker.length())
                        self.logUtil.putF(stringMaker.append(self.END_PAUSE).appendlong(currentTimeMillis).toString(), self, self.PROCESS_LOOP_SLEEP)
                        return
                    }
                }
            }
        }
        var elapsedTime: Int64 = self.loopTimeHelper.getElapsedTNT()
        let wait: Int64 = Int64(truncatingIfNeeded: self.loopTimeHelper.delay)
        if (elapsedTime > wait) {
            elapsedTime = wait
        } else {
            self.processGameSleep(wait &- elapsedTime)
        }
    }
    

    @discardableResult open func isSingleThread() -> Bool {
        return false
    }
    

    open override func run() {
        self.setCurrentThread()
    }
    

    open func end2() {
    }
    

    @discardableResult open func getType() -> Int32 {
        return -1
    }
}

