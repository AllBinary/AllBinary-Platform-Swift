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
// package org.allbinary.input.motion.gesture

import J2SEForSwiftLibrary
// import org.allbinary.game.input.CompleteMotionGestureInputEvent
// import org.allbinary.util.BasicArrayList

open class MotionGestureToMotionGestureActionAssociation: JObject {
    fileprivate var list: BasicArrayList! = nil
    fileprivate var motionGestureAction: CompleteMotionGestureInputEvent! = nil

    private func initFields() {
    
    
    }
    

    public init(_ list: BasicArrayList!, _ commandAction: CompleteMotionGestureInputEvent!) {
        super.init()
        self.initFields()
        self.list = list
        self.motionGestureAction = commandAction
    }
    

    @discardableResult open func getMotionGesture() -> BasicArrayList! {
        return self.list
    }
    

    open func setMotionGestures(_ list: BasicArrayList!) {
        self.list = list
    }
    

    @discardableResult open func getCommandAction() -> CompleteMotionGestureInputEvent! {
        return self.motionGestureAction
    }
    

    open func setMotionGestureAction(_ commandAction: CompleteMotionGestureInputEvent!) {
        self.motionGestureAction = commandAction
    }
    

    @discardableResult open func isMotionGestureArrayEquals(_ aList: BasicArrayList!) -> Bool {
        let size: Int32 = aList.size()
        if (self.list.size() != size) {
            return false
        }
        do {
            var i: Int32 = size &- 1
            while (i >= 0) {
                defer { i &-= 1 }
            if (aList.objectArray[i] != self.list.objectArray[i]) {
                return false
            }
            }
        }
        return true
    }
}

