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
// package org.allbinary.logic.util.event.handler

import J2SEForSwiftLibrary
// import jsinterop.annotations.JsType
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.util.event.AllBinaryEventObject
// import org.allbinary.logic.util.event.EventListenerInterface
// import org.allbinary.logic.util.event.EventStrings
// import org.allbinary.string.CommonStrings
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListD
// import jsinterop.annotations.JsMethod
// import jsinterop.annotations.JsConstructor
// import jsinterop.annotations.JsProperty

open class BasicEventHandler: JObject, BasicEventHandlerInterface {
    public var logUtil: LogUtil! = nil
    public var commonStrings: CommonStrings! = nil
    fileprivate var eventStrings: EventStrings! = nil
    public var eventListenerInterfaceList: BasicArrayList! = nil

    private func initFields() {
    self.logUtil = LogUtil.getInstance()
    self.commonStrings = CommonStrings.getInstance()
    self.eventStrings = EventStrings.getInstance()
    
    }
    

    public override init() {
        super.init()
        self.initFields()
        self.eventListenerInterfaceList = BasicArrayListD()
    }
    

    open func removeAllListeners() {
        self.eventListenerInterfaceList = BasicArrayListD()
    }
    

    open func addListeners(_ vector: BasicArrayList!) {
        var eventListenerInterface: EventListenerInterface! = nil
        let size: Int32 = vector.size()
        do {
            var index: Int32 = 0
            while (index < size) {
                defer { index &+= 1 }
            eventListenerInterface = (vector.get(index) as! EventListenerInterface)
            self.addListenerInterface(eventListenerInterface)
            }
        }
    }
    

    open func removeListeners(_ vector: BasicArrayList!) {
        var eventListenerInterface: EventListenerInterface! = nil
        let size: Int32 = vector.size()
        do {
            var index: Int32 = 0
            while (index < size) {
                defer { index &+= 1 }
            eventListenerInterface = (vector.get(index) as! EventListenerInterface)
            self.removeListener(eventListenerInterface)
            }
        }
    }
    

    open func addListenerSingleThreaded(_ eventListenerInterface: EventListenerInterface!) {
        if (!self.eventListenerInterfaceList.contains((eventListenerInterface as? JObject))) {
            self.eventListenerInterfaceList.add((eventListenerInterface as? JObject))
        }
    }
    

    open func addListenerInterface(_ eventListenerInterface: EventListenerInterface!) {
        if (!self.eventListenerInterfaceList.contains((eventListenerInterface as? JObject))) {
            self.eventListenerInterfaceList.add((eventListenerInterface as? JObject))
        }
    }
    

    open func removeListenerSingleThreaded(_ eventListenerInterface: EventListenerInterface!) {
        self.eventListenerInterfaceList.remove((eventListenerInterface as? JObject))
    }
    

    open func removeListener(_ eventListenerInterface: EventListenerInterface!) {
        self.eventListenerInterfaceList.remove((eventListenerInterface as? JObject))
    }
    

    open func fireEvent(_ eventObject: AllBinaryEventObject!) {
        var eventListenerInterface: EventListenerInterface! = nil
        var index: Int32 = 0
        while (index < self.eventListenerInterfaceList.size()) {
            do {
                eventListenerInterface = (self.eventListenerInterfaceList.get(index) as! EventListenerInterface)
                self.process(eventObject, eventListenerInterface)
            } /* catch (Exception e): a thrown Java exception stops the program */
            index &+= 1
        }
    }
    

    open func process(_ eventObject: AllBinaryEventObject!, _ eventListenerInterface: EventListenerInterface!) {
        eventListenerInterface.onEvent(eventObject)
    }
    

    @discardableResult open func getEventListenerInterfaceListP() -> BasicArrayList! {
        return self.eventListenerInterfaceList
    }
    

    @discardableResult open override func toString() -> String! {
        let stringBuffer: StringMaker! = StringMaker()
        stringBuffer.append(self.eventStrings.TOTAL_LISTENERS)
        stringBuffer.appendint(self.eventListenerInterfaceList.size())
        var eventListenerInterface: EventListenerInterface! = nil
        var index: Int32 = 0
        while (index < self.eventListenerInterfaceList.size()) {
            do {
                eventListenerInterface = (self.eventListenerInterfaceList.get(index) as! EventListenerInterface)
                stringBuffer.append(self.eventStrings.LISTENER_LABEL)
                stringBuffer.append(jstr(eventListenerInterface))
            } /* catch (Exception e): a thrown Java exception stops the program */
            index &+= 1
        }
        return stringBuffer.toString()
    }
}

