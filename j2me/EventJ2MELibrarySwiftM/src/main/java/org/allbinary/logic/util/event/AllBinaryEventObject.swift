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
// package org.allbinary.logic.util.event

import J2SEForSwiftLibrary
// import jsinterop.annotations.JsType
// import org.allbinary.logic.NullUtil
// import jsinterop.annotations.JsMethod
// import jsinterop.annotations.JsConstructor
// import jsinterop.annotations.JsProperty

open class AllBinaryEventObject: JObject {
    public static let NULL_EVENT: AllBinaryEventObject! = AllBinaryEventObject(NullUtil.getInstance().NULL_OBJECT)
    fileprivate var source: JObject! = nil

    private func initFields() {
    
    }
    

    public init(_ anyType: JObject!) {
        super.init()
        self.initFields()
        self.source = anyType
    }
    

    @discardableResult open func getSource() -> JObject! {
        return self.source
    }
    

    open func setSource(_ source: JObject!) {
        self.source = source
    }
}

