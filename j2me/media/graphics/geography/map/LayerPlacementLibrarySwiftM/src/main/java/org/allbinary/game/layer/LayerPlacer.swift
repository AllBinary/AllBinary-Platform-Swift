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
// import java.util.Enumeration
// import org.allbinary.graphics.GPoint
// import org.allbinary.graphics.PointFactory
// import org.allbinary.layer.AllBinaryLayer
// import org.allbinary.layer.LayerInterfaceFactory
// import org.allbinary.layer.LayerInterfaceVisitor
// import org.allbinary.util.ABHashtable
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.EnumerationUtil

open class LayerPlacer: JObject {
    fileprivate var enumerationUtil: EnumerationUtil! = nil
    public var layerInterfaceVisitor: LayerInterfaceVisitor! = nil
    fileprivate var dimension: GPoint! = nil

    private func initFields() {
    self.enumerationUtil = EnumerationUtil.getInstance()
    
    
    }
    

    public init(_ layerInterfaceVisitor: LayerInterfaceVisitor!, _ dimension: GPoint!) {
        super.init()
        self.initFields()
        self.layerInterfaceVisitor = layerInterfaceVisitor
        self.dimension = dimension
    }
    

    open func processList(_ list: BasicArrayList!) {
        let size: Int32 = list.size()
        var layerPlacementInterface: LayerPlacementInterface! = nil
        do {
            var index: Int32 = 0
            while (index < size) {
                defer { index &+= 1 }
            layerPlacementInterface = (list.objectArray[index] as Any as? LayerPlacementInterface)
            self.process(layerPlacementInterface)
            }
        }
    }
    

    open func process(_ layerPlacementInterface: LayerPlacementInterface!) {
        let relativePoint: GPoint! = self.getPoint(layerPlacementInterface)
        let layerInterfaceFactory: LayerInterfaceFactory! = LayerInterfaceFactory.getInstance()
        let hashtable: ABHashtable! = layerPlacementInterface.getInstance()
        let enumeration: Enumeration! = hashtable.keys()
        var point: GPoint! = nil
        var layerHashtable: ABHashtable! = nil
        var x: Int32 = 0
        var y: Int32 = 0
        var z: Int32 = 0
        var layerInterface: AllBinaryLayer! = nil
        while (self.enumerationUtil.hasMoreElements(enumeration)) {
            point = (self.enumerationUtil.nextElement(enumeration) as! GPoint)
            layerHashtable = (hashtable.get(point) as! ABHashtable)
            x = point.getX() &+ relativePoint.getX()
            y = point.getY() &+ relativePoint.getY()
            z = point.getZ() &+ relativePoint.getZ()
            layerInterface = layerInterfaceFactory.getNexInstance(layerHashtable, x, y, z)
            self.layerInterfaceVisitor.visit(layerInterface)
        }
    }
    

    @discardableResult open func getPoint(_ layerPlacementInterface: LayerPlacementInterface!) -> GPoint! {
        let pointFactory: PointFactory! = PointFactory.getInstance()
        let layerPlacementType: LayerPlacementType! = layerPlacementInterface.getLayerType()
        if (layerPlacementType === LayerPlacementTypeFactory.getInstance().MAP) {
            let width: Int32 = layerPlacementInterface.getWidth()
            let height: Int32 = layerPlacementInterface.getHeight()
            let x: Int32 = ((self.dimension.getX() &- width) / 2)
            let y: Int32 = ((self.dimension.getY() &- height) / 2)
            return pointFactory.createXY(x, y)
        } else if (layerPlacementType === LayerPlacementTypeFactory.getInstance().UP) {
            let width: Int32 = layerPlacementInterface.getWidth()
            let height: Int32 = layerPlacementInterface.getHeight()
            let x: Int32 = ((self.dimension.getX() &- width) / 2)
            let y: Int32 = -height
            return pointFactory.createXY(x, y)
        } else {
            jThrow(JException("Exception", "PlacementType Not Recognized"))
        }
    }
}

