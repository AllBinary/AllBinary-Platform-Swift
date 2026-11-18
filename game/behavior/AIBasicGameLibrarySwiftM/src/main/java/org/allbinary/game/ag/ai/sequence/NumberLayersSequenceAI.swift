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
// package org.allbinary.game.ag.ai.sequence

import J2SEForSwiftLibrary
// import org.allbinary.ai.ArtificialIntelligenceInterface
// import org.allbinary.game.input.GameInput
// import org.allbinary.layer.AllBinaryLayer
// import org.allbinary.layer.AllBinaryLayerManager

open class NumberLayersSequenceAI: SequenceAI {
    fileprivate var numberOfLayersLeft: Int32 = 0

    // Each class has its own field initializers
    private func initFields() {
    
    }
    

    public init(_ numberOfEnemiesLeft: Int32, _ artificialIntelligenceInterface: JArray<ArtificialIntelligenceInterface?>!, _ ownerLayerInterface: AllBinaryLayer!, _ gameInput: GameInput!) {
        super.init(artificialIntelligenceInterface, ownerLayerInterface, gameInput)
        self.initFields()
        self.numberOfLayersLeft = numberOfEnemiesLeft
    }
    

    open override func processAI(_ allBinaryLayerManager: AllBinaryLayerManager!) {
        if (self.getIndex() == 0) {
            if (allBinaryLayerManager.getSize() < self.numberOfLayersLeft) {
                self.setIndex(1)
            }
        }
        super.processAI(allBinaryLayerManager)
    }
}

