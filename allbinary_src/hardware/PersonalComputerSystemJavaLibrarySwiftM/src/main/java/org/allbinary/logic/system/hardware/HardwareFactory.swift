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
// import org.allbinary.logic.system.os.GenericOperatingSystem
// import org.allbinary.logic.system.os.OperatingSystems
// import org.allbinary.logic.system.hardware.linux.LinuxHardware
// import org.allbinary.logic.system.hardware.windows.WindowsHardware

open class HardwareFactory: JObject {
    fileprivate static let instance: HardwareFactory! = HardwareFactory()
    

    @discardableResult public static func getInstance() -> HardwareFactory! {
        return HardwareFactory.instance
    }
    

    public override init() {
        super.init()
    }
    

    @discardableResult public static func getInstance(_ os: GenericOperatingSystem!) -> HardwareInterface! {
        do {
            let operatingSystems: OperatingSystems! = OperatingSystems.getInstance()
            if (JString.compareTo(os.getName(), operatingSystems.LINUX) == 0) {
                return LinuxHardware()
            } else if (JString.indexOf(os.getName(), operatingSystems.WINDOWS) >= 0) {
                return WindowsHardware()
            }
            jThrow(JException("Exception", jstr("No Hardware Imp for: ") + jstr(os.getName())))
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
}

