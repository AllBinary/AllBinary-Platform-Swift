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
// package org.allbinary.game.score

import J2SEForSwiftLibrary
// import javax.microedition.lcdui.Command

open class HighScoreCommandsFactory: HighScoreCommandsBaseFactory {
    fileprivate static let instance: HighScoreCommandsFactory! = HighScoreCommandsFactory()
    

    @discardableResult open class func getInstance() -> HighScoreCommandsFactory! {
        return HighScoreCommandsFactory.instance
    }
    

    public init() {
        super.init(JArray<Command?>([HighScoreCommands.getInstance().PERSONAL, HighScoreCommands.getInstance().WORLD]))
    }
}

