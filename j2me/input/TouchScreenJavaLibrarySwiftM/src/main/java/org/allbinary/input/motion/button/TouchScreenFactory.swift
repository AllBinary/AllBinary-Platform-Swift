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
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.string.CommonStrings

open class TouchScreenFactory: JObject {
    fileprivate static let SINGLETON: TouchScreenFactory! = TouchScreenFactory()
    public var logUtil: LogUtil! = nil
    fileprivate var touch: Bool = false
    fileprivate var multiTouch: Bool = false
    fileprivate var multiTouchDistinct: Bool = false
    fileprivate var touchScreenType: TouchScreenType! = nil

    private func initFields() {
    self.logUtil = LogUtil.getInstance()
    self.touch = false
    self.multiTouch = false
    self.multiTouchDistinct = false
    self.touchScreenType = TouchScreenTypesFactory.getInstance().NOTOUCH
    }
    

    public override init() {
        super.init()
        self.initFields()
        do {
            self.setTouch(true)
            self.setMultiTouch(false)
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
    

    @discardableResult open class func getInstance() -> TouchScreenFactory! {
        return TouchScreenFactory.SINGLETON
    }
    

    open func setMultiTouch(_ multiTouch: Bool) {
        self.multiTouch = multiTouch
    }
    

    @discardableResult open func isMultiTouch() -> Bool {
        return self.multiTouch
    }
    

    open func setTouch(_ touch: Bool) {
        self.touch = touch
    }
    

    @discardableResult open func isTouch() -> Bool {
        return self.touch
    }
    

    open func setMultiTouchDistinct(_ multiTouchDistinct: Bool) {
        self.multiTouchDistinct = multiTouchDistinct
    }
    

    @discardableResult open func isMultiTouchDistinct() -> Bool {
        return self.multiTouchDistinct
    }
    

    open func setTouchScreenType(_ touchScreenType: TouchScreenType!) {
        self.touchScreenType = touchScreenType
    }
    

    @discardableResult open func getTouchScreenType() -> TouchScreenType! {
        return self.touchScreenType
    }
    

    @discardableResult open override func toString() -> String! {
        let stringBuffer: StringMaker! = StringMaker()
        stringBuffer.append("TouchScreen: ")
        stringBuffer.appendboolean(self.isTouch())
        stringBuffer.append(" MultiTouch: ")
        stringBuffer.appendboolean(self.isMultiTouch())
        stringBuffer.append(" Distinct MultiTouch: ")
        stringBuffer.appendboolean(self.isMultiTouchDistinct())
        stringBuffer.append(" TouchScreenType: ")
        stringBuffer.append(StringUtil.getInstance().toString(self.getTouchScreenType()))
        return stringBuffer.toString()
    }
}

