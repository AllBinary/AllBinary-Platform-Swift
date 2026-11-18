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
// import javax.microedition.lcdui.Canvas
// import org.allbinary.game.ai.BasicAI
// import org.allbinary.game.input.GameInput
// import org.allbinary.layer.AllBinaryLayer
// import org.allbinary.layer.AllBinaryLayerManager

open class SpinnerAI: BasicAI {
    fileprivate var isEven: Bool = false
    fileprivate var direction: JArray<Int32>! = nil

    // Each class has its own field initializers
    private func initFields() {
    self.isEven = false
    
    }
    

    public init(_ direction: JArray<Int32>!, _ ownerLayerInterface: AllBinaryLayer!, _ gameInput: GameInput!) {
        super.init(ownerLayerInterface, gameInput)
        self.initFields()
        self.direction = direction
    }
    

    open override func processAI(_ allBinaryLayerManager: AllBinaryLayerManager!) {
        if (self.isEven) {
            super.processKeyAI(self.direction[0])
            self.isEven = false
        } else {
            super.processKeyAI(Canvas.KEY_NUM1)
            self.isEven = true
        }
    }
}

