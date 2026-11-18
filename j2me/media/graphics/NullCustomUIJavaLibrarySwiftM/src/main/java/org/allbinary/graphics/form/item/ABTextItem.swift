// Generated Code Do Not Modify
// package org.allbinary.graphics.form.item

import J2SEForSwiftLibrary
// import javax.microedition.lcdui.Graphics
// import org.allbinary.graphics.color.BasicColor

open class ABTextItem: CustomCustomItem, ABCustomItemInterface {
    

    public init(_ label: String!, _ layout: Int32, _ altText: String!, _ backgroundBasicColor: BasicColor!, _ foregroundBasicColor: BasicColor!) {
        super.init(label, backgroundBasicColor, foregroundBasicColor)
    }
    

    open func keyPressed(_ keyCode: Int32) {
    }
    

    open override func paintUnselected(_ graphics: Graphics!, _ x: Int32, _ y: Int32) {
    }
    

    @discardableResult open func getLabelStringComponent() -> ABStringComponent! {
        return ABStringComponent.NULL_STRING_COMPONENT
    }
    

    @discardableResult open override func getMinimumWidth() -> Int32 {
        return super.getMinimumWidth()
    }
    

    @discardableResult open override func getMinimumHeight() -> Int32 {
        return super.getMinimumHeight()
    }
    

    @discardableResult open override func getLabel() -> String! {
        return super.getLabel()
    }
    

    open override func paintXY(_ graphics: Graphics!, _ x: Int32, _ y: Int32) {
        super.paintXY(graphics, x, y)
    }
}

