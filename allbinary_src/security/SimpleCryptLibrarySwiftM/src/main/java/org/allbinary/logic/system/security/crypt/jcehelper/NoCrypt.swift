/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2022 AllBinary 
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
// package org.allbinary.logic.system.security.crypt.jcehelper

import J2SEForSwiftLibrary
// import org.allbinary.init.crypt.jcehelper.CryptInterface

open class NoCrypt: JObject, CryptInterface {

    public override init() {
        super.init()
    }
    

    @discardableResult open func encrypt(_ array: JArray<Int8>!) -> JArray<Int8>! {
        return array
    }
    

    @discardableResult open func decrypt(_ array: JArray<Int8>!) -> JArray<Int8>! {
        return array
    }
}

