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
// package org.allbinary.game.input.event

import J2SEForSwiftLibrary
// import org.allbinary.game.input.PlayerGameInput
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.util.event.AllBinaryEventObject
// import org.allbinary.logic.util.event.EventListenerInterface
// import org.allbinary.logic.util.event.EventStrings
// import org.allbinary.logic.util.event.handler.BasicEventHandler
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListD

open class PressGameKeyEventHandler: BasicEventHandler {
    fileprivate static let instance: PressGameKeyEventHandler! = PressGameKeyEventHandler()
    fileprivate var list: BasicArrayList! = nil

    // Each class has its own field initializers
    private func initFields() {
    self.list = BasicArrayListD()
    }
    

    @discardableResult open class func getInstance() -> PressGameKeyEventHandler! {
        return PressGameKeyEventHandler.instance
    }
    

    public override init() {
        super.init()
        self.initFields()
    }
    

    open func addListener(_ playerGameInput: PlayerGameInput!) {
        if (!self.list.contains(playerGameInput)) {
            self.list.add(playerGameInput)
        }
    }
    

    open override func removeAllListeners() {
        self.list.clear()
        super.removeAllListeners()
    }
    

    open override func removeListener(_ eventListenerInterface: EventListenerInterface!) {
        self.list.remove((eventListenerInterface as? JObject))
        super.removeListener(eventListenerInterface)
    }
    

    open override func fireEvent(_ eventObject: AllBinaryEventObject!) {
        do {
            var index: Int32 = self.list.size()
            while (jPreDecrement(&index) >= 0) {
            do {
                let playerGameInput: PlayerGameInput! = (self.list.objectArray[index] as! PlayerGameInput)
                playerGameInput.onPressGameKeyEvent((eventObject as! GameKeyEvent))
            } /* catch (Exception e): a thrown Java exception stops the program */
            }
        }
        super.fireEvent(eventObject)
    }
    

    open override func process(_ eventObject: AllBinaryEventObject!, _ eventListenerInterface: EventListenerInterface!) {
        let pressGameKeyEventListenerInterface: PressGameKeyEventListenerInterface! = ((eventListenerInterface as! PressGameKeyEventListenerInterface))
        pressGameKeyEventListenerInterface.onPressGameKeyEvent((eventObject as! GameKeyEvent))
    }
}

