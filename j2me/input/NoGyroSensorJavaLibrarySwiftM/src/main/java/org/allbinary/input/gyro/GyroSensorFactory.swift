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
// package org.allbinary.input.gyro

import J2SEForSwiftLibrary

open class GyroSensorFactory: JObject {
    fileprivate static var allBinaryGyroSensor: AllBinaryOrientationSensor! = AllBinaryOrientationSensor.NULL_ALLBINARY_ORIENTATION_SENSOR

    public override init() {
        super.init()
    }
    

    open class func `init`() {
        GyroSensorFactory.allBinaryGyroSensor = NoGyroSensor()
    }
    

    @discardableResult open class func getInstance() -> AllBinaryOrientationSensor! {
        return GyroSensorFactory.allBinaryGyroSensor
    }
}

