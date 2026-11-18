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
// package org.allbinary.business.init

import J2SEForSwiftLibrary
// import org.allbinary.TsUtil
// import org.allbinary.globals.PATH_GLOBALS
// import org.allbinary.globals.URLGLOBALS
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.io.AbDataInputStream
// import org.allbinary.logic.io.AbDataOutputStream
// import org.allbinary.logic.io.AbFileInputStream
// import org.allbinary.logic.io.DataOutputStreamFactory
// import org.allbinary.logic.io.FileStreamFactory
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.logic.system.security.crypt.DatabaseEncoder
// import org.allbinary.logic.system.security.crypt.WeakCrypt
// import org.allbinary.string.CommonLabels

open class LicenseInitInfoUtil: JObject {
    fileprivate static let instance: LicenseInitInfoUtil! = LicenseInitInfoUtil()
    public var logUtil: LogUtil! = nil
    fileprivate var stringUtil: StringUtil! = nil
    public var INITFILENAME: String! = nil
    public var ABOUT: String! = nil
    public var PRIVACY_POLICY: String! = nil
    fileprivate var filePath: String! = nil

    private func initFields() {
    self.logUtil = LogUtil.getInstance()
    self.stringUtil = StringUtil.getInstance()
    self.INITFILENAME = "licenseinitdata.dat"
    self.ABOUT = "about"
    self.PRIVACY_POLICY = "privacy_policy"
    self.filePath = self.stringUtil.EMPTY_STRING
    }

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult open class func getInstance() -> LicenseInitInfoUtil! {
        return LicenseInitInfoUtil.instance
    }
    

    open func setFilePath(_ filePath: String!) {
        self.filePath = filePath
    }
    

    open func write(_ initData: LicenseInitInfo!) {
        if (self.filePath == self.stringUtil.EMPTY_STRING) {
            self.filePath = jstr(URLGLOBALS.getMainPath()) + jstr(PATH_GLOBALS.getInstance().INIT_PATH)
        }
        do {
            let tsUtil: TsUtil! = TsUtil.getInstance()
            let dataOutputStream: AbDataOutputStream! = DataOutputStreamFactory.getInstance().getInstance(self.filePath, self.INITFILENAME)
            let licenseIdCrypted: JArray<Int8>! = tsUtil.getByteArray(WeakCrypt(1).encrypt(initData.getLicenseId()))
            dataOutputStream.writeUTF(DatabaseEncoder.encode(licenseIdCrypted))
            let numberOfLicenseServers: Int32 = initData.getNumberOfServers()
            dataOutputStream.writeInt(numberOfLicenseServers)
            var licenseServerCrypted: JArray<Int8>! = nil
            do {
                var index: Int32 = 0
                while (index < numberOfLicenseServers) {
                    defer { index &+= 1 }
                licenseServerCrypted = tsUtil.getByteArray(WeakCrypt(3).encrypt(initData.getServer(index)))
                dataOutputStream.writeUTF(DatabaseEncoder.encode(licenseServerCrypted))
                }
            }
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
    

    @discardableResult open func read() -> LicenseInitInfo! {
        return self.readAgain(0)
    }
    

    @discardableResult open func readAgain(_ initializeCounter: Int32) -> LicenseInitInfo! {
        let METHOD_NAME: String! = "readAgain"
        if (self.filePath == self.stringUtil.EMPTY_STRING) {
            self.filePath = jstr(URLGLOBALS.getMainPath()) + jstr(PATH_GLOBALS.getInstance().INIT_PATH)
        }
        do {
            self.logUtil.putF(jstr("LicenseInitInfo File: ") + jstr(self.INITFILENAME), self, METHOD_NAME)
            let fileStreamFactory: FileStreamFactory! = FileStreamFactory.getInstance()
            let iFile: AbFileInputStream! = fileStreamFactory.getFileInputStreamInstance(self.filePath, self.INITFILENAME)
            if (iFile != nil) {
                let iData: AbDataInputStream! = AbDataInputStream(iFile)
                let initInfo: LicenseInitInfo! = LicenseInitInfo()
                var decodedByteArray: JArray<Int8>! = DatabaseEncoder.decode(iData.readUTF())
                let licenseIdDecoded: String! = JString.fromBytes(decodedByteArray)
                initInfo.setLicenseId(WeakCrypt(1).decrypt(licenseIdDecoded))
                let numberOfLicenseServers: Int32 = iData.readInt()
                let NEXT_FILE: String! = StringMaker().append(CommonLabels.getInstance().NEXT).append(" License Server From File: ").toString()
                var licenseServerDecoded: String! = nil
                do {
                    var index: Int32 = 0
                    while (index < numberOfLicenseServers) {
                        defer { index &+= 1 }
                    decodedByteArray = DatabaseEncoder.decode(iData.readUTF())
                    licenseServerDecoded = JString.fromBytes(decodedByteArray)
                    initInfo.setServer(WeakCrypt(3).decrypt(licenseServerDecoded), index)
                    self.logUtil.putF(jstr(NEXT_FILE) + jstr(initInfo.getServer(index)), self, METHOD_NAME)
                    }
                }
                return initInfo
            } else {
                jThrow(JException("Exception", jstr("Could Not Load License InitInfo: ") + jstr(self.INITFILENAME)))
            }
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
    

    @discardableResult open func getFilePath() -> String! {
        return self.filePath
    }
}

