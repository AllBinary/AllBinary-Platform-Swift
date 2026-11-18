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
// package org.allbinary.graphics.color

import J2SEForSwiftLibrary
// import javax.microedition.lcdui.Graphics

open class BasicColorSetUtil: JObject {
    fileprivate static let instance: BasicColorSetUtil! = BasicColorSetUtil()
    

    @discardableResult open class func getInstance() -> BasicColorSetUtil! {
        return BasicColorSetUtil.instance
    }
    

    public override init() {
        super.init()
    }
    

    open func setBasicColorP(_ graphics: Graphics!, _ basicColor: BasicColor!) {
        graphics.setColor(basicColor.intValue())
    }
    

    open func setBasicColorP3(_ graphics: Graphics!, _ basicColor: BasicColor!, _ value: Int32) {
        graphics.setColor(value)
    }
}

