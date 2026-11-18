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
// import javax.microedition.lcdui.Canvas
// import org.allbinary.logic.NullUtil
// import org.allbinary.string.CommonPhoneStrings

open class GameKeyFactory: JObject {
    fileprivate static var instance: JObject! = NullUtil.getInstance().NULL_OBJECT
    public var NONE: GameKey! = nil
    public var UP: GameKey! = nil
    public var DOWN: GameKey! = nil
    public var LEFT: GameKey! = nil
    public var RIGHT: GameKey! = nil
    public var KEY_POUND: GameKey! = nil
    public var KEY_STAR: GameKey! = nil
    public var KEY_NUM0: GameKey! = nil
    public var KEY_NUM1: GameKey! = nil
    public var KEY_NUM2: GameKey! = nil
    public var KEY_NUM3: GameKey! = nil
    public var KEY_NUM4: GameKey! = nil
    public var KEY_NUM5: GameKey! = nil
    public var KEY_NUM6: GameKey! = nil
    public var KEY_NUM7: GameKey! = nil
    public var KEY_NUM8: GameKey! = nil
    public var KEY_NUM9: GameKey! = nil
    public var GAME_A: GameKey! = nil
    public var GAME_B: GameKey! = nil
    public var GAME_C: GameKey! = nil
    public var GAME_D: GameKey! = nil
    public var FIRE: GameKey! = nil
    public var LEVEL_DOWN: GameKey! = nil
    public var LEVEL_UP: GameKey! = nil

    private func initFields() {
    self.NONE = GameKey(InputFactory.getInstance().MAX &- 1, "None")
    self.UP = GameKey(Canvas.UP, CommonPhoneStrings.getInstance().UP)
    self.DOWN = GameKey(Canvas.DOWN, CommonPhoneStrings.getInstance().DOWN)
    self.LEFT = GameKey(Canvas.LEFT, CommonPhoneStrings.getInstance().LEFT)
    self.RIGHT = GameKey(Canvas.RIGHT, CommonPhoneStrings.getInstance().RIGHT)
    self.KEY_POUND = GameKey(Canvas.KEY_POUND, "POUND")
    self.KEY_STAR = GameKey(Canvas.KEY_STAR, "STAR")
    self.KEY_NUM0 = GameKey(Canvas.KEY_NUM0, CommonPhoneStrings.getInstance().ZERO)
    self.KEY_NUM1 = GameKey(Canvas.KEY_NUM1, CommonPhoneStrings.getInstance().ONE)
    self.KEY_NUM2 = GameKey(Canvas.KEY_NUM2, CommonPhoneStrings.getInstance().TWO)
    self.KEY_NUM3 = GameKey(Canvas.KEY_NUM3, CommonPhoneStrings.getInstance().THREE)
    self.KEY_NUM4 = GameKey(Canvas.KEY_NUM4, CommonPhoneStrings.getInstance().FOUR)
    self.KEY_NUM5 = GameKey(Canvas.KEY_NUM5, CommonPhoneStrings.getInstance().FIVE)
    self.KEY_NUM6 = GameKey(Canvas.KEY_NUM6, CommonPhoneStrings.getInstance().SIX)
    self.KEY_NUM7 = GameKey(Canvas.KEY_NUM7, CommonPhoneStrings.getInstance().SEVEN)
    self.KEY_NUM8 = GameKey(Canvas.KEY_NUM8, CommonPhoneStrings.getInstance().EIGHT)
    self.KEY_NUM9 = GameKey(Canvas.KEY_NUM9, CommonPhoneStrings.getInstance().NINE)
    self.GAME_A = GameKey(Canvas.GAME_A, "Game A")
    self.GAME_B = GameKey(Canvas.GAME_B, "Game B")
    self.GAME_C = GameKey(Canvas.GAME_C, "Game C")
    self.GAME_D = GameKey(Canvas.GAME_D, "Game D")
    self.FIRE = GameKey(Canvas.FIRE, CommonPhoneStrings.getInstance().FIRE)
    self.LEVEL_DOWN = GameKey(Canvas.KEY_NUM9 + 1, "Cheat Level Up")
    self.LEVEL_UP = GameKey(Canvas.KEY_NUM9 + 2, "Cheat Level Down")
    }

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult open class func getInstance() -> GameKeyFactory! {
        if (GameKeyFactory.instance === NullUtil.getInstance().NULL_OBJECT) {
            GameKeyFactory.instance = GameKeyFactory()
        }
        return (GameKeyFactory.instance as! GameKeyFactory)
    }
}

