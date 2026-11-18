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
// package org.allbinary.logic.system.security.crypt.jcehelper

import J2SEForSwiftLibrary
// import org.allbinary.TsUtil
// import org.allbinary.init.crypt.jcehelper.CryptInterface
// import org.allbinary.logic.NullUtil
// import org.allbinary.logic.communication.log.PreLogUtil
// import org.allbinary.logic.java.byteutil.ByteUtil
// import org.allbinary.string.CommonStrings

open class BasicCrypt: JObject, CryptInterface {
    fileprivate var byteUtil: ByteUtil! = nil
    fileprivate var key: JArray<Int8>! = nil

    private func initFields() {
    self.byteUtil = ByteUtil.getInstance()
    
    }
    

    public init(_ keyAsString: String!) {
        super.init()
        self.initFields()
        var key: JArray<Int8>! = NullUtil.getInstance().NULL_BYTE_ARRAY
        do {
            key = TsUtil.getInstance().getByteArray(keyAsString)
        } /* catch (Exception e): a thrown Java exception stops the program */
        self.key = key
    }
    

    @discardableResult open func encrypt(_ array: JArray<Int8>!) -> JArray<Int8>! {
        do {
            return self.mutilate(array)
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
    

    @discardableResult open func decrypt(_ array: JArray<Int8>!) -> JArray<Int8>! {
        do {
            return self.mutilate(array)
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
    

    @discardableResult open func mutilate(_ array: JArray<Int8>!) -> JArray<Int8>! {
        var array: JArray<Int8>! = array
        var value: Int8 = 0
        do {
            var index: Int32 = 0
            while (index < self.key.length) {
                defer { index &+= 1 }
            value = self.key[index]
            array = self.byteUtil.xor(array, value)
            }
        }
        return array
    }
}

