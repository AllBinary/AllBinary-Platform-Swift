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
// import org.allbinary.canvas.Processor

open class MidletExitProcessor: Processor {
    fileprivate var midlet: MIDlet! = nil

    // Each class has its own field initializers
    private func initFields() {
    
    }
    

    public init(_ midlet: MIDlet!) {
        super.init()
        self.initFields()
        self.midlet = midlet
    }
    

    open override func process() {
        System.exit(0)
    }
}

