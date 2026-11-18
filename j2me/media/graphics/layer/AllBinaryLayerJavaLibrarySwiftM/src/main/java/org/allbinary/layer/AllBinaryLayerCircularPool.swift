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
// package org.allbinary.layer

import J2SEForSwiftLibrary
// import org.allbinary.logic.util.cache.BaseCircularPool
// import org.allbinary.util.CircularIndexUtil

open class AllBinaryLayerCircularPool: BaseCircularPool {
    

    public override init() {
        super.init()
    }
    

    open func initAllBinaryLayerCircularPool(_ allbinaryLayerFactoryInterface: AllBinaryLayerFactoryInterface!, _ total: Int32) {
        self.circularIndexUtil = CircularIndexUtil.createInstance(total)
        self.OBJECT_ARRAY = JArray<JObject?>(total, nil)
        do {
            var localIndex: Int32 = 0
            while (localIndex < total) {
                defer { localIndex &+= 1 }
            self.OBJECT_ARRAY[localIndex] = allbinaryLayerFactoryInterface.getInstance()
            }
        }
    }
}

