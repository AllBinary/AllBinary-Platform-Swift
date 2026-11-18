// Generated Code Do Not Modify
// package org.allbinary.thread

import J2SEForSwiftLibrary
// import org.allbinary.TsUtil

open class ThreadObjectUtil: JObject {
    fileprivate static let instance: ThreadObjectUtil! = ThreadObjectUtil()
    public var NULL_PRIORITY_RUNNABLE: PriorityRunnable! = nil

    private func initFields() {
    self.NULL_PRIORITY_RUNNABLE = NullPriorityRunnable()
    }

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult open class func getInstance() -> ThreadObjectUtil! {
        return ThreadObjectUtil.instance
    }
    

    open func notifyObject(_ anyType: JObject!) {
        anyType.notify()
    }
    

    open func waitObject(_ anyType: JObject!) {
        anyType.wait()
    }
    

    open func waitObjectFor(_ anyType: JObject!, _ delay: Int64) {
        TsUtil.getInstance().waitFor(anyType, delay)
    }
    

    open func processThread(_ runnable: Runnable!) {
        let thread: Thread! = Thread(runnable)
        thread.start()
    }
}

