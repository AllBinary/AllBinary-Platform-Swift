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
// import org.allbinary.game.configuration.event.GameInitializedEvent
// import org.allbinary.game.configuration.event.GameInitializedEventHandler
// import org.allbinary.game.configuration.event.GameInitializedListenerInterface
// import org.allbinary.game.resource.FeatureResourceInitializationUtil
// import org.allbinary.graphics.threed.SWTJOGLProcessor
// import org.allbinary.logic.communication.log.ForcedLogUtil
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.util.event.AllBinaryEventObject
// import org.allbinary.logic.util.event.EventStrings
// import org.allbinary.string.CommonStrings

open class DefaultGameInitializationListener: JObject, GameInitializedListenerInterface {
    public var logUtil: LogUtil! = nil
    fileprivate var swtJOGLProcessor: SWTJOGLProcessor! = nil
    public var firstTime: Bool = false

    private func initFields() {
    self.logUtil = LogUtil.getInstance()
    self.swtJOGLProcessor = SWTJOGLProcessor.getInstance()
    self.firstTime = true
    }
    

    public override init() {
        super.init()
        self.initFields()
        let gameInitializedEventHandler: GameInitializedEventHandler! = GameInitializedEventHandler.getInstance()
        gameInitializedEventHandler.removeAllListeners()
        gameInitializedEventHandler.addListenerInterface((self as! GameInitializedListenerInterface))
    }
    

    open func onEvent(_ eventObject: AllBinaryEventObject!) {
        ForcedLogUtil.log(EventStrings.getInstance().PERFORMANCE_MESSAGE, self)
    }
    

    open func onGameInitialized(_ gameInitializedEvent: GameInitializedEvent!) {
        let ON_GAME_INITIALIZED: String! = "onGameInitialized"
        let commonStrings: CommonStrings! = CommonStrings.getInstance()
        do {
            self.logUtil.putF(commonStrings.START, self, ON_GAME_INITIALIZED)
            while (!self.swtJOGLProcessor.isHolderCreated()) {
                self.logUtil.putF(commonStrings.UPDATE, self, ON_GAME_INITIALIZED)
                Thread.sleep(20)
            }
            FeatureResourceInitializationUtil.getInstance().`init`(gameInitializedEvent.getLevel())
            if (self.firstTime) {
                self.firstTime = false
            } else {
                self.swtJOGLProcessor.onSurfaceChanged()
            }
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
}

