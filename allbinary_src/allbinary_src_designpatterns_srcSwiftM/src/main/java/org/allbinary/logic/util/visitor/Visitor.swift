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
// package org.allbinary.logic.util.visitor

import J2SEForSwiftLibrary
// import org.allbinary.logic.NullUtil

open class Visitor: JObject, VisitorInterface {
    fileprivate static let instance: Visitor! = Visitor()
    public var nullUtil: NullUtil! = nil

    private func initFields() {
    self.nullUtil = NullUtil.getInstance()
    }

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult open func visit(_ anyType: JObject!) -> JObject! {
        return self.nullUtil.NULL_OBJECT
    }
    

    @discardableResult public static func getInstance() -> Visitor! {
        return Visitor.instance
    }
}

