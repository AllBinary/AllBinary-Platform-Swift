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
// package org.allbinary.game.combat.destroy.event

import J2SEForSwiftLibrary
// import org.allbinary.game.displayable.canvas.AllBinaryGameCanvas
// import org.allbinary.logic.util.event.AllBinaryEventObject
// import org.allbinary.logic.util.event.AllBinaryEventObjectFactoryInterface

open class DestroyEventFactory: JObject, AllBinaryEventObjectFactoryInterface {
    fileprivate var combatGameCanvas: AllBinaryGameCanvas! = nil

    private func initFields() {
    
    }
    

    public init(_ combatGameCanvas: AllBinaryGameCanvas!) {
        super.init()
        self.initFields()
        self.combatGameCanvas = combatGameCanvas
    }
    

    @discardableResult open func getInstance() -> AllBinaryEventObject! {
        return DestroyedEvent(self.combatGameCanvas)
    }
}

