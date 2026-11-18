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
// package org.allbinary.input.motion.button

import J2SEForSwiftLibrary
// import org.allbinary.animation.resource.BaseResourceAnimationInterfaceFactoryInterfaceFactory
// import org.allbinary.game.configuration.feature.Features
// import org.allbinary.game.resource.ResourceLoadingLevelFactory
// import org.allbinary.graphics.opengles.OpenGLFeatureFactory
// import org.allbinary.image.ImageCache
// import org.allbinary.image.ImageCacheFactory
// import org.allbinary.logic.StdUtil

open class TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory: BaseResourceAnimationInterfaceFactoryInterfaceFactory {
    

    @discardableResult open class func createFactory() -> TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory! {
        return TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory("TouchButton Animations")
    }
    

    public init(_ name: String!) {
        super.init(name, StdUtil.getInstance().createHashtable(), StdUtil.getInstance().createHashtable(), StdUtil.getInstance().createHashtable())
    }
    

    open override func `init`(_ level: Int32) {
        self.initImageCache(ImageCacheFactory.getInstance(), level)
    }
    

    open override func initImageCache(_ imageCache: ImageCache!, _ level: Int32) {
        if (self.isInitialized()) {
            return
        }
        super.`init`(level)
    }
    

    @discardableResult open override func isLoadingLevel(_ level: Int32) -> Bool {
        let resourceLoadingLevelFactory: ResourceLoadingLevelFactory! = ResourceLoadingLevelFactory.getInstance()
        if (level == resourceLoadingLevelFactory.LOAD_TOUCH.getLevel()) {
            return true
        } else {
            return super.isLoadingLevel(level)
        }
    }
    

    @discardableResult open override func isFeature() -> Bool {
        if (!Features.getInstance().isDefault(OpenGLFeatureFactory.getInstance().OPENGL)) {
            return true
        } else {
            return false
        }
    }
}

