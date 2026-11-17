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
// package org.allbinary.graphics

import J2SEForSwiftLibrary

open class ItemColorFactory: JObject {
    fileprivate static let instance: ItemColorFactory! = ItemColorFactory()
    public var INVERT_PAINT: Int32 = 0
    public var PAINT: Int32 = 0
    public var TEXT_FIELD_NO_FOCUS: Int32 = 0

    private func initFields() {
    self.INVERT_PAINT = Int32(bitPattern: 0xFF000000)
    self.PAINT = Int32(bitPattern: 0xFFe07718)
    self.TEXT_FIELD_NO_FOCUS = 0x7F7F7F
    }

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult public static func getInstance() -> ItemColorFactory! {
        return ItemColorFactory.instance
    }
}

