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
// package org.allbinary.logic.communication.log

import J2SEForSwiftLibrary
// import org.allbinary.string.CommonStrings
// import org.allbinary.logic.communication.log.PreLogUtil

open class ForcedLogUtil: JObject {

    public override init() {
        super.init()
    }
    

    public static func log(_ message: String!, _ anyType: JObject!) {
        do {
            jThrow(JException("Exception", message))
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
}

