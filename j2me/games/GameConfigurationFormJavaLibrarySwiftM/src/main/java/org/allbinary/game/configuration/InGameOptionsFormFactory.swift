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
// import org.allbinary.init.Init
// import org.allbinary.logic.NullUtil
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.string.CommonStrings

open class InGameOptionsFormFactory: JObject {
    fileprivate static var instance: JObject! = NullUtil.getInstance().NULL_OBJECT
    public var logUtil: LogUtil! = nil
    fileprivate var SINGLETON: CommandForm! = nil

    private func initFields() {
    self.logUtil = LogUtil.getInstance()
    self.SINGLETON = CommandForm.getNullCommandForm()
    }

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult open class func getInstance() -> InGameOptionsFormFactory! {
        if (InGameOptionsFormFactory.instance === NullUtil.getInstance().NULL_OBJECT) {
            InGameOptionsFormFactory.instance = InGameOptionsFormFactory()
        }
        return (InGameOptionsFormFactory.instance as! InGameOptionsFormFactory)
    }
    

    open func `init`(_ commandListener: CommandListener!, _ initInterface: Init!, _ title: String!, _ backgrounBasicColor: BasicColor!, _ foregroundBasicColor: BasicColor!) {
        do {
            if (self.SINGLETON === CommandForm.getNullCommandForm()) {
                initInterface.`init`()
                self.SINGLETON = InGameOptionsForm(commandListener, title, backgrounBasicColor, foregroundBasicColor)
            }
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
    

    @discardableResult open func get() -> CommandForm! {
        return self.SINGLETON
    }
}

