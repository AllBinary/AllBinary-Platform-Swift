/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2011 AllBinary 
 * 
 * By agreeing to this license you and any business entity you represent are 
 * legally bound to the AllBinary Open License Version 1 legal agreement. 
 * 
 * You may obtain the AllBinary Open License Version 1 legal agreement from 
 * AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
 * 
 * Created By: Travis Berthelot 
 *  
 */
// Generated Code Do Not Modify
// package org.allbinary.emulator.device

import J2SEForSwiftLibrary
// import javax.microedition.khronos.opengles.GL10
// import javax.microedition.lcdui.Image
// import org.allbinary.graphics.color.BasicColor
// import org.allbinary.image.opengles.OpenGLESImage

open class TrueTypeFontUtil: TrueTypeFontUtilBase {
    fileprivate static let instance: TrueTypeFontUtil! = TrueTypeFontUtil()
    public var fontImage: OpenGLESImage! = nil

    // Each class has its own field initializers
    private func initFields() {
    self.fontImage = OpenGLESImage.NULL_OPENGL_IMAGE
    }
    

    @discardableResult open class func getInstance() -> TrueTypeFontUtil! {
        return TrueTypeFontUtil.instance
    }
    

    public init() {
        super.init(1)
        self.initFields()
    }
    

    @discardableResult open override func getAsTextureSize(_ textureSize: Int32) -> Int32 {
        jThrow(JException("RuntimeException", ""))
    }
    

    @discardableResult open override func getCellSize(_ cellSize: Int32) -> Int32 {
        jThrow(JException("RuntimeException", ""))
    }
    

    @discardableResult open func getFontBitmap(_ filename: String!, _ fontSize: Int32, _ cellSize: Int32, _ basicColor: BasicColor!) -> Image! {
        jThrow(JException("RuntimeException", ""))
    }
    

    open func saveFontAtlasAsFile() {
    }
    

    @discardableResult open func getFontBitmapGL(_ gl: GL10!, _ filename: String!, _ cellSize: Int32, _ basicColor: BasicColor!) -> Image! {
        jThrow(JException("RuntimeException", ""))
    }
    

    @discardableResult open func getFontWidths(_ filename: String!, _ fontSize: Int32) -> JArray<Int32>! {
        jThrow(JException("RuntimeException", ""))
    }
}

