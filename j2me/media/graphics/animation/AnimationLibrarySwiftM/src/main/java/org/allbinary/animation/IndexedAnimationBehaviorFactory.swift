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
// package org.allbinary.animation

import J2SEForSwiftLibrary

open class IndexedAnimationBehaviorFactory: AnimationBehaviorFactory {
    public var frameDelayTime: Int64 = 0
    public var loopTotal: Int32 = 0

    // Each class has its own field initializers
    private func initFields() {
    
    
    }
    

    public init(_ loopTotal: Int32, _ frameDelayTime: Int64) {
        super.init()
        self.initFields()
        self.loopTotal = loopTotal
        self.frameDelayTime = frameDelayTime
    }
    

    @discardableResult open override func getOrCreateInstance() -> AnimationBehavior! {
        return IndexedAnimationBehavior(self.loopTotal, self.frameDelayTime)
    }
}

