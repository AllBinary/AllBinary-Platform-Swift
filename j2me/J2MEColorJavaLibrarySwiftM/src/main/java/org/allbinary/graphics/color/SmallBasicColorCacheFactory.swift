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
// package org.allbinary.graphics.color

import J2SEForSwiftLibrary
// import org.allbinary.logic.string.StringUtil

open class SmallBasicColorCacheFactory: JObject {
    fileprivate static let instance: SmallBasicColorCacheFactory! = SmallBasicColorCacheFactory()
    fileprivate var SIZE: Int32 = 0
    fileprivate var INDEX_TO_COLOR: JArray<Int32>! = nil
    fileprivate var BASIC_COLOR_ARRAY: JArray<BasicColor?>! = nil
    fileprivate var colorIndex: Int32 = 0

    private func initFields() {
    self.SIZE = 255
    self.INDEX_TO_COLOR = JArray<Int32>(self.SIZE, 0)
    self.BASIC_COLOR_ARRAY = JArray<BasicColor?>(self.SIZE, nil)
    self.colorIndex = 0
    }
    

    @discardableResult open class func getInstance() -> SmallBasicColorCacheFactory! {
        return SmallBasicColorCacheFactory.instance
    }
    

    public override init() {
        super.init()
        self.initFields()
    }
    

    open func add(_ basicDefaultColor: BasicColor!) {
        self.BASIC_COLOR_ARRAY[self.colorIndex] = basicDefaultColor
        self.INDEX_TO_COLOR[self.colorIndex] = basicDefaultColor.intValue()
        self.colorIndex &+= 1
    }
    

    @discardableResult open func getAndOrCreate(_ colorAsInt: Int32) -> BasicColor! {
        var basicColor: BasicColor! = nil
        do {
            var index: Int32 = 0
            while (index < self.SIZE) {
                defer { index &+= 1 }
            if (self.INDEX_TO_COLOR[index] == colorAsInt) {
                return self.BASIC_COLOR_ARRAY[index]
            }
            }
        }
        let ALPHA_MASK: Int32 = Int32(bitPattern: 0xFF000000)
        basicColor = BasicColorFactory.getInstance().createInstanceAN(colorAsInt & ALPHA_MASK, colorAsInt & 0x00FFFFFF, StringUtil.getInstance().EMPTY_STRING)
        self.add(basicColor)
        return basicColor
    }
}

