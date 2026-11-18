/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2022 AllBinary 
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
// package org.allbinary.game.displayable.canvas

import J2SEForSwiftLibrary
// import org.allbinary.business.advertisement.GameAdStateFactory
// import org.allbinary.game.GameAdState
// import org.allbinary.game.configuration.feature.Features
// import org.allbinary.graphics.opengles.CurrentDisplayableFactory
// import org.allbinary.graphics.opengles.OpenGLFeatureFactory
// import org.allbinary.logic.system.security.licensing.AbeClientInformationInterface

open class BaseGameBehavior: DemoGameBehavior {
    fileprivate static let instanceC: BaseGameBehavior! = BaseGameBehavior()

    public override init() {
        super.init()
    }
    

    @discardableResult open override class func getInstance() -> DemoGameBehavior! {
        return BaseGameBehavior.instanceC
    }
    

    open override func `init`() {
        let gameAdState: GameAdState! = GameAdStateFactory.getInstance().getCurrentInstance()
        gameAdState.playingAdState()
    }
    

    open override func pause(_ allBinaryGameCanvas: AllBinaryGameCanvas!) {
        let features: Features! = Features.getInstance()
        if (features.isDefault(OpenGLFeatureFactory.getInstance().OPENGL_AS_GAME_THREAD)) {
            let currentDisplayableFactory: CurrentDisplayableFactory! = CurrentDisplayableFactory.getInstance()
            currentDisplayableFactory.setRunnable(allBinaryGameCanvas.gamePauseRunnable)
        }
    }
    

    open override func unPause(_ allBinaryGameCanvas: AllBinaryGameCanvas!) {
        if (Features.getInstance().isDefault(OpenGLFeatureFactory.getInstance().OPENGL_AS_GAME_THREAD)) {
            let currentDisplayableFactory: CurrentDisplayableFactory! = CurrentDisplayableFactory.getInstance()
            currentDisplayableFactory.setRunnable(allBinaryGameCanvas.gameRunnable)
            currentDisplayableFactory.setDisplayable(allBinaryGameCanvas)
        }
    }
    

    open override func updateTouch(_ allBinaryGameCanvas: AllBinaryGameCanvas!) {
        allBinaryGameCanvas.updateTouch2()
    }
    

    open override func updateScreenButtonPaintable(_ allBinaryGameCanvas: AllBinaryGameCanvas!) {
        allBinaryGameCanvas.updateScreenButtonPaintable2()
    }
    

    open override func setGameState(_ allBinaryGameCanvas: AllBinaryGameCanvas!) {
        allBinaryGameCanvas.updateGameState()
    }
    

    open override func removeAllGameKeyInputListeners(_ allBinaryGameCanvas: AllBinaryGameCanvas!) {
        allBinaryGameCanvas.removeAllGameKeyInputListeners2()
    }
    

    open override func updateEndGameProcessor(_ allBinaryGameCanvas: AllBinaryGameCanvas!) {
        allBinaryGameCanvas.updateEndGameProcessor2()
    }
    

    open override func buildGame(_ allBinaryGameCanvas: AllBinaryGameCanvas!) {
        allBinaryGameCanvas.buildGame2()
    }
    

    open override func run(_ allBinaryGameCanvas: AllBinaryGameCanvas!) {
        allBinaryGameCanvas.run2()
    }
    

    open override func setHighScore(_ abeClientInformation: AbeClientInformationInterface!, _ allBinaryGameCanvas: AllBinaryGameCanvas!, _ name: String!, _ score: Int64, _ autoSubmit: Bool, _ isLast: Bool) {
        allBinaryGameCanvas.setHighScore2(abeClientInformation, name, score, autoSubmit, isLast)
    }
}

