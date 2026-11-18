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
// package javax.microedition.lcdui

import J2SEForSwiftLibrary

//PlatformNullImageJavaLibrary
open class PreLoadPlatformImage: PlatformImage {
    fileprivate static let instance: PreLoadPlatformImage! = PreLoadPlatformImage()

    public override init() {
        super.init()
    }
    

    @discardableResult open class func getInstance() -> PreLoadPlatformImage! {
        return PreLoadPlatformImage.instance
    }
}

