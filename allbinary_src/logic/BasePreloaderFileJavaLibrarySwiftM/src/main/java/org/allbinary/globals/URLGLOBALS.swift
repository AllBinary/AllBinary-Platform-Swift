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

open class URLGLOBALS: JObject {
    fileprivate static var urlGlobalsInterface: UrlGlobalsInterface! = AppUrlGlobals.NULL_APP_URL_GLOBALS

    public override init() {
        super.init()
    }
    

    open class func `init`(_ urlGlobalsInterface: UrlGlobalsInterface!) {
        URLGLOBALS.urlGlobalsInterface = urlGlobalsInterface
    }
    

    @discardableResult open class func isTestingMode() -> Bool {
        return URLGLOBALS.urlGlobalsInterface.isTestingMode()
    }
    

    @discardableResult open class func getWebappPath() -> String! {
        return URLGLOBALS.urlGlobalsInterface.getWebappPath()
    }
    

    @discardableResult open class func getTestHtmlPath() -> String! {
        return URLGLOBALS.urlGlobalsInterface.getTestHtmlPath()
    }
    

    @discardableResult open class func getMainPath() -> String! {
        return URLGLOBALS.urlGlobalsInterface.getMainPath()
    }
}

