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
// package org.allbinary.image

import J2SEForSwiftLibrary

open class GameFeatureImageCacheFactory: JObject {

    public override init() {
        super.init()
    }
    

    @discardableResult open class func getInstance() -> ImageCache! {
        return ImageCacheFactory.getInstance()
    }
    

    open class func `init`() {
        ImageCacheFactory.`init`()
    }
    

    open class func releaseAll() {
        ImageCacheFactory.getInstance().releaseAll()
    }
}

