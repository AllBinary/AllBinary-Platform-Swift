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
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.string.StringUtil

open class PrimaryThreadPool: ThreadPool {
    fileprivate static let THREAD_POOL: ThreadPool! = ThreadPool("Primary", 1, ThreadPool.NORMAL_PRIORITY)
    

    @discardableResult public static func getInstance() -> ThreadPool! {
        return PrimaryThreadPool.THREAD_POOL
    }
    

    public override init(_ poolName: String!, _ numThreads: Int32, _ priority: Int32) {
        super.init(poolName, numThreads, priority)
    }
    

    open override func runTask(_ task: Runnable!) {
        self.logUtil.putF(StringMaker().append(StringUtil.getInstance().toString((task as? JObject))).appendlong(JSystem.currentTimeMillis()).toString(), self, self.threadPoolStrings.ADD_TASK)
        super.runTask(task)
    }
    

    open override func startTask(_ task: Runnable!) {
        self.logUtil.putF(StringMaker().append(self.threadPoolStrings.START_TASK).append(StringUtil.getInstance().toString((task as? JObject))).toString(), self, self.commonStrings.RUN)
    }
    

    open override func completedTask(_ task: Runnable!) {
        self.logUtil.putF(StringMaker().append(self.threadPoolStrings.COMPLETE_TASK).append(StringUtil.getInstance().toString((task as? JObject))).toString(), self, self.commonStrings.RUN)
    }
}

