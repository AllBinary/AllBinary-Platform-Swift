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
// package org.allbinary.game.init

import J2SEForSwiftLibrary
// import javax.microedition.lcdui.CommandListener
// import org.allbinary.animation.FeaturedAnimationInterfaceFactoryInterfaceFactory
// import org.allbinary.game.configuration.GameConfigurationCentral
// import org.allbinary.game.configuration.event.ChangedGameFeatureListener
// import org.allbinary.game.configuration.feature.InputFeatureFactory
// import org.allbinary.game.configuration.feature.MainFeatureFactory
// import org.allbinary.game.input.PlatformInputMappingFactory
// import org.allbinary.game.input.event.GameKeyEventFactory
// import org.allbinary.game.resource.FeaturedResourceRelativeRelationshipFactory
// import org.allbinary.game.resource.ResourceInitialization
// import org.allbinary.game.resource.ResourceLoadingLevelFactory
// import org.allbinary.graphics.canvas.transition.progress.ProgressCanvas
// import org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory
// import org.allbinary.image.GameFeatureImageCacheFactory
// import org.allbinary.input.motion.CompleteMotionGestureInputToGameMotionGestureInput
// import org.allbinary.input.motion.button.BasicTouchInputFactory
// import org.allbinary.input.motion.button.CancelTouchButtonInputFactory
// import org.allbinary.logic.system.security.licensing.AbeClientInformationInterface

open class BaseGameInitialization: JObject, GameInitializationInterface {
    public static let NULL_BASE_GAME_INITIALIZATION: BaseGameInitialization! = BaseGameInitialization(JArray<ResourceInitialization?>(0, nil), 0)
    public var resourceInitializationArray: JArray<ResourceInitialization?>! = nil
    fileprivate var portion: Int32 = 0
    fileprivate var initialized: Bool = false
    public var EARLY_RESOURCES: Int32 = 0
    public var GAME_RESOURCES: Int32 = 0
    public var EARLY_CHANGABLE_RESOURCES: Int32 = 0
    public var GAME_CHANGABLE_RESOURCES: Int32 = 0
    fileprivate var gameInitialized: Bool = false
    fileprivate var allLoaded: Bool = false

    private func initFields() {
    
    
    self.initialized = false
    self.EARLY_RESOURCES = 0
    self.GAME_RESOURCES = 1
    self.EARLY_CHANGABLE_RESOURCES = 2
    self.GAME_CHANGABLE_RESOURCES = 3
    self.gameInitialized = false
    self.allLoaded = false
    }
    

    public init(_ resourceInitializationArray: JArray<ResourceInitialization?>!, _ portion: Int32) {
        super.init()
        self.initFields()
        self.resourceInitializationArray = resourceInitializationArray
        self.portion = portion
    }
    

    open func initKey(_ portion: Int32) {
    }
    

    open func initKeyMapping(_ abeClientInformation: AbeClientInformationInterface!, _ portion: Int32) {
        if (ChangedGameFeatureListener.getInstance().isChangedFeature(InputFeatureFactory.getInstance().INPUT_MAPPING)) {
            PlatformInputMappingFactory.getInstance().getPersistentInputMappingInstance().`init`(abeClientInformation)
            ProgressCanvasFactory.getInstance().addNormalPortion(50, "Game Keys")
            ChangedGameFeatureListener.getInstance().remove(InputFeatureFactory.getInstance().INPUT_MAPPING)
        }
    }
    

    open func `init`(_ abeClientInformation: AbeClientInformationInterface!, _ commandListener: CommandListener!, _ level: Int32) {
        let resourceLoadingLevelFactory: ResourceLoadingLevelFactory! = ResourceLoadingLevelFactory.getInstance()
        if (!self.isInitialized() && (level == resourceLoadingLevelFactory.LOAD_ALL.getLevel() || level == resourceLoadingLevelFactory.LOAD_EARLY.getLevel())) {
            var localPortion: Int32 = 40
            if (level == resourceLoadingLevelFactory.LOAD_EARLY.getLevel()) {
                localPortion = 8
            }
            self.setInitialized(true)
            self.initKey(self.getPortion())
            self.initKeyMapping(abeClientInformation, self.getPortion())
            GameKeyEventFactory.getInstance().`init`()
            let progressCanvas: ProgressCanvas! = ProgressCanvasFactory.getInstance()
            progressCanvas.addNormalPortion(localPortion, "Game Key Events")
            BasicTouchInputFactory.getInstance().`init`(PlatformInputMappingFactory.getInstance().getPersistentInputMappingInstance().getInputMapping())
            CancelTouchButtonInputFactory.getInstance()
            progressCanvas.addNormalPortion(localPortion, "Touch Input")
            CompleteMotionGestureInputToGameMotionGestureInput.getInstance().`init`()
            progressCanvas.addNormalPortion(localPortion, "Motion Input")
            GameFeatureImageCacheFactory.`init`()
            progressCanvas.addNormalPortion(localPortion, "Image Cache")
            self.resourceInitializationArray[self.EARLY_RESOURCES]!.`init`()
        }
    }
    

    open func resourceInitialization(_ level: Int32) {
        let resourceLoadingLevelFactory: ResourceLoadingLevelFactory! = ResourceLoadingLevelFactory.getInstance()
        if (self.resourceAnimationChange() && level == resourceLoadingLevelFactory.LOAD_EARLY.getLevel()) {
            self.clearResources()
            self.resourceInitializationArray[self.EARLY_CHANGABLE_RESOURCES]!.`init`()
        }
        if (self.resourceAnimationChange() && level == resourceLoadingLevelFactory.LOAD_ALL.getLevel()) {
            if (self.allLoaded) {
                self.clearResources()
            }
            if (FeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance().getList().size() == 0) {
                self.resourceInitializationArray[self.EARLY_CHANGABLE_RESOURCES]!.`init`()
            }
            self.resourceInitializationArray[self.GAME_CHANGABLE_RESOURCES]!.`init`()
            self.allLoaded = true
        }
    }
    

    @discardableResult open func resourceAnimationChange() -> Bool {
        let changedGameFeatureListener: ChangedGameFeatureListener! = ChangedGameFeatureListener.getInstance()
        let gameConfigurationCentral: GameConfigurationCentral! = GameConfigurationCentral.getInstance()
        if (changedGameFeatureListener.isChangedGameConfiguration(gameConfigurationCentral.SCALE)) {
            return true
        }
        if (ChangedGameFeatureListener.getInstance().isChangedFeature(MainFeatureFactory.getInstance().STATIC)) {
            return true
        }
        return false
    }
    

    fileprivate func clearResources() {
        self.allLoaded = false
        GameFeatureImageCacheFactory.releaseAll()
        let featuredAnimationInterfaceFactoryInterfaceFactory: FeaturedAnimationInterfaceFactoryInterfaceFactory! = FeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance()
        featuredAnimationInterfaceFactoryInterfaceFactory.clear()
        FeaturedResourceRelativeRelationshipFactory.getInstance().clear()
    }
    

    open func setGameInitialized(_ gameInitialized: Bool) {
        self.gameInitialized = gameInitialized
    }
    

    @discardableResult open func isGameInitialized() -> Bool {
        return self.gameInitialized
    }
    

    @discardableResult open func getPortion() -> Int32 {
        return self.portion
    }
    

    open func setInitialized(_ initialized: Bool) {
        self.initialized = initialized
    }
    

    @discardableResult open func isInitialized() -> Bool {
        return self.initialized
    }
}

