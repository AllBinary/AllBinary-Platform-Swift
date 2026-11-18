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
// import org.allbinary.ai.ArtificialIntelligenceInterface
// import org.allbinary.game.ag.ai.ArrayAI
// import org.allbinary.game.ai.ArtificialIntelligenceInterfaceFactoryInterface
// import org.allbinary.game.input.GameInput
// import org.allbinary.layer.AllBinaryLayer
// import org.allbinary.util.ABHashtable

open class RandomPatrolFlockingFiringAIFactory: JObject, ArtificialIntelligenceInterfaceFactoryInterface {

    public override init() {
        super.init()
    }
    

    @discardableResult open func getInstance(_ hashtable: ABHashtable!, _ ownerLayerInterface: AllBinaryLayer!, _ gameInput: GameInput!) -> ArtificialIntelligenceInterface! {
        let artificialIntelligenceInterface: JArray<ArtificialIntelligenceInterface?>! = JArray<ArtificialIntelligenceInterface?>(2, nil)
        artificialIntelligenceInterface[0] = RandomPatrolAI(hashtable, ownerLayerInterface, gameInput)
        artificialIntelligenceInterface[1] = TimedFireAI(1800, ownerLayerInterface, gameInput)
        return ArrayAI(artificialIntelligenceInterface, ownerLayerInterface, gameInput)
    }
}

