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
// import org.allbinary.game.ag.ai.tactical.BasicRandomAIFactory
// import org.allbinary.game.ai.ArtificialIntelligenceInterfaceFactoryInterface
// import org.allbinary.game.ai.BasicAI
// import org.allbinary.game.input.GameInput
// import org.allbinary.layer.AllBinaryLayer
// import org.allbinary.logic.util.visitor.Visitor
// import org.allbinary.util.ABHashtable

open class DiveAndDirectionalTrackingAIFactory: JObject, ArtificialIntelligenceInterfaceFactoryInterface {

    public override init() {
        super.init()
    }
    

    @discardableResult open func getInstance(_ hashtable: ABHashtable!, _ ownerLayerInterface: AllBinaryLayer!, _ gameInput: GameInput!) -> ArtificialIntelligenceInterface! {
        var visitorCanBeNull: JObject! = hashtable.get(jBoxValue(BasicAI.AI_VISITOR))
        if (visitorCanBeNull == nil) {
            visitorCanBeNull = ThrustAIVisitorFactory.getInstance()
        }
        let hashtable2: ABHashtable! = BasicProbabilityAIDataFactory().getInstance()
        hashtable2.put(jBoxValue(BasicAI.AI_VISITOR), LastKeyAIVisitorFactory.getInstance())
        let artificialIntelligenceInterface: ArtificialIntelligenceInterface! = BasicRandomAIFactory().getInstance(hashtable2, ownerLayerInterface, gameInput)
        return DiveAndDirectionalTrackingAI(ownerLayerInterface, artificialIntelligenceInterface, gameInput, (visitorCanBeNull as! Visitor))
    }
}

