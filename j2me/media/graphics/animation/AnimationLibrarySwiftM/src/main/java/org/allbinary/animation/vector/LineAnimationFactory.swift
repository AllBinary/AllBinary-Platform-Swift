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
// package org.allbinary.animation.vector

import J2SEForSwiftLibrary
// import org.allbinary.animation.Animation
// import org.allbinary.animation.AnimationInterfaceFactoryInterface
// import org.allbinary.graphics.color.BasicColor
// import org.allbinary.media.ScaleProperties

open class LineAnimationFactory: JObject, AnimationInterfaceFactoryInterface {
    fileprivate var basicColor: BasicColor! = nil

    private func initFields() {
    
    }
    

    public init(_ basicColor: BasicColor!) {
        super.init()
        self.initFields()
        self.basicColor = basicColor
    }
    

    @discardableResult open func getInstance(_ instanceId: Int32) -> Animation! {
        return LineAnimation(self.basicColor)
    }
    

    open func setInitialScale(_ scaleProperties: ScaleProperties!) {
    }
}

