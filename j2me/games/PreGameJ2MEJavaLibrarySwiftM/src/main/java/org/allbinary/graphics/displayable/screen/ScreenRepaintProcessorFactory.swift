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
// package org.allbinary.graphics.displayable.screen

import J2SEForSwiftLibrary
// import javax.microedition.lcdui.Displayable
// import org.allbinary.J2MEUtil
// import org.allbinary.canvas.Processor

open class ScreenRepaintProcessorFactory: JObject {
    fileprivate static let instance: ScreenRepaintProcessorFactory! = ScreenRepaintProcessorFactory()
    

    @discardableResult open class func getInstance() -> ScreenRepaintProcessorFactory! {
        return ScreenRepaintProcessorFactory.instance
    }
    

    public override init() {
        super.init()
    }
    

    @discardableResult open func create(_ displayable: Displayable!) -> Processor! {
        if (!J2MEUtil.isJ2ME()) {
            return ScreenRepaintProcessor(displayable)
        } else {
            return Processor.getInstance()
        }
    }
}

