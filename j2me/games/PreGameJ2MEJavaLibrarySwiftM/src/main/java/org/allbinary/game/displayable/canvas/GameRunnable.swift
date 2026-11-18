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
// import org.allbinary.graphics.displayable.DisplayInfoSingleton

open class GameRunnable: JObject, Runnable {
    public var WAIT: Int32 = 0
    public var FAST: Int32 = 0
    public var waitInMillis: Int64 = 0

    private func initFields() {
    self.WAIT = 240
    self.FAST = 60
    self.waitInMillis = Int64(truncatingIfNeeded: self.WAIT)
    }
    

    public override init() {
        super.init()
        self.initFields()
    }
    

    open func run() {
        DisplayInfoSingleton.getInstance().process()
    }
    

    open func processLoopSleep() {
        Thread.sleep(self.waitInMillis)
    }
}

