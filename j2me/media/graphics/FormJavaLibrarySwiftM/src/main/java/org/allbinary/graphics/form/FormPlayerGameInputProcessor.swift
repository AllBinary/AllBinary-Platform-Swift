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
// package org.allbinary.graphics.form

import J2SEForSwiftLibrary
// import org.allbinary.canvas.Processor
// import org.allbinary.game.input.PlayerGameInputCompositeInterface

open class FormPlayerGameInputProcessor: Processor {
    fileprivate var playerGameInputCompositeInterface: PlayerGameInputCompositeInterface! = nil

    // Each class has its own field initializers
    private func initFields() {
    
    }
    

    public init(_ playerGameInputCompositeInterface: PlayerGameInputCompositeInterface!) {
        super.init()
        self.initFields()
        self.playerGameInputCompositeInterface = playerGameInputCompositeInterface
    }
    

    open override func process() {
        self.playerGameInputCompositeInterface.getPlayerGameInput().update()
    }
}

