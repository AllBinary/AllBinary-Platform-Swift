// Generated Code Do Not Modify
// package javax.microedition.lcdui

import J2SEForSwiftLibrary
// import java.util.Stack

open class NullCanvas: Canvas {
    public static let NULL_CANVAS: NullCanvas! = NullCanvas()
    

    public override init() {
        super.init()
    }
    

    open override func setFullScreenMode(_ mode: Bool) {
    }
    

    open override func sizeChanged(_ w: Int32, _ h: Int32) {
    }
    

    @discardableResult open func getCommandStack() -> Stack! {
        jThrow(JException("RuntimeException", ""))
    }
    

    @discardableResult open func isCommand(_ command: Command!) -> Bool {
        jThrow(JException("RuntimeException", ""))
    }
    

    open override func addCommand(_ command: Command!) {
    }
    

    open override func removeCommand(_ command: Command!) {
    }
    

    open func removeAllCommands() {
    }
    

    open override func setCommandListener(_ l: CommandListener!) {
    }
    

    @discardableResult open func getCustomCommandListener() -> CommandListener! {
        jThrow(JException("RuntimeException", ""))
    }
    

    @discardableResult open func isPaused() -> Bool {
        jThrow(JException("RuntimeException", ""))
    }
    

    open func removePauseCommand() {
    }
    

    open func pause() {
    }
    

    open func unPause() {
    }
    

    open func process() {
    }
    

    open override func paint(_ graphics: Graphics!) {
    }
    

    open func destroy() {
    }
    

    open func setPaused(_ isPaused: Bool) {
        jThrow(JException("RuntimeException", ""))
    }
    

    open override func pointerDragged(_ x: Int32, _ y: Int32) {
    }
    

    open override func pointerPressed(_ x: Int32, _ y: Int32) {
    }
    

    open override func pointerReleased(_ x: Int32, _ y: Int32) {
    }
}

