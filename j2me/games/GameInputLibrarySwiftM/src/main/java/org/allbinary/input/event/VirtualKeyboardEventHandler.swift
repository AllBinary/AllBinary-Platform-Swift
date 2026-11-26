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
// package org.allbinary.input.event

import J2SEForSwiftLibrary
// import org.allbinary.logic.java.bool.BooleanFactory
// import org.allbinary.logic.util.event.AllBinaryEventObject
// import org.allbinary.logic.util.event.EventListenerInterface
// import org.allbinary.logic.util.event.handler.BasicEventHandler

open class VirtualKeyboardEventHandler: BasicEventHandler {
    fileprivate static let gameKeyEventHandler: VirtualKeyboardEventHandler! = VirtualKeyboardEventHandler()
    public var SHOW_EVENT: VirtualKeyboardEvent! = nil
    public var HIDE_EVENT: VirtualKeyboardEvent! = nil

    // Each class has its own field initializers
    private func initFields() {
    self.SHOW_EVENT = VirtualKeyboardEvent(jBoxValue(BooleanFactory.getInstance().TRUE))
    self.HIDE_EVENT = VirtualKeyboardEvent(jBoxValue(BooleanFactory.getInstance().FALSE))
    }
    

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult open class func getInstance() -> VirtualKeyboardEventHandler! {
        return VirtualKeyboardEventHandler.gameKeyEventHandler
    }
    

    open override func process(_ eventObject: AllBinaryEventObject!, _ eventListenerInterface: EventListenerInterface!) {
        let virtualKeyboardEventListenerInterface: VirtualKeyboardEventListenerInterface! = (eventListenerInterface as Any as? VirtualKeyboardEventListenerInterface)
        virtualKeyboardEventListenerInterface.onVirtualKeyboardEvent((eventObject as! VirtualKeyboardEvent))
    }
    

    open func `open`() {
        do {
            Thread.sleep(120)
            self.fireEvent(self.SHOW_EVENT)
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
    

    open func close() {
        do {
            Thread.sleep(120)
            self.fireEvent(self.HIDE_EVENT)
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
}

