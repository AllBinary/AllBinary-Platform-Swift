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
// package org.allbinary.logic.system.hardware.components

import J2SEForSwiftLibrary
// import org.allbinary.string.CommonStrings

open class ComponentFactory: JObject {
    fileprivate static let instance: ComponentFactory! = ComponentFactory()
    public var VGA: Component! = nil
    public var IDE: Component! = nil
    public var SCSI: Component! = nil
    public var BRIDGE: Component! = nil
    public var ETHERNET: Component! = nil
    public var USB: Component! = nil
    public var MULTIMEDIA: Component! = nil
    public var PCI: Component! = nil
    public var RAID: Component! = nil
    public var SMBUS: Component! = nil
    public var PIC: Component! = nil
    public var Class: Component! = nil
    public var UNKNOWN: Component! = nil

    private func initFields() {
    self.VGA = Component("VGA")
    self.IDE = Component("IDE")
    self.SCSI = Component("SCSI")
    self.BRIDGE = Component("bridge")
    self.ETHERNET = Component("Ethernet")
    self.USB = Component("USB")
    self.MULTIMEDIA = Component("Multimedia")
    self.PCI = Component("PCI")
    self.RAID = Component("RAID")
    self.SMBUS = Component("SMBus")
    self.PIC = Component("PIC")
    self.Class = Component("Class")
    self.UNKNOWN = Component(CommonStrings.getInstance().UNKNOWN)
    }

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult open class func getInstance() -> ComponentFactory! {
        return ComponentFactory.instance
    }
}

