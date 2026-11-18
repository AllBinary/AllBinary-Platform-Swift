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
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListD

open class CurrentlyPressedTouchButtonSingleton: JObject {
    fileprivate static let instance: CurrentlyPressedTouchButtonSingleton! = CurrentlyPressedTouchButtonSingleton()
    public var list: BasicArrayList! = nil

    private func initFields() {
    self.list = BasicArrayListD()
    }
    

    @discardableResult open class func getInstance() -> CurrentlyPressedTouchButtonSingleton! {
        return CurrentlyPressedTouchButtonSingleton.instance
    }
    

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult open func size() -> Int32 {
        return self.list.size()
    }
    

    @discardableResult open func removeAt(_ index: Int32) -> TouchButtonInput! {
        return (self.list.removeAt(index) as! TouchButtonInput)
    }
    

    @discardableResult open func remove(_ touchButtonInput: TouchButtonInput!) -> Bool {
        return self.list.remove(touchButtonInput)
    }
    

    @discardableResult open func get(_ index: Int32) -> TouchButtonInput! {
        return (self.list.objectArray[index] as! TouchButtonInput)
    }
    

    @discardableResult open func contains(_ touchButtonInput: TouchButtonInput!) -> Bool {
        return self.list.contains(touchButtonInput)
    }
    

    open func add(_ touchButtonInput: TouchButtonInput!) {
        self.list.add(touchButtonInput)
    }
}

