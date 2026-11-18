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

open class ThreadUtil: JObject {
    fileprivate static let instance: ThreadUtil! = ThreadUtil()
    public var logUtil: LogUtil! = nil
    public var JOIN: String! = nil

    private func initFields() {
    self.logUtil = LogUtil.getInstance()
    self.JOIN = "join"
    }

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult open class func getInstance() -> ThreadUtil! {
        return ThreadUtil.instance
    }
    

    @discardableResult open func isRunning(_ thread: Thread!) -> Bool {
        if (thread != nil && thread.isAlive()) {
            return true
        } else {
            return false
        }
    }
    

    open func join(_ thread: Thread!) {
        if (ThreadUtil.getInstance().isRunning(thread)) {
            self.logUtil.putF("Waiting for Thread To Join/End", self, self.JOIN)
            thread.join()
        }
    }
}

