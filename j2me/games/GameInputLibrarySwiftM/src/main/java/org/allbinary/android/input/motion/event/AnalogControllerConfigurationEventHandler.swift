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
// package org.allbinary.android.input.motion.event

import J2SEForSwiftLibrary
// import org.allbinary.logic.util.event.AllBinaryEventObject
// import org.allbinary.logic.util.event.EventListenerInterface
// import org.allbinary.logic.util.event.EventStrings
// import org.allbinary.logic.util.event.handler.BasicEventHandler
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListD

open class AnalogControllerConfigurationEventHandler: BasicEventHandler {
    fileprivate static let instance: AnalogControllerConfigurationEventHandler! = AnalogControllerConfigurationEventHandler()
    fileprivate var list: BasicArrayList! = nil

    // Each class has its own field initializers
    private func initFields() {
    self.list = BasicArrayListD()
    }
    

    @discardableResult open class func getInstance() -> AnalogControllerConfigurationEventHandler! {
        return AnalogControllerConfigurationEventHandler.instance
    }
    

    public override init() {
        super.init()
        self.initFields()
    }
    

    open func addListener(_ analogControllerConfigurationEventListenerInterface: AnalogControllerConfigurationEventListenerInterface!) {
        if (!self.list.contains((analogControllerConfigurationEventListenerInterface as? JObject))) {
            self.list.add((analogControllerConfigurationEventListenerInterface as? JObject))
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
                let playerGameInput: AnalogControllerConfigurationEventListenerInterface! = (self.list.objectArray[index] as Any as? AnalogControllerConfigurationEventListenerInterface)
                playerGameInput.onAnalogControllerConfigurationEvent((eventObject as! AnalogControllerConfigurationEvent))
            } /* catch (Exception e): a thrown Java exception stops the program */
            }
        }
        super.fireEvent(eventObject)
    }
    

    open override func process(_ eventObject: AllBinaryEventObject!, _ eventListenerInterface: EventListenerInterface!) {
        let analogControllerConfigurationEventListenerInterface: AnalogControllerConfigurationEventListenerInterface! = ((eventListenerInterface as Any as? AnalogControllerConfigurationEventListenerInterface))
        analogControllerConfigurationEventListenerInterface.onAnalogControllerConfigurationEvent((eventObject as! AnalogControllerConfigurationEvent))
    }
}

