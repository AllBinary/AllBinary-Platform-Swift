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
// package org.allbinary.game.midlet

import J2SEForSwiftLibrary
// import org.allbinary.logic.util.event.AllBinaryEventObject

open class DemoGameMidletEvent: AllBinaryEventObject {
    fileprivate var demoGameMidletState: DemoGameMidletState! = nil

    // Each class has its own field initializers
    private func initFields() {
    
    }
    

    public init(_ anyType: JObject!, _ demoGameMidletState: DemoGameMidletState!) {
        super.init(anyType)
        self.initFields()
        self.demoGameMidletState = demoGameMidletState
    }
    

    open func `init`(_ anyType: JObject!) {
        self.setSource(anyType)
    }
    

    open func setDemoGameMidletState(_ demoGameMidletState: DemoGameMidletState!) {
        self.demoGameMidletState = demoGameMidletState
    }
    

    @discardableResult open func getDemoGameMidletState() -> DemoGameMidletState! {
        return self.demoGameMidletState
    }
}

