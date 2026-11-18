// Generated Code Do Not Modify
// package org.allbinary.game.displayable.canvas

import J2SEForSwiftLibrary
// import javax.microedition.lcdui.Canvas
// import javax.microedition.lcdui.Graphics

//Temp should not be in any build
open class NullDisplayable: Canvas {
    fileprivate static let SINGLETON: NullDisplayable! = NullDisplayable()
    

    @discardableResult open class func getInstance() -> NullDisplayable! {
        return NullDisplayable.SINGLETON
    }
    

    public override init() {
        super.init()
    }
    

    open override func paint(_ graphics: Graphics!) {
    }
}

