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
// package org.allbinary.android

import J2SEForSwiftLibrary

open class AndroidInfoFactory: JObject {
    fileprivate static let instance: AndroidInfoFactory! = AndroidInfoFactory()
    fileprivate var version: Int32 = 0

    private func initFields() {
    self.version = 8
    }

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult public static func getInstance() -> AndroidInfoFactory! {
        return AndroidInfoFactory.instance
    }
    

    @discardableResult open func getVersion() -> Int32 {
        return self.version
    }
}

