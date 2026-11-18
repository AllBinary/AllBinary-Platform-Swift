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
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.util.event.AllBinaryEventObject
// import org.allbinary.logic.util.event.EventListenerInterface
// import org.allbinary.logic.util.event.EventStrings
// import org.allbinary.logic.util.event.handler.BasicEventHandler
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListD

open class UpGameKeyEventHandlerBase: BasicEventHandler {
    fileprivate static let TOTAL_LISTENERS: String! = " Total PlayerGameInput Listeners: "
    fileprivate static let LISTENER_LABEL: String! = " PlayerGameInput Listener: "
    fileprivate var list: BasicArrayList! = nil

    // Each class has its own field initializers
    private func initFields() {
    self.list = BasicArrayListD()
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
    

    open override func removeListenerSingleThreaded(_ eventListenerInterface: EventListenerInterface!) {
        self.list.remove((eventListenerInterface as? JObject))
        super.removeListenerSingleThreaded(eventListenerInterface)
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
                playerGameInput.onUpGameKeyEvent((eventObject as! GameKeyEvent))
            } /* catch (Exception e): a thrown Java exception stops the program */
            }
        }
        super.fireEvent(eventObject)
    }
    

    open override func process(_ eventObject: AllBinaryEventObject!, _ eventListenerInterface: EventListenerInterface!) {
        let upGameKeyEventListenerInterface: UpGameKeyEventListenerInterface! = (eventListenerInterface as! UpGameKeyEventListenerInterface)
        upGameKeyEventListenerInterface.onUpGameKeyEvent((eventObject as! GameKeyEvent))
    }
    

    @discardableResult open override func toString() -> String! {
        let stringBuffer: StringMaker! = StringMaker()
        let size: Int32 = self.list.size()
        stringBuffer.append(super.toString())
        stringBuffer.append(UpGameKeyEventHandlerBase.TOTAL_LISTENERS)
        stringBuffer.appendint(size)
        do {
            var index: Int32 = 0
            while (index < size) {
                defer { index &+= 1 }
            do {
                let eventListenerInterface: EventListenerInterface! = (self.list.get(index) as! EventListenerInterface)
                stringBuffer.append(UpGameKeyEventHandlerBase.LISTENER_LABEL)
                stringBuffer.append(jstr(eventListenerInterface))
            } /* catch (Exception e): a thrown Java exception stops the program */
            }
        }
        return stringBuffer.toString()
    }
}

