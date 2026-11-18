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
// package org.allbinary.game.layer

import J2SEForSwiftLibrary

open class BasicLayerPlacement: JObject {
    fileprivate var layerType: LayerPlacementType! = nil
    fileprivate var width: Int32 = 0
    fileprivate var height: Int32 = 0

    private func initFields() {
    
    
    
    }
    

    public init(_ layerType: LayerPlacementType!, _ width: Int32, _ height: Int32) {
        super.init()
        self.initFields()
        self.layerType = layerType
        self.width = width
        self.height = height
    }
    

    @discardableResult open func getWidth() -> Int32 {
        return self.width
    }
    

    @discardableResult open func getHeight() -> Int32 {
        return self.height
    }
    

    @discardableResult open func getLayerType() -> LayerPlacementType! {
        return self.layerType
    }
    

    open func setLayerType(_ layerType: LayerPlacementType!) {
        self.layerType = layerType
    }
}

