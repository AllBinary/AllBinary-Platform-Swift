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
// package org.allbinary.logic.io

import J2SEForSwiftLibrary
// import java.io.ByteArrayOutputStream
// import java.io.Closeable
// import java.io.InputStream
// import java.io.OutputStream
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.string.CommonStrings

open class StreamUtil: JObject {
    fileprivate static let instance: StreamUtil! = StreamUtil()
    public var logUtil: LogUtil! = nil

    private func initFields() {
    self.logUtil = LogUtil.getInstance()
    }
    

    @discardableResult open class func getInstance() -> StreamUtil! {
        return StreamUtil.instance
    }
    

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult open func get(_ inputStream: InputStream!, _ outputStream: OutputStream!, _ buffer: JArray<Int8>!) -> OutputStream! {
        var len: Int32 = 0
        while (true) {
            len = inputStream.read(buffer, 0, buffer.length)
            if (len != -1) {
            } else {
                break
            }
            outputStream.write(buffer, 0, len)
        }
        return outputStream
    }
    

    @discardableResult open func getByteArray(_ inputStream: InputStream!, _ outputStream2: ByteArrayOutputStream!, _ byteArray: JArray<Int8>!) -> JArray<Int8>! {
        let outputStream: ByteArrayOutputStream! = outputStream2
        do {
            defer {
            self.close(outputStream)
            }
            self.get(inputStream, outputStream, byteArray)
            return outputStream.toByteArray()
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
    

    @discardableResult open func close(_ closeable: Closeable!) -> Bool {
        do {
            if (closeable != nil) {
                closeable.close()
            }
            return true
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
}

