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
// package org.allbinary.game

import J2SEForSwiftLibrary
// import org.allbinary.business.advertisement.GameAdStateBase
// import org.allbinary.business.advertisement.AdConfiguration
// import org.allbinary.input.event.VirtualKeyboardEvent
// import org.allbinary.input.event.VirtualKeyboardEventHandler
// import org.allbinary.input.event.VirtualKeyboardEventListenerInterface
// import org.allbinary.logic.util.event.AllBinaryEventObject

open class GameAdState: GameAdStateBase, VirtualKeyboardEventListenerInterface {
    

    public override init(_ adConfiguration: AdConfiguration!) {
        super.init(adConfiguration)
        VirtualKeyboardEventHandler.getInstance().addListenerInterface(self)
    }
    

    open func onVirtualKeyboardEvent(_ virtualKeyboardEvent: VirtualKeyboardEvent!) {
    }
    

    open override func onEvent(_ eventObject: AllBinaryEventObject!) {
        super.onEvent(eventObject)
    }
}

