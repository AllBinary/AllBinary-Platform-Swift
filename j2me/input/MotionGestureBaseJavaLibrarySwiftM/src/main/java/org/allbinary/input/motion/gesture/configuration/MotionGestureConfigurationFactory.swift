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
// package org.allbinary.input.motion.gesture.configuration

import J2SEForSwiftLibrary

open class MotionGestureConfigurationFactory: JObject {
    fileprivate static var config: MotionGestureConfiguration! = MotionGestureConfiguration()
    

    public override init() {
        super.init()
    }
    

    @discardableResult open class func getInstance() -> MotionGestureConfiguration! {
        return MotionGestureConfigurationFactory.config
    }
}

