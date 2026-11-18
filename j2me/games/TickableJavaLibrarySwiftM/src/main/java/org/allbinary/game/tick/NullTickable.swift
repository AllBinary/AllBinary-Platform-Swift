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
// package org.allbinary.game.tick

import J2SEForSwiftLibrary
// import org.allbinary.layer.AllBinaryLayerManager

open class NullTickable: JObject, TickableInterface {
    fileprivate static let SINGLETON: NullTickable! = NullTickable()
    fileprivate var NAME: String! = nil

    private func initFields() {
    self.NAME = "NulLTickable"
    }

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult open class func getInstance() -> NullTickable! {
        return NullTickable.SINGLETON
    }
    

    open func processTick(_ allBinaryLayerManager: AllBinaryLayerManager!) {
    }
    

    @discardableResult open func getName() -> String! {
        return self.NAME
    }
}

