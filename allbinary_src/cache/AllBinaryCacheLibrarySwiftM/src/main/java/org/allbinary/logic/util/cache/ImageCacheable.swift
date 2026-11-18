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
// import org.allbinary.logic.string.StringUtil

open class ImageCacheable: JObject {
    fileprivate var name: String! = nil

    private func initFields() {
    self.name = StringUtil.getInstance().EMPTY_STRING
    }
    

    public init(_ name: String!, _ anyType: JObject!) {
        super.init()
        self.initFields()
    }
    

    @discardableResult open func getKey() -> JObject! {
        return self.name
    }
    

    @discardableResult open override func toString() -> String! {
        return self.name
    }
}

