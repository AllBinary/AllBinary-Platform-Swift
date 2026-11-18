// Generated Code Do Not Modify
// package org.allbinary.animation

import J2SEForSwiftLibrary
// import org.allbinary.math.AngleFactory
// import org.allbinary.math.AngleInfo
// import org.allbinary.util.CircularIndexUtil

open class NullRotationAnimation: RotationAnimation {
    

    @discardableResult open class func createTotalAngle(_ angleInfo: AngleInfo!, _ totalAngle: Int16, _ animationBehavior: AnimationBehavior!) -> NullRotationAnimation! {
        return NullRotationAnimation(angleInfo, CircularIndexUtil.createInstance(Int32(totalAngle) / Int32(angleInfo.getAngleIncrementInfo().getAngleIncrement())), animationBehavior)
    }
    

    @discardableResult open class func createQuarter(_ animationBehavior: AnimationBehavior!) -> NullRotationAnimation! {
        return NullRotationAnimation(AngleInfo.getInstance(AngleFactory.getInstance().QUARTER_TOTAL_ANGLE), CircularIndexUtil.createInstance(4), animationBehavior)
    }
    

    public override init(_ angleInfo: AngleInfo!, _ circularIndexUtil: CircularIndexUtil!, _ animationBehavior: AnimationBehavior!) {
        super.init(angleInfo, circularIndexUtil, animationBehavior)
    }
    

    @discardableResult open override func getAnimationSize() -> Int32 {
        return 0
    }
}

