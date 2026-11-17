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
// package org.allbinary.logic.util.event

import J2SEForSwiftLibrary
// import org.allbinary.logic.util.cache.BaseCircularPool
// import org.allbinary.util.CircularIndexUtil

open class AllBinaryEventCircularPool: BaseCircularPool {
    

    public init(_ max: Int32) {
        super.init()
        self.OBJECT_ARRAY = JArray<JObject?>(max, nil)
        self.circularIndexUtil = CircularIndexUtil.createInstance(max)
    }
    

    open func initAllBinaryEventCircularPool(_ allBinaryEventObjectFactoryInterface: AllBinaryEventObjectFactoryInterface!) {
        self.circularIndexUtil.setIndex(0)
        let size: Int32 = self.circularIndexUtil.getSize()
        do {
            var index: Int32 = 0
            while (index < size) {
                defer { index &+= 1 }
            self.OBJECT_ARRAY[index] = allBinaryEventObjectFactoryInterface.getInstance()
            }
        }
    }
}

