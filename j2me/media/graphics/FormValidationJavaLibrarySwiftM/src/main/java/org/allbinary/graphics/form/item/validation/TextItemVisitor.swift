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
// package org.allbinary.graphics.form.item.validation

import J2SEForSwiftLibrary
// import org.allbinary.logic.java.bool.BooleanFactory
// import org.allbinary.logic.util.visitor.Visitor

open class TextItemVisitor: Visitor {
    

    public override init() {
        super.init()
    }
    

    @discardableResult open override func visit(_ anyType: JObject!) -> JObject! {
        let value: String! = jUnboxString(anyType)
        if (JString.length(value) < 2) {
            return jBoxValue(BooleanFactory.getInstance().TRUE)
        } else {
            return jBoxValue(BooleanFactory.getInstance().FALSE)
        }
    }
}

