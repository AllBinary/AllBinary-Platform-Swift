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
// package org.allbinary.game.displayable.canvas

import J2SEForSwiftLibrary
// import javax.microedition.lcdui.Canvas
// import org.allbinary.string.CommonPhoneStrings

open class CanvasUtil: JObject {
    

    public override init() {
        super.init()
    }
    

    @discardableResult open class func getKeyName(_ key: Int32) -> String! {
        let commonPhoneStrings: CommonPhoneStrings! = CommonPhoneStrings.getInstance()
        if (key == Canvas.UP) {
            return commonPhoneStrings.UP
        } else if (key == Canvas.DOWN) {
            return commonPhoneStrings.DOWN
        } else if (key == Canvas.RIGHT) {
            return commonPhoneStrings.RIGHT
        } else if (key == Canvas.LEFT) {
            return commonPhoneStrings.LEFT
        } else if (key == Canvas.FIRE) {
            return commonPhoneStrings.FIRE
        }
        return "UNKNOWN KEY"
    }
}

