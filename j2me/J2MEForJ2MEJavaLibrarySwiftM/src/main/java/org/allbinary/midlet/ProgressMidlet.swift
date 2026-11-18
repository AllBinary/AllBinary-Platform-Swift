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
// import org.allbinary.canvas.Processor
// import org.allbinary.logic.system.security.licensing.AbeClientInformationInterface
// import org.allbinary.logic.system.security.licensing.ClientInformationFactory
// import org.allbinary.thread.PrimaryThreadPool
// import org.allbinary.thread.ThreadPool

//J2MEForJ2ME
open class ProgressMidlet: AllBinaryMidlet {
    public var abeClientInformation: AbeClientInformationInterface! = nil

    // Each class has its own field initializers
    private func initFields() {
    
    }
    

    public init(_ clientInformationFactory: ClientInformationFactory!) {
        super.init()
        self.initFields()
        self.preInit()
        self.abeClientInformation = clientInformationFactory.getInstance()
    }
    

    open func preInit() {
    }
    

    open func exitProgress(_ isProgress: Bool) {
        let processor: Processor! = MidletExitProcessorFactory.getInstance().getExitInstance(self)
        do {
            let primaryThreadPool: ThreadPool! = PrimaryThreadPool.getInstance()
            let runnable: Runnable! = ExitRunnable(self, processor, isProgress)
            primaryThreadPool.runTask(runnable)
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
}

