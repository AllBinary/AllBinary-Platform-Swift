/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2022 AllBinary 
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
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.util.event.EventStrings
// import org.allbinary.string.CommonStrings
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListD

open class RawKeyEventHandler: JObject {
    fileprivate static let instance: RawKeyEventHandler! = RawKeyEventHandler()
    fileprivate static let TOTAL_LISTENERS: String! = "Total Listeners: "
    fileprivate static let LISTENER_LABEL: String! = " Listener: "
    public var logUtil: LogUtil! = nil
    public var eventListenerInterfaceList: BasicArrayList! = nil

    private func initFields() {
    self.logUtil = LogUtil.getInstance()
    
    }
    

    @discardableResult open class func getInstance() -> RawKeyEventHandler! {
        return RawKeyEventHandler.instance
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
        var eventListenerInterface: RawKeyEventListener! = nil
        let size: Int32 = vector.size()
        do {
            var index: Int32 = 0
            while (index < size) {
                defer { index &+= 1 }
            eventListenerInterface = (vector.get(index) as Any as? RawKeyEventListener)
            self.addListener(eventListenerInterface)
            }
        }
    }
    

    open func addListenerSingleThreaded(_ eventListenerInterface: RawKeyEventListener!) {
        if (!self.eventListenerInterfaceList.contains((eventListenerInterface as? JObject))) {
            self.eventListenerInterfaceList.add((eventListenerInterface as? JObject))
        }
    }
    

    open func addListener(_ eventListenerInterface: RawKeyEventListener!) {
        if (!self.eventListenerInterfaceList.contains((eventListenerInterface as? JObject))) {
            self.eventListenerInterfaceList.add((eventListenerInterface as? JObject))
        }
    }
    

    open func removeListenerSingleThreaded(_ eventListenerInterface: RawKeyEventListener!) {
        self.eventListenerInterfaceList.remove((eventListenerInterface as? JObject))
    }
    

    open func removeListener(_ eventListenerInterface: RawKeyEventListener!) {
        self.eventListenerInterfaceList.remove((eventListenerInterface as? JObject))
    }
    

    open func fireEvent(_ keyCode: Int32, _ deviceId: Int32, _ repeated: Bool) {
        var eventListenerInterface: RawKeyEventListener! = nil
        var index: Int32 = 0
        while (index < self.eventListenerInterfaceList.size()) {
            do {
                eventListenerInterface = (self.eventListenerInterfaceList.get(index) as Any as? RawKeyEventListener)
                self.process(keyCode, deviceId, repeated, eventListenerInterface)
            } /* catch (Exception e): a thrown Java exception stops the program */
            index &+= 1
        }
    }
    

    open func process(_ keyCode: Int32, _ deviceId: Int32, _ repeated: Bool, _ eventListenerInterface: RawKeyEventListener!) {
        eventListenerInterface.onEventRaw(keyCode, deviceId, repeated)
    }
    

    @discardableResult open func getEventListenerInterfaceListP() -> BasicArrayList! {
        return self.eventListenerInterfaceList
    }
    

    @discardableResult open override func toString() -> String! {
        let stringBuffer: StringMaker! = StringMaker()
        stringBuffer.append(RawKeyEventHandler.TOTAL_LISTENERS)
        stringBuffer.appendint(self.eventListenerInterfaceList.size())
        var eventListenerInterface: RawKeyEventListener! = nil
        var index: Int32 = 0
        while (index < self.eventListenerInterfaceList.size()) {
            do {
                eventListenerInterface = (self.eventListenerInterfaceList.get(index) as Any as? RawKeyEventListener)
                stringBuffer.append(RawKeyEventHandler.LISTENER_LABEL)
                stringBuffer.append(jstr(eventListenerInterface))
            } /* catch (Exception e): a thrown Java exception stops the program */
            index &+= 1
        }
        return stringBuffer.toString()
    }
}

