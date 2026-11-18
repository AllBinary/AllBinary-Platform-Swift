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
// package org.allbinary.game.input

import J2SEForSwiftLibrary
// import org.allbinary.game.configuration.persistance.GamePersistanceStrings
// import org.allbinary.game.input.mapping.PersistentInputMapping
// import org.allbinary.input.motion.button.BasicTouchInputFactory
// import org.allbinary.input.motion.gesture.TouchMotionGestureFactory
// import org.allbinary.input.motion.gesture.TrackballMotionGestureFactory
// import org.allbinary.logic.system.security.licensing.AbeClientInformationInterface

open class PCGameInputMapping: PersistentInputMapping {
    

    public init() {
        super.init(GamePersistanceStrings.getInstance().SAVED_INPUT_CONFIGURATION_RECORD_ID)
    }
    

    open override func `init`(_ abeClientInformation: AbeClientInformationInterface!) {
        self.logUtil.putF(self.commonStrings.START, self, self.commonStrings.INIT)
        PCKeyFactory.getInstance()
        TouchMotionGestureFactory.getInstance()
        TrackballMotionGestureFactory.getInstance()
        BasicTouchInputFactory.getInstance()
        super.`init`(abeClientInformation)
        if (self.getTotalMapped() == 0 || self.isDefaultNew()) {
            self.getInputMapping().addMapping(self.getDefault())
            self.save(abeClientInformation)
        }
    }
    

    @discardableResult open override func isDelete(_ input: Input!) -> Bool {
        if (input === PCKeyFactory.getInstance().DEL) {
            return true
        } else {
            return false
        }
    }
    

    @discardableResult open override func isSystemInput(_ input: Input!) -> Bool {
        return false
    }
}

