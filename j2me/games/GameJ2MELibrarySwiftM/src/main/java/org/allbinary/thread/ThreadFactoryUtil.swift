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
// package org.allbinary.thread

import J2SEForSwiftLibrary
// import org.allbinary.J2MEUtil
// import org.allbinary.canvas.RunnableCanvas
// import org.allbinary.game.displayable.canvas.AllBinaryGameCanvas
// import org.allbinary.game.displayable.canvas.DemoCanvas
// import org.allbinary.game.displayable.canvas.GameCanvasRunnableInterface
// import org.allbinary.game.displayable.canvas.RunnableCanvasSingleThreadStartRunnable
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.communication.log.PreLogUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.string.CommonStrings

open class ThreadFactoryUtil: JObject {
    fileprivate static let instance: ThreadFactoryUtil! = ThreadFactoryUtil()
    public var logUtil: LogUtil! = nil

    private func initFields() {
    self.logUtil = LogUtil.getInstance()
    }

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult open class func getInstance() -> ThreadFactoryUtil! {
        return ThreadFactoryUtil.instance
    }
    

    @discardableResult open func getInstanceGameCanvasRunnable(_ runnable: GameCanvasRunnableInterface!) -> Thread! {
        return self.getInstanceType(runnable, runnable.getType())
    }
    

    @discardableResult open func getInstanceForRunnable(_ runnable: ABRunnable!) -> Thread! {
        return self.getInstanceType(runnable, runnable.getType())
    }
    

    @discardableResult fileprivate func getInstanceType(_ runnable: Runnable!, _ type: Int32) -> Thread! {
        let commonStrings: CommonStrings! = CommonStrings.getInstance()
        if (J2MEUtil.isHTML()) {
            if (type == DemoCanvas.TYPE || type == AllBinaryGameCanvas.TYPE) {
                let demoGameSingleThreadStartRunnable: RunnableCanvasSingleThreadStartRunnable! = RunnableCanvasSingleThreadStartRunnable((runnable as! RunnableCanvas))
                PreLogUtil.put(StringMaker().append("Using Pseudo Thread for DemoCanvas/AllBinaryGameCanvas under PlayN/HTML5: ").append(StringUtil.getInstance().toString((runnable as? JObject))).toString(), self, commonStrings.CONSTRUCTOR)
                let primaryThreadPool: ThreadPool! = PrimaryThreadPool.getInstance()
                primaryThreadPool.runTask(demoGameSingleThreadStartRunnable)
            } else {
                PreLogUtil.put(StringMaker().append("Using Pseudo Thread for Runnable under PlayN/HTML5: ").append(StringUtil.getInstance().toString((runnable as? JObject))).toString(), self, commonStrings.CONSTRUCTOR)
                let primaryThreadPool: ThreadPool! = PrimaryThreadPool.getInstance()
                primaryThreadPool.runTask(runnable)
            }
        }
        let thread: Thread! = Thread(runnable, jstr(runnable))
        self.logUtil.putF(thread.toString(), self, commonStrings.CONSTRUCTOR)
        return thread
    }
    

    open func start(_ thread: Thread!) {
        thread.start()
    }
}

