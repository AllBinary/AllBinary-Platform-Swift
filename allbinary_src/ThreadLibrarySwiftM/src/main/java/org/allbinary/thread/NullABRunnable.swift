/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2025 AllBinary 
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
// package org.allbinary.thread

import J2SEForSwiftLibrary

open class NullABRunnable: ABRunnable {
    fileprivate static let instance: NullABRunnable! = NullABRunnable()

    public override init() {
        super.init()
    }
    

    @discardableResult open class func getInstance() -> NullABRunnable! {
        return NullABRunnable.instance
    }
    

    @discardableResult open override func isRunning() -> Bool {
        return false
    }
}

