// Generated Code Do Not Modify
// package org.allbinary.animation

import J2SEForSwiftLibrary
// import javax.microedition.lcdui.Graphics
// import org.allbinary.graphics.color.BasicColor

open class FillAnimation: IndexedAnimation {
    fileprivate var pixelBuffer: JArray<Int32>! = nil
    fileprivate var width: Int32 = 0
    fileprivate var height: Int32 = 0

    // Each class has its own field initializers
    private func initFields() {
    
    
    
    }
    

    public init(_ pixelBuffer: JArray<Int32>!, _ width: Int32, _ height: Int32, _ animationBehavior: AnimationBehavior!) {
        super.init(animationBehavior)
        self.initFields()
        self.width = 100
        self.height = 100
        self.pixelBuffer = pixelBuffer
    }
    

    open override func setBasicColorP(_ basicColor: BasicColor!) {
        var changed: Bool = false
        if (self.getBasicColorP() == nil || self.getBasicColorP().intValue() != basicColor.intValue()) {
            changed = true
        }
        super.setBasicColorP(basicColor)
        if (changed) {
            self.updateModifiers()
        }
    }
    

    open override func changeBasicColor(_ basicColor: BasicColor!) {
        var changed: Bool = false
        if (self.getChangeBasicColor() == nil || self.getChangeBasicColor().intValue() != basicColor.intValue()) {
            changed = true
        }
        super.changeBasicColor(basicColor)
        if (changed) {
            self.updateModifiers()
        }
    }
    

    open override func setAlpha(_ alpha: Int32) {
        var changed: Bool = false
        if (self.alphaP != alpha) {
            changed = true
        }
        super.setAlpha(alpha)
        if (changed) {
            self.updateModifiers()
        }
    }
    

    open override func setScale(_ scaleX: Float, _ scaleY: Float) {
    }
    

    open override func setMaxScale(_ maxScaleX: Float, _ maxScaleY: Float) {
    }
    

    fileprivate func updateModifiers() {
    }
    

    open func paint(_ g: Graphics!) {
        g.drawRGB(self.pixelBuffer, 0, self.width, 0, 0, self.width, self.height, true)
    }
}

