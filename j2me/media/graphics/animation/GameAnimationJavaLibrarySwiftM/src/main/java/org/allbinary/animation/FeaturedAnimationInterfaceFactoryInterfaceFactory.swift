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
// package org.allbinary.animation

import J2SEForSwiftLibrary
// import org.allbinary.animation.resource.FeatureResourceAnimationInterfaceFactoryInterface
// import org.allbinary.game.configuration.GameConfigurationCentral
// import org.allbinary.game.resource.FeaturedResourceFactory
// import org.allbinary.graphics.PointFactory
// import org.allbinary.graphics.Rectangle
// import org.allbinary.graphics.RectangleFactory
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.string.CommonSeps
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListD

open class FeaturedAnimationInterfaceFactoryInterfaceFactory: FeaturedResourceFactory {
    fileprivate static var INSTANCE: FeaturedAnimationInterfaceFactoryInterfaceFactory! = FeaturedAnimationInterfaceFactoryInterfaceFactory()
    

    public override init() {
        super.init()
    }
    

    @discardableResult open class func getInstance() -> FeaturedAnimationInterfaceFactoryInterfaceFactory! {
        return FeaturedAnimationInterfaceFactoryInterfaceFactory.INSTANCE
    }
    

    @discardableResult open func getRectangle(_ resource: String!) -> Rectangle! {
        return self.getRectangleXY(resource, 0, 0)
    }
    

    @discardableResult open func getRectangleXY(_ resource: String!, _ x: Int32, _ y: Int32) -> Rectangle! {
        let pointFactory: PointFactory! = PointFactory.getInstance()
        let list: BasicArrayList! = self.getList()
        let scale: Int32 = GameConfigurationCentral.getInstance().SCALE.getValue().intValue()
        let size: Int32 = self.getList().size()
        do {
            var index: Int32 = 0
            while (index < size) {
                defer { index &+= 1 }
            let featureInterface: FeatureResourceAnimationInterfaceFactoryInterface! = (list.objectArray[index] as Any as? FeatureResourceAnimationInterfaceFactoryInterface)
            if (featureInterface.isFeature()) {
                let rectangle: Rectangle! = featureInterface.getRectangle(resource)
                if (rectangle !== RectangleFactory.SINGLETON) {
                    return Rectangle(pointFactory.createXY(x, y), ((rectangle.getWidth() &* scale) >> 1), ((rectangle.getHeight() &* scale) >> 1))
                }
            }
            }
        }
        jThrow(JException("Exception", StringMaker().append("No rectangle available for current feature selection or Resource: ").append(resource).toString()))
    }
    

    @discardableResult open func getProcedural(_ resource: String!) -> ProceduralAnimationInterfaceFactoryInterface! {
        return (self.getBasicAnimationInterfaceFactoryInstance(resource) as Any as? ProceduralAnimationInterfaceFactoryInterface)
    }
    

    @discardableResult open func get(_ resource: String!) -> AnimationInterfaceFactoryInterface! {
        return (self.getBasicAnimationInterfaceFactoryInstance(resource) as Any as? AnimationInterfaceFactoryInterface)
    }
    

    @discardableResult fileprivate func getBasicAnimationInterfaceFactoryInstance(_ resource: String!) -> BasicAnimationInterfaceFactoryInterface! {
        let list: BasicArrayList! = self.getList()
        let resourceTypeAvailableList: BasicArrayList! = BasicArrayListD()
        let size: Int32 = self.getList().size()
        var featureInterface: FeatureResourceAnimationInterfaceFactoryInterface! = nil
        var animationInterfaceFactoryInterface: BasicAnimationInterfaceFactoryInterface! = nil
        do {
            var index: Int32 = 0
            while (index < size) {
                defer { index &+= 1 }
            featureInterface = (list.objectArray[index] as Any as? FeatureResourceAnimationInterfaceFactoryInterface)
            if (featureInterface.isFeature()) {
                resourceTypeAvailableList.add((featureInterface as? JObject))
                animationInterfaceFactoryInterface = featureInterface.getBasicAnimationInterfaceFactoryInstance(resource)
                if (animationInterfaceFactoryInterface !== NullAnimationFactory.NULL_NOT_FOR_USE_ANIMATION_FACTORY) {
                    return animationInterfaceFactoryInterface
                }
            }
            }
        }
        if (resourceTypeAvailableList.size() > 0) {
            let NO_ANIMATION_AVAILABLE_FROM: String! = "No animation available from: "
            let FOR_FACTORIES: String! = " factories: "
            let FOR_RESOURCE: String! = " for Resource: "
            let HAS_KEY: String! = " has: "
            let RESOURCES_LABEL: String! = " resources "
            let stringBuffer: StringMaker! = StringMaker()
            stringBuffer.append(NO_ANIMATION_AVAILABLE_FROM)
            stringBuffer.appendint(resourceTypeAvailableList.size())
            stringBuffer.append(CommonSeps.getInstance().FORWARD_SLASH)
            stringBuffer.appendint(size)
            stringBuffer.append(FOR_FACTORIES)
            let size2: Int32 = resourceTypeAvailableList.size()
            do {
                var index: Int32 = 0
                while (index < size2) {
                    defer { index &+= 1 }
                stringBuffer.append(resourceTypeAvailableList.get(index).toString())
                stringBuffer.append(CommonSeps.getInstance().COMMA_SEP)
                }
            }
            stringBuffer.append(FOR_RESOURCE)
            stringBuffer.append(resource)
            do {
                var index: Int32 = 0
                while (index < size) {
                    defer { index &+= 1 }
                stringBuffer.append(CommonSeps.getInstance().NEW_LINE)
                featureInterface = (list.objectArray[index] as Any as? FeatureResourceAnimationInterfaceFactoryInterface)
                if (featureInterface.isFeature()) {
                    stringBuffer.append(StringUtil.getInstance().toString((featureInterface as? JObject)))
                    stringBuffer.append(HAS_KEY)
                    stringBuffer.appendint(featureInterface.getHashtable().size())
                    stringBuffer.append(RESOURCES_LABEL)
                }
                }
            }
            jThrow(JException("Exception", stringBuffer.toString()))
        } else {
            let stringBuffer: StringMaker! = StringMaker()
            do {
                var index: Int32 = 0
                while (index < size) {
                    defer { index &+= 1 }
                featureInterface = (list.objectArray[index] as Any as? FeatureResourceAnimationInterfaceFactoryInterface)
                stringBuffer.append(jstr(featureInterface))
                stringBuffer.append(CommonSeps.getInstance().SPACE)
                }
            }
            let result: String! = stringBuffer.toString()
            stringBuffer.delete(0, stringBuffer.length())
            jThrow(JException("Exception", stringBuffer.append("No feature resource type available for Resource: ").append(resource).append(" Resource Factories Available: ").append(result).toString()))
        }
    }
}

