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
// import org.allbinary.TsUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.string.StringValidationUtil

open class BooleanUtil: JObject {
    fileprivate static let instance: BooleanUtil! = BooleanUtil()
    fileprivate var tsUtil: TsUtil! = nil

    private func initFields() {
    self.tsUtil = TsUtil.getInstance()
    }
    

    @discardableResult public static func getInstance() -> BooleanUtil! {
        return BooleanUtil.instance
    }
    

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult open func getFromString(_ booleanString: String!) -> Bool {
        let stringValidationUtil: StringValidationUtil! = StringValidationUtil.getInstance()
        let booleanFactory: BooleanFactory! = BooleanFactory.getInstance()
        if (stringValidationUtil.isEmpty(booleanString)) {
            return false
        }
        let booleanStringLowerCase: String! = JString.toLowerCase(booleanString)
        if (self.tsUtil.compareTo(booleanStringLowerCase, booleanFactory.TRUE_STRING) == 0) {
            return true
        } else if (self.tsUtil.compareTo(booleanStringLowerCase, booleanFactory.FALSE_STRING) == 0) {
            return false
        } else {
            jThrow(JException("Exception", "Invalid booleanString - Must be true or false"))
        }
    }
    

    @discardableResult open func isStringBoolean(_ booleanString: String!) -> Bool {
        let booleanFactory: BooleanFactory! = BooleanFactory.getInstance()
        let booleanStringLowerCase: String! = JString.toLowerCase(booleanString)
        if (JString.compareTo(booleanStringLowerCase, booleanFactory.TRUE_STRING) == 0 || JString.compareTo(booleanStringLowerCase, booleanFactory.FALSE_STRING) == 0) {
            return true
        }
        return false
    }
    

    @discardableResult open func toStringFromBooleanArray(_ booleanArray: JArray<Bool>!) -> String! {
        let stringMaker: StringMaker! = StringMaker()
        let size: Int32 = booleanArray.length
        do {
            var index: Int32 = 0
            while (index < size) {
                defer { index &+= 1 }
            stringMaker.appendboolean(booleanArray[index])
            }
        }
        return stringMaker.toString()
    }
}

