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
// import org.allbinary.ai.ArtificialIntelligence
// import org.allbinary.ai.ArtificialIntelligenceInterface
// import org.allbinary.ai.ArtificialIntelligenceTransitionInterface
// import org.allbinary.game.ag.ai.ArrayAI
// import org.allbinary.game.input.GameInput
// import org.allbinary.layer.AllBinaryLayer
// import org.allbinary.layer.AllBinaryLayerManager
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.string.StringUtil

open class SequenceAI: ArrayAI {
    fileprivate static let SEQUENCE_AI: String! = "Sequence AI"
    fileprivate var index: Int32 = 0

    // Each class has its own field initializers
    private func initFields() {
    self.index = 0
    }
    

    public override init(_ artificialIntelligenceInterfaceArray: JArray<ArtificialIntelligenceInterface?>!, _ ownerLayerInterface: AllBinaryLayer!, _ gameInput: GameInput!) {
        super.init(artificialIntelligenceInterfaceArray, ownerLayerInterface, gameInput)
        self.initFields()
    }
    

    open override func processAI(_ allBinaryLayerManager: AllBinaryLayerManager!) {
        self.getArtificialIntelligenceInterface()[self.index]!.processAI(allBinaryLayerManager)
    }
    

    open func next() {
        self.index &+= 1
        let artificialIntelligenceInterface: ArtificialIntelligenceInterface! = self.getSelectedArtificialIntelligenceInterface()
        if (artificialIntelligenceInterface.getId() == ArtificialIntelligence.AI_ID) {
            let artificialIntelligenceTransitionInterface: ArtificialIntelligenceTransitionInterface! = (artificialIntelligenceInterface as Any as? ArtificialIntelligenceTransitionInterface)
            artificialIntelligenceTransitionInterface.transition()
        }
    }
    

    @discardableResult open func getIndex() -> Int32 {
        return self.index
    }
    

    open func setIndex(_ index: Int32) {
        self.index = index
    }
    

    @discardableResult open func getSelectedArtificialIntelligenceInterface() -> ArtificialIntelligenceInterface! {
        return self.getArtificialIntelligenceInterface()[self.index]
    }
    

    @discardableResult open override func getName() -> String! {
        return SequenceAI.SEQUENCE_AI
    }
    

    @discardableResult open override func toString() -> String! {
        let stringBuffer: StringMaker! = StringMaker()
        stringBuffer.append(super.toString())
        stringBuffer.append(" Selected AI: ")
        stringBuffer.append(StringUtil.getInstance().toString((self.getSelectedArtificialIntelligenceInterface() as? JObject)))
        return stringBuffer.toString()
    }
}

