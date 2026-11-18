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
// package org.allbinary.init.crypt.jcehelper

import J2SEForSwiftLibrary
// import java.io.ByteArrayInputStream
// import java.io.ByteArrayOutputStream
// import java.io.InputStream
// import org.allbinary.TsUtil
// import org.allbinary.logic.communication.log.LogUtil

open class BasicCryptUtil: JObject {
    fileprivate static let instance: BasicCryptUtil! = BasicCryptUtil()
    public var logUtil: LogUtil! = nil
    fileprivate var tsUtil: TsUtil! = nil
    fileprivate var XML_START: String! = nil

    private func initFields() {
    self.logUtil = LogUtil.getInstance()
    self.tsUtil = TsUtil.getInstance()
    self.XML_START = "<?xml"
    }

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult open class func getInstance() -> BasicCryptUtil! {
        return BasicCryptUtil.instance
    }
    

    @discardableResult open func getDecryptedInputStream(_ inputStream: InputStream!, _ cryptInterface: CryptInterface!) -> InputStream! {
        let buffer: ByteArrayOutputStream! = ByteArrayOutputStream()
        var ch: Int32 = 0
        while (true) {
            ch = inputStream.read()
            if (ch == -1) {
                break
            }
            buffer.write(ch)
        }
        let decrypted: JArray<Int8>! = cryptInterface.decrypt(buffer.toByteArray())
        var decryptedString: String! = JString.fromBytes(decrypted)
        let index: Int32 = JString.indexOf(decryptedString, self.XML_START)
        if (index > 0) {
            decryptedString = JString.substring(decryptedString, index)
        }
        return ByteArrayInputStream(self.tsUtil.getByteArray(decryptedString))
    }
}

