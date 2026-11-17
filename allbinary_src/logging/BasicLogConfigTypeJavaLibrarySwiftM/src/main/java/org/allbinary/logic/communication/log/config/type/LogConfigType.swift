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
// package org.allbinary.logic.communication.log.config.type

import J2SEForSwiftLibrary

open class LogConfigType: JObject {
    fileprivate var name: String! = nil
    fileprivate var description: String! = nil

    private func initFields() {
    
    
    }
    

    public init(_ name: String!, _ description: String!) {
        super.init()
        self.initFields()
        self.name = name
        self.description = description
    }
    

    @discardableResult open func getName() -> String! {
        return self.name
    }
    

    @discardableResult open func getDescription() -> String! {
        return self.description
    }
    

    open func setName(_ value: String!) {
        self.name = value
    }
    

    open func setDescription(_ value: String!) {
        self.description = value
    }
}

