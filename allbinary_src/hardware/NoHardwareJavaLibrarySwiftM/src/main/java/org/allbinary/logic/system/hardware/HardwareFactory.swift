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
// package org.allbinary.logic.system.hardware

import J2SEForSwiftLibrary
// import org.allbinary.logic.system.os.OperatingSystemInterface

open class HardwareFactory: JObject {
    fileprivate static let instance: HardwareFactory! = HardwareFactory()
    fileprivate var SINGLETON: HardwareInterface! = nil

    private func initFields() {
    self.SINGLETON = NoHardware.getInstance()
    }
    

    @discardableResult public static func getInstance() -> HardwareFactory! {
        return HardwareFactory.instance
    }
    

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult open func getInstance(_ os: OperatingSystemInterface!) -> HardwareInterface! {
        do {
            return self.SINGLETON
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
}

