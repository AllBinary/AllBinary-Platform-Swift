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
// package org.allbinary.logic.system.hardware.components

import J2SEForSwiftLibrary

open class Component: JObject {
    fileprivate var name: String! = nil

    private func initFields() {
    
    }
    

    public init(_ componentName: String!) {
        super.init()
        self.initFields()
        self.name = componentName
    }
    

    @discardableResult open override func toString() -> String! {
        return self.name
    }
}

