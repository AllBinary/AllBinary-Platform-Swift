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
// import org.allbinary.util.HashtableUtil
// import org.allbinary.game.ai.BasicAI
// import org.allbinary.util.ABHashtable

open class KeyPressesAI: BasicAI {
    fileprivate var on: Bool = false
    public var keys: JArray<Int32?>! = nil

    // Each class has its own field initializers
    private func initFields() {
    self.on = true
    
    }
    

    public init(_ hashtable: ABHashtable!, _ ownerLayerInterface: AllBinaryLayer!, _ gameInput: GameInput!) {
        super.init(ownerLayerInterface, gameInput)
        self.initFields()
        self.keys = JArray<Int32?>(hashtable.size(), nil)
        let objectArray: JArray<JObject?>! = HashtableUtil.getInstance().getKeysAsArray(hashtable)
        let size: Int32 = objectArray.length
        do {
            var index: Int32 = 0
            while (index < size) {
                defer { index &+= 1 }
            self.keys[index] = jUnboxValue(hashtable.get(objectArray[index]), Int32.self)
            }
        }
    }
    

    open override func processAI(_ allBinaryLayerManager: AllBinaryLayerManager!) {
        if (self.on) {
            do {
                var index: Int32 = 0
                while (index < self.keys.length) {
                    defer { index &+= 1 }
                super.processKeyAI(self.keys[index]!.intValue())
                }
            }
        }
    }
    

    open func toggle() {
        if (self.isOn()) {
            self.setOn(false)
        } else {
            self.setOn(true)
        }
    }
    

    open func disable() {
        self.setOn(false)
    }
    

    open func enable() {
        self.setOn(true)
    }
    

    fileprivate func setOn(_ on: Bool) {
        self.on = on
    }
    

    @discardableResult open func isOn() -> Bool {
        return self.on
    }
}

