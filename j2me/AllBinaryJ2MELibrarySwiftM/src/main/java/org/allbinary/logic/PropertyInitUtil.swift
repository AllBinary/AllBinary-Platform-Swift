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
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.string.CommonStrings

open class PropertyInitUtil: JObject {
    fileprivate static let instance: PropertyInitUtil! = PropertyInitUtil()

    public override init() {
        super.init()
    }
    

    @discardableResult open class func getInstance(_ value: Int32) -> PropertyInitUtil! {
        let commonStrings: CommonStrings! = CommonStrings.getInstance()
        let logUtil: LogUtil! = LogUtil.getInstance()
        logUtil.putF(StringMaker().append("PropertyInitUtil: ").appendint(value).toString(), logUtil, commonStrings.CONSTRUCTOR)
        return PropertyInitUtil.instance
    }
}

