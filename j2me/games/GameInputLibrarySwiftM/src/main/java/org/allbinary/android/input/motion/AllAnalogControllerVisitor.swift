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
// import org.allbinary.util.BasicArrayList

open class AllAnalogControllerVisitor: AnalogControllerVisitor {

    public override init() {
        super.init()
    }
    

    open override func process(_ allbinaryLayerManager: AllBinaryLayerManager!, _ analogLocationInputProcessor: AnalogLocationInputProcessor!) {
        let analogLocationInputList: BasicArrayList! = AnalogLocationInputFactory.getInstance().getList()
        var analogLocationInput: AnalogLocationInput! = nil
        do {
            var index: Int32 = analogLocationInputList.size() &- 1
            while (index >= 0) {
                defer { index &-= 1 }
            analogLocationInput = (analogLocationInputList.get(index) as! AnalogLocationInput)
            analogLocationInputProcessor.process(allbinaryLayerManager, analogLocationInput)
            }
        }
    }
}

