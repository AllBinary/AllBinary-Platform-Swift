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
// package org.allbinary.layer.event

import J2SEForSwiftLibrary
// import org.allbinary.logic.util.event.AllBinaryEventObject
// import org.allbinary.logic.util.event.EventListenerInterface
// import org.allbinary.logic.util.event.EventStrings
// import org.allbinary.logic.util.event.handler.BasicEventHandler
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListD

open class LayerManagerEventHandler: BasicEventHandler {
    fileprivate static var instance: LayerManagerEventHandler! = LayerManagerEventHandler()
    fileprivate var list: BasicArrayList! = nil
    public var CREATE: String! = nil
    public var DELETE: String! = nil

    // Each class has its own field initializers
    private func initFields() {
    self.list = BasicArrayListD()
    self.CREATE = "Create"
    self.DELETE = "Delete"
    }
    

    @discardableResult open class func getInstance() -> LayerManagerEventHandler! {
        return LayerManagerEventHandler.instance
    }
    

    public override init() {
        super.init()
        self.initFields()
    }
    

    open func addListener(_ layerManagerEventListener: LayerManagerEventListener!) {
        if (!self.list.contains(layerManagerEventListener)) {
            self.list.add(layerManagerEventListener)
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
                let layerManagerEventListener: LayerManagerEventListener! = (self.list.objectArray[index] as! LayerManagerEventListener)
                layerManagerEventListener.onCreateLayerManagerEvent((eventObject as! LayerManagerEvent))
            } /* catch (Exception e): a thrown Java exception stops the program */
            }
        }
        super.fireEvent(eventObject)
    }
    

    open func fireDeleteEvent(_ eventObject: AllBinaryEventObject!) {
        do {
            var index: Int32 = self.list.size()
            while (jPreDecrement(&index) >= 0) {
            do {
                let layerManagerEventListener: LayerManagerEventListener! = (self.list.objectArray[index] as! LayerManagerEventListener)
                layerManagerEventListener.onDeleteLayerManagerEvent((eventObject as! LayerManagerEvent))
            } /* catch (Exception e): a thrown Java exception stops the program */
            }
        }
        let eventListenerInterfaceList: BasicArrayList! = self.eventListenerInterfaceList
        var eventListenerInterface: EventListenerInterface! = nil
        var layerManagerEventListenerInterface: LayerManagerEventListenerInterface! = nil
        var listenerIndex: Int32 = 0
        while (listenerIndex < eventListenerInterfaceList.size()) {
            do {
                eventListenerInterface = (eventListenerInterfaceList.objectArray[listenerIndex] as! EventListenerInterface)
                layerManagerEventListenerInterface = ((eventListenerInterface as! LayerManagerEventListenerInterface))
                layerManagerEventListenerInterface.onDeleteLayerManagerEvent((eventObject as! LayerManagerEvent))
            } /* catch (Exception e): a thrown Java exception stops the program */
            listenerIndex &+= 1
        }
    }
    

    open override func process(_ eventObject: AllBinaryEventObject!, _ eventListenerInterface: EventListenerInterface!) {
        let layerManagerEventListenerInterface: LayerManagerEventListenerInterface! = ((eventListenerInterface as! LayerManagerEventListenerInterface))
        layerManagerEventListenerInterface.onCreateLayerManagerEvent((eventObject as! LayerManagerEvent))
    }
}

