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
// import java.io.OutputStream
// import org.allbinary.business.init.LicenseInitInfoUtil
// import org.allbinary.data.resource.ResourceUtil
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.io.FileStreamFactory
// import org.allbinary.logic.io.StreamUtil
// import org.allbinary.logic.io.file.FileFactory
// import org.allbinary.logic.io.file.SimpleFileUtil
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.string.CommonStrings

open class LicenseServerInitFileUtil: JObject {
    public var logUtil: LogUtil! = nil
    fileprivate var commonStrings: CommonStrings! = nil
    fileprivate var NULL_OUTPUT_STREAM: OutputStream! = nil

    private func initFields() {
    self.logUtil = LogUtil.getInstance()
    self.commonStrings = CommonStrings.getInstance()
    self.NULL_OUTPUT_STREAM = SimpleFileUtil.nullOutputStream()
    }

    public override init() {
        super.init()
        self.initFields()
    }
    

    public func `init`() {
        do {
            let filePath: String! = LicenseInitInfoUtil.getInstance().INITFILENAME
            LicenseInitInfoUtil.getInstance().setFilePath(StringUtil.getInstance().EMPTY_STRING)
            if (FileFactory.getInstance().isFile(filePath)) {
                self.logUtil.putF("Using Existing License File", self, self.commonStrings.INIT)
            } else {
                self.write()
            }
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
    

    fileprivate func write() {
        var fileOutputStream: OutputStream! = self.NULL_OUTPUT_STREAM
        do {
            defer {
            StreamUtil.getInstance().close(fileOutputStream)
            }
            let resourceUtil: ResourceUtil! = ResourceUtil.getInstance()
            let filePath: String! = LicenseInitInfoUtil.getInstance().INITFILENAME
            let inputStream: InputStream! = resourceUtil.getResourceAsStream(filePath)
            self.logUtil.putF("Writing Default License File", self, self.commonStrings.INIT)
            let fileStreamFactory: FileStreamFactory! = FileStreamFactory.getInstance()
            fileOutputStream = fileStreamFactory.getFileOutputStreamInstance(StringUtil.getInstance().EMPTY_STRING, filePath)
            var b: Int32 = 0
            var index: Int32 = 0
            while (true) {
                b = inputStream.read()
                if (b == -1) {
                    break
                }
                fileOutputStream.write(b)
                index &+= 1
            }
            self.logUtil.putF(jstr("Wrote Bytes: ") + jstr(index), self, self.commonStrings.INIT)
            fileOutputStream.flush()
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
}

