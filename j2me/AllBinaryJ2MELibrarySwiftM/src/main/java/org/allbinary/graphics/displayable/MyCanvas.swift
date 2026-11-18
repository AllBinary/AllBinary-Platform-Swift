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
// package org.allbinary.graphics.displayable

import J2SEForSwiftLibrary
// import javax.microedition.lcdui.Canvas
// import javax.microedition.lcdui.Command
// import javax.microedition.lcdui.CommandListener
// import javax.microedition.lcdui.Graphics
// import javax.microedition.lcdui.NullCommandListener
// import org.allbinary.graphics.displayable.command.MyCommandInterface
// import org.allbinary.graphics.displayable.command.MyCommandsFactory
// import org.allbinary.input.TouchJ2ME
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.media.audio.Sound
// import org.allbinary.string.CommonStrings
// import org.allbinary.util.BasicArrayList
// import org.allbinary.logic.StdUtil
// import org.allbinary.util.ABStack

open class MyCanvas: Canvas, DisplayableInterface, MyCommandInterface {
    public var logUtil: LogUtil! = nil
    public var commonStrings: CommonStrings! = nil
    public var canvasStrings: CanvasStrings! = nil
    public var stringUtil: StringUtil! = nil
    public var displayInfo: DisplayInfoSingleton! = nil
    fileprivate var name: String! = nil
    fileprivate var childNameList: BasicArrayList! = nil
    fileprivate var commandStack: ABStack! = nil
    fileprivate var commandListener: CommandListener! = nil
    fileprivate var paused: Bool = false
    fileprivate var touchME: TouchJ2ME! = nil

    // Each class has its own field initializers
    private func initFields() {
    self.logUtil = LogUtil.getInstance()
    self.commonStrings = CommonStrings.getInstance()
    self.canvasStrings = CanvasStrings.getInstance()
    self.stringUtil = StringUtil.getInstance()
    self.displayInfo = DisplayInfoSingleton.getInstance()
    
    
    
    self.commandListener = NullCommandListener.NULL_COMMAND_LISTENER
    self.paused = false
    self.touchME = TouchJ2ME()
    }
    

    public init(_ name: String!, _ childNameList: BasicArrayList!) {
        super.init()
        self.initFields()
        self.logUtil.putF(self.commonStrings.CONSTRUCTOR, self, self.commonStrings.CONSTRUCTOR)
        self.displayInfo.update(self, self.canvasStrings.CONSTRUCTOR)
        self.name = name
        self.childNameList = childNameList
        self.commandStack = StdUtil.getInstance().createStack()
    }
    

    @discardableResult open override func getWidth() -> Int32 {
        return super.getWidth()
    }
    

    @discardableResult open override func getHeight() -> Int32 {
        return super.getHeight()
    }
    

    open override func setFullScreenMode(_ mode: Bool) {
        super.setFullScreenMode(mode)
        self.displayInfo.update(self, self.canvasStrings.SET_FULL_SCREEN_MODE)
    }
    

    open override func sizeChanged(_ w: Int32, _ h: Int32) {
        self.displayInfo.update(self, self.canvasStrings.SIZE_CHANGED)
    }
    

    @discardableResult open func getCommandStack() -> ABStack! {
        return self.commandStack
    }
    

    @discardableResult open func isCommand(_ command: Command!) -> Bool {
        return self.commandStack.contains(command)
    }
    

    open override func addCommand(_ command: Command!) {
        if (!self.commandStack.contains(command)) {
            self.commandStack.push(command)
            super.addCommand(command)
        }
    }
    

    open override func removeCommand(_ command: Command!) {
        self.commandStack.removeElement(command)
        super.removeCommand(command)
    }
    

    open override func removeAllCommands() {
        let size: Int32 = self.commandStack.size()
        do {
            var index: Int32 = 0
            while (index < size) {
                defer { index &+= 1 }
            super.removeCommand((self.commandStack.pop() as! Command))
            }
        }
    }
    

    open override func setCommandListener(_ l: CommandListener!) {
        super.setCommandListener(l)
        self.commandListener = l
    }
    

    @discardableResult open func getCustomCommandListener() -> CommandListener! {
        return self.commandListener
    }
    

    @discardableResult open func isPaused() -> Bool {
        return self.paused
    }
    

    open func removePauseCommand() {
        self.removeCommand(MyCommandsFactory.getInstance().PAUSE_COMMAND)
    }
    

    open func pause() {
        self.logUtil.putF(self.commonStrings.START, self, self.canvasStrings.PAUSE)
        self.removePauseCommand()
        self.addCommand(MyCommandsFactory.getInstance().RESUME_COMMAND)
        self.setPaused(true)
    }
    

    open func unPause() {
        self.logUtil.putF(self.commonStrings.START, self, self.canvasStrings.UN_PAUSE)
        self.removeCommand(MyCommandsFactory.getInstance().RESUME_COMMAND)
        self.addCommand(MyCommandsFactory.getInstance().PAUSE_COMMAND)
        self.setPaused(false)
    }
    

    open func process() {
        self.displayInfo.process()
    }
    

    open override func paint(_ graphics: Graphics!) {
    }
    

    open func draw(_ graphics: Graphics!) {
    }
    

    @discardableResult open func hasChild(_ displayable: MyCanvas!) -> Bool {
        return self.childNameList.contains(jBoxString(displayable.name))
    }
    

    open func destroy() {
        self.logUtil.putF("Destroyed MyCanvas", self, "destroy")
    }
    

    open func setPaused(_ isPaused: Bool) {
        self.paused = isPaused
    }
    

    open func keyPressedByDevice(_ keyCode: Int32, _ deviceId: Int32) {
    }
    

    open func keyRepeatedByDevice(_ keyCode: Int32, _ deviceId: Int32) {
    }
    

    open func keyReleasedByDevice(_ keyCode: Int32, _ deviceId: Int32) {
    }
    

    open override func pointerDragged(_ x: Int32, _ y: Int32) {
        self.touchME.pointerDragged(x, y)
    }
    

    open override func pointerPressed(_ x: Int32, _ y: Int32) {
        self.touchME.pointerPressed(x, y)
    }
    

    open override func pointerReleased(_ x: Int32, _ y: Int32) {
        self.touchME.pointerReleased(x, y)
    }
    

    open func nextSong(_ nextSongSound: Sound!, _ leftVolume: Int32, _ rightVolume: Int32) {
    }
}

