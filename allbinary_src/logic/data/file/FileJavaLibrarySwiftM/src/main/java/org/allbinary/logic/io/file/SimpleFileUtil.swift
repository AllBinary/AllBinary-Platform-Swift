/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2025 AllBinary 
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
// package org.allbinary.logic.io.file

import J2SEForSwiftLibrary
// import java.io.ByteArrayOutputStream
// import java.io.InputStream
// import java.io.OutputStream
// import java.io.Reader
// import java.io.Writer
// import org.allbinary.logic.NullUtil
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.io.NullOutputStream
// import org.allbinary.logic.io.NullReader
// import org.allbinary.logic.io.NullWriter
// import org.allbinary.logic.io.StreamUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.string.CommonStrings
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListD

open class SimpleFileUtil: JObject {
    fileprivate static let instance: SimpleFileUtil! = SimpleFileUtil()
    public var logUtil: LogUtil! = nil
    public var NULL_WRITER: Writer! = nil
    public var NULL_READER: Reader! = nil
    fileprivate var commonStrings: CommonStrings! = nil
    fileprivate var nullUtil: NullUtil! = nil
    fileprivate var streamUtil: StreamUtil! = nil

    private func initFields() {
    self.logUtil = LogUtil.getInstance()
    self.NULL_WRITER = SimpleFileUtil.nullWriter()
    self.NULL_READER = SimpleFileUtil.nullReader()
    self.commonStrings = CommonStrings.getInstance()
    self.nullUtil = NullUtil.getInstance()
    self.streamUtil = StreamUtil.getInstance()
    }

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult open class func getInstance() -> SimpleFileUtil! {
        return SimpleFileUtil.instance
    }
    

    @discardableResult open class func nullOutputStream() -> OutputStream! {
        return NullOutputStream.NULL_OUTPUT_STREAM
    }
    

    @discardableResult open class func nullWriter() -> Writer! {
        return NullWriter.NULL_WRITER
    }
    

    @discardableResult open class func nullReader() -> Reader! {
        return NullReader.NULL_READER
    }
    

    @discardableResult open func loadFileAsList(_ inputStream: InputStream!, _ max: Int32, _ byteArray1: JArray<Int8>!) -> BasicArrayList! {
        return self.loadFileAsListReturnLine(inputStream, max, byteArray1, 0)
    }
    

    @discardableResult open func loadFileAsListReturnLine(_ inputStream: InputStream!, _ max: Int32, _ byteArray1: JArray<Int8>!, _ includeReturnLine: Int32) -> BasicArrayList! {
        let stringList: BasicArrayList! = BasicArrayListD()
        if (inputStream == nil) {
            return stringList
        }
        var byteArray: JArray<Int8>! = self.nullUtil.NULL_BYTE_ARRAY
        do {
            let outputStream2: ByteArrayOutputStream! = ByteArrayOutputStream(max)
            byteArray = self.streamUtil.getByteArray(inputStream, outputStream2, byteArray1)
            self.streamUtil.close(inputStream)
        } /* catch (Exception e): a thrown Java exception stops the program */
        if (byteArray == nil) {
            return stringList
        }
        let size: Int32 = byteArray.length
        var index: Int32 = 0
        var startIndex: Int32 = 0
        var returnLine: Int32 = 0
        while (index < size) {
            startIndex = index
            while (index < size &- 1 && Int32(byteArray[index]) != Int32(Int8(truncatingIfNeeded: UInt16(("\n" as Unicode.Scalar).value)))) {
                index &+= 1
            }
            if (includeReturnLine == 0) {
                if (index > 0 && Int32(byteArray[index &- 1]) == Int32(Int8(truncatingIfNeeded: UInt16(("\r" as Unicode.Scalar).value)))) {
                    returnLine = 1
                } else {
                    returnLine = 0
                }
            }
            let s: String! = JString.fromChars(byteArray, startIndex, (index &+ includeReturnLine &- returnLine &- startIndex))
            stringList.add(jBoxString(s))
            index &+= 1
        }
        return stringList
    }
    

    @discardableResult open func createStringFromArrayOfStrings(_ stringArray: JArray<String?>!) -> String! {
        let stringMaker: StringMaker! = StringMaker()
        let size: Int32 = stringArray.length
        do {
            var index: Int32 = 0
            while (index < size) {
                defer { index &+= 1 }
            stringMaker.append(stringArray[index])
            }
        }
        return stringMaker.toString()
    }
}

