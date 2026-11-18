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
// import org.allbinary.game.input.GameInput
// import org.allbinary.layer.AllBinaryLayer
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.string.CommonStrings
// import org.allbinary.util.ABHashtable
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListD

open class NumberOnOwnGroupSequenceAIFactory: JObject {
    public var logUtil: LogUtil! = nil

    private func initFields() {
    self.logUtil = LogUtil.getInstance()
    }

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult open func getInstance(_ hashtable: ABHashtable!, _ artificialIntelligenceInterface: JArray<ArtificialIntelligenceInterface?>!, _ ownerLayerInterface: AllBinaryLayer!, _ gameInput: GameInput!) -> ArtificialIntelligenceInterface! {
        let integerArray: JArray<Int32?>! = NumberInSameGroupSequence.getInstance().NUMBER_ON_SAME_TEAM_SEQUENCE
        let list: BasicArrayList! = BasicArrayListD()
        do {
            var index: Int32 = 0
            while (index < integerArray.length) {
                defer { index &+= 1 }
            let integerCanBeNull: JObject! = hashtable.get((integerArray[index] as! JObject))
            if (integerCanBeNull == nil) {
                break
            }
            list.add(integerCanBeNull)
            }
        }
        let stringBuffer: StringMaker! = StringMaker()
        stringBuffer.append("Total AI Properties: ")
        stringBuffer.appendint(list.size())
        stringBuffer.append(" == Total AI: ")
        stringBuffer.appendint(artificialIntelligenceInterface.length)
        stringBuffer.append(" + 1")
        let commonStrings: CommonStrings! = CommonStrings.getInstance()
        self.logUtil.putF(stringBuffer.toString(), self, commonStrings.GET_INSTANCE)
        if (artificialIntelligenceInterface.length &- 1 > list.size()) {
            jThrow(JException("Exception", "Not enough AI properties."))
        }
        if (artificialIntelligenceInterface.length &- 1 < list.size()) {
            jThrow(JException("Exception", "Too Many AI properties."))
        }
        let numberOnSameTeam: JArray<Int32?>! = JArray<Int32?>(list.size(), nil)
        do {
            var index: Int32 = 0
            while (index < numberOnSameTeam.length) {
                defer { index &+= 1 }
            numberOnSameTeam[index] = jUnboxValue(list.objectArray[index], Int32.self)
            }
        }
        return NumberOnOwnGroupSequenceAI(numberOnSameTeam, artificialIntelligenceInterface, ownerLayerInterface, gameInput)
    }
}

