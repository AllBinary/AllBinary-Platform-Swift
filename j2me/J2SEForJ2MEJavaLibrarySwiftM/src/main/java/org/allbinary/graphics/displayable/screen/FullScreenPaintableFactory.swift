/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2022 AllBinary 
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
// package org.allbinary.graphics.displayable.screen

import J2SEForSwiftLibrary
// import org.allbinary.graphics.paint.NullPaintable
// import org.allbinary.graphics.paint.Paintable

open class FullScreenPaintableFactory: JObject {
    fileprivate static let instance: FullScreenPaintableFactory! = FullScreenPaintableFactory()
    public var paintable: Paintable! = nil

    private func initFields() {
    self.paintable = NullPaintable.getInstance()
    }

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult open class func getInstance() -> FullScreenPaintableFactory! {
        return FullScreenPaintableFactory.instance
    }
}

