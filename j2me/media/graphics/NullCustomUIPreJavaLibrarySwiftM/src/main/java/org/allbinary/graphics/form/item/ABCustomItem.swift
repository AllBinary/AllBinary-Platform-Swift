// Generated Code Do Not Modify
// package org.allbinary.graphics.form.item

import J2SEForSwiftLibrary
// import javax.microedition.lcdui.Graphics
// import javax.microedition.lcdui.Screen
// import org.allbinary.graphics.color.BasicColor
// import org.allbinary.graphics.color.BasicColorFactory
// import org.allbinary.logic.NullUtil
// import org.allbinary.logic.string.StringUtil

open class ABCustomItem: JObject {
    public static var NULL_CUSTOM_ITEM: JObject! = NullUtil.getInstance().NULL_OBJECT
    

    @discardableResult open class func getNullInstance() -> ABCustomItem! {
        if (ABCustomItem.NULL_CUSTOM_ITEM === NullUtil.getInstance().NULL_OBJECT) {
            ABCustomItem.NULL_CUSTOM_ITEM = ABCustomItem(StringUtil.getInstance().EMPTY_STRING, BasicColorFactory.getInstance().BLACK, BasicColorFactory.getInstance().WHITE)
        }
        return (ABCustomItem.NULL_CUSTOM_ITEM as! ABCustomItem)
    }
    

    public init(_ label: String!, _ backgroundBasicColor: BasicColor!, _ foregroundBasicColor: BasicColor!) {
        super.init()
    }
    

    open func setOwner(_ owner: Screen!) {
    }
    

    open func paintXY(_ graphics: Graphics!, _ x: Int32, _ y: Int32) {
    }
    

    open func paintUnselected(_ graphics: Graphics!, _ x: Int32, _ y: Int32) {
    }
    

    @discardableResult open func isFocusable() -> Bool {
        return false
    }
    

    @discardableResult open func getLabel() -> String! {
        return StringUtil.getInstance().EMPTY_STRING
    }
    

    open func setLabel(_ label: String!) {
    }
    

    @discardableResult open func getHeight() -> Int32 {
        return 0
    }
    

    open func setHeight(_ height: Int32) {
    }
    

    @discardableResult open func getValue() -> Float {
        return 0.0
    }
    

    open func setValue(_ value: Float) {
    }
    

    @discardableResult open func getMinimumWidth() -> Int32 {
        return 0
    }
    

    @discardableResult open func getMinimumHeight() -> Int32 {
        return 0
    }
    

    open func preMeasurement(_ graphics: Graphics!) {
    }
}

