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
// package org.allbinary.logic.system.security.licensing

import J2SEForSwiftLibrary
// import javax.microedition.lcdui.CommandListener

open class LicenseUtil: JObject {
    fileprivate static let instance: LicenseUtil! = LicenseUtil()

    public override init() {
        super.init()
    }
    

    @discardableResult open class func getInstance() -> LicenseUtil! {
        return LicenseUtil.instance
    }
    

    open func `init`() {
    }
    

    @discardableResult open func isRunning() -> Bool {
        return false
    }
    

    open func setRunning(_ running: Bool) {
    }
    

    @discardableResult open func shouldWait(_ commandListener: CommandListener!) -> Bool {
        return self.isRunning()
    }
}

