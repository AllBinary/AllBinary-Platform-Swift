// Generated Code Do Not Modify
// package org.allbinary.graphics.font

import J2SEForSwiftLibrary
// import javax.microedition.lcdui.Font
// import org.allbinary.logic.string.StringMaker

//OpenGLNoneOther2JavaLibrary
open class FontDebugBase: JObject {
    fileprivate static let instanceBase: FontDebugBase! = FontDebugBase()
    public var SET_FONT: String! = nil

    private func initFields() {
    self.SET_FONT = "setFont"
    }

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult open class func getInstance() -> FontDebugBase! {
        return FontDebugBase.instanceBase
    }
    

    open func debugMetrics(_ currentFont: Font!, _ convertedTextSize: Float, _ displayMetrics: JObject!, _ stringBuffer: StringMaker!) {
    }
    

    open func debugDpi(_ densityDpi: Int32, _ stringBuffer: StringMaker!) {
    }
    

    open func debugDimension(_ currentFont: Font!, _ convertedTextSize: Float, _ longestDimensionTotalPixels: Int32, _ stringBuffer: StringMaker!) {
    }
}

