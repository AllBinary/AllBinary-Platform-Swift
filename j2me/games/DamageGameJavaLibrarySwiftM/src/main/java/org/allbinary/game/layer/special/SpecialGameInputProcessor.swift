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
// package org.allbinary.game.layer.special

import J2SEForSwiftLibrary
// import org.allbinary.game.input.GameInputProcessor

open class SpecialGameInputProcessor: GameInputProcessor {
    public var collidableDestroyableDamageableLayer: CollidableDestroyableDamageableLayer! = nil

    // Each class has its own field initializers
    private func initFields() {
    
    }
    

    public init(_ collidableDestroyableDamageableLayer: CollidableDestroyableDamageableLayer!) {
        super.init()
        self.initFields()
        self.collidableDestroyableDamageableLayer = collidableDestroyableDamageableLayer
    }
}

