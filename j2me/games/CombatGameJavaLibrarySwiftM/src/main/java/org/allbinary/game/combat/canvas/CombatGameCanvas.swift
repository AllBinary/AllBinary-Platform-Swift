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
// package org.allbinary.game.combat.canvas

import J2SEForSwiftLibrary
// import javax.microedition.lcdui.CommandListener
// import org.allbinary.game.combat.destroy.DestroyedLayerProcessor
// import org.allbinary.game.combat.destroy.event.DestroyEventCircularStaticPool
// import org.allbinary.game.combat.destroy.event.DestroyedEventHandler
// import org.allbinary.game.configuration.feature.Features
// import org.allbinary.game.configuration.feature.GameFeatureFactory
// import org.allbinary.game.displayable.canvas.AllBinaryGameCanvas
// import org.allbinary.game.init.BasicBuildGameInitializerFactory
// import org.allbinary.game.layer.AllBinaryGameLayerManager
// import org.allbinary.game.layer.drop.DropLayerProcessor
// import org.allbinary.game.layer.identification.GroupLayerManagerListener
// import org.allbinary.game.score.HighScoresFactoryInterface
// import org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory
// import org.allbinary.layer.BasicLayerProcessor
// import org.allbinary.logic.system.security.licensing.AbeClientInformationInterface

open class CombatGameCanvas: AllBinaryGameCanvas {
    public static var basicLayerProcessor: JArray<BasicLayerProcessor?>! = JArray<BasicLayerProcessor?>(0, nil)
    

    public override init(_ cmdListener: CommandListener!, _ gameLayerManager: AllBinaryGameLayerManager!, _ highScoresFactoryInterface: HighScoresFactoryInterface!, _ gameInitializationInterfaceFactoryInterface: BasicBuildGameInitializerFactory!, _ buffered: Bool) {
        super.init(cmdListener, gameLayerManager, highScoresFactoryInterface, gameInitializationInterfaceFactoryInterface, buffered)
    }
    

    fileprivate func CombatGameCanvas_init() {
        DestroyEventCircularStaticPool.getInstance().`init`(self)
        ProgressCanvasFactory.getInstance().addNormalPortion(50, "Destroy Events")
    }
    

    open override func initApp(_ abeClientInformation: AbeClientInformationInterface!) {
        self.CombatGameCanvas_init()
        super.initApp(abeClientInformation)
    }
    

    open func initConfigurablePortion(_ portion: Int32) {
        DestroyedLayerProcessor.`init`()
        ProgressCanvasFactory.getInstance().addNormalPortion(portion, "Basic Processors")
        let features: Features! = Features.getInstance()
        let gameFeatureFactory: GameFeatureFactory! = GameFeatureFactory.getInstance()
        if (features.isFeature(gameFeatureFactory.DROPPED_ITEMS) && features.isFeature(gameFeatureFactory.DROPPED_ITEMS_FROM_DEATH)) {
            CombatGameCanvas.basicLayerProcessor = JArray<BasicLayerProcessor?>(2, nil)
            CombatGameCanvas.basicLayerProcessor[0] = DestroyedLayerProcessor.getInstance()
            CombatGameCanvas.basicLayerProcessor[1] = DropLayerProcessor.getInstance()
        } else {
            CombatGameCanvas.basicLayerProcessor = JArray<BasicLayerProcessor?>(1, nil)
            CombatGameCanvas.basicLayerProcessor[0] = DestroyedLayerProcessor.getInstance()
        }
    }
    

    open override func processPlayingGame() {
        super.processPlayingGame()
        do {
            var index: Int32 = CombatGameCanvas.basicLayerProcessor.length
            while (jPreDecrement(&index) >= 0) {
            CombatGameCanvas.basicLayerProcessor[index]!.process(self.gameLayerManager)
            }
        }
    }
    

    open override func cleanupGame() {
        super.cleanupGame()
        do {
            var index: Int32 = CombatGameCanvas.basicLayerProcessor.length
            while (jPreDecrement(&index) >= 0) {
            CombatGameCanvas.basicLayerProcessor[index]!.getList().clear()
            }
        }
        GroupLayerManagerListener.getInstance().clear()
        GroupLayerManagerListener.getInstance().log()
        DestroyedEventHandler.getInstance().removeAllListeners()
        self.cleanupManager()
    }
    

    open func cleanupManager() {
        self.gameLayerManager.cleanup()
    }
}

