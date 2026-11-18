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
// import javax.microedition.lcdui.Graphics

open class LocationPaintable: JObject, LocationPaintableInterface {
    fileprivate static let instance: LocationPaintable! = LocationPaintable()

    public override init() {
        super.init()
    }
    

    @discardableResult open class func getInstance() -> LocationPaintable! {
        return LocationPaintable.instance
    }
    

    open func paintXY(_ graphics: Graphics!, _ x: Int32, _ y: Int32) {
    }
}

