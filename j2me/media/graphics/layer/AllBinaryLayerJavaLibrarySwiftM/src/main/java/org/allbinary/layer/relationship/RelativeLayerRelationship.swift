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
// package org.allbinary.layer.relationship

import J2SEForSwiftLibrary
// import org.allbinary.graphics.GPoint
// import org.allbinary.graphics.RelativeRelationship
// import org.allbinary.layer.AllBinaryLayer
// import org.allbinary.util.BasicArrayList

open class RelativeLayerRelationship: RelativeRelationship {
    fileprivate var layer: AllBinaryLayer! = nil

    // Each class has its own field initializers
    private func initFields() {
    self.layer = AllBinaryLayer.NULL_ALLBINARY_LAYER
    }
    

    public init(_ layer: AllBinaryLayer!, _ point: GPoint!, _ typesAllowedList: BasicArrayList!) {
        super.init(point, typesAllowedList)
        self.initFields()
        self.layer = layer
    }
    

    @discardableResult open override func getX() -> Int32 {
        return self.layer.getXP() + super.getX()
    }
    

    @discardableResult open override func getY() -> Int32 {
        return self.layer.getYP() + super.getY()
    }
    

    @discardableResult open override func getZ() -> Int32 {
        return self.layer.getZP() + super.getZ()
    }
}

