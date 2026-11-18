/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2025 AllBinary 
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
// package org.allbinary.graphics

import J2SEForSwiftLibrary

open class GraphicsStrings: JObject {
    fileprivate static let instance: GraphicsStrings! = GraphicsStrings()
    public var ANIMATION: String! = nil
    public var ANGLE: String! = nil
    public var MOVEMENT_ANGLE: String! = nil
    public var ROTATION: String! = nil
    public var OPACITY: String! = nil
    public var HTML: String! = nil
    public var WIDTH: String! = nil
    public var HEIGHT: String! = nil

    private func initFields() {
    self.ANIMATION = "animation"
    self.ANGLE = "angle"
    self.MOVEMENT_ANGLE = "movement_angle"
    self.ROTATION = "rotation"
    self.OPACITY = "opacity"
    self.HTML = "HTML"
    self.WIDTH = "width"
    self.HEIGHT = "height"
    }

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult open class func getInstance() -> GraphicsStrings! {
        return GraphicsStrings.instance
    }
}

