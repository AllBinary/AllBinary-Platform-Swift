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
// import org.allbinary.game.input.event.GameKeyEvent
// import org.allbinary.layer.AllBinaryLayerManager

open class SpecialStrafeLeftGameInputInterfaceProcessor: SpecialGameInputInterfaceProcessor {
    

    public override init(_ collidableDestroyableDamageableLayer: SpecialGameInputInterface!) {
        super.init(collidableDestroyableDamageableLayer)
    }
    

    open override func processEvent(_ allbinaryLayerManager: AllBinaryLayerManager!, _ gameKeyEvent: GameKeyEvent!) {
        self.specialGameInputInterface.strafeLeft()
    }
}

