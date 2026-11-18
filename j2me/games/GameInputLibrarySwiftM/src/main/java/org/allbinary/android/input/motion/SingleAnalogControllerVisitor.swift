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
// import org.allbinary.game.input.analog.AnalogLocationInput
// import org.allbinary.game.input.analog.AnalogLocationInputFactory
// import org.allbinary.layer.AllBinaryLayerManager

open class SingleAnalogControllerVisitor: AnalogControllerVisitor {
    fileprivate var playerInputId: Int32 = 0

    // Each class has its own field initializers
    private func initFields() {
    
    }
    

    public init(_ playerInputId: Int32) {
        super.init()
        self.initFields()
        self.playerInputId = playerInputId
    }
    

    open override func process(_ allbinaryLayerManager: AllBinaryLayerManager!, _ analogLocationInputProcessor: AnalogLocationInputProcessor!) {
        let analogLocationInput: AnalogLocationInput! = AnalogLocationInputFactory.getInstance().getInstanceForPlayer(self.playerInputId)
        analogLocationInputProcessor.process(allbinaryLayerManager, analogLocationInput)
    }
}

