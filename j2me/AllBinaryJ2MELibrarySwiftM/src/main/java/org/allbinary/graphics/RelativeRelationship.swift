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
// package org.allbinary.graphics

import J2SEForSwiftLibrary
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListUtil

open class RelativeRelationship: JObject {
    public static let NULL_RELATIVE_RELATIONSHIP: RelativeRelationship! = RelativeRelationship(PointFactory.getInstance().ZERO_ZERO, BasicArrayListUtil.getInstance().getImmutableInstance())
    fileprivate var typesAllowedList: BasicArrayList! = nil
    fileprivate var x: Int32 = 0
    fileprivate var y: Int32 = 0
    fileprivate var z: Int32 = 0

    private func initFields() {
    
    
    
    
    }
    

    public init(_ point: GPoint!, _ typesAllowedList: BasicArrayList!) {
        super.init()
        self.initFields()
        self.x = point.getX()
        self.y = point.getY()
        self.z = point.getZ()
        self.typesAllowedList = typesAllowedList
    }
    

    @discardableResult open func getX() -> Int32 {
        return self.x
    }
    

    @discardableResult open func getY() -> Int32 {
        return self.y
    }
    

    @discardableResult open func getZ() -> Int32 {
        return self.z
    }
    

    @discardableResult open func getTypesAllowedList() -> BasicArrayList! {
        return self.typesAllowedList
    }
    

    open func setTypesAllowedList(_ typesAllowedList: BasicArrayList!) {
        self.typesAllowedList = typesAllowedList
    }
}

