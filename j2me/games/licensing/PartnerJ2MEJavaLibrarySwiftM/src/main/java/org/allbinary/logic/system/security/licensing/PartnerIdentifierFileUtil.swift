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
// import java.io.InputStream
// import java.io.InputStreamReader
// import org.allbinary.data.resource.ResourceUtil
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.string.CommonStrings

open class PartnerIdentifierFileUtil: JObject {
    fileprivate static let instance: PartnerIdentifierFileUtil! = PartnerIdentifierFileUtil()
    public var logUtil: LogUtil! = nil
    public var FILE_NAME: String! = nil

    private func initFields() {
    self.logUtil = LogUtil.getInstance()
    self.FILE_NAME = "partner.txt"
    }

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult open class func getInstance() -> PartnerIdentifierFileUtil! {
        return PartnerIdentifierFileUtil.instance
    }
    

    @discardableResult open func get() -> String! {
        do {
            let resourceUtil: ResourceUtil! = ResourceUtil.getInstance()
            let inputStream: InputStream! = resourceUtil.getResourceAsStream(self.FILE_NAME)
            let inputStreamReader: InputStreamReader! = InputStreamReader(inputStream)
            let chars: JArray<UInt16>! = JArray<UInt16>(30, 0)
            let size: Int32 = inputStreamReader.read(chars)
            var partnerString: String! = StringUtil.getInstance().EMPTY_STRING
            if (size > 0) {
                partnerString = JString.fromChars(chars, 0, size)
            }
            inputStreamReader.close()
            return partnerString
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
}

