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
// package org.allbinary.midlet

import J2SEForSwiftLibrary
// import javax.microedition.midlet.MIDlet
// import org.allbinary.AppletUtil
// import org.allbinary.J2MEUtil
// import org.allbinary.canvas.Processor

open class MidletExitProcessorFactory: JObject {
    fileprivate static let instance: MidletExitProcessorFactory! = MidletExitProcessorFactory()

    public override init() {
        super.init()
    }
    

    @discardableResult open class func getInstance() -> MidletExitProcessorFactory! {
        return MidletExitProcessorFactory.instance
    }
    

    @discardableResult open func getExitInstance(_ midlet: MIDlet!) -> Processor! {
        if (AppletUtil.isAppletLoader(midlet) || J2MEUtil.isJ2ME()) {
            return Processor.getInstance()
        } else {
            return MidletExitProcessor(midlet)
        }
    }
}

