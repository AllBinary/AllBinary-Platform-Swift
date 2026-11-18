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
// package org.allbinary.layer.event

import J2SEForSwiftLibrary
// import org.allbinary.layer.AllBinaryLayer
// import org.allbinary.layer.LayerManager
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.util.event.AllBinaryEventObject

open class LayerManagerEvent: AllBinaryEventObject {
    fileprivate var layerInterface: AllBinaryLayer! = nil
    fileprivate var crud: String! = nil

    // Each class has its own field initializers
    private func initFields() {
    self.layerInterface = AllBinaryLayer.NULL_ALLBINARY_LAYER
    
    }
    

    public init(_ layerManager: LayerManager!, _ crud: String!) {
        super.init(layerManager)
        self.initFields()
        self.crud = crud
    }
    

    @discardableResult open func getLayerInterface() -> AllBinaryLayer! {
        return self.layerInterface
    }
    

    open func setLayerInterface(_ layerInterface: AllBinaryLayer!) {
        self.layerInterface = layerInterface
    }
    

    @discardableResult open override func toString() -> String! {
        let stringBuffer: StringMaker! = StringMaker()
        stringBuffer.append("LayerManagerEvent: \n")
        stringBuffer.append("LayerInterface: ")
        stringBuffer.append(self.getLayerInterface().toString())
        stringBuffer.append("\nCRUD: ")
        stringBuffer.append(self.crud)
        return stringBuffer.toString()
    }
}

