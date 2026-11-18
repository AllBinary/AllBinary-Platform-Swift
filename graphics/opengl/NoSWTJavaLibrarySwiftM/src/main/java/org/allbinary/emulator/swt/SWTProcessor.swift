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
// package org.allbinary.emulator.swt

import J2SEForSwiftLibrary
// import org.eclipse.swt.widgets.Display
// import org.allbinary.thread.NullRunnable

open class SWTProcessor: JObject {
    fileprivate static let instance: SWTProcessor! = SWTProcessor()
    public var runnable: Runnable! = nil

    private func initFields() {
    self.runnable = NullRunnable.getInstance()
    }

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult open class func getInstance() -> SWTProcessor! {
        return SWTProcessor.instance
    }
    

    open func process(_ display: Display!) {
        display.sleep()
    }
}

