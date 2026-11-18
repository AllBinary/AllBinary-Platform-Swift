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
// package org.allbinary.game.collision

import J2SEForSwiftLibrary

open class CollidableNeverCollideBehaviorFactory: CollidableBaseBehaviorFactory {
    fileprivate static let instanceC: CollidableNeverCollideBehaviorFactory! = CollidableNeverCollideBehaviorFactory()
    fileprivate var instance: CollidableNeverCollideBehavior! = nil

    // Each class has its own field initializers
    private func initFields() {
    self.instance = CollidableNeverCollideBehavior(false)
    }

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult open class func getInstance() -> CollidableNeverCollideBehaviorFactory! {
        return CollidableNeverCollideBehaviorFactory.instanceC
    }
    

    @discardableResult open override func createBehavior() -> CollidableBaseBehavior! {
        return self.instance
    }
}

