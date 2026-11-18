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
// package org.allbinary.input.motion.gesture

import J2SEForSwiftLibrary
// import org.allbinary.game.input.Input
// import org.allbinary.game.input.InputFactory

public final class MotionGestureInput: Input {
    

    public override init(_ id: Int32, _ name: String!) {
        super.init(id, name)
        let inputFactory: InputFactory! = InputFactory.getInstance()
        inputFactory.add(self.getId(), self)
    }
}

