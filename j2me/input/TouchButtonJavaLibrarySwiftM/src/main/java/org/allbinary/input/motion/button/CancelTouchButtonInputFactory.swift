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
// package org.allbinary.input.motion.button

import J2SEForSwiftLibrary
// import org.allbinary.game.input.InputFactory
// import org.allbinary.logic.NullUtil

open class CancelTouchButtonInputFactory: JObject {
    fileprivate static var instance: JObject! = NullUtil.getInstance().NULL_OBJECT
    fileprivate var cancelInputArray: JArray<TouchButtonInput?>! = nil

    private func initFields() {
    self.cancelInputArray = JArray<TouchButtonInput?>(InputFactory.getInstance().MAX, nil)
    }
    

    @discardableResult open class func getInstance() -> CancelTouchButtonInputFactory! {
        if (CancelTouchButtonInputFactory.instance === NullUtil.getInstance().NULL_OBJECT) {
            CancelTouchButtonInputFactory.instance = CancelTouchButtonInputFactory()
        }
        return (CancelTouchButtonInputFactory.instance as! CancelTouchButtonInputFactory)
    }
    

    public override init() {
        super.init()
        self.initFields()
        let basicTouchInputFactory: BasicTouchInputFactory! = BasicTouchInputFactory.getInstance()
        do {
            var index: Int32 = self.cancelInputArray.length &- 1
            while (index >= 0) {
                defer { index &-= 1 }
            self.cancelInputArray[index] = basicTouchInputFactory.NONE
            }
        }
        self.cancelInputArray[basicTouchInputFactory.UP.getSourceId()] = basicTouchInputFactory.DOWN
        self.cancelInputArray[basicTouchInputFactory.DOWN.getSourceId()] = basicTouchInputFactory.UP
        self.cancelInputArray[basicTouchInputFactory.LEFT.getSourceId()] = basicTouchInputFactory.RIGHT
        self.cancelInputArray[basicTouchInputFactory.RIGHT.getSourceId()] = basicTouchInputFactory.LEFT
    }
    

    @discardableResult open func getCancel(_ touchButtonInput: TouchButtonInput!) -> TouchButtonInput! {
        return self.cancelInputArray[touchButtonInput.getSourceId()]
    }
}

