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
// import org.allbinary.logic.util.cache.BaseCircularPool
// import org.allbinary.util.CircularIndexUtil

open class GPointCircularPool: BaseCircularPool {
    

    public init(_ size: Int32) {
        super.init()
        self.circularIndexUtil = CircularIndexUtil.createInstance(size)
        self.OBJECT_ARRAY = JArray<JObject?>(size, nil)
        do {
            var index: Int32 = size &- 1
            while (index >= 0) {
                defer { index &-= 1 }
            self.OBJECT_ARRAY[index] = CustomGPoint.getInstance3(0, 0)
            }
        }
    }
}

