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
// package org.allbinary.input

import J2SEForSwiftLibrary
// import org.allbinary.logic.communication.log.ForcedLogUtil
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.string.CommonStrings

open class AllBinarySensor: JObject, AllBinarySensorListener {
    public static let NULL_ALLBINARY_SENSOR: AllBinarySensor! = AllBinarySensor()
    fileprivate static var max: Int32 = 100
    public var logUtil: LogUtil! = nil
    public var commonStrings: CommonStrings! = nil

    private func initFields() {
    self.logUtil = LogUtil.getInstance()
    self.commonStrings = CommonStrings.getInstance()
    }
    

    public override init() {
        super.init()
        self.initFields()
    }
    

    open func `init`() {
    }
    

    open func update() {
    }
    

    open class func setMax(_ max: Int32) {
        AllBinarySensor.max = max
    }
    

    @discardableResult open class func getMax() -> Int32 {
        return AllBinarySensor.max
    }
    

    @discardableResult open func getId() -> Int32 {
        return AllBinarySensor.getMax()
    }
    

    open func shutdown() {
        self.logUtil.putF(self.commonStrings.START, self, "shutdown")
    }
    

    open func onSensorChange() {
        ForcedLogUtil.log(self.commonStrings.NOT_IMPLEMENTED, self)
    }
}

