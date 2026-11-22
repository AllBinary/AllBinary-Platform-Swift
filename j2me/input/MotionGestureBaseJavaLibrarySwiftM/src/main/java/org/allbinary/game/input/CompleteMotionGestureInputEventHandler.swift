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
// package org.allbinary.game.input

import J2SEForSwiftLibrary
// import org.allbinary.logic.util.event.AllBinaryEventObject
// import org.allbinary.logic.util.event.EventListenerInterface
// import org.allbinary.logic.util.event.EventStrings
// import org.allbinary.logic.util.event.handler.BasicEventHandler
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListD

open class CompleteMotionGestureInputEventHandler: BasicEventHandler {
    fileprivate static let SINGLETON: CompleteMotionGestureInputEventHandler! = CompleteMotionGestureInputEventHandler()
    fileprivate var list: BasicArrayList! = nil

    // Each class has its own field initializers
    private func initFields() {
    self.list = BasicArrayListD()
    }
    

    @discardableResult open class func getInstance() -> CompleteMotionGestureInputEventHandler! {
        return CompleteMotionGestureInputEventHandler.SINGLETON
    }
    

    public override init() {
        super.init()
        self.initFields()
    }
    

    open func addListener(_ completeMotionGestureInputEventListener: CompleteMotionGestureInputEventListener!) {
        if (!self.list.contains(completeMotionGestureInputEventListener)) {
            self.list.add(completeMotionGestureInputEventListener)
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
                let completeMotionGestureInputEventListener: CompleteMotionGestureInputEventListener! = (self.list.objectArray[index] as! CompleteMotionGestureInputEventListener)
                completeMotionGestureInputEventListener.onCompleteMotionGestureInputEvent((eventObject as! CompleteMotionGestureInputEvent))
            } /* catch (Exception e): a thrown Java exception stops the program */
            }
        }
        super.fireEvent(eventObject)
    }
    

    open override func process(_ eventObject: AllBinaryEventObject!, _ eventListenerInterface: EventListenerInterface!) {
        let completeMotionGestureInputEventListenerInterface: CompleteMotionGestureInputEventListenerInterface! = (eventListenerInterface as Any as? CompleteMotionGestureInputEventListenerInterface)
        completeMotionGestureInputEventListenerInterface.onCompleteMotionGestureInputEvent((eventObject as! CompleteMotionGestureInputEvent))
    }
}

