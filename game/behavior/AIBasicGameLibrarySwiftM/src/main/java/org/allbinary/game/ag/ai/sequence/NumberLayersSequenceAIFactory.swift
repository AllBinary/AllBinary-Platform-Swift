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

open class NumberLayersSequenceAIFactory: JObject {

    public override init() {
        super.init()
    }
    

    @discardableResult open func getInstance(_ numberOfEnemiesLeft: Int32, _ artificialIntelligenceInterface: JArray<ArtificialIntelligenceInterface?>!, _ ownerLayerInterface: AllBinaryLayer!, _ gameInput: GameInput!) -> ArtificialIntelligenceInterface! {
        return NumberLayersSequenceAI(numberOfEnemiesLeft, artificialIntelligenceInterface, ownerLayerInterface, gameInput)
    }
}

