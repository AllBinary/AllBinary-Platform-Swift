/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2025 AllBinary 
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
// package org.allbinary.util

import J2SEForSwiftLibrary
// import jsinterop.annotations.JsType
// import java.util.Enumeration
// import jsinterop.annotations.JsMethod

//ArkTs does not have this.  So this is for the ArkTs build.
open class EnumerationUtil: JObject {
    fileprivate static let instance: EnumerationUtil! = EnumerationUtil()

    public override init() {
        super.init()
    }
    

    @discardableResult public static func getInstance() -> EnumerationUtil! {
        return EnumerationUtil.instance
    }
    

    @discardableResult open func hasMoreElements(_ enumeration: Enumeration!) -> Bool {
        return enumeration.hasMoreElements()
    }
    

    @discardableResult open func nextElement(_ enumeration: Enumeration!) -> JObject! {
        return enumeration.nextElement()
    }
    

    @discardableResult open func getAsArray(_ enumeration: Enumeration!) -> JArray<JObject?>! {
        let basicArrayList: BasicArrayList! = BasicArrayListD()
        while (self.hasMoreElements(enumeration)) {
            basicArrayList.add(self.nextElement(enumeration))
        }
        return basicArrayList.toArray()
    }
}

