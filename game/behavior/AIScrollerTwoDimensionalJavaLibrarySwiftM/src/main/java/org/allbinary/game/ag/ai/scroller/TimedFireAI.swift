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
// package org.allbinary.game.ag.ai.scroller

import J2SEForSwiftLibrary
// import javax.microedition.lcdui.Canvas
// import org.allbinary.game.ai.BasicAI
// import org.allbinary.game.input.GameInput
// import org.allbinary.layer.AllBinaryLayer
// import org.allbinary.layer.AllBinaryLayerManager
// import org.allbinary.logic.math.SmallIntegerSingletonFactory
// import org.allbinary.time.GameTickTimeDelayHelperFactory
// import org.allbinary.time.TimeDelayHelper

open class TimedFireAI: BasicAI {
    public static let TIME: Int32! = SmallIntegerSingletonFactory.getInstance().getAt(1)
    public var maxFireDelayTimeHelper: TimeDelayHelper! = nil
    fileprivate var delay: Int32 = 0

    // Each class has its own field initializers
    private func initFields() {
    self.maxFireDelayTimeHelper = TimeDelayHelper(0)
    
    }
    

    public init(_ delay: Int32, _ ownerLayerInterface: AllBinaryLayer!, _ gameInput: GameInput!) {
        super.init(ownerLayerInterface, gameInput)
        self.initFields()
        self.delay = delay
    }
    

    open override func processAI(_ allBinaryLayerManager: AllBinaryLayerManager!) {
        let timeFiredInterface: TimeFiredInterface! = (self.getOwnerLayerInterface() as Any as? TimeFiredInterface)
        if (self.maxFireDelayTimeHelper.isTime(GameTickTimeDelayHelperFactory.getInstance().startTime) && timeFiredInterface.getLastFireTime() &+ Int64(self.maxFireDelayTimeHelper.delay) < self.maxFireDelayTimeHelper.getStartTime()) {
            super.processKeyAI(Canvas.KEY_NUM1)
            self.maxFireDelayTimeHelper.delay = self.delay
        }
    }
}

