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
// package org.allbinary.logic.math.permutations

import J2SEForSwiftLibrary
// import org.allbinary.TsUtil

open class ComparableObject: JObject, Comparable {

    public override init() {
        super.init()
    }
    

    @discardableResult open func compareTo(_ anyType: JObject!) -> Int32 {
        if (TsUtil.getInstance().hashCode(self) < TsUtil.getInstance().hashCode(anyType)) {
            return -1
        } else if (TsUtil.getInstance().hashCode(self) > TsUtil.getInstance().hashCode(anyType)) {
            return 1
        }
        return 0
    }
}

