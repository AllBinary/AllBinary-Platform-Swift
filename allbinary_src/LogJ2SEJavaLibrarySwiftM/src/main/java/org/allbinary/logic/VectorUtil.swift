/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2026 AllBinary 
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
// package org.allbinary.logic

import J2SEForSwiftLibrary
// import java.util.Vector

open class VectorUtil: JObject {
    fileprivate static let instance: VectorUtil! = VectorUtil()

    public override init() {
        super.init()
    }
    

    @discardableResult open class func getInstance() -> VectorUtil! {
        return VectorUtil.instance
    }
    

    @discardableResult open func getSize(_ anyType: JObject!) -> Int32 {
        let vector: Vector! = (anyType as! Vector)
        return vector.size()
    }
    

    @discardableResult open func elementAt(_ anyType: JObject!, _ index: Int32) -> JObject! {
        let vector: Vector! = (anyType as! Vector)
        return vector.elementAt(index)
    }
}

