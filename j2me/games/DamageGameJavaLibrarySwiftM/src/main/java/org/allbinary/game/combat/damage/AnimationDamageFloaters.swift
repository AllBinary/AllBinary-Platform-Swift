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
// package org.allbinary.game.combat.damage

import J2SEForSwiftLibrary
// import javax.microedition.lcdui.Graphics
// import org.allbinary.animation.IndexedAnimation
// import org.allbinary.graphics.displayable.CanvasStrings
// import org.allbinary.layer.AllBinaryLayer
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.string.CommonStrings
// import org.allbinary.util.CircularIndexUtil
// import org.allbinary.view.ViewPosition
// import org.allbinary.view.ViewPositionBase

open class AnimationDamageFloaters: DamageFloaters {
    public var logUtil: LogUtil! = nil
    fileprivate var layerInterface: AllBinaryLayer! = nil
    fileprivate var animationInterfaceArray: JArray<IndexedAnimation?>! = nil
    fileprivate var circularIndexUtil: CircularIndexUtil! = nil
    fileprivate var dx: Int32 = 0
    fileprivate var dy: Int32 = 0

    // Each class has its own field initializers
    private func initFields() {
    self.logUtil = LogUtil.getInstance()
    
    
    
    
    
    }
    

    public init(_ layerInterface: AllBinaryLayer!, _ animationInterfaceArray: JArray<IndexedAnimation?>!, _ dx: Int32, _ dy: Int32) {
        super.init()
        self.initFields()
        self.animationInterfaceArray = animationInterfaceArray
        do {
            var index: Int32 = self.animationInterfaceArray.length &- 1
            while (index >= 0) {
                defer { index &-= 1 }
            self.animationInterfaceArray[index]!.setFrame(self.animationInterfaceArray[index]!.getSize() &- 1)
            }
        }
        self.layerInterface = layerInterface
        self.circularIndexUtil = CircularIndexUtil.createInstance(self.animationInterfaceArray.length)
        self.dx = dx
        self.dy = dy
    }
    

    open override func add(_ damage: Int32) {
        let i: Int32 = self.circularIndexUtil.getIndex()
        self.animationInterfaceArray[i]!.setFrame(0)
        self.circularIndexUtil.next()
    }
    

    open override func paint(_ graphics: Graphics!) {
        do {
            let viewPosition: ViewPositionBase! = self.layerInterface.getViewPosition()
            let x: Int32 = viewPosition.getX()
            let y: Int32 = viewPosition.getY()
            do {
                var index: Int32 = 0
                while (index < self.animationInterfaceArray.length) {
                    defer { index &+= 1 }
                let animationInterface: IndexedAnimation! = self.animationInterfaceArray[index]
                if (animationInterface.getFrame() < animationInterface.getAnimationSize() &- 1) {
                    let delta: Int32 = animationInterface.getFrame() &* 20
                    animationInterface.paintXY(graphics, x &+ self.dx, y &- delta &+ self.dy)
                    animationInterface.nextFrame()
                }
                }
            }
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
}

