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

open class SWTRunnableProcessor: SWTProcessor {
    fileprivate static let instanceR: SWTRunnableProcessor! = SWTRunnableProcessor()

    public override init() {
        super.init()
    }
    

    @discardableResult open override class func getInstance() -> SWTRunnableProcessor! {
        return SWTRunnableProcessor.instanceR
    }
    

    open override func process(_ display: Display!) {
    }
}

