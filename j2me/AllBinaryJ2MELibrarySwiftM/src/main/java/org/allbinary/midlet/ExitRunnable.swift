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
// import javax.microedition.lcdui.NullCanvas
// import org.allbinary.canvas.Processor
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.string.CommonStrings

open class ExitRunnable: JObject, Runnable {
    public var logUtil: LogUtil! = nil
    fileprivate var commonStrings: CommonStrings! = nil
    fileprivate var midlet: AllBinaryMidlet! = nil
    fileprivate var processor: Processor! = nil
    fileprivate var isProgress: Bool = false

    private func initFields() {
    self.logUtil = LogUtil.getInstance()
    self.commonStrings = CommonStrings.getInstance()
    
    
    
    }
    

    public init(_ midlet: AllBinaryMidlet!, _ processor: Processor!, _ isProgress: Bool) {
        super.init()
        self.initFields()
        self.midlet = midlet
        self.isProgress = isProgress
        self.processor = processor
    }
    

    open func run() {
        do {
            self.logUtil.putF(self.commonStrings.START_RUNNABLE, self, self.commonStrings.RUN)
            self.midlet.destroyAppInRunnable(false, self.isProgress)
            self.midlet.setDisplay(NullCanvas.NULL_CANVAS)
            self.midlet.notifyDestroyed()
            self.logUtil.putF(self.commonStrings.END_RUNNABLE, self, self.commonStrings.RUN)
            self.processor.process()
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
}

