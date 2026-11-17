// Generated Code Do Not Modify
// package org.allbinary.util

import J2SEForSwiftLibrary
// import jsinterop.annotations.JsType
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.string.CommonLabels
// import org.allbinary.string.CommonSeps
// import jsinterop.annotations.JsMethod
// import jsinterop.annotations.JsConstructor
// import jsinterop.annotations.JsProperty

//This is a very fast and simple resizable list.
open class BasicArrayList: JObject {
    fileprivate static let SIZE: String! = ", Size: "
    fileprivate var arrayUtil: ArrayUtil! = nil
    public var objectArray: JArray<JObject?>! = nil
    fileprivate var currentIndex: Int32 = 0

    private func initFields() {
    self.arrayUtil = ArrayUtil.getInstance()
    
    self.currentIndex = 0
    }
    

    public init(_ objectArray: JArray<JObject?>!) {
        super.init()
        self.initFields()
        self.objectArray = objectArray
    }
    

    open func addAt(_ index: Int32, _ element: JObject!) {
        if (index > self.currentIndex || index < 0) {
            let stringBuffer: StringMaker! = StringMaker()
            stringBuffer.append(CommonLabels.getInstance().INDEX_LABEL)
            stringBuffer.appendint(index)
            stringBuffer.append(BasicArrayList.SIZE)
            stringBuffer.appendint(self.currentIndex)
            jThrow(JException("IndexOutOfBoundsException", stringBuffer.toString()))
        }
        self.ensureCapacity(self.currentIndex &+ 1)
        JSystem.arraycopy(self.objectArray, index, self.objectArray, index &+ 1, self.currentIndex &- index)
        self.objectArray[index] = element
        self.currentIndex &+= 1
    }
    

    @discardableResult open func add(_ anyType: JObject!) -> Bool {
        self.ensureCapacity(self.currentIndex &+ 1)
        self.objectArray[jPostIncrement(&self.currentIndex)] = anyType
        return true
    }
    

    @discardableResult open func removeAt(_ index: Int32) -> JObject! {
        if (index >= self.currentIndex) {
            let stringBuffer: StringMaker! = StringMaker()
            stringBuffer.append(CommonLabels.getInstance().INDEX_LABEL)
            stringBuffer.appendint(index)
            stringBuffer.append(BasicArrayList.SIZE)
            stringBuffer.appendint(self.currentIndex)
            jThrow(JException("IndexOutOfBoundsException", stringBuffer.toString()))
        }
        let oldValue: JObject! = self.objectArray[index]
        let numMoved: Int32 = self.currentIndex &- index &- 1
        if (numMoved > 0) {
            JSystem.arraycopy(self.objectArray, index &+ 1, self.objectArray, index, numMoved)
        }
        self.objectArray[jPreDecrement(&self.currentIndex)] = nil
        return oldValue
    }
    

    @discardableResult open func remove(_ anyType: JObject!) -> Bool {
        if (anyType == nil) {
            do {
                var index: Int32 = 0
                while (index < self.currentIndex) {
                    defer { index &+= 1 }
                if (self.objectArray[index] == nil) {
                    let numMoved: Int32 = self.currentIndex &- index &- 1
                    if (numMoved > 0) {
                        JSystem.arraycopy(self.objectArray, index &+ 1, self.objectArray, index, numMoved)
                    }
                    self.objectArray[jPreDecrement(&self.currentIndex)] = nil
                    return true
                }
                }
            }
        } else {
            do {
                var index: Int32 = 0
                while (index < self.currentIndex) {
                    defer { index &+= 1 }
                if (anyType === self.objectArray[index] || anyType.equals(self.objectArray[index])) {
                    let numMoved: Int32 = self.currentIndex &- index &- 1
                    if (numMoved > 0) {
                        JSystem.arraycopy(self.objectArray, index &+ 1, self.objectArray, index, numMoved)
                    }
                    self.objectArray[jPreDecrement(&self.currentIndex)] = nil
                    return true
                }
                }
            }
        }
        return false
    }
    

    @discardableResult open func removeAll2(_ list: BasicArrayList!) -> Bool {
        var result: Bool = true
        let size: Int32 = list.size()
        do {
            var index: Int32 = 0
            while (index < size) {
                defer { index &+= 1 }
            if (self.remove(list.get(index))) {
            } else {
                result = false
            }
            }
        }
        return result
    }
    

    @discardableResult open func addAll2(_ list: BasicArrayList!) -> Bool {
        self.ensureCapacity(self.currentIndex + list.currentIndex)
        let listSize: Int32 = list.currentIndex
        do {
            var index: Int32 = 0
            while (index < listSize) {
                defer { index &+= 1 }
            self.objectArray[jPostIncrement(&self.currentIndex)] = list.objectArray[index]
            }
        }
        return true
    }
    

    @discardableResult open func addAllList(_ list: BasicArrayList!) -> Bool {
        let newObjectArray: JArray<JObject?>! = list.toArray()
        return self.addAll(newObjectArray)
    }
    

    @discardableResult open func addAll(_ newObjectArray: JArray<JObject?>!) -> Bool {
        let numSize: Int32 = newObjectArray.length
        self.ensureCapacity(self.currentIndex &+ numSize)
        JSystem.arraycopy(newObjectArray, 0, self.objectArray, self.currentIndex, numSize)
        self.currentIndex = self.currentIndex &+ numSize
        return numSize != 0
    }
    

