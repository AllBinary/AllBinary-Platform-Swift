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
// package org.allbinary

import J2SEForSwiftLibrary

//import org.allbinary.logic.communication.log.PreLogUtil;
open class AppletUtil: JObject {
    fileprivate static var applet: Bool = false
    

    public override init() {
        super.init()
    }
    

    open class func setApplet() {
        AppletUtil.applet = true
    }
    

    @discardableResult open class func isAppletLoader(_ anyType: JObject!) -> Bool {
        return AppletUtil.applet
    }
}

