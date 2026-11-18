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
// import javax.microedition.lcdui.Graphics
// import javax.microedition.lcdui.Image
// import org.allbinary.animation.AnimationBehavior
// import org.allbinary.util.CircularIndexUtil

open class ImageSegmentAnimation: ImageAnimation {
    fileprivate var startX: Int32 = 0
    fileprivate var startY: Int32 = 0
    fileprivate var drawWidth: Int32 = 0
    fileprivate var drawHeight: Int32 = 0
    fileprivate var circularIndexUtil: CircularIndexUtil! = nil
    fileprivate var sequenceArray: JArray<Int32>! = nil

    // Each class has its own field initializers
    private func initFields() {
    
    
    
    
    
    
    }
    

    public init(_ image: Image!, _ sequenceArray: JArray<Int32>!, _ animationBehavior: AnimationBehavior!) {
        super.init(image, animationBehavior)
        self.initFields()
        self.startX = 0
        self.startY = 0
        self.drawWidth = self.getImage().getWidth()
        self.drawHeight = self.getImage().getHeight()
        self.circularIndexUtil = CircularIndexUtil.createInstance(self.drawHeight)
        self.sequenceArray = sequenceArray
    }
    

    open override func nextFrame() {
        self.circularIndexUtil.next()
    }
    

    open override func previousFrame() {
        self.circularIndexUtil.previous()
    }
    

    open override func setFrame(_ index: Int32) {
        self.circularIndexUtil.setIndex(index)
    }
    

    @discardableResult open override func getFrame() -> Int32 {
        return self.circularIndexUtil.getIndex()
    }
    

    @discardableResult open override func getSize() -> Int32 {
        return self.circularIndexUtil.getSize()
    }
    

    open override func setSequence(_ sequenceArray: JArray<Int32>!) {
        self.sequenceArray = sequenceArray
    }
    

    @discardableResult open override func getSequence() -> JArray<Int32>! {
        return self.sequenceArray
    }
    

    open override func paintXY(_ graphics: Graphics!, _ x: Int32, _ y: Int32) {
    }
    

    @discardableResult open func getStartX() -> Int32 {
        return self.startX
    }
    

    open func setStartX(_ startX: Int32) {
        self.startX = startX
    }
    

    @discardableResult open func getStartY() -> Int32 {
        return self.startY
    }
    

    open func setStartY(_ startY: Int32) {
        self.startY = startY
    }
    

    @discardableResult open func getDrawWidth() -> Int32 {
        return self.drawWidth
    }
    

    open func setDrawWidth(_ drawWidth: Int32) {
        self.drawWidth = drawWidth
    }
    

    @discardableResult open func getDrawHeight() -> Int32 {
        return self.drawHeight
    }
    

    open func setDrawHeight(_ drawHeight: Int32) {
        self.drawHeight = drawHeight
    }
}