    open func ensureCapacity(_ minSize: Int32) {
        let oldCapacity: Int32 = self.objectArray.length
        if (minSize > oldCapacity) {
            var newCapacity: Int32 = ((oldCapacity &* 3) >> 1) &+ 1
            if (newCapacity < minSize) {
                newCapacity = minSize
            }
            self.objectArray = self.arrayUtil.copyOf(self.objectArray, newCapacity)
        }
    }
    

    open func trimToSize() {
        let oldCapacity: Int32 = self.objectArray.length
        if (self.currentIndex < oldCapacity) {
            self.objectArray = self.arrayUtil.copyOf(self.objectArray, self.currentIndex)
        }
    }
    

    @discardableResult open func indexOf(_ anyType: JObject!) -> Int32 {
        if (anyType == nil) {
            do {
                var i: Int32 = 0
                while (i < self.currentIndex) {
                    defer { i &+= 1 }
                if (self.objectArray[i] == nil) {
                    return i
                }
                }
            }
        } else {
            do {
                var i: Int32 = 0
                while (i < self.currentIndex) {
                    defer { i &+= 1 }
                if (anyType.equals(self.objectArray[i])) {
                    return i
                }
                }
            }
        }
        return -1
    }
    

    @discardableResult open func lastIndexOf(_ anyType: JObject!) -> Int32 {
        if (anyType == nil) {
            do {
                var i: Int32 = self.currentIndex &- 1
                while (i >= 0) {
                    defer { i &-= 1 }
                if (self.objectArray[i] == nil) {
                    return i
                }
                }
            }
        } else {
            do {
                var i: Int32 = self.currentIndex &- 1
                while (i >= 0) {
                    defer { i &-= 1 }
                if (anyType.equals(self.objectArray[i])) {
                    return i
                }
                }
            }
        }
        return -1
    }
    

    @discardableResult open func get(_ index: Int32) -> JObject! {
        if (index >= self.currentIndex) {
            let stringBuffer: StringMaker! = StringMaker()
            stringBuffer.append(CommonLabels.getInstance().INDEX_LABEL)
            stringBuffer.appendint(index)
            stringBuffer.append(BasicArrayList.SIZE)
            stringBuffer.appendint(self.currentIndex)
            jThrow(JException("IndexOutOfBoundsException", stringBuffer.toString()))
        }
        return self.objectArray[index]
    }
    

    @discardableResult open func set(_ index: Int32, _ element: JObject!) -> JObject! {
        if (index >= self.currentIndex) {
            let stringBuffer: StringMaker! = StringMaker()
            stringBuffer.append(CommonLabels.getInstance().INDEX_LABEL)
            stringBuffer.appendint(index)
            stringBuffer.append(BasicArrayList.SIZE)
            stringBuffer.appendint(self.currentIndex)
            jThrow(JException("IndexOutOfBoundsException", stringBuffer.toString()))
        }
        let oldValue: JObject! = self.objectArray[index]
        self.objectArray[index] = element
        return oldValue
    }
    

    open func clear() {
        do {
            var i: Int32 = 0
            while (i < self.currentIndex) {
                defer { i &+= 1 }
            self.objectArray[i] = nil
            }
        }
        self.currentIndex = 0
    }
    

    @discardableResult open func size() -> Int32 {
        return self.currentIndex
    }
    

    @discardableResult open func isEmpty() -> Bool {
        return self.currentIndex == 0
    }
    

    @discardableResult open func contains(_ anyType: JObject!) -> Bool {
        return self.indexOf(anyType) >= 0
    }
    

    @discardableResult open func toArray() -> JArray<JObject?>! {
        return self.arrayUtil.copyOf(self.objectArray, self.currentIndex)
    }
    

    @discardableResult open func toArrayType(_ objectArray: JArray<JObject?>!) -> JArray<JObject?>! {
        if (objectArray.length < self.currentIndex) {
            return self.arrayUtil.copyOfType(self.objectArray, self.currentIndex, JObject.className(objectArray))
        }
        JSystem.arraycopy(self.objectArray, 0, objectArray, 0, self.currentIndex)
        if (objectArray.length > self.currentIndex) {
            objectArray[self.currentIndex] = nil
        }
        return objectArray
    }
    

    @discardableResult open func clone() -> JObject! {
        let size: Int32 = self.size()
        let list: BasicArrayList! = BasicArrayListS(size)
        var anyType: JObject! = nil
        do {
            var index: Int32 = 0
            while (index < size) {
                defer { index &+= 1 }
            anyType = self.objectArray[index]
            list.add(anyType)
            }
        }
        return list
    }
    

    @discardableResult open override func toString() -> String! {
        let COMMA_SEP: String! = CommonSeps.getInstance().COMMA_SEP
        let stringBuffer: StringMaker! = StringMaker()
        do {
            var index: Int32 = 0
            while (index < self.currentIndex) {
                defer { index &+= 1 }
            stringBuffer.append(self.objectArray[index]!.toString())
            stringBuffer.append(COMMA_SEP)
            }
        }
        return stringBuffer.toString()
    }
}

