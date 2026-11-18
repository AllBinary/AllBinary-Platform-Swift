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
// package org.allbinary.logic.io

import J2SEForSwiftLibrary

open class AbIOSystem: JObject {
    fileprivate static let instance: AbIOSystem! = AbIOSystem()
    fileprivate var type: String! = nil

    private func initFields() {
    self.type = "java.io"
    }

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult open class func getInstance() -> AbIOSystem! {
        return AbIOSystem.instance
    }
    

    @discardableResult open func getType() -> String! {
        return self.type
    }
    

    @discardableResult open func isType(_ type: String!) -> Bool {
        if (JString.compareTo(self.type, type) == 0) {
            return true
        } else {
            return false
        }
    }
}

