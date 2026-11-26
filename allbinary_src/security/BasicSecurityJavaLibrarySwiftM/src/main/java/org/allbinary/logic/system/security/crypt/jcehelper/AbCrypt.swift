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
// import java.security.Security
// import java.security.spec.KeySpec
// import javax.crypto.Cipher
// import javax.crypto.SecretKey
// import javax.crypto.SecretKeyFactory
// import org.allbinary.TsUtil
// import org.allbinary.init.crypt.jcehelper.CryptInterface
// import org.allbinary.logic.NullUtil
// import org.allbinary.logic.communication.log.PreLogUtil
// import org.allbinary.string.CommonStrings
// import org.bouncycastle.jce.provider.BouncyCastleProvider

open class AbCrypt: JObject, CryptInterface {
    fileprivate var tsUtil: TsUtil! = nil
    fileprivate var secretComposite: BaseSecretComposite! = nil
    fileprivate var algorithm: String! = nil

    private func initFields() {
    self.tsUtil = TsUtil.getInstance()
    self.secretComposite = BaseSecretComposite.NULL_SECRET_COMPOSITE
    
    }
    

    public init(_ algorithm: String!) {
        super.init()
        self.initFields()
        self.algorithm = algorithm
    }
    

    open func `init`(_ keyAsString: String!) {
        _ = CommonStrings.getInstance()
        do {
            do {
                Security.addProvider(BouncyCastleProvider())
            } /* catch (Exception e): a thrown Java exception stops the program */
            let key: JArray<Int8>! = self.tsUtil.getByteArray(keyAsString)
            let keySpec: KeySpec! = KeySpecFactory.getInstance().getInstance(self.algorithm, key)
            let keyFactory: SecretKeyFactory! = SecretKeyFactory.getInstance(self.algorithm)
            let secretKey: SecretKey! = keyFactory.generateSecret(keySpec)
            let cipher: Cipher! = Cipher.getInstance(self.algorithm)
            self.secretComposite = SecretComposite(secretKey, cipher, key)
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
    

    @discardableResult open func encrypt(_ array: JArray<Int8>!) -> JArray<Int8>! {
        do {
            return self.secretComposite.encrypt(array)
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
    

    @discardableResult open func decrypt(_ array: JArray<Int8>!) -> JArray<Int8>! {
        do {
            return self.secretComposite.decrypt(array)
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
}

