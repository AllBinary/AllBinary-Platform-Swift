// Generated Code Do Not Modify
// package org.allbinary.graphics.form

import J2SEForSwiftLibrary
// import javax.microedition.lcdui.Graphics
// import org.allbinary.graphics.color.BasicColor
// import org.allbinary.graphics.form.item.ABCustomItem
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.string.CommonStrings

open class ABCustomForm: CustomScreen {
    public var logUtil: LogUtil! = nil
    public var commonStrings: CommonStrings! = nil

    // Each class has its own field initializers
    private func initFields() {
    self.logUtil = LogUtil.getInstance()
    self.commonStrings = CommonStrings.getInstance()
    }
    

    public init(_ title: String!, _ items: JArray<ABCustomItem?>!, _ backgroundBasicColor: BasicColor!, _ foregroundBasicColor: BasicColor!) {
        super.init()
        self.initFields()
    }
    

    @discardableResult open func getAllitems() -> JArray<ABCustomItem?>! {
        return JArray<ABCustomItem?>(0, nil)
    }
    

    @discardableResult open func size() -> Int32 {
        return 0
    }
    

    open func setSelectedIndex(_ index: Int32) {
    }
    

    @discardableResult open func getSelectedIndex() -> Int32 {
        return 0
    }
    

    open func deleteAll() {
    }
    

    open func delete(_ itemNum: Int32) {
    }
    

    @discardableResult open func append(_ item: ABCustomItem!) -> Int32 {
        return -1
    }
    

    open func insert(_ itemNum: Int32, _ item: ABCustomItem!) {
    }
    

    open func set(_ itemNum: Int32, _ item: ABCustomItem!) {
    }
    

    @discardableResult open func get(_ itemNum: Int32) -> ABCustomItem! {
        return ABCustomItem.getNullInstance()
    }
    

    @discardableResult open func getWidth() -> Int32 {
        jThrow(JException("RuntimeException", ""))
    }
    

    open func paint(_ graphics: Graphics!) {
    }
    

    @discardableResult open func getTitle() -> String! {
        return StringUtil.getInstance().EMPTY_STRING
    }
}

