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
// package org.allbinary.game.ag.ai

import J2SEForSwiftLibrary
// import javax.microedition.lcdui.Graphics
// import org.allbinary.bounds.BoundsVisitorInterface
// import org.allbinary.bounds.LayerBounds
// import org.allbinary.game.ai.BasicAI
// import org.allbinary.game.input.GameInput
// import org.allbinary.graphics.Rectangle
// import org.allbinary.layer.AllBinaryLayer
// import org.allbinary.layer.AllBinaryLayerManager

open class BoundBounceAI: BasicAI {
    public var currentRelativeAngle: Int32 = 0
    fileprivate var layerBounds: LayerBounds! = nil
    fileprivate var boundsVisitorInterface: BoundsVisitorInterface! = nil

    // Each class has its own field initializers
    private func initFields() {
    self.currentRelativeAngle = 0
    
    
    }
    

    public init(_ ownerLayerInterface: AllBinaryLayer!, _ gameInput: GameInput!, _ layerBounds: LayerBounds!, _ boundsVisitorInterface: BoundsVisitorInterface!) {
        super.init(ownerLayerInterface, gameInput)
        self.initFields()
        self.layerBounds = layerBounds
        self.boundsVisitorInterface = boundsVisitorInterface
    }
    

    open func paint(_ graphics: Graphics!) {
        let rectange: Rectangle! = self.layerBounds.getRectangleP()
        graphics.drawRect(rectange.getPoint().getX(), rectange.getPoint().getY(), rectange.getWidth(), rectange.getHeight())
    }
    

    open override func processAI(_ allBinaryLayerManager: AllBinaryLayerManager!) {
        self.layerBounds.visit(self.boundsVisitorInterface)
    }
}

