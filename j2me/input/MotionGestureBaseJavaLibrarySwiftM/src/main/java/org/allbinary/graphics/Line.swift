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
// package org.allbinary.graphics

import J2SEForSwiftLibrary

open class Line: JObject {
    fileprivate var p1: GPoint! = nil
    fileprivate var p2: GPoint! = nil
    fileprivate var deltaX: Double = 0.0
    fileprivate var deltaY: Double = 0.0

    private func initFields() {
    
    
    self.deltaX = 0.0
    self.deltaY = 0.0
    }
    

    public init(_ p1: GPoint!, _ p2: GPoint!) {
        super.init()
        self.initFields()
        self.p1 = PointFactory.getInstance().ZERO_ZERO
        self.p2 = self.p1
        self.setP1(p1)
        self.setP2(p2)
    }
    

    @discardableResult open func getGradient() -> Double {
        return self.getDeltaY() / self.getDeltaX()
    }
    

    fileprivate func update() {
        self.deltaX = Double(self.getP1().getX()) - Double(self.getP2().getX())
        self.deltaY = Double(self.getP1().getY()) - Double(self.getP2().getY())
    }
    

    @discardableResult open func getDeltaX() -> Double {
        return self.deltaX
    }
    

    @discardableResult open func getDeltaY() -> Double {
        return self.deltaY
    }
    

    @discardableResult open func getP1() -> GPoint! {
        return self.p1
    }
    

    @discardableResult open func getP2() -> GPoint! {
        return self.p2
    }
    

    open func setP1(_ p1: GPoint!) {
        self.p1 = p1
        self.update()
    }
    

    open func setP2(_ p2: GPoint!) {
        self.p2 = p2
        self.update()
    }
}

