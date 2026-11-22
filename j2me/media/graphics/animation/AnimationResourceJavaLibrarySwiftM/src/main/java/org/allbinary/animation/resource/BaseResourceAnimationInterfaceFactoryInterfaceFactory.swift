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
// package org.allbinary.animation.resource

import J2SEForSwiftLibrary
// import org.allbinary.animation.BasicAnimationInterfaceFactoryInterface
// import org.allbinary.animation.NullAnimationFactory
// import org.allbinary.game.resource.ResourceLoadingLevelFactory
// import org.allbinary.graphics.Rectangle
// import org.allbinary.graphics.RectangleFactory
// import org.allbinary.image.ImageCache
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.string.CommonSeps
// import org.allbinary.string.CommonStrings
// import org.allbinary.util.ABHashtable

open class BaseResourceAnimationInterfaceFactoryInterfaceFactory: JObject, FeatureResourceAnimationInterfaceFactoryInterface {
    public var logUtil: LogUtil! = nil
    public var commonStrings: CommonStrings! = nil
    fileprivate var hashtable: ABHashtable! = nil
    fileprivate var rectangleHashtable: ABHashtable! = nil
    fileprivate var rectangleArrayOfArraysHashtable: ABHashtable! = nil
    fileprivate var name: String! = nil
    fileprivate var initialized: Bool = false

    private func initFields() {
    self.logUtil = LogUtil.getInstance()
    self.commonStrings = CommonStrings.getInstance()
    
    
    
    
    self.initialized = false
    }
    

    public init(_ name: String!, _ hashtable: ABHashtable!, _ rectangleHashtable: ABHashtable!, _ rectangleArrayHashtable: ABHashtable!) {
        super.init()
        self.initFields()
        self.hashtable = hashtable
        self.rectangleHashtable = rectangleHashtable
        self.rectangleArrayOfArraysHashtable = rectangleArrayHashtable
        self.name = name
    }
    

    @discardableResult open func getName() -> String! {
        return self.name
    }
    

    open func `init`(_ level: Int32) {
        let commonStrings: CommonStrings! = CommonStrings.getInstance()
        self.logUtil.putF(StringMaker().append("Available List of Animations: ").append(self.hashtable.toString()).toString(), self, commonStrings.INIT)
        self.setInitialized(true)
    }
    

    open func initImageCache(_ imageCache: ImageCache!, _ level: Int32) {
    }
    

    open func add(_ resource: String!, _ animationInterfaceFactoryInterface: BasicAnimationInterfaceFactoryInterface!) {
        if (self.hashtable.containsKey(jBoxString(resource))) {
            jThrow(JException("Exception", StringMaker().append("Resource Already Created: ").append(resource).toString()))
        }
        self.hashtable.put(jBoxString(resource), (animationInterfaceFactoryInterface as? JObject))
    }
    

    @discardableResult open func getBasicAnimationInterfaceFactoryInstance(_ resource: String!) -> BasicAnimationInterfaceFactoryInterface! {
        let basicAnimationInterfaceFactoryInterfaceCanBeNull: JObject! = self.hashtable.get(jBoxString(resource))
        if (basicAnimationInterfaceFactoryInterfaceCanBeNull == nil) {
            return NullAnimationFactory.NULL_NOT_FOR_USE_ANIMATION_FACTORY
        }
        return (basicAnimationInterfaceFactoryInterfaceCanBeNull as Any as? BasicAnimationInterfaceFactoryInterface)
    }
    

    @discardableResult open func getRectangle(_ resource: String!) -> Rectangle! {
        let rectangleCanBeNull: JObject! = self.rectangleHashtable.get(jBoxString(resource))
        if (rectangleCanBeNull == nil) {
            return RectangleFactory.SINGLETON
        }
        return (rectangleCanBeNull as! Rectangle)
    }
    

    open func addRectangle(_ resource: String!, _ rectangle: Rectangle!) {
        self.rectangleHashtable.put(jBoxString(resource), rectangle)
    }
    

    @discardableResult open func getRectangleArrayOfArrays(_ resource: String!) -> JArray<JArray<Rectangle?>?>! {
        let valueCanBeNull: JObject! = self.rectangleArrayOfArraysHashtable.get(jBoxString(resource))
        if (valueCanBeNull != nil) {
            let rectangleArrayOfArrays: JArray<JArray<Rectangle?>?>! = (valueCanBeNull as! JArray<JArray<Rectangle?>?>)
            return rectangleArrayOfArrays
        } else {
            return RectangleFactory.ARRAY_OF_ARRAYS
        }
    }
    

    open func addRectangleArrayOfArrays(_ resource: String!, _ rectangleArrayOfArrays: JArray<JArray<Rectangle?>?>!) {
        self.rectangleArrayOfArraysHashtable.put(jBoxString(resource), rectangleArrayOfArrays)
    }
    

    @discardableResult open func isFeature() -> Bool {
        return false
    }
    

    @discardableResult open func isLoadingLevel(_ level: Int32) -> Bool {
        let resourceLoadingLevelFactory: ResourceLoadingLevelFactory! = ResourceLoadingLevelFactory.getInstance()
        if (level == resourceLoadingLevelFactory.LOAD_ALL.getLevel()) {
            return true
        } else {
            return false
        }
    }
    

    @discardableResult open override func toString() -> String! {
        return StringMaker().append(JObject.className(self)).append(CommonSeps.getInstance().SEMICOLON).append(CommonSeps.getInstance().SPACE).append(self.name).toString()
    }
    

    @discardableResult open func getHashtable() -> ABHashtable! {
        return self.hashtable
    }
    

    @discardableResult open func getRectangleHashtable() -> ABHashtable! {
        return self.rectangleHashtable
    }
    

    @discardableResult open func getRectangleArrayOfArraysHashtable() -> ABHashtable! {
        return self.rectangleArrayOfArraysHashtable
    }
    

    open func setInitialized(_ initialized: Bool) {
        self.initialized = initialized
    }
    

    @discardableResult open func isInitialized() -> Bool {
        return self.initialized
    }
}

