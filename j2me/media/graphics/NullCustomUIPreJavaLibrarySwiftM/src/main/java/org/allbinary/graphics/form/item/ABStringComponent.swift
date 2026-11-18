// Generated Code Do Not Modify
// package org.allbinary.graphics.form.item

import J2SEForSwiftLibrary
// import org.allbinary.graphics.color.BasicColor
// import org.allbinary.graphics.color.BasicColorFactory

open class ABStringComponent: JObject {
    public static let NULL_STRING_COMPONENT: ABStringComponent! = ABStringComponent(BasicColorFactory.getInstance().BLACK, BasicColorFactory.getInstance().WHITE)
    

    @discardableResult open func getBackgroundBasicColor() -> BasicColor! {
        return BasicColorFactory.getInstance().WHITE
    }
    

    public init(_ backgroundBasicColor: BasicColor!, _ foregroundBasicColor: BasicColor!) {
        super.init()
    }
    

    @discardableResult open func getForegroundBasicColor() -> BasicColor! {
        return BasicColorFactory.getInstance().WHITE
    }
    

    open func setForegroundBasicColor(_ foregroundBasicColor: BasicColor!) {
    }
}

