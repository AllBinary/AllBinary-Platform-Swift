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
// package org.allbinary.logic.system

import J2SEForSwiftLibrary
// import java.io.InputStream
// import org.allbinary.data.resource.ResourceUtil

open class PlatformAssetManager: JObject {
    fileprivate static let instance: PlatformAssetManager! = PlatformAssetManager()

    public override init() {
        super.init()
    }
    

    @discardableResult open class func getInstance() -> PlatformAssetManager! {
        return PlatformAssetManager.instance
    }
    

    @discardableResult open func getResourceAsStream(_ resource: String!) -> InputStream! {
        let resourceUtil: ResourceUtil! = ResourceUtil.getInstance()
        let inputStream: InputStream! = resourceUtil.getResourceAsStream(resource)
        return inputStream
    }
}

