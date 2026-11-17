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
// import org.allbinary.logic.util.event.AllBinaryEventObject

open class ColorChangeEvent: AllBinaryEventObject {
    fileprivate var basicColor: BasicColor! = nil

    // Each class has its own field initializers
    private func initFields() {
    self.basicColor = BasicColorFactory.getInstance().WHITE
    }
    

    public override init(_ anyType: JObject!) {
        super.init(anyType)
        self.initFields()
    }
    

    open func setBasicColorP(_ basicColor: BasicColor!) {
        self.basicColor = basicColor
    }
    

    @discardableResult open func getBasicColorP() -> BasicColor! {
        return self.basicColor
    }
}

