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
// package org.allbinary.logic.system.security.crypt

import J2SEForSwiftLibrary
// import org.allbinary.logic.NullUtil
// import org.allbinary.logic.communication.log.PreLogUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.logic.string.tokens.Tokenizer
// import org.allbinary.string.CommonSeps
// import org.allbinary.string.CommonStrings
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListD

open class DatabaseEncoder: JObject {
    

    public override init() {
        super.init()
    }
    

    @discardableResult open class func encode(_ value: JArray<Int8>!) -> String! {
        do {
            let array: JArray<Int8>! = value
            let stringBuffer: StringMaker! = StringMaker()
            do {
                var index: Int32 = 0
                while (index < array.length) {
                    defer { index &+= 1 }
                stringBuffer.append(Int8(truncatingIfNeeded: array[index]).toString())
                if (index < array.length &- 1) {
                    stringBuffer.append(CommonSeps.getInstance().SPACE)
                }
                }
            }
            return stringBuffer.toString()
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
    

    @discardableResult open class func decode(_ value: String!) -> JArray<Int8>! {
        do {
            let tokenizer: Tokenizer! = Tokenizer(CommonSeps.getInstance().SPACE)
            let vector: BasicArrayList! = tokenizer.getTokensFromString(value, BasicArrayListD())
            let size: Int32 = vector.size()
            let decode: JArray<Int8>! = JArray<Int8>(size, 0)
            var byteOfData: String! = nil
            do {
                var index: Int32 = 0
                while (index < size) {
                    defer { index &+= 1 }
                byteOfData = jUnboxString(vector.objectArray[index])
                decode[index] = Byte.parseByte(byteOfData)
                }
            }
            return decode
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
}

