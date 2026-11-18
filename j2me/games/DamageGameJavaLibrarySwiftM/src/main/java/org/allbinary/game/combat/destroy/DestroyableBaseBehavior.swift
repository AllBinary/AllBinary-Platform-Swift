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
// package org.allbinary.game.combat.destroy

import J2SEForSwiftLibrary
// import org.allbinary.string.CommonStrings

open class DestroyableBaseBehavior: JObject, DestroyableInterface {
    fileprivate static let instance: DestroyableBaseBehavior! = DestroyableBaseBehavior()

    public override init() {
        super.init()
    }
    

    @discardableResult open class func getInstance() -> DestroyableBaseBehavior! {
        return DestroyableBaseBehavior.instance
    }
    

    @discardableResult open func getName() -> String! {
        return JObject.className(self)
    }
    

    @discardableResult open func isDestroyed() -> Bool {
        jThrow(JException("Exception", CommonStrings.getInstance().NOT_IMPLEMENTED))
    }
    

    open func setDestroyed(_ destroyed: Bool) {
    }
}

