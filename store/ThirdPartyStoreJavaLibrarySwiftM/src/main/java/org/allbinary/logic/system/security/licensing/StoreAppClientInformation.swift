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
// import org.allbinary.thirdparty.store.LongArrayIdentifierInterface

open class StoreAppClientInformation: AbeClientInformation, LongArrayIdentifierInterface {
    fileprivate var longArrayIdentifier: JArray<Int64>! = nil

    // Each class has its own field initializers
    private func initFields() {
    
    }
    

    public init(_ name: String!, _ version: String!, _ specialName: String!, _ shortName: String!, _ longArrayIdentifier: JArray<Int64>!) {
        super.init(name, version, specialName, shortName)
        self.initFields()
        self.longArrayIdentifier = longArrayIdentifier
    }
    

    @discardableResult open func getLongArrayIdentifier() -> JArray<Int64>! {
        return self.longArrayIdentifier
    }
}

