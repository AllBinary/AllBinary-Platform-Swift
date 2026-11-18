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
// import javax.microedition.lcdui.Command
// import javax.microedition.lcdui.CommandListener
// import org.allbinary.graphics.displayable.MyCanvas
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.string.CommonStrings

open class CommandRunnable: JObject, Runnable {
    public var logUtil: LogUtil! = nil
    public var commonStrings: CommonStrings! = nil
    fileprivate var commandFormInputProcessor: CommandFormInputProcessor! = nil
    fileprivate var command: Command! = nil

    private func initFields() {
    self.logUtil = LogUtil.getInstance()
    self.commonStrings = CommonStrings.getInstance()
    
    
    }
    

    public init(_ commandFormInputProcessor: CommandFormInputProcessor!, _ command: Command!) {
        super.init()
        self.initFields()
        self.commandFormInputProcessor = commandFormInputProcessor
        self.command = command
    }
    

    open func run() {
        do {
            self.logUtil.putF(self.commonStrings.START_RUNNABLE, self, self.commonStrings.RUN)
            let canvas: MyCanvas! = self.commandFormInputProcessor.getCanvas()
            let commandListener: CommandListener! = canvas.getCustomCommandListener()
            commandListener.commandAction(self.command, canvas)
            self.logUtil.putF(self.commonStrings.END_RUNNABLE, self, self.commonStrings.RUN)
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
}

