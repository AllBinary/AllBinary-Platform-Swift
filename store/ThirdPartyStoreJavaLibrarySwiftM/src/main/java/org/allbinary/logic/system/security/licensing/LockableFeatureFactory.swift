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
// package org.allbinary.logic.system.security.licensing

import J2SEForSwiftLibrary
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListD

open class LockableFeatureFactory: JObject {
    fileprivate static let instance: LockableFeatureFactory! = LockableFeatureFactory()
    fileprivate var list: BasicArrayList! = nil

    private func initFields() {
    self.list = BasicArrayListD()
    }

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult open class func getInstance() -> LockableFeatureFactory! {
        return LockableFeatureFactory.instance
    }
    

    @discardableResult open func getList() -> BasicArrayList! {
        return self.list
    }
}

