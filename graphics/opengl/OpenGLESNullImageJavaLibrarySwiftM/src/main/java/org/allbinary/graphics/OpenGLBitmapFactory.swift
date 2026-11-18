// Generated Code Do Not Modify
// package org.allbinary.graphics

import J2SEForSwiftLibrary
// import java.io.IOException
// import java.io.InputStream
// import javax.microedition.lcdui.Image
// import org.allbinary.logic.NullUtil
// import org.allbinary.platform.graphics.PlatformBitmapBase
// import org.allbinary.platform.graphics.PlatformBitmapBaseFactory

open class OpenGLBitmapFactory: PlatformBitmapBaseFactory {
    fileprivate static let instance: OpenGLBitmapFactory! = OpenGLBitmapFactory()
    public var ARGB_8888: OpenGLBitmapConfig! = nil

    // Each class has its own field initializers
    private func initFields() {
    self.ARGB_8888 = OpenGLBitmapConfig(NullUtil.getInstance().NULL_OBJECT)
    }

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult open class func getInstance() -> OpenGLBitmapFactory! {
        return OpenGLBitmapFactory.instance
    }
    

    @discardableResult open func createBitmap(_ width: Int32, _ height: Int32, _ config: OpenGLBitmapConfig!) -> OpenGLBitmap! {
        return OpenGLBitmap(NullUtil.getInstance().NULL_OBJECT)
    }
    

    @discardableResult open func decodeStream(_ inputStream: InputStream!) -> OpenGLBitmap! {
        return OpenGLBitmap(NullUtil.getInstance().NULL_OBJECT)
    }
    

    @discardableResult open override func createBitmap(_ image: Image!) -> PlatformBitmapBase! {
        return OpenGLBitmap(NullUtil.getInstance().NULL_OBJECT)
    }
}

