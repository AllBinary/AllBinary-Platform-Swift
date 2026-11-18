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

open class GameKeyUtil: JObject {
    fileprivate static let instance: GameKeyUtil! = GameKeyUtil()

    public override init() {
        super.init()
    }
    

    @discardableResult open func isDirectionKey(_ key: Int32) -> Bool {
        if (key == Canvas.UP || key == Canvas.DOWN || key == Canvas.LEFT || key == Canvas.RIGHT) {
            return true
        } else {
            return false
        }
    }
    

    @discardableResult open class func getInstance() -> GameKeyUtil! {
        return GameKeyUtil.instance
    }
}

