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
// package org.allbinary.animation.image

import J2SEForSwiftLibrary
// import org.allbinary.logic.util.cache.BasicArrayListResetablePool
// import org.allbinary.logic.util.cache.CacheableInterface
// import org.allbinary.logic.util.cache.CacheableInterfaceFactoryInterface
// import org.allbinary.logic.util.cache.PoolInterface

open class ImageArrayRotationAnimationPool: BasicArrayListResetablePool {
    fileprivate static var IMAGE_ROTATION_ANIMATION_POOL: PoolInterface! = ImageArrayRotationAnimationPool(ImageArrayRotationAnimationCacheableInterfaceFactory())
    

    public override init(_ cacheableInterfaceFactoryInterface: CacheableInterfaceFactoryInterface!) {
        super.init(cacheableInterfaceFactoryInterface)
    }
    

    @discardableResult open class func getInstance() -> PoolInterface! {
        return ImageArrayRotationAnimationPool.IMAGE_ROTATION_ANIMATION_POOL
    }
    

    @discardableResult open override func remove(_ key: JObject!) -> CacheableInterface! {
        let cacheableInterface: CacheableInterface! = super.remove(key)
        let allBinaryImageRotationAnimationInfo: ImageArrayRotationAnimationInfo! = (key as! ImageArrayRotationAnimationInfo)
        let imageArrayRotationAnimationCacheable: ImageArrayRotationAnimationCacheable! = ((cacheableInterface as! ImageArrayRotationAnimationCacheable))
        imageArrayRotationAnimationCacheable.setImageArray(allBinaryImageRotationAnimationInfo.getImageArray())
        return cacheableInterface
    }
}

