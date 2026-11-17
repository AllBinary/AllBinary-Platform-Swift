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
// package org.allbinary.logic.io.path

import J2SEForSwiftLibrary
// import org.allbinary.logic.io.file.FilePathData
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.string.CommonSeps

open class AbPathData: JObject {
    fileprivate static let instance: AbPathData! = AbPathData()
    public var EXTENSION_SEP: String! = nil
    public var SEPARATORCHAR: UInt16 = 0
    public var SEPARATOR: String! = nil

    private func initFields() {
    self.EXTENSION_SEP = CommonSeps.getInstance().PERIOD
    self.SEPARATORCHAR = UInt16(("/" as Unicode.Scalar).value)
    self.SEPARATOR = CommonSeps.getInstance().FORWARD_SLASH
    }
    

    @discardableResult public static func getInstance() -> AbPathData! {
        return AbPathData.instance
    }
    

    public override init() {
        super.init()
        self.initFields()
    }
}

