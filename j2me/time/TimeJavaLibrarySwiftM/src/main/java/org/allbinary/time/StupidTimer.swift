// Generated Code Do Not Modify
// package org.allbinary.time

import J2SEForSwiftLibrary
// import org.allbinary.logic.NullUtil
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.communication.log.PreLogUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.logic.util.visitor.Visitor
// import org.allbinary.string.CommonStrings
// import org.allbinary.thread.ThreadObjectUtil

open class StupidTimer: JObject {
    public var logUtil: LogUtil! = nil
    public var commonStrings: CommonStrings! = nil
    public var nullUtil: NullUtil! = nil
    fileprivate var threadObjectUtil: ThreadObjectUtil! = nil

    private func initFields() {
    self.logUtil = LogUtil.getInstance()
    self.commonStrings = CommonStrings.getInstance()
    self.nullUtil = NullUtil.getInstance()
    self.threadObjectUtil = ThreadObjectUtil.getInstance()
    }

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult fileprivate func visitBool(_ visitorInterface: Visitor!) -> Bool {
        let result: Bool! = jUnboxValue(visitorInterface.visit(self.nullUtil.NULL_OBJECT), Bool.self)
        let result2: Bool = result.booleanValue()
        return result2
    }
    

    public func visit(_ visitorInterface: Visitor!, _ timeDelayHelper: TimeDelayHelper!) {
        var tookTooLong: Bool = false
        let WAITING_FOR: String! = "Waiting for: "
        PreLogUtil.put(StringMaker().append(WAITING_FOR).append(StringUtil.getInstance().toString(visitorInterface)).toString(), self, self.commonStrings.VISIT)
        var index: Int32 = 0
        while (self.visitBool(visitorInterface)) {
            if (index % 10 == 0) {
                PreLogUtil.put(StringMaker().append(WAITING_FOR).appendint(index).toString(), self, self.commonStrings.VISIT)
            }
            index &+= 1
            do {
                self.threadObjectUtil.waitObjectFor(self, 1800)
            }
            if (timeDelayHelper.isTimeTNT()) {
                tookTooLong = true
                break
            }
        }
        if (tookTooLong) {
            self.logUtil.put(self.commonStrings.EXCEPTION, self, self.commonStrings.VISIT, JException("Exception", StringMaker().append("Took Too Long: ").append(StringUtil.getInstance().toString(visitorInterface)).toString()))
        } else {
            PreLogUtil.put(timeDelayHelper.toString(), self, self.commonStrings.VISIT)
        }
    }
    

    open func stopWaiting() {
        do {
            self.threadObjectUtil.notifyObject(self)
        }
    }
}

