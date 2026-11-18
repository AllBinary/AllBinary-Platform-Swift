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
// package org.allbinary.game.layer.pickup

import J2SEForSwiftLibrary
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListD

open class CountedPickedUpLayerInterfaceFactoryPool: JObject {
    fileprivate static var SINGLETON: CountedPickedUpLayerInterfaceFactoryPool! = CountedPickedUpLayerInterfaceFactoryPool()
    fileprivate var list: BasicArrayList! = nil

    private func initFields() {
    
    }
    

    public override init() {
        super.init()
        self.initFields()
        self.list = BasicArrayListD()
    }
    

    @discardableResult open func getList() -> BasicArrayList! {
        return self.list
    }
    

    @discardableResult open class func getInstance() -> CountedPickedUpLayerInterfaceFactoryPool! {
        return CountedPickedUpLayerInterfaceFactoryPool.SINGLETON
    }
    

    open class func `init`() {
        CountedPickedUpLayerInterfaceFactoryPool.SINGLETON = CountedPickedUpLayerInterfaceFactoryPool()
    }
}

