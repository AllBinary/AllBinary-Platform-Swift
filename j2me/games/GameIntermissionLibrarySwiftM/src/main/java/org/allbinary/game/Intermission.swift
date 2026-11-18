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
// package org.allbinary.game

import J2SEForSwiftLibrary
// import org.allbinary.time.TimeDelayHelper

open class Intermission: JObject, IntermissionInterface {
    fileprivate var enabled: Bool = false
    fileprivate var timeElapsedHelper: TimeDelayHelper! = nil
    fileprivate var intermissionEnableListener: IntermissionEnableListenerInterface! = nil

    private func initFields() {
    self.enabled = false
    self.timeElapsedHelper = TimeDelayHelper(0)
    self.intermissionEnableListener = NullIntermissionEnableListener.getInstance()
    }
    

    public override init() {
        super.init()
        self.initFields()
    }
    

    open func setListener(_ enableListener: IntermissionEnableListenerInterface!) {
        self.intermissionEnableListener = enableListener
    }
    

    @discardableResult open func getTimeDelayHelper() -> TimeDelayHelper! {
        return self.timeElapsedHelper
    }
    

    open func setEnabled(_ enabled: Bool) {
        self.enabled = enabled
        if (self.isEnabled()) {
            self.getTimeDelayHelper().setStartTimeTNT()
        }
        self.intermissionEnableListener.notifyIntermission(enabled)
    }
    

    @discardableResult open func isEnabled() -> Bool {
        return self.enabled
    }
}

