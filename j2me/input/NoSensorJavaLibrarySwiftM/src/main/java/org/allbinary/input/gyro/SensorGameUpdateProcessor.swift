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
// import org.allbinary.input.AllBinarySensor
// import org.allbinary.input.NoAllBinarySensor

open class SensorGameUpdateProcessor: JObject {
    fileprivate var inputSensor: AllBinarySensor! = nil

    private func initFields() {
    self.inputSensor = NoAllBinarySensor.getInstance()
    }

    public override init() {
        super.init()
        self.initFields()
    }
    

    open func setInputSensor(_ inputSensor: AllBinarySensor!) {
        self.inputSensor = inputSensor
    }
    

    @discardableResult open func getInputSensor() -> AllBinarySensor! {
        return self.inputSensor
    }
    

    open func process(_ anyType: JObject!) {
    }
    

    open func sendNotifications(_ anyType: JObject!) {
    }
    

    @discardableResult open func isAnySensor() -> Bool {
        if (self.inputSensor === NoAllBinarySensor.getInstance()) {
            return false
        } else {
            return true
        }
    }
    

    open func setNoSensors() {
        self.setInputSensor(NoAllBinarySensor.getInstance())
    }
}

