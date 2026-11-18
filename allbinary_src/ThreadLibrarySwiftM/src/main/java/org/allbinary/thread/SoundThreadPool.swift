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
// package org.allbinary.thread

import J2SEForSwiftLibrary

open class SoundThreadPool: JObject {
    fileprivate static let instance: ThreadPool! = ThreadPool("Sound", 1, ThreadPool.NORMAL_PRIORITY)

    public override init() {
        super.init()
    }
    

    @discardableResult open class func getInstance() -> ThreadPool! {
        return SoundThreadPool.instance
    }
}

