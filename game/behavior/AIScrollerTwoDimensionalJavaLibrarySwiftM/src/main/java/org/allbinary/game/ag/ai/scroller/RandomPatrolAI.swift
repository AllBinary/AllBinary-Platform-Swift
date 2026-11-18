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
// import org.allbinary.game.input.GameInput
// import org.allbinary.game.rand.MyRandomFactory
// import org.allbinary.layer.AllBinaryLayer
// import org.allbinary.layer.AllBinaryLayerManager
// import org.allbinary.util.ABHashtable

open class RandomPatrolAI: BasePatrolAI {
    fileprivate var changedDirection: Bool = false

    // Each class has its own field initializers
    private func initFields() {
    self.changedDirection = true
    }
    

    public override init(_ hashtable: ABHashtable!, _ ownerLayerInterface: AllBinaryLayer!, _ gameInput: GameInput!) {
        super.init(hashtable, ownerLayerInterface, gameInput)
        self.initFields()
        self.updateRandomDistance()
    }
    

    fileprivate func updateRandomDistance() {
        self.currentDistance = MyRandomFactory.getInstance().getAbsoluteNextInt(self.maxDistance.intValue())
    }
    

    open override func processAI(_ allBinaryLayerManager: AllBinaryLayerManager!) {
        super.update()
        super.processKeyAI(self.keyDirection)
        if (self.changedDirection) {
            super.processKeyAI(Canvas.KEY_NUM1)
            self.updateRandomDistance()
            self.changedDirection = false
        }
    }
    

    open override func nextDirection() {
        super.nextDirection()
        self.changedDirection = true
    }
}

