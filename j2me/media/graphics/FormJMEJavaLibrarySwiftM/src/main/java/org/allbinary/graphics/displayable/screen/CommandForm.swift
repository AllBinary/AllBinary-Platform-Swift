/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2002 AllBinary 
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
// package org.allbinary.graphics.displayable.screen

import J2SEForSwiftLibrary
// import javax.microedition.lcdui.Command
// import javax.microedition.lcdui.CommandListener
// import javax.microedition.lcdui.Form
// import javax.microedition.lcdui.NullCommandListener
// import org.allbinary.canvas.Processor
// import org.allbinary.game.displayable.canvas.MenuListener
// import org.allbinary.graphics.color.BasicColor
// import org.allbinary.graphics.color.BasicColorFactory
// import org.allbinary.graphics.displayable.command.MyCommandInterface
// import org.allbinary.logic.NullUtil
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.string.CommonStrings
// import org.allbinary.logic.StdUtil
// import org.allbinary.util.ABStack

open class CommandForm: Form, MyCommandInterface, MenuListener {
    fileprivate static var NULL_COMMAND_FORM: JObject! = NullUtil.getInstance().NULL_OBJECT
    public var logUtil: LogUtil! = nil
    public var commonStrings: CommonStrings! = nil
    fileprivate var repaintProcessor: Processor! = nil
    fileprivate var commandStack: ABStack! = nil

    // Each class has its own field initializers
    private func initFields() {
    self.logUtil = LogUtil.getInstance()
    self.commonStrings = CommonStrings.getInstance()
    self.repaintProcessor = ScreenRepaintProcessorFactory.getInstance().create(self)
    
    }
    

    @discardableResult open class func getNullCommandForm() -> CommandForm! {
        if (CommandForm.NULL_COMMAND_FORM === NullUtil.getInstance().NULL_OBJECT) {
            CommandForm.NULL_COMMAND_FORM = CommandForm(NullCommandListener.NULL_COMMAND_LISTENER, StringUtil.getInstance().EMPTY_STRING, BasicColorFactory.getInstance().BLACK, BasicColorFactory.getInstance().WHITE)
        }
        return (CommandForm.NULL_COMMAND_FORM as! CommandForm)
    }
    

    public init(_ commandListener: CommandListener!, _ formTitle: String!, _ backgrounBasicColor: BasicColor!, _ foregroundBasicColor: BasicColor!) {
        super.init(formTitle)
        self.initFields()
        self.commandStack = StdUtil.getInstance().createStack()
        do {
            self.repaintProcessor.process()
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
    

    open func initCommands(_ cmdListener: CommandListener!) {
    }
    

    open func `open`() {
        self.logUtil.putF(self.commonStrings.START, self, "open")
    }
    

    open func close() {
        self.logUtil.putF(self.commonStrings.START, self, self.commonStrings.CLOSE)
    }
    

    open func update() {
        self.repaintProcessor.process()
    }
    

    @discardableResult open func getSourceId() -> Int32 {
        return 0
    }
    

    open override func addCommand(_ command: Command!) {
        self.commandStack.push(command)
        super.addCommand(command)
    }
    

    open func removeAllCommands() {
        let size: Int32 = self.commandStack.size()
        do {
            var index: Int32 = 0
            while (index < size) {
                defer { index &+= 1 }
            super.removeCommand((self.commandStack.pop() as! Command))
            }
        }
    }
}

