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
// package org.allbinary.graphics.paint

import J2SEForSwiftLibrary

open class StatePaintableFactory: JObject {
    fileprivate static let instance: StatePaintable! = StatePaintable()

    public override init() {
        super.init()
    }
    

    @discardableResult open class func getInstance() -> StatePaintable! {
        return StatePaintableFactory.instance
    }
}

