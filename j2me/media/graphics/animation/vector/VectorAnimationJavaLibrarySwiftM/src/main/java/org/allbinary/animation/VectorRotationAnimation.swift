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
// import org.allbinary.direction.Direction
// import org.allbinary.graphics.color.BasicColor
// import org.allbinary.math.Angle
// import org.allbinary.math.AngleFactory
// import org.allbinary.math.AngleInfo

open class VectorRotationAnimation: VectorBaseRotationAnimation {
    

    public init(_ currentPoints: JArray<JArray<JArray<Int32>?>?>!, _ basicColor: BasicColor!, _ animationBehavior: AnimationBehavior!) {
        super.init(AngleInfo.getInstance(Int16(truncatingIfNeeded: (Int32(Int32(truncatingIfNeeded: AngleFactory.getInstance().TOTAL_ANGLE)) / currentPoints.length))), currentPoints, basicColor, animationBehavior)
        self.angleInfo.adjustAngle(self.getFrame())
    }
    

    open override func setFrameByDirection(_ direction: Direction!) {
        let angle: Angle! = self.directionUtil.getFrameAngle(direction)
        self.adjustFrameToAngle(angle)
    }
    

    open override func setFrameToAngle(_ angle: Angle!) {
        self.adjustFrameToAngle(angle)
    }
    

    open override func setFrame(_ index: Int32) {
        super.setFrame(index)
        self.angleInfo.adjustAngle(self.getFrame())
    }
    

    open override func adjustFrame(_ newAngle: Int16) {
        self.setFrame(self.frameUtil.getFrameForAngle(newAngle, Int32(truncatingIfNeeded: self.angleInfo.getAngleIncrementInfo().getAngleIncrement())))
    }
    

    open override func adjustFrameToAngle(_ newAngle: Angle!) {
        self.adjustFrame(newAngle.getValue())
    }
}

