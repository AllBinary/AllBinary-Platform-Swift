/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2022 AllBinary 
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
// package org.allbinary.graphics.opengles.renderer

import J2SEForSwiftLibrary

open class RendererStrings: JObject {
    fileprivate static let instance: RendererStrings! = RendererStrings()
    public var ON_SURFACE_CREATED: String! = nil
    public var ON_SURFACE_CHANGED: String! = nil
    public var ON_DRAW_FRAME: String! = nil
    public var ON_DRAW_FRAME_THREED: String! = nil
    public var ON_DRAW_FRAME_2D: String! = nil

    private func initFields() {
    self.ON_SURFACE_CREATED = "onSurfaceCreated"
    self.ON_SURFACE_CHANGED = "onSurfaceChanged"
    self.ON_DRAW_FRAME = "onDrawFrame"
    self.ON_DRAW_FRAME_THREED = "onDrawFrameThreed"
    self.ON_DRAW_FRAME_2D = "onDrawFrame2d"
    }

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult open class func getInstance() -> RendererStrings! {
        return RendererStrings.instance
    }
}

