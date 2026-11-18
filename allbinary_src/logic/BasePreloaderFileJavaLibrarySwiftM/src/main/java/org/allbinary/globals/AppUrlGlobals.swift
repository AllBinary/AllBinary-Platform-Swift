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

//implements
open class AppUrlGlobals: UrlGlobalsInterface {
    public static let NULL_APP_URL_GLOBALS: AppUrlGlobals! = AppUrlGlobals()
    fileprivate var path: String! = nil

    // Each class has its own field initializers
    private func initFields() {
    self.path = StringUtil.getInstance().EMPTY_STRING
    }

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult open override func isTestingMode() -> Bool {
        return false
    }
    

    @discardableResult open override func getWebappPath() -> String! {
        return self.path
    }
    

    open func setWebappPath(_ path: String!) {
        self.path = path
        if (!(self.path.hasSuffix("\\") || self.path.hasSuffix("/"))) {
            self.path = jstr(self.path) + jstr("\\")
        }
    }
    

    @discardableResult open override func getTestHtmlPath() -> String! {
        return StringUtil.getInstance().EMPTY_STRING
    }
    

    @discardableResult open override func getMainPath() -> String! {
        return self.path
    }
}

