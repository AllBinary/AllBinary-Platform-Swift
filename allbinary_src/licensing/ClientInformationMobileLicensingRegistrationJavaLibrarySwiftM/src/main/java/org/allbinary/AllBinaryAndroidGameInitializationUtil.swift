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
// package org.allbinary

import J2SEForSwiftLibrary
// import org.allbinary.business.init.LicenseInitInfoUtil
// import org.allbinary.data.resource.ResourceUtil
// import org.allbinary.logic.system.security.licensing.PartnerIdentifierFileUtil

open class AllBinaryAndroidGameInitializationUtil: JObject {

    public override init() {
        super.init()
    }
    

    open class func `init`() {
        let resourceUtil: ResourceUtil! = ResourceUtil.getInstance()
        let androidResources: AndroidResources! = AndroidResources.getInstance()
        let licenseInitInfoUtil: LicenseInitInfoUtil! = LicenseInitInfoUtil.getInstance()
        resourceUtil.addResource(licenseInitInfoUtil.INITFILENAME, jstr(androidResources.raw.licenseinitdata))
        resourceUtil.addResource(PartnerIdentifierFileUtil.getInstance().FILE_NAME, jstr(androidResources.raw.partner))
        resourceUtil.addResource(licenseInitInfoUtil.ABOUT, jstr(androidResources.raw.about))
    }
}

