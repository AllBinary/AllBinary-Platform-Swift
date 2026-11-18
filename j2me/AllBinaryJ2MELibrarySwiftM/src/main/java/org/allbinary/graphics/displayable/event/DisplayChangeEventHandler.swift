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
// package org.allbinary.graphics.displayable.event

import J2SEForSwiftLibrary
// import org.allbinary.logic.util.event.AllBinaryEventObject
// import org.allbinary.logic.util.event.EventListenerInterface
// import org.allbinary.logic.util.event.handler.BasicEventHandler

open class DisplayChangeEventHandler: BasicEventHandler {
    fileprivate static let SINGLETON: DisplayChangeEventHandler! = DisplayChangeEventHandler()
    

    @discardableResult open class func getInstance() -> DisplayChangeEventHandler! {
        return DisplayChangeEventHandler.SINGLETON
    }
    

    public override init() {
        super.init()
    }
    

    open override func process(_ eventObject: AllBinaryEventObject!, _ eventListenerInterface: EventListenerInterface!) {
        let displayChangeEventListener: DisplayChangeEventListener! = ((eventListenerInterface as! DisplayChangeEventListener))
        displayChangeEventListener.onDisplayChangeEvent((eventObject as! DisplayChangeEvent))
    }
}

