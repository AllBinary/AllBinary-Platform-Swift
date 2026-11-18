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
// package org.allbinary.animation

import J2SEForSwiftLibrary
// import org.allbinary.graphics.color.BasicColor
// import org.allbinary.time.GameTickTimeDelayHelperFactory
// import org.allbinary.time.TimeDelayHelper

open class TimedVectorAnimation: VectorAnimation {
    fileprivate var timeElapsedHelper: TimeDelayHelper! = nil

    // Each class has its own field initializers
    private func initFields() {
    self.timeElapsedHelper = TimeDelayHelper(200)
    }
    

    public override init(_ currentPoints: JArray<JArray<JArray<Int32>?>?>!, _ basicColor: BasicColor!, _ animationBehavior: AnimationBehavior!) {
        super.init(currentPoints, basicColor, animationBehavior)
        self.initFields()
    }
    

    open override func nextFrame() {
        if (self.timeElapsedHelper.isTime(GameTickTimeDelayHelperFactory.getInstance().startTime)) {
            super.nextFrame()
        }
    }
}

