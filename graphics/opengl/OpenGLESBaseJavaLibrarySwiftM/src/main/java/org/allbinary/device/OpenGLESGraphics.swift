// Generated Code Do Not Modify
// package org.allbinary.device

import J2SEForSwiftLibrary
// import javax.microedition.khronos.opengles.GL
// import javax.microedition.khronos.opengles.GL10
// import javax.microedition.lcdui.Font
// import javax.microedition.lcdui.Graphics
// import org.allbinary.graphics.font.FontDebugBase
// import org.allbinary.image.opengles.OpenGLSurfaceChangedInterface
// import org.allbinary.string.CommonStrings

open class OpenGLESGraphics: Graphics, OpenGLSurfaceChangedInterface, GraphicsInterface {
    public var commonStrings: CommonStrings! = nil
    public var gl: GL10! = nil

    // Each class has its own field initializers
    private func initFields() {
    self.commonStrings = CommonStrings.getInstance()
    self.gl = NullGL10.NULL_GL10
    }
    

    public override init() {
        super.init()
        self.initFields()
    }
    

    open func updateGL(_ gl: GL!) {
    }
    

    open func set(_ gl: GL!) {
    }
    

    open func `init`() {
    }
    

    open func update() {
    }
    

    open func setOrthoginalMode() {
    }
    

    open func setCameraMode() {
    }
    

    @discardableResult open func getGl10() -> GL10! {
        return self.gl
    }
    

    open func setFontDebug(_ font: Font!, _ fontDebug: FontDebugBase!) {
        jThrow(JException("RuntimeException", ""))
    }
}

