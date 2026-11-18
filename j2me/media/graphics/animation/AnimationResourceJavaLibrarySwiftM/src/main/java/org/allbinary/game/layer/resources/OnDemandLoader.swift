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
// import org.allbinary.animation.resource.BaseResourceAnimationInterfaceFactoryInterfaceFactory
// import org.allbinary.game.configuration.feature.Features
// import org.allbinary.game.configuration.feature.MainFeatureFactory
// import org.allbinary.game.layer.GameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory
// import org.allbinary.game.layer.LayerPlacementInterfaceBasicArrayListFactoryInterface
// import org.allbinary.game.resource.ResourceLoadingLevelFactory
// import org.allbinary.image.ImageCache
// import org.allbinary.logic.communication.log.PreLogUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.string.CommonStrings

open class OnDemandLoader: JObject {
    fileprivate var onDemandResourcesFactory: OnDemandResourcesFactory! = nil
    fileprivate var gameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory: GameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory! = nil
    fileprivate var resourceAnimationInterfaceFactoryInterfaceFactory: BaseResourceAnimationInterfaceFactoryInterfaceFactory! = nil

    private func initFields() {
    
    
    
    }
    

    public init(_ onDemandResourcesFactory: OnDemandResourcesFactory!, _ gameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory: GameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory!, _ resourceAnimationInterfaceFactoryInterfaceFactory: BaseResourceAnimationInterfaceFactoryInterfaceFactory!) {
        super.init()
        self.initFields()
        self.onDemandResourcesFactory = onDemandResourcesFactory
        self.gameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory = gameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory
        self.resourceAnimationInterfaceFactoryInterfaceFactory = resourceAnimationInterfaceFactoryInterfaceFactory
    }
    

    open func `init`(_ imageCache: ImageCache!, _ level: Int32, _ loadingString: String!) {
        let resourceLoadingLevelFactory: ResourceLoadingLevelFactory! = ResourceLoadingLevelFactory.getInstance()
        if (Features.getInstance().isFeature(MainFeatureFactory.getInstance().LOAD_ALL)) {
            if (self.resourceAnimationInterfaceFactoryInterfaceFactory.isInitialized()) {
                return
            }
            self.initAll(imageCache, loadingString)
        } else if (level != resourceLoadingLevelFactory.LOAD_ALL.getLevel()) {
            let layerPlacementInterfaceBasicArrayListFactoryInterface: LayerPlacementInterfaceBasicArrayListFactoryInterface! = self.gameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory.getInstance(level)
            self.initLevel(layerPlacementInterfaceBasicArrayListFactoryInterface, imageCache, level, loadingString)
        }
    }
    

    fileprivate func initAll(_ imageCache: ImageCache!, _ loadingString: String!) {
        var index: Int32 = 0
        let portion: Int32 = 120
        var onDemandResources: OnDemandResources! = nil
        do {
            var onDemandIndex: Int32 = self.onDemandResourcesFactory.size()
            while (jPreDecrement(&onDemandIndex) >= 0) {
            onDemandResources = self.onDemandResourcesFactory.remove(onDemandIndex)
            if (onDemandResources !== OnDemandResources.NULL_ON_DEMAND_RESOURCES) {
                index = onDemandResources.initAt(imageCache, self.resourceAnimationInterfaceFactoryInterfaceFactory, portion, loadingString, index)
            }
            }
        }
    }
    

    fileprivate func initLevel(_ layerPlacementInterfaceBasicArrayListFactoryInterface: LayerPlacementInterfaceBasicArrayListFactoryInterface!, _ imageCache: ImageCache!, _ level: Int32, _ loadingString: String!) {
        let commonStrings: CommonStrings! = CommonStrings.getInstance()
        let portion: Int32 = 120
        var index: Int32 = 0
        let onDemandArray: JArray<Int32>! = layerPlacementInterfaceBasicArrayListFactoryInterface.getOnDemandResources()
        PreLogUtil.put(StringMaker().append(commonStrings.START).appendint(onDemandArray.length).toString(), self, "initLevel")
        var onDemandResources: OnDemandResources! = nil
        do {
            var onDemandIndex: Int32 = onDemandArray.length
            while (jPreDecrement(&onDemandIndex) >= 0) {
            onDemandResources = self.onDemandResourcesFactory.remove(onDemandArray[onDemandIndex])
            if (onDemandResources !== OnDemandResources.NULL_ON_DEMAND_RESOURCES) {
                index = onDemandResources.initAt(imageCache, self.resourceAnimationInterfaceFactoryInterfaceFactory, portion, loadingString, index)
            }
            }
        }
    }
}

