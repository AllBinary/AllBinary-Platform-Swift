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
// package org.allbinary.input.accelerometer

import J2SEForSwiftLibrary
// import org.allbinary.game.configuration.feature.Features
// import org.allbinary.game.configuration.feature.SensorFeatureFactory
// import org.allbinary.input.gyro.AllBinaryOrientationSensor

open class AccelerometerSensorFactory: JObject {
    fileprivate static var allBinaryAccelerometerSensor: AllBinaryOrientationSensor! = AllBinaryOrientationSensor.NULL_ALLBINARY_ORIENTATION_SENSOR

    public override init() {
        super.init()
    }
    

    open class func `init`() {
        let features: Features! = Features.getInstance()
        let sensorFeatureFactory: SensorFeatureFactory! = SensorFeatureFactory.getInstance()
        if (features.isFeature(sensorFeatureFactory.ORIENTATION_SENSORS)) {
            jThrow(JException("Exception", "No Orientation Sensors"))
        } else if (features.isFeature(sensorFeatureFactory.SIMULATED_ORIENTATION_SENSORS)) {
            jThrow(JException("Exception", "No Simulation Sensors"))
        } else if (features.isFeature(sensorFeatureFactory.NO_ORIENTATION)) {
            AccelerometerSensorFactory.allBinaryAccelerometerSensor = NoAccelerometerSensor()
        } else {
            jThrow(JException("Exception", "Not Such SensorFeature"))
        }
    }
    

    @discardableResult open class func getInstance() -> AllBinaryOrientationSensor! {
        return AccelerometerSensorFactory.allBinaryAccelerometerSensor
    }
}

