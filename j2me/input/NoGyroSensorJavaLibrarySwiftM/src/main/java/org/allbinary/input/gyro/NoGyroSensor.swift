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
// import org.allbinary.input.AllBinarySensorListener
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.math.Orientation

open class NoGyroSensor: AllBinaryOrientationSensor, AllBinarySensorListener {
    

    public override init() {
        super.init()
        self.logUtil.putF(self.commonStrings.START, self, self.commonStrings.CONSTRUCTOR)
    }
    

    @discardableResult open override func getOrientation() -> Orientation! {
        return Orientation.NONE
    }
    

    open override func onSensorChange() {
    }
}

