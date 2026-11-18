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
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.system.security.licensing.registration.RegistrationConfiguration
// import org.allbinary.string.CommonSeps
// import org.allbinary.string.CommonStrings
// import org.allbinary.util.ABHashtable

open class MobileClientInformation: AbeClientInformation {
    public static let DESC: String! = "Mobile"
    public static let ANDROID_DESC: String! = jstr("Android") + jstr(MobileClientInformation.DESC)
    

    public override init(_ name: String!, _ version: String!, _ specialName: String!, _ shortName: String!) {
        super.init(name, version, StringMaker().append(specialName).append(CommonSeps.getInstance().SPACE).append(PartnerIdentifierFileUtil.getInstance().get()).toString(), shortName)
        let string: String! = self.getSpecialName()
        let number: String! = JString.substring(string, JString.length(string) &- 1)
        if (Integer.getInteger(number) == nil) {
            self.setHardSale(false)
        }
        let commonStrings: CommonStrings! = CommonStrings.getInstance()
        if (self.isHardSale()) {
            self.logUtil.putF("Use Hard Coded Selling", self, commonStrings.CONSTRUCTOR)
        } else {
            self.logUtil.putF("Don't Use Hard Coded Selling", self, commonStrings.CONSTRUCTOR)
        }
    }
    

    @discardableResult open override func toHashtable() -> ABHashtable! {
        let hashtable: ABHashtable! = super.toHashtable()
        let registrationConfiguration: RegistrationConfiguration! = RegistrationConfiguration.getInstance()
        hashtable.put(jBoxString(registrationConfiguration.NAME), jBoxString(registrationConfiguration.getRegistrationCode()))
        return hashtable
    }
}

