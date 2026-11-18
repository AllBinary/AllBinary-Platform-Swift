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
// package org.allbinary.canvas

import J2SEForSwiftLibrary
// import org.allbinary.AppletUtil
// import org.allbinary.J2MEUtil
// import org.allbinary.game.commands.GameCommandsFactory
// import org.allbinary.graphics.displayable.MyCanvas

open class CustomGameMenuUtil: JObject {

    public override init() {
        super.init()
    }
    

    open class func add(_ canvas: MyCanvas!) {
        let gameCommandsFactory: GameCommandsFactory! = GameCommandsFactory.getInstance()
        if (AppletUtil.isAppletLoader(canvas)) {
        } else if (J2MEUtil.isHTML()) {
        } else {
            canvas.addCommand(gameCommandsFactory.EXIT_COMMAND)
        }
    }
}

