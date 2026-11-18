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
// package org.allbinary.logic.control.validate

import J2SEForSwiftLibrary
// import org.allbinary.logic.StdUtil
// import org.allbinary.logic.java.bool.BooleanFactory
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListUtil
// import org.allbinary.util.ABHashtable

open class ValidatorBase: JObject, ValidatorBaseInterface {
    fileprivate static let instance: ValidatorBase! = ValidatorBase()
    

    @discardableResult open class func getInstance() -> ValidatorBase! {
        return ValidatorBase.instance
    }
    

    public override init() {
        super.init()
    }
    

    @discardableResult open func isValid() -> Bool! {
        return BooleanFactory.getInstance().TRUE
    }
    

    @discardableResult open func validationInfo() -> String! {
        return StringUtil.getInstance().EMPTY_STRING
    }
    

    @discardableResult open func toHashtable() -> ABHashtable! {
        return StdUtil.getInstance().NULL_TABLE
    }
    

    @discardableResult open func toList() -> BasicArrayList! {
        return BasicArrayListUtil.getInstance().getImmutableInstance()
    }
}

