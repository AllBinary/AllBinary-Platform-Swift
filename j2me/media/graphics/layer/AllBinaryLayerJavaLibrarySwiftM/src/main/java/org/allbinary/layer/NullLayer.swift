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
// package org.allbinary.layer

import J2SEForSwiftLibrary
// import javax.microedition.lcdui.Graphics

open class NullLayer: Layer {
    fileprivate static let instance: NullLayer! = NullLayer()
    

    @discardableResult open class func getInstance() -> NullLayer! {
        return NullLayer.instance
    }
    

    public init() {
        super.init(0, 0)
    }
    

    open override func paint(_ graphics: Graphics!) {
    }
}

