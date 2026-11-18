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
// package org.allbinary.game.configuration.feature

import J2SEForSwiftLibrary

open class SensorFeatureFactory: JObject {
    fileprivate static let instance: SensorFeatureFactory! = SensorFeatureFactory()
    public var NO_ORIENTATION: SensorFeature! = nil
    public var ORIENTATION_SENSORS: SensorFeature! = nil
    public var SIMULATED_ORIENTATION_SENSORS: SensorFeature! = nil
    public var YAW: SensorFeature! = nil
    public var YAW_MINUS_RIGHT_PLUS_LEFT: SensorFeature! = nil
    public var YAW_MINUS_LEFT_PLUS_RIGHT: SensorFeature! = nil
    public var PITCH: SensorFeature! = nil
    public var ROLL: SensorFeature! = nil

    private func initFields() {
    self.NO_ORIENTATION = SensorFeature("No Orientation")
    self.ORIENTATION_SENSORS = SensorFeature("Orientation Sensors")
    self.SIMULATED_ORIENTATION_SENSORS = SensorFeature("Simulated Orientation Sensors")
    self.YAW = SensorFeature("Yaw")
    self.YAW_MINUS_RIGHT_PLUS_LEFT = SensorFeature("Yaw -Right +Left")
    self.YAW_MINUS_LEFT_PLUS_RIGHT = SensorFeature("Yaw -Left +Right ")
    self.PITCH = SensorFeature("Pitch")
    self.ROLL = SensorFeature("Roll")
    }
    

    @discardableResult open class func getInstance() -> SensorFeatureFactory! {
        return SensorFeatureFactory.instance
    }
    

    public override init() {
        super.init()
        self.initFields()
    }
}

