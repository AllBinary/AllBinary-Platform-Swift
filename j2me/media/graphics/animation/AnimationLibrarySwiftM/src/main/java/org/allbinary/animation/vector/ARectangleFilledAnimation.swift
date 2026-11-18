// Generated Code Do Not Modify
// package org.allbinary.animation.vector

import J2SEForSwiftLibrary
// import javax.microedition.lcdui.Graphics
// import org.allbinary.graphics.color.BasicColorFactory

open class ARectangleFilledAnimation: RectangleFilledAnimation {
    public var x: Int32 = 0
    public var y: Int32 = 0

    // Each class has its own field initializers
    private func initFields() {
    self.x = 0
    self.y = 0
    }
    

    public init() {
        super.init(0, 0, BasicColorFactory.getInstance().BLACK)
        self.initFields()
    }
    

    open override func nextFrame() {
    }
    

    open override func paintXY(_ graphics: Graphics!, _ unusedX: Int32, _ unusedY: Int32) {
        super.paintXY(graphics, self.x, self.y)
    }
}

