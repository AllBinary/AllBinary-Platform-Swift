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

open class SWTProcessorUtil: JObject {
    fileprivate static let instance: SWTProcessorUtil! = SWTProcessorUtil()
    public var swtProcessor: SWTProcessor! = nil

    private func initFields() {
    self.swtProcessor = SWTProcessor.getInstance()
    }

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult open class func getInstance() -> SWTProcessorUtil! {
        return SWTProcessorUtil.instance
    }
}

