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
// import java.security.spec.KeySpec
// import javax.crypto.spec.DESKeySpec
// import javax.crypto.spec.DESedeKeySpec
// import org.allbinary.TsUtil
// import org.allbinary.logic.communication.log.PreLogUtil
// import org.allbinary.string.CommonStrings

open class KeySpecFactory: JObject {
    fileprivate static let instance: KeySpecFactory! = KeySpecFactory()
    public var DES: String! = nil
    public var DESEDE: String! = nil
    public var BLOWFISH: String! = nil

    private func initFields() {
    self.DES = "DES"
    self.DESEDE = "DESede"
    self.BLOWFISH = "Blowfish"
    }
    

    @discardableResult open class func getInstance() -> KeySpecFactory! {
        return KeySpecFactory.instance
    }
    

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult open func getInstance(_ algorithm: String!, _ keyData: JArray<Int8>!) -> KeySpec! {
        do {
            let tsUtil: TsUtil! = TsUtil.getInstance()
            if (tsUtil.compareTo(algorithm, self.DES) == 0) {
                return DESKeySpec(keyData)
            } else if (tsUtil.compareTo(algorithm, self.DESEDE) == 0) {
                return DESedeKeySpec(keyData)
            } else {
                jThrow(JException("RuntimeException", ""))
            }
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
}

