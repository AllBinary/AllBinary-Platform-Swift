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
// package org.allbinary.game.input

import J2SEForSwiftLibrary

open class J2MEKeyFactory: JObject {
    fileprivate static let instance: J2MEKeyFactory! = J2MEKeyFactory()
    fileprivate var gameKeyFactory: GameKeyFactory! = nil

    private func initFields() {
    self.gameKeyFactory = GameKeyFactory.getInstance()
    }
    

    @discardableResult open class func getInstance() -> J2MEKeyFactory! {
        return J2MEKeyFactory.instance
    }
    

    public override init() {
        super.init()
        self.initFields()
    }
    

    open func `init`() {
        let gameKeyArray: JArray<GameKey?>! = JArray<GameKey?>([self.gameKeyFactory.DOWN, self.gameKeyFactory.FIRE, self.gameKeyFactory.GAME_A, self.gameKeyFactory.GAME_B, self.gameKeyFactory.GAME_C, self.gameKeyFactory.GAME_D, self.gameKeyFactory.KEY_NUM0, self.gameKeyFactory.KEY_NUM1, self.gameKeyFactory.KEY_NUM2, self.gameKeyFactory.KEY_NUM3, self.gameKeyFactory.KEY_NUM4, self.gameKeyFactory.KEY_NUM5, self.gameKeyFactory.KEY_NUM6, self.gameKeyFactory.KEY_NUM7, self.gameKeyFactory.KEY_NUM8, self.gameKeyFactory.KEY_NUM9, self.gameKeyFactory.KEY_POUND, self.gameKeyFactory.KEY_STAR, self.gameKeyFactory.LEFT, self.gameKeyFactory.LEVEL_DOWN, self.gameKeyFactory.LEVEL_UP, self.gameKeyFactory.NONE, self.gameKeyFactory.RIGHT, self.gameKeyFactory.UP])
        let inputFactory: InputFactory! = InputFactory.getInstance()
        do {
            var index: Int32 = gameKeyArray.length
            while (jPreDecrement(&index) >= 0) {
            inputFactory.add(gameKeyArray[index]!.getId(), gameKeyArray[index])
            }
        }
    }
    

    @discardableResult open func isSubmission(_ input: Input!) -> Bool {
        if (input === self.gameKeyFactory.FIRE) {
            return true
        }
        return false
    }
    

    @discardableResult open func isDelete(_ input: Input!) -> Bool {
        if (input === self.gameKeyFactory.GAME_D) {
            return true
        }
        return false
    }
    

    @discardableResult open func isBackSpace(_ input: Input!) -> Bool {
        return false
    }
    

    @discardableResult open func isUp(_ input: Input!) -> Bool {
        if (input === self.gameKeyFactory.UP) {
            return true
        }
        return false
    }
    

    @discardableResult open func isDown(_ input: Input!) -> Bool {
        if (input === self.gameKeyFactory.DOWN) {
            return true
        }
        return false
    }
    

    @discardableResult open func isLeft(_ input: Input!) -> Bool {
        if (input === self.gameKeyFactory.LEFT) {
            return true
        }
        return false
    }
    

    @discardableResult open func isRight(_ input: Input!) -> Bool {
        if (input === self.gameKeyFactory.RIGHT) {
            return true
        }
        return false
    }
    

    @discardableResult open func isEnter(_ input: Input!) -> Bool {
        if (input === self.gameKeyFactory.FIRE) {
            return true
        }
        return false
    }
}

