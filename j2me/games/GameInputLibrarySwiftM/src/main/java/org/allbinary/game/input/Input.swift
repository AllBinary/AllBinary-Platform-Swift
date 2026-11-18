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
// package org.allbinary.game.input

import J2SEForSwiftLibrary
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.string.StringUtil

open class Input: JObject {
    fileprivate var id: Int32 = 0
    fileprivate var name: String! = nil

    private func initFields() {
    self.id = 0
    self.name = StringUtil.getInstance().EMPTY_STRING
    }
    

    public init(_ id: Int32, _ name: String!) {
        super.init()
        self.initFields()
        self.setId(id)
        self.setName(name)
    }
    

    @discardableResult open func getId() -> Int32 {
        return self.id
    }
    

    fileprivate func setId(_ key: Int32) {
        self.id = key
    }
    

    @discardableResult open func getName() -> String! {
        return self.name
    }
    

    fileprivate func setName(_ keyName: String!) {
        self.name = keyName
    }
    

    @discardableResult open override func toString() -> String! {
        let stringBuffer: StringMaker! = StringMaker()
        stringBuffer.append("Name: ")
        stringBuffer.append(self.getName())
        stringBuffer.append(" Id: ")
        stringBuffer.appendint(self.getId())
        return stringBuffer.toString()
    }
}

