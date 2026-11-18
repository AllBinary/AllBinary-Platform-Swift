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
// package org.allbinary.animation.image

import J2SEForSwiftLibrary
// import javax.microedition.lcdui.Image
// import org.allbinary.math.AngleInfo

open class ImageArrayRotationAnimationInfo: JObject {
    fileprivate var imageArray: JArray<Image?>! = nil
    fileprivate var angleIncrement: Int32 = 0
    fileprivate var totalAngle: Int32 = 0
    fileprivate var dx: Int32 = 0
    fileprivate var dy: Int32 = 0

    private func initFields() {
    
    
    
    
    
    }
    

    public init(_ imageArray: JArray<Image?>!, _ angleIncrement: Int32, _ totalAngle: Int32, _ dx: Int32, _ dy: Int32) {
        super.init()
        self.initFields()
        self.imageArray = imageArray
        self.angleIncrement = angleIncrement
        self.totalAngle = totalAngle
        self.dx = dx
        self.dy = dy
    }
    

    open func setImageArray(_ imageArray: JArray<Image?>!) {
        self.imageArray = imageArray
    }
    

    @discardableResult open func getImageArray() -> JArray<Image?>! {
        return self.imageArray
    }
    

    @discardableResult open func getAngleInfoP() -> AngleInfo! {
        return AngleInfo.getInstance(Int16(truncatingIfNeeded: self.angleIncrement))
    }
    

    open func setTotalAngle(_ totalAngle: Int32) {
        self.totalAngle = totalAngle
    }
    

    @discardableResult open func getTotalAngle() -> Int32 {
        return self.totalAngle
    }
    

    open func setDx(_ dx: Int32) {
        self.dx = dx
    }
    

    @discardableResult open func getDx() -> Int32 {
        return self.dx
    }
    

    open func setDy(_ dy: Int32) {
        self.dy = dy
    }
    

    @discardableResult open func getDy() -> Int32 {
        return self.dy
    }
}

