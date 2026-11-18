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
// package org.allbinary.game.paint.help

import J2SEForSwiftLibrary
// import org.allbinary.logic.NullUtil
// import org.allbinary.logic.string.StringUtil

open class UpdateMyFontProperties: JObject {
    public var actionStringArray: JArray<String?>! = nil
    public var keymappingBeginWidthArray: JArray<Int32>! = nil
    public var actionStringDeltaXArray: JArray<Int32>! = nil
    public var inputDeltaXArray: JArray<JArray<Int32>?>! = nil
    public var sepArray: JArray<JArray<String?>?>! = nil
    public var sepWidthArray: JArray<JArray<Int32>?>! = nil
    public var charHeight: Int32 = 0

    private func initFields() {
    self.actionStringArray = StringUtil.getInstance().getArrayInstance()
    self.keymappingBeginWidthArray = NullUtil.getInstance().NULL_INT_ARRAY
    self.actionStringDeltaXArray = NullUtil.getInstance().NULL_INT_ARRAY
    self.inputDeltaXArray = NullUtil.getInstance().NULL_INT_ARRAY_ARRAY
    self.sepArray = StringUtil.getInstance().ONE_EMPTY_STRING_ARRAY_OF_ARRAYS
    self.sepWidthArray = NullUtil.getInstance().NULL_INT_ARRAY_ARRAY
    self.charHeight = 0
    }

    public override init() {
        super.init()
        self.initFields()
    }
}

