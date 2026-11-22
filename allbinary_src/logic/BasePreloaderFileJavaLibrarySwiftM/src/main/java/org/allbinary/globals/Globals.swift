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
// package org.allbinary.globals

import J2SEForSwiftLibrary
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.string.StringValidationUtil
// import org.allbinary.logic.system.loader.WebappClassLoaderInfo
// import org.allbinary.string.CommonSeps
// import org.allbinary.string.CommonStrings

open class Globals: JObject {
    fileprivate static let instance: Globals! = Globals()
    public var logUtil: LogUtil! = nil

    private func initFields() {
    self.logUtil = LogUtil.getInstance()
    }
    

    @discardableResult open class func getInstance() -> Globals! {
        return Globals.instance
    }
    

    public override init() {
        super.init()
        self.initFields()
    }
    

    open func `init`(_ classLoader: ClassLoader!, _ pathString: String!) {
        let commonStrings: CommonStrings! = CommonStrings.getInstance()
        let appUrlGlobals: AppUrlGlobals! = AppUrlGlobals()
        appUrlGlobals.setWebappPath(pathString)
        URLGLOBALS.`init`(appUrlGlobals)
        WebappClassLoaderInfo.setLoader(classLoader)
        let stringBuffer: StringMaker! = StringMaker()
        stringBuffer.append("Setting Up AllBinary System Configuration Args: ")
        stringBuffer.append(pathString)
        stringBuffer.append(" ClassLoader: ")
        stringBuffer.append(JObject.className(classLoader))
        self.logUtil.putF(stringBuffer.toString(), self, commonStrings.INIT)
        let stringValidationUtil: StringValidationUtil! = StringValidationUtil.getInstance()
        if (stringValidationUtil.isEmpty(pathString)) {
            stringBuffer.delete(0, stringBuffer.length())
            stringBuffer.append("No Path Provided. Using Process Path: ")
            stringBuffer.append(pathString)
            stringBuffer.append(CommonSeps.getInstance().SPACE)
            stringBuffer.append(CommonSeps.getInstance().EQUALS)
            stringBuffer.append(CommonSeps.getInstance().SPACE)
            stringBuffer.append(URLGLOBALS.getWebappPath())
            self.logUtil.putF(stringBuffer.toString(), self, commonStrings.INIT)
        }
        stringBuffer.delete(0, stringBuffer.length())
        stringBuffer.append("Webapp Path Set To: ")
        stringBuffer.append(URLGLOBALS.getWebappPath())
        self.logUtil.putF(stringBuffer.toString(), self, commonStrings.INIT)
    }
}

