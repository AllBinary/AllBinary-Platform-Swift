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
// package org.allbinary.canvas

import J2SEForSwiftLibrary

open class Processor: JObject {
    fileprivate static let SINGLETON: Processor! = Processor()

    public override init() {
        super.init()
    }
    

    @discardableResult open class func getInstance() -> Processor! {
        return Processor.SINGLETON
    }
    

    open func process() {
    }
    

    open func processt(_ timeDelta: Int64) {
    }
}

