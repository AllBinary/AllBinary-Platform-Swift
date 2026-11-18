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

open class OrientationData: JObject {
    fileprivate static let SINGLETON: OrientationData! = OrientationData()
    public var ORIENTATION_SENSOR_INPUT: String! = nil
    public var ORIENTATION_TYPE: String! = nil

    private func initFields() {
    self.ORIENTATION_SENSOR_INPUT = "Orientation Sensor Input"
    self.ORIENTATION_TYPE = "Orientation Type"
    }
    

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult open class func getInstance() -> OrientationData! {
        return OrientationData.SINGLETON
    }
}

