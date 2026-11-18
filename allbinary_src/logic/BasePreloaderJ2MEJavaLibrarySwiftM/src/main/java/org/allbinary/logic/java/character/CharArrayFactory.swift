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
// package org.allbinary.logic.java.character

import J2SEForSwiftLibrary

open class CharArrayFactory: JObject {
    fileprivate static let instance: CharArrayFactory! = CharArrayFactory()
    fileprivate var zeroCharArray: JArray<UInt16>! = nil

    private func initFields() {
    self.zeroCharArray = JArray<UInt16>(0, 0)
    }

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult open class func getInstance() -> CharArrayFactory! {
        return CharArrayFactory.instance
    }
    

    @discardableResult open func getZeroCharArray() -> JArray<UInt16>! {
        return self.zeroCharArray
    }
}

