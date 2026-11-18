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
// package org.allbinary.util

import J2SEForSwiftLibrary
// import jsinterop.annotations.JsType
// import org.allbinary.game.rand.MyRandomFactory
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.string.CommonLabels
// import org.allbinary.string.CommonPhoneStrings
// import jsinterop.annotations.JsMethod
// import jsinterop.annotations.JsProperty

open class BasicArrayListUtil: JObject {
    fileprivate static let instance: BasicArrayListUtil! = BasicArrayListUtil()
    public var NULL_ARRAY_OF_ARRAY: JArray<JArray<BasicArrayList?>?>! = nil
    fileprivate var myRandomFactory: MyRandomFactory! = nil
    fileprivate var immutableInstance: BasicArrayList! = nil

    private func initFields() {
    self.NULL_ARRAY_OF_ARRAY = JArray<JArray<BasicArrayList?>?>(0, factory: { JArray<BasicArrayList?>(0, nil) })
    self.myRandomFactory = MyRandomFactory.getInstance()
    self.immutableInstance = ImmutableBasicArrayList("Immutable", 0)
    }

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult open class func getInstance() -> BasicArrayListUtil! {
        return BasicArrayListUtil.instance
    }
    

    @discardableResult open func getRandom(_ list: BasicArrayList!) -> JObject! {
        let i_random: Int32 = self.getRandomIndex(list)
        return list.objectArray[i_random]
    }
    

    @discardableResult open func getRandomIndex(_ list: BasicArrayList!) -> Int32 {
        return self.myRandomFactory.getAbsoluteNextInt(list.size())
    }
    

    open func reverse(_ list: BasicArrayList!) {
        let lastMinusOneIndex: Int32 = list.size() &- 2
        var temp: JObject! = nil
        let size: Int32 = lastMinusOneIndex / 2
        var secondSwapIndex: Int32 = 0
        do {
            var index: Int32 = 0
            while (index <= size) {
                defer { index &+= 1 }
            secondSwapIndex = lastMinusOneIndex &- index
            temp = list.removeAt(index)
            list.addAt(index, list.removeAt(secondSwapIndex))
            list.addAt(secondSwapIndex &+ 1, temp)
            }
        }
    }
    

    @discardableResult open func log(_ list: BasicArrayList!) -> String! {
        let S_LABEL: String! = " s: "
        let size: Int32 = list.size()
        let stringBuffer: StringMaker! = StringMaker()
        stringBuffer.append(CommonLabels.getInstance().TOTAL_LABEL)
        stringBuffer.appendint(size)
        do {
            var index: Int32 = size &- 1
            while (index >= 0) {
                defer { index &-= 1 }
            let usedList: BasicArrayList! = (list.objectArray[index] as! BasicArrayList)
            stringBuffer.append(S_LABEL)
            stringBuffer.appendint(usedList.size())
            }
        }
        return stringBuffer.toString()
    }
    

    @discardableResult open func getImmutableInstance() -> BasicArrayList! {
        return self.immutableInstance
    }
    

    open class func main(_ args: JArray<String?>!) {
        let commonPhoneStrings: CommonPhoneStrings! = CommonPhoneStrings.getInstance()
        let list: BasicArrayList! = BasicArrayListD()
        list.add(jBoxString(commonPhoneStrings.ONE))
        list.add(jBoxString(commonPhoneStrings.TWO))
        list.add(jBoxString(commonPhoneStrings.THREE))
        list.add(jBoxString(commonPhoneStrings.FOUR))
        list.add(jBoxString(commonPhoneStrings.FIVE))
        list.add(jBoxString(commonPhoneStrings.SIX))
        list.add(jBoxString(commonPhoneStrings.SEVEN))
        list.add(jBoxString(commonPhoneStrings.EIGHT))
        list.add(jBoxString(commonPhoneStrings.NINE))
        BasicArrayListUtil.getInstance().reverse(list)
        JSystem.println(jstr(list.toString()))
    }
}

