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
// package org.allbinary.thirdparty.store

import J2SEForSwiftLibrary
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.logic.system.security.licensing.AbeClientInformationInterface

open class NoThirdPartyStore: ThirdPartyStore {
    

    public init() {
        super.init(StringUtil.getInstance().EMPTY_STRING)
    }
    

    open override func authorize(_ clientInformationInterface: AbeClientInformationInterface!) {
        self.setAuthorized(true)
    }
}

