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
// package org.allbinary.graphics.form

import J2SEForSwiftLibrary
// import javax.microedition.lcdui.Graphics
// import org.allbinary.animation.Animation
// import org.allbinary.animation.FeaturedAnimationInterfaceFactoryInterfaceFactory
// import org.allbinary.logic.system.security.licensing.LockedResources
// import org.allbinary.logic.system.security.licensing.LockedUtil

open class LockablePaintable: ItemPaintable {
    fileprivate var animation: Animation! = nil
    fileprivate var lockedIndex: Int32 = 0

    // Each class has its own field initializers
    private func initFields() {
    self.animation = FeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance().get(LockedResources.getInstance().LOCKED_DEMO_GAME_FEATURE_RESOURCE).getInstance(0)
    
    }
    

    public init(_ lockedIndex: Int32) {
        super.init()
        self.initFields()
        self.lockedIndex = lockedIndex
    }
    

    open override func paint(_ graphics: Graphics!, _ currentIndex: Int32, _ x: Int32, _ y: Int32) {
        if (LockedUtil.getInstance().isLocked() && currentIndex >= self.getLockedIndex()) {
            self.getAnimation().paintXY(graphics, x, y)
        }
    }
    

    @discardableResult open func getLockedIndex() -> Int32 {
        return self.lockedIndex
    }
    

    @discardableResult open func getAnimation() -> Animation! {
        return self.animation
    }
}

