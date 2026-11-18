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
// package org.allbinary.math

import J2SEForSwiftLibrary
// import org.allbinary.graphics.GPoint
// import org.allbinary.layer.AllBinaryLayer
// import org.allbinary.logic.math.MathUtil

open class LayerDistanceUtil: JObject {
    fileprivate static let instance: LayerDistanceUtil! = LayerDistanceUtil()
    fileprivate var mathUtil: MathUtil! = nil

    private func initFields() {
    self.mathUtil = MathUtil.getInstance()
    }

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult open class func getInstance() -> LayerDistanceUtil! {
        return LayerDistanceUtil.instance
    }
    

    @discardableResult open func getDistance(_ layerInterface: AllBinaryLayer!, _ layerInterface2: AllBinaryLayer!) -> Int32 {
        let dx: Int32 = (layerInterface.getXP() &+ layerInterface.getHalfWidth()) &- (layerInterface2.getXP() &+ layerInterface2.getHalfWidth())
        let dy: Int32 = (layerInterface.getYP() &+ layerInterface.getHalfHeight()) &- (layerInterface2.getYP() &+ layerInterface2.getHalfHeight())
        return self.mathUtil.sqrt((dx &* dx) &+ (dy &* dy))
    }
    

    @discardableResult open func getDistance3D(_ layerInterface: AllBinaryLayer!, _ layerInterface2: AllBinaryLayer!) -> Int32 {
        let dx: Int32 = (layerInterface.getXP() &+ layerInterface.getHalfWidth()) &- (layerInterface2.getXP() &+ layerInterface2.getHalfWidth())
        let dy: Int32 = (layerInterface.getYP() &+ layerInterface.getHalfHeight()) &- (layerInterface2.getYP() &+ layerInterface2.getHalfHeight())
        let dz: Int32 = (layerInterface.getZP() &+ layerInterface.getHalfDepth()) &- (layerInterface2.getZP() &+ layerInterface2.getHalfDepth())
        return self.mathUtil.sqrt((dx &* dx) &+ (dy &* dy) &+ (dz &* dz))
    }
    

    @discardableResult open func getDistanceAt(_ layerInterface: AllBinaryLayer!, _ point: GPoint!) -> Int32 {
        let dx: Int32 = layerInterface.getXP() &- point.getX()
        let dy: Int32 = layerInterface.getYP() &- point.getY()
        return self.mathUtil.sqrt((dx &* dx) &+ (dy &* dy))
    }
}

