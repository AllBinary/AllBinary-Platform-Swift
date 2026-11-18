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
// package org.allbinary.game.ag.ai

import J2SEForSwiftLibrary
// import org.allbinary.ai.ArtificialIntelligenceInterface
// import org.allbinary.game.ag.ai.sequence.SequenceAI
// import org.allbinary.game.input.GameInput
// import org.allbinary.game.layer.identification.GroupLayerManagerListener
// import org.allbinary.layer.AllBinaryLayer
// import org.allbinary.layer.AllBinaryLayerManager

open class NumberOnOwnGroupSequenceAI: SequenceAI {
    fileprivate var numberOnSameTeam: JArray<Int32?>! = nil

    // Each class has its own field initializers
    private func initFields() {
    
    }
    

    public init(_ numberOnSameTeam: JArray<Int32?>!, _ artificialIntelligenceInterface: JArray<ArtificialIntelligenceInterface?>!, _ ownerLayerInterface: AllBinaryLayer!, _ gameInput: GameInput!) {
        super.init(artificialIntelligenceInterface, ownerLayerInterface, gameInput)
        self.initFields()
        self.numberOnSameTeam = numberOnSameTeam
    }
    

    open override func processAI(_ allBinaryLayerManager: AllBinaryLayerManager!) {
        let layerInterface: AllBinaryLayer! = self.getOwnerLayerInterface()
        let index: Int32 = self.getIndex()
        if (self.numberOnSameTeam.length > index) {
            let size: Int32 = GroupLayerManagerListener.getInstance().getGroupSizeFromInterface(layerInterface)
            if (self.numberOnSameTeam[index]!.intValue() > size) {
                self.next()
            }
        }
        super.processAI(allBinaryLayerManager)
    }
}

