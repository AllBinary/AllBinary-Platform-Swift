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
// package org.allbinary.game.ag.ai.scroller

import J2SEForSwiftLibrary
// import javax.microedition.lcdui.Canvas
// import org.allbinary.game.ai.BasicAI
// import org.allbinary.game.input.GameInput
// import org.allbinary.game.layer.AllBinaryGameLayerManager
// import org.allbinary.game.rand.MyRandomFactory
// import org.allbinary.graphics.displayable.DisplayInfoSingleton
// import org.allbinary.layer.AllBinaryLayer
// import org.allbinary.layer.AllBinaryLayerManager
// import org.allbinary.logic.math.SmallIntegerSingletonFactory
// import org.allbinary.media.audio.PlayerQueue
// import org.allbinary.media.audio.SecondaryPlayerQueueFactory
// import org.allbinary.media.audio.Sound
// import org.allbinary.time.TimeDelayHelper
// import org.allbinary.util.ABHashtable

open class HorizontalScreenPatrolAI: BasicAI {
    public static let SOUND: Int32! = SmallIntegerSingletonFactory.getInstance().getAt(433)
    public var keyDirection: Int32 = 0
    fileprivate var displayInfoSingleton: DisplayInfoSingleton! = nil
    fileprivate var firingX: Int32 = 0
    fileprivate var firedIndex: Int32 = 0
    fileprivate var MAX_FIRE: Int32 = 0
    fileprivate var timeDelayHelper: TimeDelayHelper! = nil
    fileprivate var secondaryPlayerQueue: PlayerQueue! = nil
    fileprivate var sound: Sound! = nil

    // Each class has its own field initializers
    private func initFields() {
    self.keyDirection = Canvas.LEFT
    self.displayInfoSingleton = DisplayInfoSingleton.getInstance()
    self.firingX = self.displayInfoSingleton.getLastHalfWidth()
    self.firedIndex = 0
    self.MAX_FIRE = 28
    self.timeDelayHelper = TimeDelayHelper(240)
    self.secondaryPlayerQueue = SecondaryPlayerQueueFactory.getInstance()
    
    }
    

    public init(_ hashtable: ABHashtable!, _ ownerLayerInterface: AllBinaryLayer!, _ gameInput: GameInput!) {
        super.init(ownerLayerInterface, gameInput)
        self.initFields()
        self.sound = (hashtable.get(jBoxValue(HorizontalScreenPatrolAI.SOUND)) as! Sound)
        if (self.sound == nil) {
            jThrow(JException("Exception", "No Sound Provided!!"))
        }
    }
    

    open override func processAI(_ allBinaryLayerManager: AllBinaryLayerManager!) {
        super.processKeyAI(self.keyDirection)
        if (self.timeDelayHelper.isTimeTNT()) {
            let layerInterface: AllBinaryLayer! = self.getOwnerLayerInterface()
            let currentOwnerLayerX: Int32 = layerInterface.getXP()
            if (currentOwnerLayerX < -layerInterface.getWidth()) {
                let y: Int32 = MyRandomFactory.getInstance().getAbsoluteNextIntAllowZero(50)
                layerInterface.setPosition(self.displayInfoSingleton.getLastWidth() &+ layerInterface.getWidth() &+ 50, y, layerInterface.getZP())
                self.firedIndex = 0
                self.firingX = self.displayInfoSingleton.getLastHalfWidth() &+ MyRandomFactory.getInstance().getNextInt(self.displayInfoSingleton.getLastHalfWidth())
                self.secondaryPlayerQueue.add(self.sound)
            }
            if (currentOwnerLayerX < self.firingX && currentOwnerLayerX > -layerInterface.getWidth()) {
                super.processKeyAI(Canvas.KEY_NUM1)
                let gameLayerManager: AllBinaryGameLayerManager! = (allBinaryLayerManager as! AllBinaryGameLayerManager)
                var FIRE: Int32 = (gameLayerManager.getGameInfo().getCurrentLevel() &+ 12) >> 2
                if (FIRE > self.MAX_FIRE) {
                    FIRE = self.MAX_FIRE
                }
                if (self.firedIndex > FIRE) {
                    self.firedIndex = 0
                    self.firingX = Integer.MIN_VALUE
                }
                self.firedIndex &+= 1
            }
        }
    }
    

    open func nextDirection() {
    }
}

