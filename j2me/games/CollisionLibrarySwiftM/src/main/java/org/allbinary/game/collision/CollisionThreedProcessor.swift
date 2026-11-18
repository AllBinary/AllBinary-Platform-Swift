// Generated Code Do Not Modify
// package org.allbinary.game.collision

import J2SEForSwiftLibrary
// import org.allbinary.layer.AllBinaryLayer

open class CollisionThreedProcessor: CollisionProcessor {

    public override init() {
        super.init()
    }
    

    @discardableResult open override func isCollision(_ myLayer: AllBinaryLayer!, _ myLayer2: AllBinaryLayer!) -> Bool {
        if (myLayer2.getXP() >= myLayer.getX2() || myLayer2.getYP() >= myLayer.getY2() || myLayer2.getX2() <= myLayer.getXP() || myLayer2.getY2() <= myLayer.getYP() || myLayer2.getZP() < myLayer.getZ2() || myLayer2.getZ2() > myLayer.getZP()) {
            return false
        } else {
            return true
        }
    }
}

