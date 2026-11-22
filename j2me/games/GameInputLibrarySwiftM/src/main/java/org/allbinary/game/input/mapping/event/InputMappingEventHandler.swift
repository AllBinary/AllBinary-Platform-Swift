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
// package org.allbinary.game.input.mapping.event

import J2SEForSwiftLibrary
// import org.allbinary.logic.util.event.AllBinaryEventObject
// import org.allbinary.logic.util.event.EventListenerInterface
// import org.allbinary.logic.util.event.handler.BasicEventHandler

open class InputMappingEventHandler: BasicEventHandler {
    fileprivate static let gameKeyEventHandler: InputMappingEventHandler! = InputMappingEventHandler()
    

    public override init() {
        super.init()
    }
    

    @discardableResult open class func getInstance() -> InputMappingEventHandler! {
        return InputMappingEventHandler.gameKeyEventHandler
    }
    

    open override func process(_ eventObject: AllBinaryEventObject!, _ eventListenerInterface: EventListenerInterface!) {
        let inputMappingEventListenerInterface: InputMappingEventListenerInterface! = (eventListenerInterface as Any as? InputMappingEventListenerInterface)
        inputMappingEventListenerInterface.onInputMappingEvent((eventObject as! InputMappingEvent))
    }
}

