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
// package org.allbinary.animation.transition

import J2SEForSwiftLibrary

open class RunAtEndAnimationListener: JObject, AnimationListenerInterface {
    public var runnable: Runnable! = nil

    private func initFields() {
    
    }
    

    public init(_ runnable: Runnable!) {
        super.init()
        self.initFields()
        self.runnable = runnable
    }
    

    open func onPlatformAnimationStart() {
    }
    

    open func onPlatformAnimationEnd() {
    }
    

    open func onPlatformAnimationRepeat() {
    }
}

