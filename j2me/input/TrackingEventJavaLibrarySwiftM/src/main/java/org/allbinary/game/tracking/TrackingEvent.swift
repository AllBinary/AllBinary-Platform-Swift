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
// package org.allbinary.game.tracking

import J2SEForSwiftLibrary
// import org.allbinary.layer.AllBinaryLayer
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.util.event.AllBinaryEventObject

open class TrackingEvent: AllBinaryEventObject {
    fileprivate var layerInterface: AllBinaryLayer! = nil

    // Each class has its own field initializers
    private func initFields() {
    self.layerInterface = AllBinaryLayer.NULL_ALLBINARY_LAYER
    }
    

    public override init(_ allBinaryLayerInterface: JObject!) {
        super.init(allBinaryLayerInterface)
        self.initFields()
        if (allBinaryLayerInterface !== TrackingEventHandler.getInstance()) {
            self.setLayerInterface((allBinaryLayerInterface as! AllBinaryLayer))
        }
    }
    

    open func `init`(_ anyType: JObject!) {
        self.setSource(anyType)
    }
    

    @discardableResult open func getLayerInterface() -> AllBinaryLayer! {
        return self.layerInterface
    }
    

    fileprivate func setLayerInterface(_ layerInterface: AllBinaryLayer!) {
        self.layerInterface = layerInterface
    }
    

    open func setLayerInterfaceForCircularStaticPool(_ layerInterface: AllBinaryLayer!) {
        self.layerInterface = layerInterface
    }
    

    @discardableResult open override func toString() -> String! {
        let stringBuffer: StringMaker! = StringMaker()
        stringBuffer.append("TrackingEvent: \n")
        stringBuffer.append("LayerInterface: ")
        stringBuffer.append(self.layerInterface.toString())
        return stringBuffer.toString()
    }
}

