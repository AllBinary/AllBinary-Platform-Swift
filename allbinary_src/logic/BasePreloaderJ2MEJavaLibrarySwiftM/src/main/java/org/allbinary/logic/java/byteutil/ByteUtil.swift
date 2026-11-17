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
// package org.allbinary.logic.java.byteutil

import J2SEForSwiftLibrary

open class ByteUtil: JObject {
    fileprivate static let instance: ByteUtil! = ByteUtil()
    

    @discardableResult public static func getInstance() -> ByteUtil! {
        return ByteUtil.instance
    }
    

    public override init() {
        super.init()
    }
    

    @discardableResult open func xor(_ array: JArray<Int8>!, _ mask: Int8) -> JArray<Int8>! {
        let bytes: JArray<Int8>! = JArray<Int8>(array.length, 0)
        let size: Int32 = array.length
        var index: Int32 = 0
        var currentByte: Int8 = 0
        while (index < size) {
            currentByte = array[index]
            bytes[index] = Int8(truncatingIfNeeded: (Int32(currentByte) ^ Int32(mask)))
            index &+= 1
        }
        return bytes
    }
    

    @discardableResult open func not(_ array: JArray<Int8>!) -> JArray<Int8>! {
        let bytes: JArray<Int8>! = JArray<Int8>(array.length, 0)
        let size: Int32 = array.length
        var index: Int32 = 0
        while (index < size) {
            bytes[index] = Int8(truncatingIfNeeded: ~array[index])
            index &+= 1
        }
        return bytes
    }
    

    @discardableResult open func xorByte(_ array: JArray<Int8>!, _ index: Int32) -> JArray<Int8>! {
        var mask: Int8 = 0
        if (index == 0) {
            mask = 1
        }
        if (index == 1) {
            mask = 2
        }
        if (index == 2) {
            mask = 4
        }
        if (index == 3) {
            mask = 8
        }
        if (index == 4) {
            mask = 16
        }
        if (index == 5) {
            mask = 32
        }
        if (index == 6) {
            mask = 64
        }
        if (index == 7) {
            mask = Int8(truncatingIfNeeded: -127)
        }
        return self.xor(array, mask)
    }
    

    @discardableResult open func compare(_ newByteArray: JArray<Int8>!, _ oldByteArray: JArray<Int8>!) -> Bool {
        if (newByteArray.length != oldByteArray.length) {
            return false
        } else {
        }
        let size: Int32 = newByteArray.length
        do {
            var index: Int32 = 0
            while (index < size) {
                defer { index &+= 1 }
            if (Int32(newByteArray[index]) != Int32(oldByteArray[index])) {
                return false
            }
            }
        }
        return true
    }
    

    @discardableResult open func compareWithStats(_ newByteArray: JArray<Int8>!, _ newSize: Int32, _ oldByteArray: JArray<Int8>!, _ stats: JArray<Int32>!) -> Bool {
        if (newSize != oldByteArray.length) {
            stats[0] = -1
            stats[2] = newSize
            stats[3] = oldByteArray.length
            return false
        } else {
            stats[0] = newSize
        }
        stats[1] = 0
        let size: Int32 = newSize
        do {
            var index: Int32 = 0
            while (index < size) {
                defer { index &+= 1 }
            if (Int32(newByteArray[index]) != Int32(oldByteArray[index])) {
                return false
            }
            stats[1] &+= 1
            }
        }
        return true
    }
}

