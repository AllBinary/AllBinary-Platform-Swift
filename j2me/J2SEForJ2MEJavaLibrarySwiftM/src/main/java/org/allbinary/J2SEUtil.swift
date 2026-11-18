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
// package org.allbinary

import J2SEForSwiftLibrary
// import java.util.HashMap
// import java.util.Map
// import java.util.Set

//J2SEForJ2ME
open class J2SEUtil: JObject {
    fileprivate static let instance: J2SEUtil! = J2SEUtil()

    public override init() {
        super.init()
    }
    

    @discardableResult open class func getInstance() -> J2SEUtil! {
        return J2SEUtil.instance
    }
    

    @discardableResult open func getHashMapAsArray(_ hashMap: HashMap!) -> JArray<JObject?>! {
        let objectArray: JArray<JObject?>! = hashMap.keySet().toArray()
        return objectArray
    }
    

    @discardableResult open func getMapAsArray(_ map: Map!) -> JArray<JObject?>! {
        let objectArray: JArray<JObject?>! = map.keySet().toArray()
        return objectArray
    }
    

    @discardableResult open func getSetAsArray(_ set: Set!) -> JArray<JObject?>! {
        let objectArray: JArray<JObject?>! = set.toArray()
        return objectArray
    }
}

