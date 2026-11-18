// Generated Code Do Not Modify
// package org.allbinary.util

import J2SEForSwiftLibrary
// import jsinterop.annotations.JsType
// import org.allbinary.logic.math.MathUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.string.CommonSeps
// import jsinterop.annotations.JsMethod

open class ArrayUtil: JObject {
    fileprivate static let instance: ArrayUtil! = ArrayUtil()
    fileprivate var mathUtil: MathUtil! = nil

    private func initFields() {
    self.mathUtil = MathUtil.getInstance()
    }

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult open class func getInstance() -> ArrayUtil! {
        return ArrayUtil.instance
    }
    

    @discardableResult open func copyOf(_ original: JArray<JObject?>!, _ newLength: Int32) -> JArray<JObject?>! {
        return self.copyOfType(original, newLength, JObject.className(original))
    }
    

    @discardableResult open func copyOfType(_ original: JArray<JObject?>!, _ newLength: Int32, _ newType: String!) -> JArray<JObject?>! {
        let copy: JArray<JObject?>! = JArray<JObject?>(newLength, nil)
        JSystem.arraycopy(original, 0, copy, 0, self.mathUtil.min(original.length, newLength))
        return copy
    }
    

    @discardableResult open func copyOfbyte(_ original: JArray<Int8>!, _ newLength: Int32) -> JArray<Int8>! {
        let copy: JArray<Int8>! = JArray<Int8>(newLength, 0)
        JSystem.arraycopy(original, 0, copy, 0, self.mathUtil.min(original.length, newLength))
        return copy
    }
    

    @discardableResult open func copyOfshort(_ original: JArray<Int16>!, _ newLength: Int32) -> JArray<Int16>! {
        let copy: JArray<Int16>! = JArray<Int16>(newLength, 0)
        JSystem.arraycopy(original, 0, copy, 0, self.mathUtil.min(original.length, newLength))
        return copy
    }
    

    @discardableResult open func copyOfint(_ original: JArray<Int32>!, _ newLength: Int32) -> JArray<Int32>! {
        let copy: JArray<Int32>! = JArray<Int32>(newLength, 0)
        JSystem.arraycopy(original, 0, copy, 0, self.mathUtil.min(original.length, newLength))
        return copy
    }
    

    @discardableResult open func copyOflong(_ original: JArray<Int64>!, _ newLength: Int32) -> JArray<Int64>! {
        let copy: JArray<Int64>! = JArray<Int64>(newLength, 0)
        JSystem.arraycopy(original, 0, copy, 0, self.mathUtil.min(original.length, newLength))
        return copy
    }
    

    @discardableResult open func copyOfchar(_ original: JArray<UInt16>!, _ newLength: Int32) -> JArray<UInt16>! {
        let copy: JArray<UInt16>! = JArray<UInt16>(newLength, 0)
        JSystem.arraycopy(original, 0, copy, 0, self.mathUtil.min(original.length, newLength))
        return copy
    }
    

    @discardableResult open func copyOffloat(_ original: JArray<Float>!, _ newLength: Int32) -> JArray<Float>! {
        let copy: JArray<Float>! = JArray<Float>(newLength, 0.0)
        JSystem.arraycopy(original, 0, copy, 0, self.mathUtil.min(original.length, newLength))
        return copy
    }
    

    @discardableResult open func copyOfdouble(_ original: JArray<Double>!, _ newLength: Int32) -> JArray<Double>! {
        let copy: JArray<Double>! = JArray<Double>(newLength, 0.0)
        JSystem.arraycopy(original, 0, copy, 0, self.mathUtil.min(original.length, newLength))
        return copy
    }
    

    @discardableResult open func copyOfboolean(_ original: JArray<Bool>!, _ newLength: Int32) -> JArray<Bool>! {
        let copy: JArray<Bool>! = JArray<Bool>(newLength, false)
        JSystem.arraycopy(original, 0, copy, 0, self.mathUtil.min(original.length, newLength))
        return copy
    }
    

    open func reverse(_ intArray: JArray<Int32>!) {
        let length: Int32 = intArray.length &- 1
        var temp: Int32 = 0
        let size: Int32 = length / 2
        do {
            var index: Int32 = 0
            while (index <= size) {
                defer { index &+= 1 }
            temp = intArray[index]
            intArray[index] = intArray[length &- index]
            intArray[length &- index] = temp
            }
        }
    }
    

    open func flip(_ intArray: JArray<Int32>!, _ width: Int32, _ height: Int32) {
        let length: Int32 = height &- 1
        var temp: Int32 = 0
        var index: Int32 = 0
        var rowIndex: Int32 = 0
        do {
            var y: Int32 = 0
            while (y <= length / 2) {
                defer { y &+= 1 }
            do {
                var x: Int32 = 0
                while (x < width) {
                    defer { x &+= 1 }
                rowIndex = ((length &- y) &* width)
                index = x &+ (y &* width)
                temp = intArray[index]
                intArray[index] = intArray[rowIndex &+ x]
                intArray[rowIndex &+ x] = temp
                }
            }
            }
        }
    }
    

    @discardableResult open func toStringFromTwoDimensionaArray(_ twoDimensionalIntArray: JArray<JArray<Int32>?>!) -> String! {
        let stringBuffer: StringMaker! = StringMaker()
        let commonSeps: CommonSeps! = CommonSeps.getInstance()
        let endIndex: Int32 = twoDimensionalIntArray.length
        let endIndex2: Int32 = twoDimensionalIntArray[0]!.length
        do {
            var index: Int32 = 0
            while (index < endIndex) {
                defer { index &+= 1 }
            stringBuffer.append(commonSeps.BRACE_OPEN)
            do {
                var index2: Int32 = 0
                while (index2 < endIndex2) {
                    defer { index2 &+= 1 }
                stringBuffer.appendint(Int32(truncatingIfNeeded: twoDimensionalIntArray[index]![index2]))
                stringBuffer.append(commonSeps.COMMA_SEP)
                }
            }
            stringBuffer.append(commonSeps.BRACE_CLOSE)
            stringBuffer.append(commonSeps.NEW_LINE)
            }
        }
        return stringBuffer.toString()
    }
    

    @discardableResult open func toStringFromObjectArray(_ objectArray: JArray<JObject?>!) -> String! {
        let stringBuffer: StringMaker! = StringMaker()
        let commonSeps: CommonSeps! = CommonSeps.getInstance()
        do {
            var index: Int32 = 0
            while (index < objectArray.length) {
                defer { index &+= 1 }
            stringBuffer.append(StringUtil.getInstance().toString(objectArray[index]))
            stringBuffer.append(commonSeps.COMMA_SEP)
            }
        }
        return stringBuffer.toString()
    }
    

    @discardableResult open func toStringFromByteArray(_ byteArray: JArray<Int8>!) -> String! {
        let stringBuffer: StringMaker! = StringMaker()
        let commonSeps: CommonSeps! = CommonSeps.getInstance()
        do {
            var index: Int32 = 0
            while (index < byteArray.length) {
                defer { index &+= 1 }
            stringBuffer.appendbyte(byteArray[index])
            stringBuffer.append(commonSeps.COMMA_SEP)
            }
        }
        return stringBuffer.toString()
    }
}

