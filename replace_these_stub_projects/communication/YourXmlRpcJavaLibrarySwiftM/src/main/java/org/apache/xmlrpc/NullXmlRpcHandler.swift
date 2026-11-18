/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2025 AllBinary 
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
// package org.apache.xmlrpc

import J2SEForSwiftLibrary
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListD
// import org.allbinary.logic.NullUtil

open class NullXmlRpcHandler: JObject, XmlRpcHandler {
    public static let NULL_XML_RPC_HANDLER: NullXmlRpcHandler! = NullXmlRpcHandler()

    public override init() {
        super.init()
    }
    

    @discardableResult open func execute(_ method: String!, _ params: BasicArrayList!) -> JObject! {
        return NullUtil.getInstance().NULL_OBJECT
    }
}

