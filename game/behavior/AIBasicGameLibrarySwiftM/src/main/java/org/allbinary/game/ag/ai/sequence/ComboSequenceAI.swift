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

open class ComboSequenceAI: SequenceAI {
    

    public override init(_ artificialIntelligenceInterface: JArray<ArtificialIntelligenceInterface?>!, _ ownerLayerInterface: AllBinaryLayer!, _ gameInput: GameInput!) {
        super.init(artificialIntelligenceInterface, ownerLayerInterface, gameInput)
    }
    

    open override func processAI(_ allBinaryLayerManager: AllBinaryLayerManager!) {
        let artificialIntelligenceInterfaceArray: JArray<ArtificialIntelligenceInterface?>! = self.getArtificialIntelligenceInterface()
        let size: Int32 = artificialIntelligenceInterfaceArray.length
        do {
            var index: Int32 = 0
            while (index < size) {
                defer { index &+= 1 }
            self.setIndex(index)
            super.processAI(allBinaryLayerManager)
            }
        }
    }
}

