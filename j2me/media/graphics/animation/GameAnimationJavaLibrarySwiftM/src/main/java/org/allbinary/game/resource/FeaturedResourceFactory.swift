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
// package org.allbinary.game.resource

import J2SEForSwiftLibrary
// import org.allbinary.game.configuration.feature.Features
// import org.allbinary.game.configuration.feature.GameFeatureControlledInterface
// import org.allbinary.game.configuration.feature.GraphicsFeatureFactory
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.string.CommonLabels
// import org.allbinary.string.CommonSeps
// import org.allbinary.string.CommonStrings
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListD

open class FeaturedResourceFactory: JObject {
    public var logUtil: LogUtil! = nil
    fileprivate var list: BasicArrayList! = nil
    fileprivate var commonStrings: CommonStrings! = nil
    fileprivate var ANIMATION_FEATURES: String! = nil
    fileprivate var IMAGE_LABEL: String! = nil
    fileprivate var IMAGE_GRAPHICS_ARRAY: String! = nil
    fileprivate var IMAGE_GRAPHICS_ROTATION: String! = nil
    fileprivate var SPRITE_QUARTER: String! = nil
    fileprivate var SPRITE_FULL: String! = nil
    fileprivate var IS_LOADING_LEVEL_LABEL: String! = nil
    fileprivate var IS_FEATURE: String! = nil
    fileprivate var GAME_FEATURE_CONTROLLED: String! = nil

    private func initFields() {
    self.logUtil = LogUtil.getInstance()
    self.list = BasicArrayListD()
    self.commonStrings = CommonStrings.getInstance()
    self.ANIMATION_FEATURES = "Animation Features: Vector: "
    self.IMAGE_LABEL = " Image: "
    self.IMAGE_GRAPHICS_ARRAY = "Image Array: "
    self.IMAGE_GRAPHICS_ROTATION = "Image Rotate: "
    self.SPRITE_QUARTER = " Sprite Quarter: "
    self.SPRITE_FULL = " Sprite Full: "
    self.IS_LOADING_LEVEL_LABEL = " isLoadingLevel "
    self.IS_FEATURE = " isFeature: "
    self.GAME_FEATURE_CONTROLLED = "GameFeatureControlledInterface: "
    }
    

    public override init() {
        super.init()
        self.initFields()
    }
    

    open func `init`(_ level: Int32) {
        let size: Int32 = self.list.size()
        do {
            var index: Int32 = 0
            while (index < size) {
                defer { index &+= 1 }
            let featureInterface: GameFeatureControlledInterface! = (self.list.objectArray[index] as! GameFeatureControlledInterface)
            let isLoadingLevel: Bool = featureInterface.isLoadingLevel(level)
            let isFeature: Bool = featureInterface.isFeature()
            self.logUtil.putF(StringMaker().append(self.GAME_FEATURE_CONTROLLED).append(jstr(featureInterface)).append(self.IS_LOADING_LEVEL_LABEL).append(ResourceLoadingLevelFactory.getInstance().getLevelString(level)).append(CommonSeps.getInstance().COLON_SEP).appendboolean(isLoadingLevel).append(self.IS_FEATURE).appendboolean(isFeature).toString(), self, self.commonStrings.INIT)
            if (isLoadingLevel && isFeature) {
                featureInterface.`init`(level)
            }
            }
        }
        let features: Features! = Features.getInstance()
        let graphicsFeatureFactory: GraphicsFeatureFactory! = GraphicsFeatureFactory.getInstance()
        let stringBuffer: StringMaker! = StringMaker()
        stringBuffer.append(self.ANIMATION_FEATURES)
        stringBuffer.appendboolean(features.isFeature(graphicsFeatureFactory.VECTOR_GRAPHICS))
        stringBuffer.append(self.IMAGE_LABEL)
        stringBuffer.appendboolean(features.isFeature(graphicsFeatureFactory.IMAGE_GRAPHICS))
        self.logUtil.putF(stringBuffer.toString(), self, self.commonStrings.INIT)
        if (features.isFeature(graphicsFeatureFactory.IMAGE_GRAPHICS)) {
            stringBuffer.delete(0, stringBuffer.length())
            stringBuffer.append(self.IMAGE_GRAPHICS_ARRAY)
            stringBuffer.appendboolean(features.isFeature(graphicsFeatureFactory.IMAGE_TO_ARRAY_GRAPHICS))
            stringBuffer.append(self.IMAGE_GRAPHICS_ROTATION)
            stringBuffer.appendboolean(features.isFeature(graphicsFeatureFactory.IMAGE_TO_ARRAY_GRAPHICS))
            stringBuffer.append(self.SPRITE_QUARTER)
            stringBuffer.appendboolean(features.isFeature(graphicsFeatureFactory.SPRITE_QUARTER_ROTATION_GRAPHICS))
            stringBuffer.append(self.SPRITE_FULL)
            stringBuffer.appendboolean(features.isFeature(graphicsFeatureFactory.SPRITE_FULL_GRAPHICS))
            self.logUtil.putF(stringBuffer.toString(), self, self.commonStrings.INIT)
        }
    }
    

    open func clear() {
        self.list.clear()
    }
    

    open func add(_ featureInterface: GameFeatureControlledInterface!) {
        self.logUtil.putF(StringMaker().append(CommonLabels.getInstance().START_LABEL).append(StringUtil.getInstance().toString((featureInterface as? JObject))).toString(), self, self.commonStrings.ADD)
        self.list.add((featureInterface as? JObject))
    }
    

    @discardableResult open func getList() -> BasicArrayList! {
        return self.list
    }
}

