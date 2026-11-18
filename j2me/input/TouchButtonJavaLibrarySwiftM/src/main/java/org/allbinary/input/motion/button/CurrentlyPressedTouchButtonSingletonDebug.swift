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
// import org.allbinary.graphics.GPoint
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.string.CommonSeps

open class CurrentlyPressedTouchButtonSingletonDebug: CurrentlyPressedTouchButtonSingleton {
    fileprivate static let instanceC: CurrentlyPressedTouchButtonSingletonDebug! = CurrentlyPressedTouchButtonSingletonDebug()
    fileprivate var string: String! = nil
    fileprivate var listString: String! = nil
    fileprivate var appendText: String! = nil
    fileprivate var PRESSED_AND_FIRED: String! = nil
    fileprivate var PRESSED_AND_NOT_FIRED: String! = nil
    fileprivate var ASSOCIATED_RELEASED_AND_FIRED: String! = nil
    fileprivate var RELEASED_AND_FIRED: String! = nil
    fileprivate var RELEASED_AND_FIRED_2: String! = nil
    fileprivate var RELEASED_AND_NOT_FIRED: String! = nil

    // Each class has its own field initializers
    private func initFields() {
    self.string = StringUtil.getInstance().EMPTY_STRING
    self.listString = StringUtil.getInstance().EMPTY_STRING
    self.appendText = StringUtil.getInstance().EMPTY_STRING
    self.PRESSED_AND_FIRED = "pressed & fired"
    self.PRESSED_AND_NOT_FIRED = "pressed in button but not fired"
    self.ASSOCIATED_RELEASED_AND_FIRED = "assoc. rel & fired"
    self.RELEASED_AND_FIRED = "rel & fired 1"
    self.RELEASED_AND_FIRED_2 = "rel & fired 2"
    self.RELEASED_AND_NOT_FIRED = "rel & not fired"
    }

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult open override class func getInstance() -> CurrentlyPressedTouchButtonSingleton! {
        return CurrentlyPressedTouchButtonSingletonDebug.instanceC
    }
    

    fileprivate func appendTouchButtonInput(_ append: String!, _ touchButtonInput: TouchButtonInput!) {
        let stringBuffer: StringMaker! = StringMaker()
        stringBuffer.append(touchButtonInput.toString())
        stringBuffer.append(CommonSeps.getInstance().SPACE)
        stringBuffer.append(append)
        self.appendText = stringBuffer.toString()
        self.string = StringMaker().append(self.listString).append(self.appendText).toString()
    }
    

    fileprivate func append(_ append: String!) {
        self.appendText = StringMaker().append(self.appendText).append(append).toString()
        self.string = StringMaker().append(self.listString).append(self.appendText).toString()
    }
    

    open func clearLog(_ x: Int32, _ y: Int32) {
        self.appendText = StringMaker().append(GPoint.toStringStatic(x, y, 0)).append(CommonSeps.getInstance().SPACE).toString()
        self.string = StringMaker().append(self.listString).append(self.appendText).toString()
    }
    

    open func releaseAndNotFired() {
        self.append(self.RELEASED_AND_NOT_FIRED)
    }
    

    open func releaseAndFired(_ touchButtonInput: TouchButtonInput!) {
        self.appendTouchButtonInput(self.RELEASED_AND_FIRED, touchButtonInput)
    }
    

    open func releaseAndFired2(_ touchButtonInput: TouchButtonInput!) {
        self.appendTouchButtonInput(self.RELEASED_AND_FIRED_2, touchButtonInput)
    }
    

    open func releaseAndFiredAssociated(_ touchButtonInput: TouchButtonInput!) {
        self.appendTouchButtonInput(self.ASSOCIATED_RELEASED_AND_FIRED, touchButtonInput)
    }
    

    open func pressedAndFired(_ touchButtonInput: TouchButtonInput!) {
        self.appendTouchButtonInput(self.PRESSED_AND_FIRED, touchButtonInput)
    }
    

    open func pressedAndNotFired(_ touchButtonInput: TouchButtonInput!) {
        self.appendTouchButtonInput(self.PRESSED_AND_NOT_FIRED, touchButtonInput)
    }
    

    @discardableResult open override func removeAt(_ index: Int32) -> TouchButtonInput! {
        let touchButtonInput: TouchButtonInput! = super.removeAt(index)
        self.listString = self.list.toString()
        self.string = StringMaker().append(self.listString).append(self.appendText).toString()
        return touchButtonInput
    }
    

    @discardableResult open override func remove(_ touchButtonInput: TouchButtonInput!) -> Bool {
        let isRemoved: Bool = super.remove(touchButtonInput)
        self.listString = self.list.toString()
        self.string = StringMaker().append(self.listString).append(self.appendText).toString()
        return isRemoved
    }
    

    open override func add(_ touchButtonInput: TouchButtonInput!) {
        super.add(touchButtonInput)
        self.listString = self.list.toString()
        self.string = StringMaker().append(self.listString).append(self.appendText).toString()
    }
    

    @discardableResult open override func toString() -> String! {
        return self.string
    }
}

