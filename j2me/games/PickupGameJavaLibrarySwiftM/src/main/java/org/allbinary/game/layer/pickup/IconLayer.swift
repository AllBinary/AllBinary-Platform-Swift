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
// package org.allbinary.game.layer.pickup

import J2SEForSwiftLibrary
// import javax.microedition.lcdui.Graphics
// import org.allbinary.animation.Animation
// import org.allbinary.animation.NullAnimationFactory
// import org.allbinary.graphics.PointFactory
// import org.allbinary.graphics.Rectangle
// import org.allbinary.layer.AllBinaryLayer
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.view.ViewPosition

open class IconLayer: AllBinaryLayer {
    public static let NULL_ICON_LAYER: IconLayer! = IconLayer(NullAnimationFactory.getFactoryInstance().getInstance(0), 0, 0)
    fileprivate var animationInterface: Animation! = nil

    // Each class has its own field initializers
    private func initFields() {
    
    }
    

    public init(_ animationInterface: Animation!, _ width: Int32, _ height: Int32) {
        super.init(StringUtil.getInstance().EMPTY_STRING, Rectangle(PointFactory.getInstance().ZERO_ZERO, width, height), ViewPosition.getInstanceD())
        self.initFields()
        self.animationInterface = animationInterface
    }
    

    open override func paint(_ graphics: Graphics!) {
        self.animationInterface.paintXY(graphics, self.x, self.y)
    }
    

    open override func paintThreed(_ graphics: Graphics!) {
        self.animationInterface.paintThreedXYZ(graphics, self.x, self.y, self.z)
    }
    

    @discardableResult open func getAnimationInterface() -> Animation! {
        return self.animationInterface
    }
}

