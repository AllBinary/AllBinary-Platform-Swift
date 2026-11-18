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
// import org.allbinary.game.input.mapping.InputToGameKeyMapping
// import org.allbinary.logic.NullUtil
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.string.CommonLabels
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListD

open class BasicTouchInputFactory: JObject {
    fileprivate static var instance: JObject! = NullUtil.getInstance().NULL_OBJECT
    public var logUtil: LogUtil! = nil
    public var SPECIAL_BUTTON_SEVEN_TESTING_ONLY: TouchButtonInput! = nil
    public var SPECIAL_BUTTON_EIGHT_TESTING_ONLY: TouchButtonInput! = nil
    public var SPECIAL_BUTTON_SIX: TouchButtonInput! = nil
    public var SPECIAL_BUTTON_FIVE: TouchButtonInput! = nil
    public var SPECIAL_BUTTON_FOUR: TouchButtonInput! = nil
    public var SPECIAL_BUTTON_THREE: TouchButtonInput! = nil
    public var SPECIAL_BUTTON_TWO: TouchButtonInput! = nil
    public var SPECIAL_BUTTON_ONE: TouchButtonInput! = nil
    public var UP: TouchButtonInput! = nil
    public var LEFT: TouchButtonInput! = nil
    public var RIGHT: TouchButtonInput! = nil
    public var DOWN: TouchButtonInput! = nil
    public var NONE: TouchButtonInput! = nil
    fileprivate var initialized: Bool = false
    fileprivate var list: BasicArrayList! = nil

    private func initFields() {
    self.logUtil = LogUtil.getInstance()
    
    
    
    
    
    
    
    
    
    
    
    
    
    self.initialized = false
    self.list = BasicArrayListD()
    }
    

    @discardableResult open class func getInstance() -> BasicTouchInputFactory! {
        if (BasicTouchInputFactory.instance === NullUtil.getInstance().NULL_OBJECT) {
            BasicTouchInputFactory.instance = BasicTouchInputFactory()
        }
        return (BasicTouchInputFactory.instance as! BasicTouchInputFactory)
    }
    

    public override init() {
        super.init()
        self.initFields()
        let MAX: Int32 = InputFactory.getInstance().MAX
        self.SPECIAL_BUTTON_SEVEN_TESTING_ONLY = TouchButtonInput(MAX &- 41, "Button 7 - Testing Only May Cross Over Key Values")
        self.SPECIAL_BUTTON_EIGHT_TESTING_ONLY = TouchButtonInput(MAX &- 42, "Button 8 - Testing Only May Cross Over Key Values")
        self.SPECIAL_BUTTON_SIX = TouchButtonInput(MAX &- 30, "Button 6")
        self.SPECIAL_BUTTON_FIVE = TouchButtonInput(MAX &- 31, "Button 5")
        self.SPECIAL_BUTTON_FOUR = TouchButtonInput(MAX &- 32, "Button 4")
        self.SPECIAL_BUTTON_THREE = TouchButtonInput(MAX &- 33, "Button 3")
        self.SPECIAL_BUTTON_TWO = TouchButtonInput(MAX &- 34, "Button 2")
        self.SPECIAL_BUTTON_ONE = TouchButtonInput(MAX &- 35, "Button 1")
        self.UP = TouchButtonInput(MAX &- 36, "Up Button")
        self.LEFT = TouchButtonInput(MAX &- 37, "Left Button")
        self.RIGHT = TouchButtonInput(MAX &- 38, "Right Button")
        self.DOWN = TouchButtonInput(MAX &- 39, "Down Button")
        self.NONE = TouchButtonInput(MAX &- 40, "No Button")
    }
    

    open func `init`(_ inputToGameKeyMapping: InputToGameKeyMapping!) {
        if (!self.initialized) {
            self.initialized = true
            self.list.add(self.UP)
            self.list.add(self.LEFT)
            self.list.add(self.RIGHT)
            self.list.add(self.DOWN)
            self.list.add(self.SPECIAL_BUTTON_TWO)
            self.list.add(self.SPECIAL_BUTTON_FOUR)
            self.list.add(self.SPECIAL_BUTTON_THREE)
            self.list.add(self.SPECIAL_BUTTON_ONE)
            self.list.add(self.SPECIAL_BUTTON_FIVE)
            self.list.add(self.SPECIAL_BUTTON_SIX)
            self.list.add(self.SPECIAL_BUTTON_SIX)
            self.list.add(self.SPECIAL_BUTTON_SEVEN_TESTING_ONLY)
            self.list.add(self.SPECIAL_BUTTON_EIGHT_TESTING_ONLY)
            self.updateAllFromList(self.list, inputToGameKeyMapping)
        }
    }
    

    open func updateAll(_ inputToGameKeyMapping: InputToGameKeyMapping!) {
        self.updateAllFromList(self.list, inputToGameKeyMapping)
    }
    

    open func updateAllFromList(_ list: BasicArrayList!, _ inputToGameKeyMapping: InputToGameKeyMapping!) {
        self.logUtil.putF(StringMaker().append(CommonLabels.getInstance().START_LABEL).appendint(list.size()).toString(), self, "updateAll")
        var touchButtonInput: TouchButtonInput! = nil
        do {
            var index: Int32 = list.size() &- 1
            while (index >= 0) {
                defer { index &-= 1 }
            touchButtonInput = (list.objectArray[index] as! TouchButtonInput)
            touchButtonInput.update(inputToGameKeyMapping)
            }
        }
    }
    

    @discardableResult open func getList() -> BasicArrayList! {
        return self.list
    }
}

