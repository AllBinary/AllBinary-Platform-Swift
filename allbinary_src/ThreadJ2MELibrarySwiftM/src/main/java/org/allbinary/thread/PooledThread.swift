/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2025 AllBinary 
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
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.string.CommonStrings

open class PooledThread: Thread {
    fileprivate var logUtil: LogUtil! = nil
    fileprivate var commonStrings: CommonStrings! = nil
    fileprivate var threadObjectUtil: ThreadObjectUtil! = nil
    fileprivate var threadPool: ThreadPool! = nil
    fileprivate var INTERRUPT_EXCEPTION: String! = nil

    // Each class has its own field initializers
    private func initFields() {
    self.logUtil = LogUtil.getInstance()
    self.commonStrings = CommonStrings.getInstance()
    self.threadObjectUtil = ThreadObjectUtil.getInstance()
    
    self.INTERRUPT_EXCEPTION = "Exit InterruptedException"
    }
    

    public init(_ threadPool: ThreadPool!) {
        super.init(threadPool.createName())
        self.initFields()
        self.logUtil.putF(self.commonStrings.CONSTRUCTOR, self, self.commonStrings.CONSTRUCTOR)
        self.threadPool = threadPool
    }
    

    open override func run() {
        self.threadPool.threadStarted()
        while (true) {
            var task2: Runnable! = self.threadObjectUtil.NULL_PRIORITY_RUNNABLE
            do {
                task2 = self.threadPool.getTask()
                self.threadPool.runningTask = true
                self.threadPool.startTask(task2)
            } /* catch (InterruptedException ex): a thrown Java exception stops the program */
            if (task2 === self.threadObjectUtil.NULL_PRIORITY_RUNNABLE) {
                break
            }
            do {
                task2.run()
                self.threadPool.completedTask(task2)
                self.threadPool.runningTask = false
            } /* catch (Exception e): a thrown Java exception stops the program */
        }
        self.threadPool.threadStopped()
    }
}

