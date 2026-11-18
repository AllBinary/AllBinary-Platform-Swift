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
// package org.allbinary.game.configuration

import J2SEForSwiftLibrary
// import javax.microedition.lcdui.CommandListener
// import org.allbinary.graphics.color.BasicColor
// import org.allbinary.graphics.displayable.screen.CommandForm
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.string.CommonStrings

open class GameOptionsFormFactory: JObject {
    fileprivate static let instance: GameOptionsFormFactory! = GameOptionsFormFactory()
    public var logUtil: LogUtil! = nil

    private func initFields() {
    self.logUtil = LogUtil.getInstance()
    }
    

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult open class func getInstance() -> GameOptionsFormFactory! {
        return GameOptionsFormFactory.instance
    }
    

    @discardableResult open func `init`(_ commandListener: CommandListener!, _ title: String!, _ backgrounBasicColor: BasicColor!, _ foregroundBasicColor: BasicColor!) -> CommandForm! {
        do {
            return GameOptionsForm(commandListener, title, backgrounBasicColor, foregroundBasicColor)
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
}

