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
// package org.allbinary.game.ag.layer.weapon.mine

import J2SEForSwiftLibrary
// import org.allbinary.layer.AllBinaryLayer
// import org.allbinary.layer.AllBinaryLayerFactoryInterface
// import org.allbinary.view.ViewPositionFactoryInterface

open class MineLayerFactory: JObject, AllBinaryLayerFactoryInterface {
    fileprivate var viewPositionFactoryInterface: ViewPositionFactoryInterface! = nil

    private func initFields() {
    
    }
    

    public init(_ viewPositionFactoryInterface: ViewPositionFactoryInterface!) {
        super.init()
        self.initFields()
        self.viewPositionFactoryInterface = viewPositionFactoryInterface
    }
    

    @discardableResult open func getInstance() -> AllBinaryLayer! {
        return MineLayer(self.viewPositionFactoryInterface.getInstance())
    }
}

