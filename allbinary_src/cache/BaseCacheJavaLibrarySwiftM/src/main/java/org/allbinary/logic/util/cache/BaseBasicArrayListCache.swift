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
// package org.allbinary.logic.util.cache

import J2SEForSwiftLibrary
// import jsinterop.annotations.JsType
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListD
// import jsinterop.annotations.JsMethod
// import jsinterop.annotations.JsProperty

open class BaseBasicArrayListCache: JObject {
    public var list: BasicArrayList! = nil

    private func initFields() {
    self.list = BasicArrayListD()
    }

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult open func log() -> String! {
        let stringBuffer: StringMaker! = StringMaker()
        stringBuffer.append("S: ")
        stringBuffer.appendint(self.list.size())
        return stringBuffer.toString()
    }
}

