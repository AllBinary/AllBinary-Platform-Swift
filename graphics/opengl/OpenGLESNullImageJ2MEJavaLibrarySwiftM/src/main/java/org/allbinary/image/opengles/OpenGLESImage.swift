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
// package org.allbinary.image.opengles

import J2SEForSwiftLibrary
// import javax.microedition.khronos.opengles.GL
// import javax.microedition.khronos.opengles.GL10
// import javax.microedition.lcdui.Image
// import javax.microedition.lcdui.NullImage
// import org.allbinary.platform.graphics.PlatformBitmapBase
// import org.allbinary.platform.graphics.PlatformBitmapBaseFactory
// import org.allbinary.platform.opengles.PlatformTextureBaseFactory
// import org.allbinary.string.CommonStrings
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListD

//OpenGLESNullImageJ2MEJavaLibrary
open class OpenGLESImage: JObject, OpenGLSurfaceChangedInterface {
    public static let NULL_OPENGL_IMAGE: OpenGLESImage! = OpenGLESImage(NullImage.NULL_IMAGE, PlatformBitmapBaseFactory.NULL_PLATFORM_BITMAP_BASE_FACTORY, PlatformTextureBaseFactory.NULL_PLATFORM_TEXTURE_BASE_FACTORY)
    public static let texture2dList: BasicArrayList! = BasicArrayListD()
    public static let TYPE: Int32 = 4
    public var commonStrings: CommonStrings! = nil
    public var textureFactory: PlatformTextureBaseFactory! = nil
    public var openGLBitmap: PlatformBitmapBase! = nil
    public var openGLESImageProperties: OpenGLESImageProperties! = nil

    private func initFields() {
    self.commonStrings = CommonStrings.getInstance()
    
    
    self.openGLESImageProperties = OpenGLESImageProperties()
    }
    

    public init(_ image: Image!, _ bitmapFactory: PlatformBitmapBaseFactory!, _ textureFactory: PlatformTextureBaseFactory!) {
        super.init()
        self.initFields()
        self.openGLBitmap = bitmapFactory.createBitmap(image)
        self.textureFactory = textureFactory
    }
    

    open func set(_ gl: GL!) {
        jThrow(JException("Exception", self.commonStrings.NOT_IMPLEMENTED))
    }
    

    @discardableResult open func initTexture(_ gl: GL10!) -> Bool {
        return false
    }
    

    open func drawRegion(_ gl: GL10!, _ viewHeight: Int32, _ x_src: Float, _ y_src: Float, _ width: Float, _ height: Float, _ x: Int32, _ y: Int32, _ z: Int32) {
    }
    

    open func draw(_ gl: GL10!, _ x: Int32, _ y: Int32, _ z: Int32) {
    }
    

    @discardableResult open func getType() -> Int32 {
        return OpenGLESImage.TYPE
    }
}

