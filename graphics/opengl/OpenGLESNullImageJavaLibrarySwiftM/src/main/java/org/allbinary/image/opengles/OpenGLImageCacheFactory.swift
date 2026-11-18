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
// package org.allbinary.image.opengles

import J2SEForSwiftLibrary
// import org.allbinary.image.ImageCache

//OpenGLESNullImageJavaLibrary
open class OpenGLImageCacheFactory: JObject {
    fileprivate static var IMAGE_CACHE: ImageCache! = ImageCache.NULL_IMAGE_CACHE

    public override init() {
        super.init()
    }
    

    @discardableResult open class func getInstance() -> ImageCache! {
        return OpenGLImageCacheFactory.IMAGE_CACHE
    }
    

    open class func `init`() {
        if (OpenGLImageCacheFactory.IMAGE_CACHE == nil) {
        }
    }
}

