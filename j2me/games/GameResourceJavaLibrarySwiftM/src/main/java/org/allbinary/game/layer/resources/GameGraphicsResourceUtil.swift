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
// package org.allbinary.game.layer.resources

import J2SEForSwiftLibrary
// import org.allbinary.game.configuration.feature.Features
// import org.allbinary.game.configuration.feature.GraphicsFeature
// import org.allbinary.game.configuration.feature.GraphicsFeatureFactory
// import org.allbinary.graphics.displayable.CanvasStrings
// import org.allbinary.graphics.opengles.OpenGLFeatureUtil
// import org.allbinary.logic.NullUtil
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.string.CommonStrings

open class GameGraphicsResourceUtil: JObject {
    fileprivate static var instance: JObject! = NullUtil.getInstance().NULL_OBJECT
    public var logUtil: LogUtil! = nil
    public var SPRITE: String! = nil
    public var QUARTER: String! = nil
    fileprivate var name: String! = nil

    private func initFields() {
    self.logUtil = LogUtil.getInstance()
    self.SPRITE = "_sprite"
    self.QUARTER = "_quarter"
    self.name = StringUtil.getInstance().EMPTY_STRING
    }
    

    @discardableResult open class func getInstance() -> GameGraphicsResourceUtil! {
        if (GameGraphicsResourceUtil.instance === NullUtil.getInstance().NULL_OBJECT) {
            GameGraphicsResourceUtil.instance = GameGraphicsResourceUtil()
        }
        return (GameGraphicsResourceUtil.instance as! GameGraphicsResourceUtil)
    }
    

    public override init() {
        super.init()
        self.initFields()
        do {
            self.name = self.getString()
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
    

    @discardableResult fileprivate func getString() -> String! {
        let graphicsFeatureFactory: GraphicsFeatureFactory! = GraphicsFeatureFactory.getInstance()
        var graphicsFeature: GraphicsFeature! = graphicsFeatureFactory.NONE
        let features: Features! = Features.getInstance()
        if (features.isFeature(graphicsFeatureFactory.IMAGE_TO_ARRAY_GRAPHICS)) {
            graphicsFeature = graphicsFeatureFactory.IMAGE_TO_ARRAY_GRAPHICS
        } else if (features.isFeature(graphicsFeatureFactory.SPRITE_FULL_GRAPHICS)) {
            graphicsFeature = graphicsFeatureFactory.SPRITE_FULL_GRAPHICS
        } else if (features.isFeature(graphicsFeatureFactory.SPRITE_QUARTER_ROTATION_GRAPHICS)) {
            graphicsFeature = graphicsFeatureFactory.SPRITE_QUARTER_ROTATION_GRAPHICS
        } else if (features.isFeature(graphicsFeatureFactory.IMAGE_ROTATION_ON_THE_FLY)) {
            graphicsFeature = graphicsFeatureFactory.IMAGE_ROTATION_ON_THE_FLY
        }
        return self.getStringForFeature(graphicsFeature)
    }
    

    @discardableResult open func getStringForFeature(_ graphicsFeature: GraphicsFeature!) -> String! {
        let stringBuffer: StringMaker! = StringMaker()
        let graphicsFeatureFactory: GraphicsFeatureFactory! = GraphicsFeatureFactory.getInstance()
        stringBuffer.delete(0, stringBuffer.length())
        let features: Features! = Features.getInstance()
        if (features.isFeature(graphicsFeatureFactory.VECTOR_GRAPHICS)) {
        } else if (features.isFeature(graphicsFeatureFactory.IMAGE_GRAPHICS)) {
            if (graphicsFeature === graphicsFeatureFactory.IMAGE_TO_ARRAY_GRAPHICS || graphicsFeature === graphicsFeatureFactory.IMAGE_ROTATION_ON_THE_FLY) {
            } else if (graphicsFeature === graphicsFeatureFactory.SPRITE_FULL_GRAPHICS) {
                stringBuffer.append(self.SPRITE)
            } else if (graphicsFeature === graphicsFeatureFactory.SPRITE_QUARTER_ROTATION_GRAPHICS) {
                stringBuffer.append(self.QUARTER)
                stringBuffer.append(self.SPRITE)
            } else {
                jThrow(JException("Exception", "None/Unknown Sub Image Resource Type Specified"))
            }
        } else if (OpenGLFeatureUtil.getInstance().isAnyThreed()) {
            stringBuffer.append(CanvasStrings.getInstance().OBJ_MODEL)
        } else {
            jThrow(JException("Exception", "None/Unknown Main Image Resource Type Specified"))
        }
        return stringBuffer.toString()
    }
    

    @discardableResult open func getName() -> String! {
        return self.name
    }
}

