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
// package org.allbinary.logic.math

import J2SEForSwiftLibrary
// import org.allbinary.logic.string.StringMaker

open class PrimitiveLongSingleton: JObject {
    fileprivate static let instance: PrimitiveLongSingleton! = PrimitiveLongSingleton()
    public var UNK: JArray<UInt16>! = nil
    public var NUMBER_ARRAY: JArray<Int8>! = nil
    public var NUMBER_CHAR_ARRAY: JArray<UInt16>! = nil
    public var NUMBER_CHAR_ARRAYS: JArray<JArray<UInt16>?>! = nil
    public var ZERO: JArray<UInt16>! = nil

    private func initFields() {
    self.UNK = JArray<UInt16>([UInt16(("U" as Unicode.Scalar).value), UInt16(("n" as Unicode.Scalar).value), UInt16(("k" as Unicode.Scalar).value)])
    self.NUMBER_ARRAY = JArray<Int8>([0, 1, 2, 3, 4, 5, 6, 7, 8, 9])
    self.NUMBER_CHAR_ARRAY = JArray<UInt16>([UInt16(("0" as Unicode.Scalar).value), UInt16(("1" as Unicode.Scalar).value), UInt16(("2" as Unicode.Scalar).value), UInt16(("3" as Unicode.Scalar).value), UInt16(("4" as Unicode.Scalar).value), UInt16(("5" as Unicode.Scalar).value), UInt16(("6" as Unicode.Scalar).value), UInt16(("7" as Unicode.Scalar).value), UInt16(("8" as Unicode.Scalar).value), UInt16(("9" as Unicode.Scalar).value)])
    self.NUMBER_CHAR_ARRAYS = JArray<JArray<UInt16>?>([JArray<UInt16>([UInt16(("0" as Unicode.Scalar).value)]), JArray<UInt16>([UInt16(("1" as Unicode.Scalar).value)]), JArray<UInt16>([UInt16(("2" as Unicode.Scalar).value)]), JArray<UInt16>([UInt16(("3" as Unicode.Scalar).value)]), JArray<UInt16>([UInt16(("4" as Unicode.Scalar).value)]), JArray<UInt16>([UInt16(("5" as Unicode.Scalar).value)]), JArray<UInt16>([UInt16(("6" as Unicode.Scalar).value)]), JArray<UInt16>([UInt16(("7" as Unicode.Scalar).value)]), JArray<UInt16>([UInt16(("8" as Unicode.Scalar).value)]), JArray<UInt16>([UInt16(("9" as Unicode.Scalar).value)])])
    self.ZERO = JArray<UInt16>([self.NUMBER_CHAR_ARRAY[0]])
    }

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult open class func getInstance() -> PrimitiveLongSingleton! {
        return PrimitiveLongSingleton.instance
    }
    

    @discardableResult open func getNumberFromChar(_ numberAsChar: UInt16) -> Int8 {
        let size: Int32 = self.NUMBER_CHAR_ARRAY.length
        do {
            var index: Int32 = 0
            while (index < size) {
                defer { index &+= 1 }
            if (self.NUMBER_CHAR_ARRAY[index] == numberAsChar) {
                return self.NUMBER_ARRAY[index]
            }
            }
        }
        jThrow(JException("Exception", StringMaker().append("numberAsChar was not in array: ").appendchar(numberAsChar).toString()))
    }
}

