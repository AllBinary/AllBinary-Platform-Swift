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
// package org.allbinary.logic.math

import J2SEForSwiftLibrary
// import org.allbinary.string.CommonPhoneStrings
// import org.allbinary.string.CommonSeps

open class MathData: JObject {
    fileprivate static let instance: MathData! = MathData()
    public var EQUALS: String! = nil
    public var PLUS: String! = nil
    public var GREATER_THAN: String! = nil
    public var MINUS: String! = nil
    public var DIVIDE: String! = nil
    public var MULTIPLY: String! = nil

    private func initFields() {
    
    self.PLUS = "+"
    self.GREATER_THAN = ">"
    
    
    
    }
    

    @discardableResult public static func getInstance() -> MathData! {
        return MathData.instance
    }
    

    public override init() {
        super.init()
        self.initFields()
        let commonSeps: CommonSeps! = CommonSeps.getInstance()
        self.EQUALS = commonSeps.EQUALS
        self.MINUS = commonSeps.DASH
        self.DIVIDE = commonSeps.FORWARD_SLASH
        self.MULTIPLY = CommonPhoneStrings.getInstance().STAR
    }
}

