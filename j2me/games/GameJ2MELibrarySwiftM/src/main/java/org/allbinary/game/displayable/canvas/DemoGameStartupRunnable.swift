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
// package org.allbinary.game.displayable.canvas

import J2SEForSwiftLibrary
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.string.CommonStrings
// import org.allbinary.thread.ABRunnable

open class DemoGameStartupRunnable: ABRunnable {
    public static let TYPE: Int32 = 4
    public var logUtil: LogUtil! = nil
    fileprivate var demoCanvas: DemoCanvas! = nil

    // Each class has its own field initializers
    private func initFields() {
    self.logUtil = LogUtil.getInstance()
    
    }
    

    public init(_ demoCanvas: DemoCanvas!) {
        super.init()
        self.initFields()
        self.demoCanvas = demoCanvas
    }
    

    open override func run() {
        do {
            self.setRunning(true)
            self.demoCanvas.stopGameDemo()
            self.demoCanvas.create()
            self.demoCanvas.start()
            self.setRunning(false)
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
    

    @discardableResult open override func getType() -> Int32 {
        return DemoGameStartupRunnable.TYPE
    }
}

