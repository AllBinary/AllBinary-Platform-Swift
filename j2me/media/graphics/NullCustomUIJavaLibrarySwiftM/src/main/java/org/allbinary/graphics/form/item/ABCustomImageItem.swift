// Generated Code Do Not Modify
// package org.allbinary.graphics.form.item

import J2SEForSwiftLibrary
// import javax.microedition.lcdui.Image
// import javax.microedition.lcdui.NullImage
// import org.allbinary.graphics.color.BasicColor

open class ABCustomImageItem: ABCustomItem {
    public var yOffset: Int32 = 0

    // Each class has its own field initializers
    private func initFields() {
    self.yOffset = 0
    }
    

    public init(_ label: String!, _ image: Image!, _ layout: Int32, _ altText: String!, _ basicColor: BasicColor!, _ yOffset: Int32) {
        super.init(label, basicColor, basicColor)
        self.initFields()
    }
    

    @discardableResult open func getImage() -> Image! {
        return NullImage.NULL_IMAGE
    }
}

