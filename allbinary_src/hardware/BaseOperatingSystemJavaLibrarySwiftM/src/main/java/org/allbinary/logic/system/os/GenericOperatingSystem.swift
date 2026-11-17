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
// import org.allbinary.logic.java.character.CharacterSet
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.logic.string.StringValidationUtil
// import org.allbinary.string.CommonSeps

open class GenericOperatingSystem: JObject, OperatingSystemInterface {
    fileprivate var osName: String! = nil
    fileprivate var osArch: String! = nil
    fileprivate var osVersion: String! = nil
    fileprivate var characterSet: CharacterSet! = nil
    public var scalable: Bool = false

    private func initFields() {
    self.osName = nil
    self.osArch = nil
    self.osVersion = nil
    self.characterSet = CharacterSet()
    self.scalable = false
    }
    

    public override init() {
        super.init()
        self.initFields()
        let systemProperties: SystemProperties! = SystemProperties.getInstance()
        let stringValidationUtil: StringValidationUtil! = StringValidationUtil.getInstance()
        let EMPTY_STRING: String! = StringUtil.getInstance().EMPTY_STRING
        if (stringValidationUtil.isEmpty(systemProperties.getName())) {
            self.osName = EMPTY_STRING
        } else {
            self.osName = systemProperties.getName()
        }
        if (stringValidationUtil.isEmpty(systemProperties.getArch())) {
            self.osArch = EMPTY_STRING
        } else {
            self.osArch = systemProperties.getArch()
        }
        if (stringValidationUtil.isEmpty(systemProperties.getVersion())) {
            self.osVersion = EMPTY_STRING
        } else {
            self.osVersion = systemProperties.getVersion()
        }
    }
    

    @discardableResult open func getName() -> String! {
        return self.osName
    }
    

    @discardableResult open func getVersion() -> String! {
        return self.osVersion
    }
    

    @discardableResult open func getArch() -> String! {
        return self.osArch
    }
    

    @discardableResult open func getCharacterSet() -> CharacterSet! {
        return self.characterSet
    }
    

    @discardableResult open func isOverScan() -> Bool {
        return false
    }
    

    @discardableResult open func getOverScanXPercent() -> Int32 {
        return 100
    }
    

    @discardableResult open func getOverScanYPercent() -> Int32 {
        return 100
    }
    

    @discardableResult open func isScalable() -> Bool {
        return self.scalable
    }
    

    @discardableResult open func isAutoHide() -> Bool {
        return false
    }
    

    @discardableResult open override func toString() -> String! {
        let NEW_LINE: String! = CommonSeps.getInstance().NEW_LINE
        let osBuffer: StringMaker! = StringMaker()
        osBuffer.append("Operating System Info: \n")
        osBuffer.append(self.getName())
        osBuffer.append(NEW_LINE)
        osBuffer.append(self.getArch())
        osBuffer.append(NEW_LINE)
        osBuffer.append(self.getVersion())
        osBuffer.append(NEW_LINE)
        osBuffer.append(StringUtil.getInstance().toString(self.getCharacterSet()))
        osBuffer.append(NEW_LINE)
        return osBuffer.toString()
    }
}

