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
// package org.allbinary.logic.string

import J2SEForSwiftLibrary
// import org.allbinary.TsUtil

open class StringValidationUtil: JObject {
    fileprivate static let instance: StringValidationUtil! = StringValidationUtil()
    fileprivate var stringUtil: StringUtil! = nil
    fileprivate var tsUtil: TsUtil! = nil

    private func initFields() {
    self.stringUtil = StringUtil.getInstance()
    self.tsUtil = TsUtil.getInstance()
    }
    

    @discardableResult public static func getInstance() -> StringValidationUtil! {
        return StringValidationUtil.instance
    }
    

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult open func containsSpaces(_ value: String!) -> Bool {
        if (JString.indexOf(value, UInt16((" " as Unicode.Scalar).value)) >= 0) {
            return true
        }
        return false
    }
    

    @discardableResult open func isNumber(_ value: String!) -> Bool {
        var numberOfDecimalPoints: Int32 = 0
        do {
            var index: Int32 = 0
            while (index < JString.length(value)) {
                defer { index &+= 1 }
            let digit: UInt16 = JString.charAt(value, index)
            if (!self.isNumberFromChar(digit) && digit != UInt16(("." as Unicode.Scalar).value)) {
                return false
            }
            if (digit == UInt16(("." as Unicode.Scalar).value)) {
                numberOfDecimalPoints &+= 1
                if (numberOfDecimalPoints > 1) {
                    return false
                }
            }
            }
        }
        return true
    }
    

    @discardableResult open func isNumberFromChar(_ digit: UInt16) -> Bool {
        if (digit != UInt16(("0" as Unicode.Scalar).value) && digit != UInt16(("1" as Unicode.Scalar).value) && digit != UInt16(("2" as Unicode.Scalar).value) && digit != UInt16(("3" as Unicode.Scalar).value) && digit != UInt16(("4" as Unicode.Scalar).value) && digit != UInt16(("5" as Unicode.Scalar).value) && digit != UInt16(("6" as Unicode.Scalar).value) && digit != UInt16(("7" as Unicode.Scalar).value) && digit != UInt16(("8" as Unicode.Scalar).value) && digit != UInt16(("9" as Unicode.Scalar).value)) {
            return false
        }
        return true
    }
    

    @discardableResult open func isValidRequired(_ value: String!, _ min: Int32, _ max: Int32) -> Bool {
        if (JString.length(value) < min || JString.length(value) > max) {
            return false
        }
        return true
    }
    

    @discardableResult open func isValidRequiredNumber(_ value: String!, _ min: Int32, _ max: Int32) -> Bool {
        if (self.isEmpty(value) || JString.length(value) < min || JString.length(value) > max) {
            return false
        }
        if (!self.isNumber(value)) {
            return false
        }
        return true
    }
    

    @discardableResult open func isValidNotRequired(_ value: String!, _ min: Int32, _ max: Int32) -> Bool {
        if (JString.length(value) > 0) {
            if (JString.length(value) < min || JString.length(value) > max) {
                return false
            }
        }
        return true
    }
    

    @discardableResult open func isValidNotRequiredNumber(_ value: String!, _ min: Int32, _ max: Int32) -> Bool {
        if (JString.length(value) > 0) {
            if (self.tsUtil.compareTo(value, self.stringUtil.NULL_STRING) == 0 || JString.length(value) < min || JString.length(value) > max) {
                return false
            }
            if (!self.isNumber(value)) {
                return false
            }
        }
        return true
    }
    

    @discardableResult open func isEmpty(_ string: String!) -> Bool {
        if (self.tsUtil.compareTo(string, self.stringUtil.NULL_STRING) != 0 && self.tsUtil.compareTo(string, self.stringUtil.EMPTY_STRING) != 0) {
            return false
        } else {
            return true
        }
    }
}

