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
// package org.allbinary.graphics.opengles

import J2SEForSwiftLibrary

open class OpenGLFeatureFactory: JObject {
    fileprivate static let instance: OpenGLFeatureFactory! = OpenGLFeatureFactory()
    public var OPENGL_OPTIONS: OpenGLFeature! = nil
    public var OPENGL: OpenGLFeature! = nil
    public var OPENGL_SURFACE_VIEW: OpenGLFeature! = nil
    public var OPENGL_2D: OpenGLFeature! = nil
    public var OPENGL_3D: OpenGLFeature! = nil
    public var OPENGL_2D_AND_3D: OpenGLFeature! = nil
    public var OPENGL_AUTO_SELECT: OpenGLFeature! = nil
    public var OPENGL_MINIMUM: OpenGLFeature! = nil
    public var OPENGL_AS_GAME_THREAD: OpenGLFeature! = nil
    public var OPENGL_AND_GAME_HAVE_DIFFERENT_THREADS: OpenGLFeature! = nil
    public var IMAGE_COLOR_DEPTH_4444: OpenGLFeature! = nil
    public var IMAGE_COLOR_DEPTH_8888: OpenGLFeature! = nil
    public var IMAGE_COLOR_DEPTH_565: OpenGLFeature! = nil
    public var OPENGL_COLOR_DEPTH_4444: OpenGLFeature! = nil
    public var OPENGL_COLOR_DEPTH_8888: OpenGLFeature! = nil
    public var OPENGL_COLOR_DEPTH_565: OpenGLFeature! = nil
    public var OPENGL_DRAW_TEXTURE: OpenGLFeature! = nil
    public var OPENGL_VERTEX_BUFFER_OBJECT: OpenGLFeature! = nil
    public var OPENGL_SIMPLE_OBJECT3D_PROCESSOR: OpenGLFeature! = nil
    public var OPENGL_COMPLEX_OBJECT3D_PROCESSOR: OpenGLFeature! = nil
    public var OPENGL_SIMPLE_TEXTURE_PROCESSOR: OpenGLFeature! = nil
    public var OPENGL_COMPLEX_TEXTURE_PROCESSOR: OpenGLFeature! = nil

    private func initFields() {
    self.OPENGL_OPTIONS = OpenGLFeature("OpenGL Options")
    self.OPENGL = OpenGLFeature("OpenGL")
    self.OPENGL_SURFACE_VIEW = OpenGLFeature("GLSurfaceView")
    self.OPENGL_2D = OpenGLFeature("OpenGL 2D")
    self.OPENGL_3D = OpenGLFeature("OpenGL 3D")
    self.OPENGL_2D_AND_3D = OpenGLFeature("OpenGL 2D/3D")
    self.OPENGL_AUTO_SELECT = OpenGLFeature("Auto Select")
    self.OPENGL_MINIMUM = OpenGLFeature("Minimum")
    self.OPENGL_AS_GAME_THREAD = OpenGLFeature("As game thread")
    self.OPENGL_AND_GAME_HAVE_DIFFERENT_THREADS = OpenGLFeature("As different threads")
    self.IMAGE_COLOR_DEPTH_4444 = OpenGLFeature("4444")
    self.IMAGE_COLOR_DEPTH_8888 = OpenGLFeature("8888")
    self.IMAGE_COLOR_DEPTH_565 = OpenGLFeature("565")
    self.OPENGL_COLOR_DEPTH_4444 = OpenGLFeature("4444")
    self.OPENGL_COLOR_DEPTH_8888 = OpenGLFeature("8888")
    self.OPENGL_COLOR_DEPTH_565 = OpenGLFeature("565")
    self.OPENGL_DRAW_TEXTURE = OpenGLFeature("GL_OES_draw_texture")
    self.OPENGL_VERTEX_BUFFER_OBJECT = OpenGLFeature("vertex_buffer_object")
    self.OPENGL_SIMPLE_OBJECT3D_PROCESSOR = OpenGLFeature("Simple Object3d Processor")
    self.OPENGL_COMPLEX_OBJECT3D_PROCESSOR = OpenGLFeature("Complex Object3d Processor")
    self.OPENGL_SIMPLE_TEXTURE_PROCESSOR = OpenGLFeature("Simple Texture Processor")
    self.OPENGL_COMPLEX_TEXTURE_PROCESSOR = OpenGLFeature("Complex Texture Processor")
    }
    

    @discardableResult open class func getInstance() -> OpenGLFeatureFactory! {
        return OpenGLFeatureFactory.instance
    }
    

    public override init() {
        super.init()
        self.initFields()
    }
}

