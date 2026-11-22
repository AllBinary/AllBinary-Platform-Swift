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
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.string.CommonStrings
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListD
// import org.allbinary.util.BasicArrayListUtil

open class ThreadPool: JObject {
    fileprivate static let ROOT_NAME: String! = "-PooledThread-"
    public static let NORMAL_PRIORITY: Int32 = Thread.NORM_PRIORITY
    public var logUtil: LogUtil! = nil
    public var commonStrings: CommonStrings! = nil
    public var NULL_RUNNABLE: NullRunnable! = nil
    public var threadPoolStrings: ThreadPoolStrings! = nil
    public var threadObjectUtil: ThreadObjectUtil! = nil
    fileprivate var poolName: String! = nil
    fileprivate var priority: Int32 = 0
    fileprivate var isAlive: Bool = false
    fileprivate var taskQueue: BasicArrayList! = nil
    fileprivate var threadID: Int32 = 0
    fileprivate var numThreads: Int32 = 0
    public var runningTask: Bool = false

    private func initFields() {
    self.logUtil = LogUtil.getInstance()
    self.commonStrings = CommonStrings.getInstance()
    self.NULL_RUNNABLE = NullRunnable.getInstance()
    self.threadPoolStrings = ThreadPoolStrings.getInstance()
    self.threadObjectUtil = ThreadObjectUtil.getInstance()
    
    
    self.isAlive = false
    self.taskQueue = BasicArrayListUtil.getInstance().getImmutableInstance()
    self.threadID = 0
    
    self.runningTask = false
    }
    

    public init(_ poolName: String!, _ numThreads: Int32, _ priority: Int32) {
        super.init()
        self.initFields()
        self.poolName = poolName
        self.priority = priority
        self.numThreads = numThreads
    }
    

    open func `init`() {
        if (!self.isAlive) {
            self.isAlive = true
            self.taskQueue = BasicArrayListD()
            var pooledThread: PooledThread! = nil
            do {
                var i: Int32 = 0
                while (i < self.numThreads) {
                    defer { i &+= 1 }
                pooledThread = PooledThread(self)
                pooledThread.setPriority(self.priority)
                pooledThread.start()
                }
            }
        }
    }
    

    open func runAPriorityTask() {
        jThrow(JException("RuntimeException", ""))
    }
    

    open func runTaskWithPriority(_ task: PriorityRunnable!) {
        do {
            if (!self.isAlive) {
                self.`init`()
            }
            if (task != nil) {
                let size: Int32 = self.taskQueue.size()
                var runnable: PriorityRunnable! = nil
                var lowerPriorityRunnable: PriorityRunnable! = self.threadObjectUtil.NULL_PRIORITY_RUNNABLE
                do {
                    var index: Int32 = 0
                    while (index < size) {
                        defer { index &+= 1 }
                    runnable = (self.taskQueue.get(index) as Any as? PriorityRunnable)
                    if (runnable.getPriority() > task.getPriority()) {
                        lowerPriorityRunnable = runnable
                        break
                    }
                    }
                }
                if (lowerPriorityRunnable === self.threadObjectUtil.NULL_PRIORITY_RUNNABLE) {
                    self.taskQueue.add((task as? JObject))
                } else {
                    let index: Int32 = self.taskQueue.indexOf((lowerPriorityRunnable as? JObject))
                    self.taskQueue.addAt(index, (task as? JObject))
                }
                self.notify()
            }
        }
    }
    

    open func runTask(_ task: Runnable!) {
        do {
            if (!self.isAlive) {
                self.`init`()
            }
            if (task != nil) {
                self.taskQueue.add((task as? JObject))
                self.notify()
            }
        }
    }
    

    @discardableResult open func getTask() -> Runnable! {
        do {
            while (self.taskQueue.size() == 0) {
                if (!self.isAlive) {
                    return self.NULL_RUNNABLE
                }
                self.wait()
            }
            let runnable: Runnable! = (self.taskQueue.removeAt(0) as! Runnable)
            return runnable
        }
    }
    

    open func clear() {
        do {
            if (self.isAlive) {
                self.taskQueue.clear()
            }
        }
    }
    

    open func close() {
        do {
            if (self.isAlive) {
                self.isAlive = false
                self.taskQueue.clear()
            }
        }
    }
    

    open func join() {
        do {
            self.isAlive = false
            self.taskQueue.clear()
            self.notifyAll()
        }
    }
    

    @discardableResult open func isBusy() -> Bool {
        if (!self.isAlive) {
            return false
        }
        if (self.taskQueue.size() > 0) {
            return true
        }
        if (self.runningTask) {
            return true
        }
        return false
    }
    

    open func threadStarted() {
    }
    

    open func threadStopped() {
        if (self.numThreads == 1) {
            self.isAlive = false
            self.taskQueue.clear()
        }
    }
    

    open func startTask(_ task: Runnable!) {
    }
    

    open func completedTask(_ task: Runnable!) {
    }
    

    @discardableResult open func createName() -> String! {
        return StringMaker().append(self.poolName).append(ThreadPool.ROOT_NAME).appendint(jPostIncrement(&self.threadID)).toString()
    }
}

