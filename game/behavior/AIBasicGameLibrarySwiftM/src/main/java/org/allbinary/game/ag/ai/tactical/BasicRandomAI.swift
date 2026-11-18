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
// import javax.microedition.lcdui.Canvas
// import org.allbinary.game.ai.BasicAI
// import org.allbinary.game.ag.ai.InputProbability
// import org.allbinary.game.input.GameInput
// import org.allbinary.game.rand.MyRandomFactory
// import org.allbinary.layer.AllBinaryLayer
// import org.allbinary.layer.AllBinaryLayerManager
// import org.allbinary.logic.util.visitor.Visitor
// import org.allbinary.time.GameTickTimeDelayHelperFactory

open class BasicRandomAI: BasicAI {
    fileprivate var i_random: Int32 = 0
    fileprivate var inputProbability: InputProbability! = nil
    fileprivate var visitor: Visitor! = nil
    fileprivate var keyArray: JArray<Int32>! = nil
    fileprivate var myRandomFactory: MyRandomFactory! = nil

    // Each class has its own field initializers
    private func initFields() {
    self.i_random = 0
    
    
    self.keyArray = JArray<Int32>([Canvas.UP, Canvas.DOWN, Canvas.LEFT, Canvas.RIGHT, Canvas.KEY_NUM1, Canvas.KEY_NUM7, Canvas.KEY_NUM9])
    self.myRandomFactory = MyRandomFactory.getInstance()
    }
    

    public init(_ ownerLayerInterface: AllBinaryLayer!, _ gameInput: GameInput!, _ inputProbability: InputProbability!, _ visitor: Visitor!) {
        super.init(ownerLayerInterface, gameInput)
        self.initFields()
        self.inputProbability = inputProbability
        self.visitor = visitor
    }
    

    open override func processAI(_ allBinaryLayerManager: AllBinaryLayerManager!) {
        if (self.inputProbability.getTimeDelayHelper().isTime(GameTickTimeDelayHelperFactory.getInstance().startTime)) {
            self.i_random = self.myRandomFactory.getAbsoluteNextInt(self.inputProbability.getMax())
            var `repeat`: Bool = false
            let repeatLikelyhoodIntegerArray: JArray<Int32?>! = self.inputProbability.getRepeatLikelyhoodIntegerArray()
            if (self.getLastKey() != -1 && repeatLikelyhoodIntegerArray[self.getLastKey()]!.intValue() >= self.i_random) {
                `repeat` = true
            }
            if (!`repeat`) {
                let likelyhoodIntegerArray: JArray<JArray<Int32?>?>! = self.inputProbability.getLikelyhoodIntegerArray()
                self.i_random = self.myRandomFactory.getAbsoluteNextInt(self.inputProbability.getMax())
                let size: Int32 = self.keyArray.length
                var likelyhoodIntegerKeyArray: JArray<Int32?>! = nil
                do {
                    var index: Int32 = 0
                    while (index < size) {
                        defer { index &+= 1 }
                    let key: Int32 = self.keyArray[index]
                    likelyhoodIntegerKeyArray = likelyhoodIntegerArray[key]
                    if (likelyhoodIntegerArray.length >= key && likelyhoodIntegerKeyArray[0] != nil) {
                        if (self.i_random >= likelyhoodIntegerKeyArray[0]!.intValue() && self.i_random < likelyhoodIntegerKeyArray[1]!.intValue()) {
                            self.setLastKey(key)
                            break
                        }
                    }
                    }
                }
            }
            self.visitor.visit(self)
        }
    }
}

