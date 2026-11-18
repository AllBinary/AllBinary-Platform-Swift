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
// package org.allbinary.logic.io.path

import J2SEForSwiftLibrary

open class AbPathUtil: JObject {
    fileprivate static let instance: AbPathUtil! = AbPathUtil()
    public var NO_ABPATH: AbPath! = nil

    private func initFields() {
    self.NO_ABPATH = AbPath.createAbPath()
    }

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult open class func getInstance() -> AbPathUtil! {
        return AbPathUtil.instance
    }
}

