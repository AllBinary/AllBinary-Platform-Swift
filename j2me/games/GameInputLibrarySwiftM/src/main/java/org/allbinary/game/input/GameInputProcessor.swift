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
// import org.allbinary.game.input.event.GameKeyEvent
// import org.allbinary.layer.AllBinaryLayerManager

open class GameInputProcessor: JObject {
    fileprivate static let instance: GameInputProcessor! = GameInputProcessor()
    

    @discardableResult open class func getInstance() -> GameInputProcessor! {
        return GameInputProcessor.instance
    }
    

    public override init() {
        super.init()
    }
    

    open func processEvent(_ allbinaryLayerManager: AllBinaryLayerManager!, _ gameKeyEvent: GameKeyEvent!) {
    }
    

    open func processReleasedEvent(_ allbinaryLayerManager: AllBinaryLayerManager!, _ gameKeyEvent: GameKeyEvent!) {
    }
    

    open func processAnalog(_ allbinaryLayerManager: AllBinaryLayerManager!, _ gameKeyEvent: GameKeyEvent!, _ analogValue: Int32) {
    }
    

    open func process(_ allbinaryLayerManager: AllBinaryLayerManager!, _ keyAsInteger: Int32!) {
    }
    

    open func processReleased(_ allbinaryLayerManager: AllBinaryLayerManager!, _ keyAsInteger: Int32!) {
    }
}

