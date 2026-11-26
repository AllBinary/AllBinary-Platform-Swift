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
// package org.allbinary.game.ag.ai.tactical

import J2SEForSwiftLibrary
// import org.allbinary.ai.ArtificialIntelligenceInterface
// import org.allbinary.game.ai.ArtificialIntelligenceInterfaceFactoryInterface
// import org.allbinary.game.ai.BasicAI
// import org.allbinary.game.ag.ai.InputProbability
// import org.allbinary.game.input.GameInput
// import org.allbinary.layer.AllBinaryLayer
// import org.allbinary.logic.util.visitor.Visitor
// import org.allbinary.util.ABHashtable

open class BasicRandomAIFactory: JObject, ArtificialIntelligenceInterfaceFactoryInterface {

    public override init() {
        super.init()
    }
    

    @discardableResult open func getInstance(_ hashtable: ABHashtable!, _ ownerLayerInterface: AllBinaryLayer!, _ gameInput: GameInput!) -> ArtificialIntelligenceInterface! {
        let visitor: Visitor! = (hashtable.get(jBoxValue(BasicAI.AI_VISITOR)) as! Visitor)
        if (visitor == nil) {
            jThrow(JException("Exception", "No Visitor Provided"))
        }
        let inputProbability: InputProbability! = (hashtable.get(jBoxValue(InputProbability.INPUT_PROBABILITY)) as! InputProbability)
        return BasicRandomAI(ownerLayerInterface, gameInput, inputProbability, visitor)
    }
}

