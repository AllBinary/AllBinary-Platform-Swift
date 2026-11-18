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
// package org.allbinary.game.input

import J2SEForSwiftLibrary
// import org.allbinary.logic.string.StringUtil

open class PCGameKey: Input {
    

    public override init(_ keyCode: Int32, _ name: String!) {
        super.init(keyCode, name)
        let id: Int32 = self.getId()
        if (id >= 0) {
            InputFactory.getInstance().add(id, self)
        }
    }
    

    @discardableResult open override func toString() -> String! {
        return jstr("PCGameKey: ") + jstr(super.toString())
    }
    

    @discardableResult open class func getString(_ keyCode: Int32) -> String! {
        let input: Input! = InputFactory.getInstance().getInstanceById(keyCode)
        if (input != nil) {
            return input.getName()
        } else {
            return StringUtil.getInstance().EMPTY_STRING
        }
    }
}

