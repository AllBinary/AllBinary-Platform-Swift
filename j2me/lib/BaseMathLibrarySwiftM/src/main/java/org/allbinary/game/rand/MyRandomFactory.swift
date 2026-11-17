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
// package org.allbinary.game.rand

import J2SEForSwiftLibrary
// import java.util.Random
// import jsinterop.annotations.JsType
// import jsinterop.annotations.JsMethod
// import jsinterop.annotations.JsConstructor
// import org.allbinary.logic.math.MathUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.string.CommonSeps

//Do not use in client code for money related things.
open class MyRandomFactory: JObject {
    fileprivate static let instance: MyRandomFactory! = MyRandomFactory()
    fileprivate var mathUtil: MathUtil! = nil
    fileprivate var rand: Random! = nil

    private func initFields() {
    self.mathUtil = MathUtil.getInstance()
    
    }
    

    @discardableResult public static func getInstance() -> MyRandomFactory! {
        return MyRandomFactory.instance
    }
    

    public override init() {
        super.init()
        self.initFields()
        self.rand = Random(JSystem.currentTimeMillis())
    }
    

    open func setSeed(_ seed: Int64) {
        self.rand = Random(seed)
    }
    

    @discardableResult open func getNextInt(_ range: Int32) -> Int32 {
        let div: Int32 = (Integer.MAX_VALUE / range) &+ 1
        return (self.rand.nextInt() / div)
    }
    

    @discardableResult open func getAbsoluteNextInt(_ range: Int32) -> Int32 {
        return self.mathUtil.abs(self.getNextInt(range))
    }
    

    @discardableResult open func getAbsoluteNextIntAllowZero(_ range: Int32) -> Int32 {
        if (range == 0) {
            return 0
        } else {
            return self.mathUtil.abs(self.getNextInt(range))
        }
    }
    

    open func shuffle(_ intArray: JArray<Int32>!) {
        self.shuffleTotal(intArray, intArray.length &* 7)
    }
    

    open func shuffleTotal(_ intArray: JArray<Int32>!, _ shuffleTotal: Int32) {
        let size: Int32 = intArray.length
        var randomIndex: Int32 = 0
        var randomIndex2: Int32 = 0
        var value: Int32 = 0
        do {
            var index: Int32 = 0
            while (index < shuffleTotal) {
                defer { index &+= 1 }
            randomIndex = self.getAbsoluteNextIntAllowZero(size)
            randomIndex2 = self.getAbsoluteNextIntAllowZero(size)
            value = intArray[randomIndex]
            intArray[randomIndex] = intArray[randomIndex2]
            intArray[randomIndex2] = value
            }
        }
    }
    

    open func shuffle2(_ intArray: JArray<Int32>!, _ intArray2: JArray<Int32>!) {
        self.shuffle2Total(intArray, intArray2, intArray.length &* 7)
    }
    

    open func shuffle2Total(_ intArray: JArray<Int32>!, _ intArray2: JArray<Int32>!, _ shuffleTotal: Int32) {
        let size: Int32 = intArray.length
        var randomIndex: Int32 = 0
        var randomIndex2: Int32 = 0
        var value: Int32 = 0
        var value2: Int32 = 0
        do {
            var index: Int32 = 0
            while (index < shuffleTotal) {
                defer { index &+= 1 }
            randomIndex = self.getAbsoluteNextIntAllowZero(size)
            randomIndex2 = self.getAbsoluteNextIntAllowZero(size)
            value = intArray[randomIndex]
            value2 = intArray2[randomIndex]
            intArray[randomIndex] = intArray[randomIndex2]
            intArray[randomIndex2] = value
            intArray2[randomIndex] = intArray2[randomIndex2]
            intArray2[randomIndex2] = value2
            }
        }
    }
    

    public static func main(_ args: JArray<String?>!) {
        let randomFactory: MyRandomFactory! = MyRandomFactory.getInstance()
        let stringBuilder: StringMaker! = StringMaker()
        let commonSeps: CommonSeps! = CommonSeps.getInstance()
        let size2: Int32 = 100
        do {
            var index: Int32 = 0
            while (index < size2) {
                defer { index &+= 1 }
            stringBuilder.appendint(randomFactory.getAbsoluteNextInt(3)).append(commonSeps.COMMA)
            }
        }
        JSystem.println(jstr(stringBuilder.toString()))
        stringBuilder.delete(0, stringBuilder.length())
        let intArray: JArray<Int32>! = JArray<Int32>(52, 0)
        let intArray2: JArray<Int32>! = JArray<Int32>(52, 0)
        let size: Int32 = intArray.length
        do {
            var index: Int32 = 0
            while (index < size) {
                defer { index &+= 1 }
            intArray[index] = index
            intArray2[index] = index
            }
        }
        randomFactory.shuffle2(intArray, intArray2)
        do {
            var index: Int32 = 0
            while (index < size) {
                defer { index &+= 1 }
            stringBuilder.appendint(intArray[index]).append(commonSeps.COMMA)
            }
        }
        JSystem.println(jstr(stringBuilder.toString()))
        stringBuilder.delete(0, stringBuilder.length())
        do {
            var index: Int32 = 0
            while (index < size) {
                defer { index &+= 1 }
            stringBuilder.appendint(intArray2[index]).append(commonSeps.COMMA)
            }
        }
        JSystem.println(jstr(stringBuilder.toString()))
        var found: Bool = false
        do {
            var index: Int32 = 0
            while (index < size) {
                defer { index &+= 1 }
            found = false
            do {
                var index2: Int32 = 0
                while (index2 < size) {
                    defer { index2 &+= 1 }
                if (intArray[index2] == index) {
                    found = true
                }
                }
            }
            if (!found) {
                jThrow(JException("RuntimeException", ""))
            }
            }
        }
    }
}

