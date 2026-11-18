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
// package org.allbinary.logic.java.bool

import J2SEForSwiftLibrary

open class BooleanFactory: JObject {
    fileprivate static let instance: BooleanFactory! = BooleanFactory()
    public var TRUE: Bool! = nil
    public var FALSE: Bool! = nil
    public var TRUE_STRING: String! = nil
    public var FALSE_STRING: String! = nil
    public var YES: String! = nil
    public var NO: String! = nil

    private func initFields() {
    self.TRUE = true
    self.FALSE = false
    self.TRUE_STRING = self.TRUE.toString()
    self.FALSE_STRING = self.FALSE.toString()
    self.YES = "yes"
    self.NO = "no"
    }

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult open class func getInstance() -> BooleanFactory! {
        return BooleanFactory.instance
    }
    

    @discardableResult open func toStringb(_ bool: Bool) -> String! {
        if (bool) {
            return self.TRUE_STRING
        } else {
            return self.FALSE_STRING
        }
    }
}

