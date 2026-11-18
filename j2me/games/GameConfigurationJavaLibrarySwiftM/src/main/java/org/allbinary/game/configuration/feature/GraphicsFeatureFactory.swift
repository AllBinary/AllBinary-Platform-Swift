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
// package org.allbinary.game.configuration.feature

import J2SEForSwiftLibrary
// import org.allbinary.logic.string.StringUtil

open class GraphicsFeatureFactory: JObject {
    fileprivate static let instance: GraphicsFeatureFactory! = GraphicsFeatureFactory()
    public var NONE: GraphicsFeature! = nil
    public var TRANSPARENT_IMAGE_CREATION: GraphicsFeature! = nil
    public var IMAGE_GRAPHICS: GraphicsFeature! = nil
    public var IMAGE_ROTATION_ON_THE_FLY: GraphicsFeature! = nil
    public var IMAGE_TO_ARRAY_GRAPHICS: GraphicsFeature! = nil
    public var SPRITE_QUARTER_ROTATION_GRAPHICS: GraphicsFeature! = nil
    public var SPRITE_FULL_GRAPHICS: GraphicsFeature! = nil
    public var VECTOR_GRAPHICS: GraphicsFeature! = nil
    public var VECTOR_TO_IMAGE_GRAPHICS: GraphicsFeature! = nil

    private func initFields() {
    self.NONE = GraphicsFeature(StringUtil.getInstance().NULL_STRING)
    self.TRANSPARENT_IMAGE_CREATION = GraphicsFeature("Transparent Image Creation")
    self.IMAGE_GRAPHICS = GraphicsFeature("Image Graphics")
    self.IMAGE_ROTATION_ON_THE_FLY = GraphicsFeature("Image Rotated On The Fly")
    self.IMAGE_TO_ARRAY_GRAPHICS = GraphicsFeature("Image To Array Graphics")
    self.SPRITE_QUARTER_ROTATION_GRAPHICS = GraphicsFeature("Sprite Quarter Rotation Graphics")
    self.SPRITE_FULL_GRAPHICS = GraphicsFeature("Sprite Full Rotation Graphics")
    self.VECTOR_GRAPHICS = GraphicsFeature("BasicArrayList Graphics")
    self.VECTOR_TO_IMAGE_GRAPHICS = GraphicsFeature("BasicArrayList To Image Graphics")
    }
    

    @discardableResult open class func getInstance() -> GraphicsFeatureFactory! {
        return GraphicsFeatureFactory.instance
    }
    

    public override init() {
        super.init()
        self.initFields()
    }
}

