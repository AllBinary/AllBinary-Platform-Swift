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
// import javax.microedition.lcdui.Image
// import org.allbinary.animation.Animation
// import org.allbinary.animation.AnimationBehaviorFactory
// import org.allbinary.game.configuration.GameConfigurationCentral
// import org.allbinary.logic.math.PrimitiveIntUtil
// import org.allbinary.math.AngleFactory
// import org.allbinary.math.AngleInfo

open class ImageRotationAnimationFactory: BaseImageAnimationFactory {
    public var angleIncrement: Int16 = 0

    // Each class has its own field initializers
    private func initFields() {
    
    }
    

    public init(_ image: Image!, _ width: Int32, _ height: Int32, _ dx: Int32, _ dy: Int32, _ angleIncrement: Int16, _ animationBehaviorFactory: AnimationBehaviorFactory!) {
        super.init(image, PrimitiveIntUtil.getArrayInstance(), width, height, 0, 0, animationBehaviorFactory)
        self.initFields()
        self.angleIncrement = angleIncrement
        self.animationFactoryInitializationVisitor.dx = dx
        self.animationFactoryInitializationVisitor.dy = dy
    }
    

    @discardableResult open override func getInstance(_ instanceId: Int32) -> Animation! {
        if (self.animationFactoryInitializationVisitor.dx != 0 || self.animationFactoryInitializationVisitor.dy != 0) {
            self.animationFactoryImageScaleUtil.processAdjust(self)
            return AdjustedImageBaseRotationAnimation(self.getImage(), AngleInfo.getInstance(self.angleIncrement), AngleFactory.getInstance().TOTAL_ANGLE, self.animationFactoryInitializationVisitor.dx, self.animationFactoryInitializationVisitor.dy, self.animationBehaviorFactory.getOrCreateInstance())
        } else {
            return ImageBaseRotationAnimation(self.getImage(), AngleInfo.getInstance(self.angleIncrement), AngleFactory.getInstance().TOTAL_ANGLE, self.animationBehaviorFactory.getOrCreateInstance())
        }
    }
    

    @discardableResult open func getAngleIncrementP() -> Int16 {
        return self.angleIncrement
    }
}

