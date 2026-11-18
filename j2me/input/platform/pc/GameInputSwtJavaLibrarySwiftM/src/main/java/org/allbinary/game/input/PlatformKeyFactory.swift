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
// import org.allbinary.logic.NullUtil

open class PlatformKeyFactory: JObject {
    fileprivate static var instance: JObject! = NullUtil.getInstance().NULL_OBJECT

    public override init() {
        super.init()
    }
    

    @discardableResult open class func getInstance() -> PlatformKeyFactory! {
        if (PlatformKeyFactory.instance === NullUtil.getInstance().NULL_OBJECT) {
            PlatformKeyFactory.instance = PlatformKeyFactory()
        }
        return (PlatformKeyFactory.instance as! PlatformKeyFactory)
    }
    

    @discardableResult open func getString(_ keyCode: Int32) -> String! {
        return PCGameKey.getString(keyCode)
    }
    

    @discardableResult open func isSubmission(_ input: Input!) -> Bool {
        return PCKeyFactory.getInstance().isSubmission(input)
    }
    

    @discardableResult open func isDelete(_ input: Input!) -> Bool {
        return PCKeyFactory.getInstance().isDelete(input)
    }
    

    @discardableResult open func isBackSpace(_ input: Input!) -> Bool {
        return PCKeyFactory.getInstance().isBackSpace(input)
    }
    

    @discardableResult open func isUp(_ input: Input!) -> Bool {
        return PCKeyFactory.getInstance().isUp(input)
    }
    

    @discardableResult open func isDown(_ input: Input!) -> Bool {
        return PCKeyFactory.getInstance().isDown(input)
    }
    

    @discardableResult open func isEnter(_ input: Input!) -> Bool {
        return PCKeyFactory.getInstance().isEnter(input)
    }
    

    @discardableResult open func isLeft(_ input: Input!) -> Bool {
        return PCKeyFactory.getInstance().isLeft(input)
    }
    

    @discardableResult open func isRight(_ input: Input!) -> Bool {
        return PCKeyFactory.getInstance().isRight(input)
    }
}

