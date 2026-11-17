/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2022 AllBinary 
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
// package org.allbinary.time

import J2SEForSwiftLibrary

open class GameTickTimeDelayHelper: JObject {
    public var timeDelta: Int64 = 0
    public var startTime: Int64 = 0
    public var lastStartTime: Int64 = 0

    private func initFields() {
    self.timeDelta = 0
    
    
    }
    

    public init(_ startTime: Int64) {
        super.init()
        self.initFields()
        self.startTime = startTime
        self.lastStartTime = 0
    }
    

    @discardableResult open func setStartTime() -> Int64 {
        self.startTime = JSystem.currentTimeMillis()
        return self.startTime
    }
    

    open func loop() {
        if (self.lastStartTime == Long.MIN_VALUE) {
            self.timeDelta = 0
        } else {
            self.timeDelta = JSystem.currentTimeMillis() &- self.lastStartTime
        }
    }
    

    @discardableResult open func getTimeFromStart() -> Int64 {
        return self.startTime &- self.lastStartTime
    }
}

