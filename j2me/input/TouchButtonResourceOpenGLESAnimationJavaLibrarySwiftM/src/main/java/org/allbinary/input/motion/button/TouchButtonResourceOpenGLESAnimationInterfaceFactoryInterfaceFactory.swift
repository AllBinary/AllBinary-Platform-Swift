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
// import org.allbinary.game.configuration.feature.Features
// import org.allbinary.graphics.opengles.OpenGLFeatureFactory
// import org.allbinary.image.opengles.OpenGLImageCacheFactory

open class TouchButtonResourceOpenGLESAnimationInterfaceFactoryInterfaceFactory: TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory {
    

    public init() {
        super.init("OpenGL TouchButton Animations")
    }
    

    open override func `init`(_ level: Int32) {
        super.initImageCache(OpenGLImageCacheFactory.getInstance(), level)
    }
    

    @discardableResult open override func isFeature() -> Bool {
        if (Features.getInstance().isDefault(OpenGLFeatureFactory.getInstance().OPENGL)) {
            return true
        } else {
            return false
        }
    }
}

