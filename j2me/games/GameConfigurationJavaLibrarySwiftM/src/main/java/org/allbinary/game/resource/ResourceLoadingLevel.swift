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
// package org.allbinary.game.resource

import J2SEForSwiftLibrary

open class ResourceLoadingLevel: JObject {
    fileprivate var name: String! = nil
    fileprivate var level: Int32 = 0

    private func initFields() {
    
    
    }
    

    public init(_ name: String!, _ level: Int32) {
        super.init()
        self.initFields()
        self.name = name
        self.level = level
    }
    

    @discardableResult open func getLevel() -> Int32 {
        return self.level
    }
    

    @discardableResult open func getName() -> String! {
        return self.name
    }
}

