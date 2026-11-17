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
// package org.allbinary.logic.system.os

import J2SEForSwiftLibrary

open class OperatingSystems: JObject {
    fileprivate static let instance: OperatingSystems! = OperatingSystems()
    public var LINUX: String! = nil
    public var WINDOWS: String! = nil
    public var SOLARIS: String! = nil
    public var WINDOWS2000: String! = nil
    public var WINDOWS_NT: String! = nil
    public var WINDOWS_10: String! = nil
    public var WINDOWS_11: String! = nil
    public var WINDOWS_VISTA: String! = nil
    public var WINDOWS_XP: String! = nil
    public var ANDROID: String! = nil
    public var HARMONY: String! = nil
    fileprivate var unknownSpecificOSAllowed: Bool = false

    private func initFields() {
    self.LINUX = "Linux"
    self.WINDOWS = "Windows"
    self.SOLARIS = "Solaris"
    self.WINDOWS2000 = "Windows 2000"
    self.WINDOWS_NT = "Windows NT"
    self.WINDOWS_10 = "Windows 10"
    self.WINDOWS_11 = "Windows 11"
    self.WINDOWS_VISTA = "Windows Vista"
    self.WINDOWS_XP = "Windows XP"
    self.ANDROID = self.LINUX
    self.HARMONY = "HarmonyOS"
    self.unknownSpecificOSAllowed = true
    }
    

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult open func isUnknownSpecificOSAllowed() -> Bool {
        return self.unknownSpecificOSAllowed
    }
    

    open func setUnknownSpecificOSAllowed(_ aUnknownSpecificOSAllowed: Bool) {
        self.unknownSpecificOSAllowed = aUnknownSpecificOSAllowed
    }
    

    @discardableResult public static func getInstance() -> OperatingSystems! {
        return OperatingSystems.instance
    }
}

