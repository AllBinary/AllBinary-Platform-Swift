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
// package org.allbinary.logic.math.permutations

import J2SEForSwiftLibrary
// import org.allbinary.logic.util.visitor.Visitor
// import org.allbinary.logic.string.StringMaker

open class OrderedIntArrayPermutationUtil: JObject {
    fileprivate static let instance: OrderedIntArrayPermutationUtil! = OrderedIntArrayPermutationUtil()
    fileprivate var TOTAL_ITERATIONS_TABLE: String! = nil
    fileprivate var FINISHED: String! = nil

    private func initFields() {
    self.TOTAL_ITERATIONS_TABLE = "Total Iterations: "
    self.FINISHED = "\nFINISHED"
    }
    

    @discardableResult open class func getInstance() -> OrderedIntArrayPermutationUtil! {
        return OrderedIntArrayPermutationUtil.instance
    }
    

    public override init() {
        super.init()
        self.initFields()
    }
    

    open func getNext(_ data: JArray<Int32>!) {
        let length: Int32 = data.length
        var i: Int32 = length &- 1
        while (data[i &- 1] >= data[i]) {
            i = i &- 1
        }
        var j: Int32 = length
        while (data[j &- 1] <= data[i &- 1]) {
            j = j &- 1
        }
        self.swap(data, i &- 1, j &- 1)
        i &+= 1
        j = length
        while (i < j) {
            self.swap(data, i &- 1, j &- 1)
            i &+= 1
            j &-= 1
        }
    }
    

    open func swap(_ data: JArray<Int32>!, _ a: Int32, _ b: Int32) {
        let temp: Int32 = data[a]
        data[a] = data[b]
        data[b] = temp
    }
    

    @discardableResult open func factorial(_ dataLength: Int32) -> Int64 {
        var temp: Int64 = 1
        if (dataLength > 1) {
            do {
                var i: Int32 = 1
                while (i <= dataLength) {
                    defer { i &+= 1 }
                temp = temp &* Int64(truncatingIfNeeded: i)
                }
            }
        }
        return temp
    }
    

    open func generate(_ data: JArray<Int32>!, _ visitor: Visitor!) {
        let iterations: Int64 = self.factorial(data.length)
        JSystem.println(jstr(self.TOTAL_ITERATIONS_TABLE))
        JSystem.println(jstr(iterations))
        do {
            var count: Int64 = 0
            while (count < iterations &- 1) {
                defer { count &+= 1 }
            self.getNext(data)
            visitor.visit(self)
            }
        }
        JSystem.println(jstr(self.FINISHED))
    }
    

    open class func main(_ args: JArray<String?>!) {
        let TOTAL: Int32 = 3
        let data: JArray<Int32>! = JArray<Int32>(TOTAL, 0)
        do {
            var i: Int32 = 0
            while (i < TOTAL) {
                defer { i &+= 1 }
            data[i] = i
            }
        }
        let permutationVisitor: IntPermutationVisitor! = IntPermutationVisitor(data)
        let ORIGINAL_DATA_LABEL: String! = "Original Data: "
        JSystem.println(jstr(ORIGINAL_DATA_LABEL))
        permutationVisitor.print(data, StringMaker())
        OrderedIntArrayPermutationUtil.getInstance().generate(data, permutationVisitor)
    }
}

