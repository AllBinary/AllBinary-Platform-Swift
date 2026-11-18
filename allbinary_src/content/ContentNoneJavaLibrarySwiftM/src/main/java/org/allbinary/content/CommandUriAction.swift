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
// package org.allbinary.content

import J2SEForSwiftLibrary
// import javax.microedition.lcdui.Command
// import org.allbinary.logic.communication.log.LogUtil

open class CommandUriAction: JObject {
    fileprivate static let instance: CommandUriAction! = CommandUriAction()
    public var logUtil: LogUtil! = nil

    private func initFields() {
    self.logUtil = LogUtil.getInstance()
    }

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult open class func getInstance() -> CommandUriAction! {
        return CommandUriAction.instance
    }
    

    open func add(_ command: Command!, _ url: String!) {
    }
    

    open func process(_ command: Command!) {
    }
}

