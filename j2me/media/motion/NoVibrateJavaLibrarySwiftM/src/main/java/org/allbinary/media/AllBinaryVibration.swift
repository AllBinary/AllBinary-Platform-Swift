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
// package org.allbinary.media

import J2SEForSwiftLibrary
// import org.allbinary.game.configuration.GameConfigurationCentral

open class AllBinaryVibration: AllBinaryVibrationME {
    fileprivate static var VIBRATION: AllBinaryVibrationME! = AllBinaryNoVibration.NO_VIBRATION
    

    public override init() {
        super.init()
    }
    

    @discardableResult open class func getInstance() -> AllBinaryVibrationME! {
        return AllBinaryVibration.VIBRATION
    }
    

    open class func `init`() {
        if (GameConfigurationCentral.getInstance().VIBRATION.getValue().intValue() == 0) {
            AllBinaryVibration.VIBRATION = AllBinaryNoVibration.NO_VIBRATION
        } else {
            AllBinaryVibration.VIBRATION = AllBinaryVibration()
        }
    }
    

    open override func vibrate(_ duration: Int32, _ type: Int32, _ volume: Int32) {
    }
}

