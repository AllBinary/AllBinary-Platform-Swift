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
// import org.allbinary.game.input.GameInput
// import org.allbinary.layer.AllBinaryLayer
// import org.allbinary.layer.AllBinaryLayerManager
// import org.allbinary.time.GameTickTimeDelayHelper
// import org.allbinary.time.GameTickTimeDelayHelperFactory
// import org.allbinary.time.TimeDelayHelper
// import org.allbinary.util.ABHashtable

open class MultiKeyPressesAI: KeyPressesAI {
    fileprivate var toggleTimeHelper: TimeDelayHelper! = nil
    fileprivate var gameTickTimeDelayHelper: GameTickTimeDelayHelper! = nil

    // Each class has its own field initializers
    private func initFields() {
    self.toggleTimeHelper = TimeDelayHelper(600)
    self.gameTickTimeDelayHelper = GameTickTimeDelayHelperFactory.getInstance()
    }
    

    public override init(_ hashtable: ABHashtable!, _ ownerLayerInterface: AllBinaryLayer!, _ gameInput: GameInput!) {
        super.init(hashtable, ownerLayerInterface, gameInput)
        self.initFields()
        self.update()
    }
    

    open override func processAI(_ allBinaryLayerManager: AllBinaryLayerManager!) {
    }
    

    fileprivate func update() {
        let gameInput: GameInput! = self.getGameInput()
        let keys: JArray<Int32?>! = self.keys
        let size: Int32 = keys.length
        if (self.isOn()) {
            do {
                var index: Int32 = 0
                while (index < size) {
                    defer { index &+= 1 }
                let key: Int32 = keys[index]!.intValue()
                if (key != -1) {
                    gameInput.add(self.gameKeyEventFactory.getInstanceForKey(self, key))
                }
                }
            }
        } else {
            do {
                var index: Int32 = 0
                while (index < size) {
                    defer { index &+= 1 }
                let key: Int32 = keys[index]!.intValue()
                if (key != -1) {
                    gameInput.addForRemoval(self.gameKeyEventFactory.getInstanceForKey(self, key))
                }
                }
            }
        }
    }
    

    open override func toggle() {
        if (self.toggleTimeHelper.isTime(self.gameTickTimeDelayHelper.startTime)) {
            super.toggle()
            self.update()
        }
    }
    

    open override func disable() {
        if (self.toggleTimeHelper.isTime(self.gameTickTimeDelayHelper.startTime)) {
            super.disable()
            self.update()
        }
    }
    

    open override func enable() {
        if (self.toggleTimeHelper.isTime(self.gameTickTimeDelayHelper.startTime)) {
            super.enable()
            self.update()
        }
    }
}

