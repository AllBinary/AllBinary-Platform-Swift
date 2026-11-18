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

open class AngleIncrementInfoFactory: JObject {
    fileprivate static let instance: AngleIncrementInfoFactory! = AngleIncrementInfoFactory()
    fileprivate var angleIncrementInfo: JArray<AngleIncrementInfo?>! = nil

    private func initFields() {
    self.angleIncrementInfo = JArray<AngleIncrementInfo?>(Int32(truncatingIfNeeded: AngleFactory.getInstance().TOTAL_ANGLE), nil)
    }

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult open class func getInstance() -> AngleIncrementInfoFactory! {
        return AngleIncrementInfoFactory.instance
    }
    

    @discardableResult open func getAt(_ angleIncrement: Int16) -> AngleIncrementInfo! {
        let halfAngleIncrement: Int32 = (Int32(truncatingIfNeeded: angleIncrement) >> 1)
        var angleIncrementInfo: AngleIncrementInfo! = nil
        let angleIncrementInfoCanBeNull: AngleIncrementInfo! = self.angleIncrementInfo[halfAngleIncrement]
        if (angleIncrementInfoCanBeNull == nil) {
            angleIncrementInfo = AngleIncrementInfo(angleIncrement)
            self.angleIncrementInfo[halfAngleIncrement] = angleIncrementInfo
            return angleIncrementInfo
        } else {
            angleIncrementInfo = angleIncrementInfoCanBeNull
        }
        return angleIncrementInfo
    }
}

