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
// package org.allbinary.logic.system.hardware.windows

import J2SEForSwiftLibrary
// import org.allbinary.logic.StdUtil
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.logic.system.hardware.HardwareInterface
// import org.allbinary.logic.system.hardware.components.interfaces.BridgeInterface
// import org.allbinary.logic.system.hardware.components.interfaces.CpuInterface
// import org.allbinary.logic.system.hardware.components.interfaces.EthernetInterface
// import org.allbinary.logic.system.hardware.components.interfaces.FireWireInterface
// import org.allbinary.logic.system.hardware.components.interfaces.HardDriveControllerInterface
// import org.allbinary.logic.system.hardware.components.interfaces.HardDriveInterface
// import org.allbinary.logic.system.hardware.components.interfaces.HardwareComponentInterface
// import org.allbinary.logic.system.hardware.components.interfaces.MachineAccessControlAddressInterface
// import org.allbinary.logic.system.hardware.components.interfaces.MediaInterface
// import org.allbinary.logic.system.hardware.components.interfaces.MonitorInterface
// import org.allbinary.logic.system.hardware.components.interfaces.UsbInterface
// import org.allbinary.logic.system.hardware.components.interfaces.VideoInterface
// import org.allbinary.util.ABHashtable

open class WindowsHardware: JObject, HardwareInterface {
    

    public override init() {
        super.init()
    }
    

    @discardableResult open func getMultimedia(_ index: Int32) -> MediaInterface! {
        jThrow(JException("RuntimeException", ""))
    }
    

    @discardableResult open func getBridge(_ index: Int32) -> BridgeInterface! {
        jThrow(JException("RuntimeException", ""))
    }
    

    @discardableResult open func getCpu(_ index: Int32) -> CpuInterface! {
        jThrow(JException("RuntimeException", ""))
    }
    

    @discardableResult open func getEthernet(_ index: Int32) -> EthernetInterface! {
        jThrow(JException("RuntimeException", ""))
    }
    

    @discardableResult open func getFireWire(_ index: Int32) -> FireWireInterface! {
        jThrow(JException("RuntimeException", ""))
    }
    

    @discardableResult open func getHardDriveController(_ index: Int32) -> HardDriveControllerInterface! {
        jThrow(JException("RuntimeException", ""))
    }
    

    @discardableResult open func getHardDrive(_ index: Int32) -> HardDriveInterface! {
        jThrow(JException("RuntimeException", ""))
    }
    

    @discardableResult open func getMachineAccessControlAddress(_ index: Int32) -> MachineAccessControlAddressInterface! {
        jThrow(JException("RuntimeException", ""))
    }
    

    @discardableResult open func getMonitor(_ index: Int32) -> MonitorInterface! {
        jThrow(JException("RuntimeException", ""))
    }
    

    @discardableResult open func getUsb(_ index: Int32) -> UsbInterface! {
        jThrow(JException("RuntimeException", ""))
    }
    

    @discardableResult open func getVideo(_ index: Int32) -> VideoInterface! {
        jThrow(JException("RuntimeException", ""))
    }
    

    @discardableResult open func getComponent(_ index: Int32) -> HardwareComponentInterface! {
        jThrow(JException("RuntimeException", ""))
    }
    

    @discardableResult open override func toString() -> String! {
        return StringUtil.getInstance().EMPTY_STRING
    }
    

    @discardableResult open func compareTo(_ hardwareInterface: HardwareInterface!) -> Bool {
        return true
    }
    

    @discardableResult open func difference(_ hardwareInterface: HardwareInterface!) -> ABHashtable! {
        return StdUtil.getInstance().NULL_TABLE
    }
}

