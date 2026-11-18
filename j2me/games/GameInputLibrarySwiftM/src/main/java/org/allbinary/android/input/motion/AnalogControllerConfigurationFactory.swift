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
// package org.allbinary.android.input.motion

import J2SEForSwiftLibrary
// import org.allbinary.android.input.motion.event.AnalogControllerConfigurationEvent
// import org.allbinary.android.input.motion.event.AnalogControllerConfigurationEventHandler
// import org.allbinary.logic.math.ScaleFactorFactory

open class AnalogControllerConfigurationFactory: JObject {
    fileprivate static let instance: AnalogControllerConfigurationFactory! = AnalogControllerConfigurationFactory()
    public var SCALE_FACTOR: Int32 = 0
    public var SCALE_VALUE: Int32 = 0
    fileprivate var available: Bool = false
    fileprivate var analogControllerConfigurationEvent: AnalogControllerConfigurationEvent! = nil

    private func initFields() {
    self.SCALE_FACTOR = ScaleFactorFactory.getInstance().DEFAULT_SCALE_FACTOR
    self.SCALE_VALUE = ScaleFactorFactory.getInstance().DEFAULT_SCALE_VALUE
    self.available = false
    self.analogControllerConfigurationEvent = AnalogControllerConfigurationEvent(self)
    }
    

    @discardableResult open class func getInstance() -> AnalogControllerConfigurationFactory! {
        return AnalogControllerConfigurationFactory.instance
    }
    

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult open func isAvailable() -> Bool {
        return self.available
    }
    

    open func setAvailable(_ available: Bool) {
        self.available = available
        AnalogControllerConfigurationEventHandler.getInstance().fireEvent(self.analogControllerConfigurationEvent)
    }
}

