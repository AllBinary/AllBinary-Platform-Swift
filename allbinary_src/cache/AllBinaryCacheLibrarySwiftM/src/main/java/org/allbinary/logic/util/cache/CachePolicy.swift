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

open class CachePolicy: JObject {
    fileprivate var name: String! = nil
    fileprivate var maxTime: Int64 = 0
    fileprivate var maxSize: Int64 = 0

    private func initFields() {
    
    self.maxTime = 0
    self.maxSize = 0
    }
    

    public init(_ name: String!, _ maxTime: Int64, _ maxSize: Int64) {
        super.init()
        self.initFields()
        self.name = name
        self.setMaxTime(maxTime)
        self.setMaxSize(maxSize)
    }
    

    @discardableResult open func getMaxTime() -> Int64 {
        return self.maxTime
    }
    

    open func setMaxTime(_ maxTime: Int64) {
        self.maxTime = maxTime
    }
    

    @discardableResult open func getMaxSize() -> Int64 {
        return self.maxSize
    }
    

    open func setMaxSize(_ maxSize: Int64) {
        self.maxSize = maxSize
    }
    

    @discardableResult open func getName() -> String! {
        return self.name
    }
}

