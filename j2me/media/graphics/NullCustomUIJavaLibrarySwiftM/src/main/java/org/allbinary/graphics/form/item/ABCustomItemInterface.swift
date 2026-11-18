// Generated Code Do Not Modify
// package org.allbinary.graphics.form.item

import J2SEForSwiftLibrary
// import javax.microedition.lcdui.Graphics

public protocol ABCustomItemInterface: AnyObject {
    @discardableResult func getMinimumWidth() -> Int32
    @discardableResult func getMinimumHeight() -> Int32
    @discardableResult func getLabel() -> String!
    func paintXY(_ graphics: Graphics!, _ x: Int32, _ y: Int32)
    func paintUnselected(_ graphics: Graphics!, _ x: Int32, _ y: Int32)
}


