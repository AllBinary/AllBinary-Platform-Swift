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
// package org.allbinary.game.input

import J2SEForSwiftLibrary
// import org.allbinary.init.Init
// import org.allbinary.logic.communication.log.LogUtil

open class KeyFactoryInitializer: Init {
    public var logUtil: LogUtil! = nil

    // Each class has its own field initializers
    private func initFields() {
    self.logUtil = LogUtil.getInstance()
    }

    public override init() {
        super.init()
        self.initFields()
    }
    

    open override func `init`() {
        self.logUtil.putF(self.commonStrings.START, self, self.commonStrings.INIT)
    }
}

