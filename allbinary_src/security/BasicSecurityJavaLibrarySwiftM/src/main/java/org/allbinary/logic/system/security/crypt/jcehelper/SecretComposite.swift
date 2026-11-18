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
// package org.allbinary.logic.system.security.crypt.jcehelper

import J2SEForSwiftLibrary
// import javax.crypto.Cipher
// import javax.crypto.SecretKey
// import org.allbinary.logic.java.byteutil.ByteUtil

open class SecretComposite: BaseSecretComposite {
    fileprivate var byteUtil: ByteUtil! = nil
    fileprivate var cipher: Cipher! = nil
    fileprivate var secretKey: SecretKey! = nil
    fileprivate var key: JArray<Int8>! = nil

    // Each class has its own field initializers
    private func initFields() {
    self.byteUtil = ByteUtil.getInstance()
    
    
    
    }
    

    public init(_ secretKey: SecretKey!, _ cipher: Cipher!, _ key: JArray<Int8>!) {
        super.init()
        self.initFields()
        self.secretKey = secretKey
        self.cipher = cipher
        self.key = key
    }
    

    @discardableResult open override func encrypt(_ array: JArray<Int8>!) -> JArray<Int8>! {
        var array: JArray<Int8>! = array
        array = self.mutilate(array)
        self.cipher.`init`(Cipher.ENCRYPT_MODE, self.secretKey)
        return self.cipher.doFinal(array)
    }
    

    @discardableResult open override func decrypt(_ array: JArray<Int8>!) -> JArray<Int8>! {
        self.cipher.`init`(Cipher.DECRYPT_MODE, self.secretKey)
        return self.mutilate(self.cipher.doFinal(array))
    }
    

    @discardableResult fileprivate func mutilate(_ array: JArray<Int8>!) -> JArray<Int8>! {
        var array: JArray<Int8>! = array
        do {
            var index: Int32 = 0
            while (index < self.key.length) {
                defer { index &+= 1 }
            let value: Int8 = self.key[index]
            if (Int32(Int32(truncatingIfNeeded: value)) < 8 && Int32(Int32(truncatingIfNeeded: value)) > 0) {
                array = self.byteUtil.xorByte(array, Int32(truncatingIfNeeded: value))
            }
            }
        }
        return array
    }
}

