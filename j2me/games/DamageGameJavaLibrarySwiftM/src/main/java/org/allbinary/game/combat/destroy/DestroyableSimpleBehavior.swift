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
// package org.allbinary.game.combat.destroy

import J2SEForSwiftLibrary
// import org.allbinary.game.layer.CollidableCompositeLayer

open class DestroyableSimpleBehavior: DestroyableBaseBehavior {
    public var ownerLayer: CollidableCompositeLayer! = nil
    fileprivate var destroyed: Bool = false

    // Each class has its own field initializers
    private func initFields() {
    
    self.destroyed = false
    }
    

    public init(_ ownerLayer: CollidableCompositeLayer!) {
        super.init()
        self.initFields()
        self.ownerLayer = ownerLayer
    }
    

    @discardableResult open override func isDestroyed() -> Bool {
        return self.destroyed
    }
    

    open override func setDestroyed(_ destroyed: Bool) {
        self.destroyed = destroyed
        if (self.isDestroyed()) {
            DestroyedLayerProcessor.getInstance().add(self.ownerLayer)
        }
    }
}

