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
// import org.allbinary.game.configuration.event.ChangedGameFeatureListener
// import org.allbinary.game.configuration.event.GameInitializedEvent
// import org.allbinary.game.configuration.event.GameInitializedEventHandler
// import org.allbinary.game.configuration.feature.Features
// import org.allbinary.game.configuration.feature.MainFeatureFactory
// import org.allbinary.game.resource.ResourceLoadingLevelFactory
// import org.allbinary.graphics.displayable.MyCanvas
// import org.allbinary.logic.system.security.licensing.AbeClientInformationInterface

open class GameInitializationUtil: JObject {
    fileprivate static let instance: GameInitializationUtil! = GameInitializationUtil()
    public var EVENT: GameInitializedEvent! = nil

    private func initFields() {
    self.EVENT = GameInitializedEvent(self)
    }

    public override init() {
        super.init()
        self.initFields()
    }
    

    public func initDemo(_ abeClientInformation: AbeClientInformationInterface!, _ canvas: MyCanvas!, _ gameInitializationInterfaceFactoryInterface: BasicBuildGameInitializerFactory!) {
        let mainFeatureFactory: MainFeatureFactory! = MainFeatureFactory.getInstance()
        if (ChangedGameFeatureListener.getInstance().isChangedFeature(mainFeatureFactory.STATIC)) {
            let gameInitializationInterface: GameInitializationInterface! = gameInitializationInterfaceFactoryInterface.getInstance()
            let features: Features! = Features.getInstance()
            if (features.isFeature(mainFeatureFactory.LOAD_ALL)) {
                self.initGame(abeClientInformation, canvas, gameInitializationInterfaceFactoryInterface)
            } else if (features.isFeature(mainFeatureFactory.LOAD_ONDEMAND)) {
                let resourceLoadingLevelFactory: ResourceLoadingLevelFactory! = ResourceLoadingLevelFactory.getInstance()
                gameInitializationInterface.`init`(abeClientInformation, canvas.getCustomCommandListener(), resourceLoadingLevelFactory.LOAD_EARLY.getLevel())
                self.EVENT.setResourceLoadingLevel(resourceLoadingLevelFactory.LOAD_EARLY)
            } else {
                jThrow(JException("Exception", "No Loading Feature Available"))
            }
            GameInitializedEventHandler.getInstance().fireEvent(self.EVENT)
        }
    }
    

    public func initGame(_ abeClientInformation: AbeClientInformationInterface!, _ canvas: MyCanvas!, _ gameInitializationInterfaceFactoryInterface: BasicBuildGameInitializerFactory!) {
        if (ChangedGameFeatureListener.getInstance().isChangedFeature(MainFeatureFactory.getInstance().STATIC)) {
            let gameInitializationInterface: GameInitializationInterface! = gameInitializationInterfaceFactoryInterface.getInstance()
            let resourceLoadingLevelFactory: ResourceLoadingLevelFactory! = ResourceLoadingLevelFactory.getInstance()
            gameInitializationInterface.`init`(abeClientInformation, canvas.getCustomCommandListener(), resourceLoadingLevelFactory.LOAD_ALL.getLevel())
            self.EVENT.setResourceLoadingLevel(resourceLoadingLevelFactory.LOAD_ALL)
            GameInitializedEventHandler.getInstance().fireEvent(self.EVENT)
            ChangedGameFeatureListener.getInstance().remove(MainFeatureFactory.getInstance().STATIC)
        }
    }
    

    @discardableResult open class func getInstance() -> GameInitializationUtil! {
        return GameInitializationUtil.instance
    }
}

