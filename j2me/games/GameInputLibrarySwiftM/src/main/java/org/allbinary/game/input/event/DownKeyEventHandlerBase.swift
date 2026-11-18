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
// import org.allbinary.logic.util.event.EventListenerInterface
// import org.allbinary.logic.util.event.EventStrings
// import org.allbinary.logic.util.event.handler.BasicEventHandler
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListD

open class DownKeyEventHandlerBase: BasicEventHandler {
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
    

    open func fireEventI(_ eventObject: Int32!) {
        do {
            var index: Int32 = self.list.size()
            while (jPreDecrement(&index) >= 0) {
            do {
                let playerGameInput: PlayerGameInput! = (self.list.objectArray[index] as! PlayerGameInput)
                playerGameInput.onDownKey(eventObject)
            } /* catch (Exception e): a thrown Java exception stops the program */
            }
        }
        var index: Int32 = 0
        var eventListenerInterface: EventListenerInterface! = nil
        while (index < self.eventListenerInterfaceList.size()) {
            do {
                eventListenerInterface = (self.eventListenerInterfaceList.get(index) as! EventListenerInterface)
                self.processI(eventObject, eventListenerInterface)
            } /* catch (Exception e): a thrown Java exception stops the program */
            index &+= 1
        }
    }
    

    open func fireEventForGameKeyEvent(_ eventObject: GameKeyEvent!) {
        let size: Int32 = self.list.size()
        do {
            var index: Int32 = size
            while (jPreDecrement(&index) >= 0) {
            do {
                let playerGameInput: PlayerGameInput! = (self.list.objectArray[index] as! PlayerGameInput)
                playerGameInput.onDownKeyEvent(eventObject)
            } /* catch (Exception e): a thrown Java exception stops the program */
            }
        }
        var index: Int32 = 0
        var eventListenerInterface: EventListenerInterface! = nil
        while (index < self.eventListenerInterfaceList.size()) {
            do {
                eventListenerInterface = (self.eventListenerInterfaceList.get(index) as! EventListenerInterface)
                self.processEvent(eventObject, eventListenerInterface)
            } /* catch (Exception e): a thrown Java exception stops the program */
            index &+= 1
        }
    }
    

    open func processI(_ eventObject: Int32!, _ eventListenerInterface: EventListenerInterface!) {
        let downKeyEventListenerInterface: DownKeyEventListenerInterface! = (eventListenerInterface as! DownKeyEventListenerInterface)
        downKeyEventListenerInterface.onDownKey(eventObject)
    }
    

    open func processEvent(_ eventObject: GameKeyEvent!, _ eventListenerInterface: EventListenerInterface!) {
        let downKeyEventListenerInterface: DownKeyEventListenerInterface! = (eventListenerInterface as! DownKeyEventListenerInterface)
        downKeyEventListenerInterface.onDownKeyEvent(eventObject)
    }
    

    @discardableResult open override func toString() -> String! {
        let stringBuffer: StringMaker! = StringMaker()
        stringBuffer.append(super.toString())
        stringBuffer.append(DownKeyEventHandlerBase.TOTAL_LISTENERS)
        stringBuffer.appendint(self.list.size())
        var eventListenerInterface: EventListenerInterface! = nil
        do {
            var index: Int32 = 0
            while (index < self.list.size()) {
                defer { index &+= 1 }
            do {
                eventListenerInterface = (self.list.get(index) as! EventListenerInterface)
                stringBuffer.append(DownKeyEventHandlerBase.LISTENER_LABEL)
                stringBuffer.append(jstr(eventListenerInterface))
            } /* catch (Exception e): a thrown Java exception stops the program */
            }
        }
        return stringBuffer.toString()
    }
}

