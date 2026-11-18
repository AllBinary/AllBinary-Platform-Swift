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
// import org.allbinary.input.accelerometer.AccelerometerSensorFactory
// import org.allbinary.input.gyro.GyroSensorFactory
// import org.allbinary.logic.NullUtil
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.string.CommonStrings
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListD

open class AllBinarySensorManager: JObject {
    fileprivate static var instance: JObject! = NullUtil.getInstance().NULL_OBJECT
    public var logUtil: LogUtil! = nil
    fileprivate var commonStrings: CommonStrings! = nil
    public var ORIENTATION_SENSOR_INPUT: String! = nil
    public var ORIENTATION_TYPE: String! = nil
    fileprivate var list: BasicArrayList! = nil

    private func initFields() {
    self.logUtil = LogUtil.getInstance()
    self.commonStrings = CommonStrings.getInstance()
    self.ORIENTATION_SENSOR_INPUT = "Orientation Sensor Input"
    self.ORIENTATION_TYPE = "Orientation Type"
    self.list = BasicArrayListD()
    }
    

    @discardableResult open class func getInstance() -> AllBinarySensorManager! {
        if (AllBinarySensorManager.instance === NullUtil.getInstance().NULL_OBJECT) {
            AllBinarySensorManager.instance = AllBinarySensorManager()
        }
        return (AllBinarySensorManager.instance as! AllBinarySensorManager)
    }
    

    public override init() {
        super.init()
        self.initFields()
        do {
            GyroSensorFactory.`init`()
            AccelerometerSensorFactory.`init`()
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
    

    open func `init`() {
    }
    

    @discardableResult open func getSensorNamesList() -> BasicArrayList! {
        return self.list
    }
    

    open func shutdown() {
    }
}

