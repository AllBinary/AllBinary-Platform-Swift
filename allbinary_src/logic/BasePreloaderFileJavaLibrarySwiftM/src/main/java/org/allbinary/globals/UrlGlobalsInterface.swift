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
// import org.allbinary.logic.string.StringUtil

open class UrlGlobalsInterface: JObject {

    public override init() {
        super.init()
    }
    

    @discardableResult open func getMainPath() -> String! {
        return StringUtil.getInstance().EMPTY_STRING
    }
    

    @discardableResult open func getTestHtmlPath() -> String! {
        return StringUtil.getInstance().EMPTY_STRING
    }
    

    @discardableResult open func getWebappPath() -> String! {
        return StringUtil.getInstance().EMPTY_STRING
    }
    

    @discardableResult open func isTestingMode() -> Bool {
        return false
    }
}

