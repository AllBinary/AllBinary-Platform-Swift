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

//This is mainly for network communications.
open class PathFindingThreadPool: ThreadPool {
    fileprivate static let instance: ThreadPool! = PathFindingThreadPool("PathFinding", 1, 1)
    

    @discardableResult open class func getInstance() -> ThreadPool! {
        return PathFindingThreadPool.instance
    }
    

    public override init(_ poolName: String!, _ numThreads: Int32, _ priority: Int32) {
        super.init(poolName, numThreads, ThreadPool.NORMAL_PRIORITY)
    }
    

    open override func runTaskWithPriority(_ task: PriorityRunnable!) {
        super.runTaskWithPriority(task)
    }
    

    open override func runTask(_ task: Runnable!) {
        super.runTask(task)
    }
    

    open override func startTask(_ task: Runnable!) {
    }
    

    open override func completedTask(_ task: Runnable!) {
    }
}

