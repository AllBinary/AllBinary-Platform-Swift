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
// package org.allbinary.logic.java.characters

import J2SEForSwiftLibrary

open class CharacterSetData: JObject {
    fileprivate static let instance: CharacterSetData! = CharacterSetData()
    public var US_ASCII: String! = nil
    public var ISO_8859_1: String! = nil
    public var UTF_8: String! = nil
    public var UTF_16: String! = nil
    public var UTF_16BE: String! = nil
    public var UTF_16LE: String! = nil

    private func initFields() {
    self.US_ASCII = "US-ASCII"
    self.ISO_8859_1 = "ISO-8859-1"
    self.UTF_8 = "UTF-8"
    self.UTF_16 = "UTF-16"
    self.UTF_16BE = "UTF-16BE"
    self.UTF_16LE = "UTF-16LE"
    }
    

    @discardableResult open class func getInstance() -> CharacterSetData! {
        return CharacterSetData.instance
    }
    

    public override init() {
        super.init()
        self.initFields()
    }
}

