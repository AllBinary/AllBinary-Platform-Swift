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
// import javax.microedition.lcdui.Canvas
// import org.allbinary.game.input.GameInputProcessor

open class AnalogInputBuilder: JObject {
    fileprivate static let instance: AnalogInputBuilder! = AnalogInputBuilder()

    public override init() {
        super.init()
    }
    

    @discardableResult open class func getInstance() -> AnalogInputBuilder! {
        return AnalogInputBuilder.instance
    }
    

    open func disable(_ inputProcessorArray: JArray<GameInputProcessor?>!, _ collidableDestroyableDamageableLayer: CollidableDestroyableDamageableLayer!) {
        inputProcessorArray[Canvas.UP] = SpecialUpGameInputProcessor(collidableDestroyableDamageableLayer)
        inputProcessorArray[Canvas.DOWN] = SpecialDownGameInputProcessor(collidableDestroyableDamageableLayer)
        inputProcessorArray[Canvas.RIGHT] = SpecialRightGameInputProcessor(collidableDestroyableDamageableLayer)
        inputProcessorArray[Canvas.LEFT] = SpecialLeftGameInputProcessor(collidableDestroyableDamageableLayer)
        inputProcessorArray[Canvas.KEY_NUM0] = Special1GameInputProcessor(collidableDestroyableDamageableLayer)
        inputProcessorArray[Canvas.KEY_NUM5] = Special3GameInputProcessor(collidableDestroyableDamageableLayer)
    }
    

    open func enable(_ inputProcessorArray: JArray<GameInputProcessor?>!, _ collidableDestroyableDamageableLayer: CollidableDestroyableDamageableLayer!) {
        inputProcessorArray[Canvas.UP] = SpecialAnalogUpGameInputProcessor(collidableDestroyableDamageableLayer)
        inputProcessorArray[Canvas.DOWN] = SpecialAnalogDownGameInputProcessor(collidableDestroyableDamageableLayer)
        inputProcessorArray[Canvas.RIGHT] = SpecialAnalogRightGameInputProcessor(collidableDestroyableDamageableLayer)
        inputProcessorArray[Canvas.LEFT] = SpecialAnalogLeftGameInputProcessor(collidableDestroyableDamageableLayer)
        inputProcessorArray[Canvas.KEY_NUM0] = SpecialAnalogLeftTriggerGameInputProcessor(collidableDestroyableDamageableLayer)
        inputProcessorArray[Canvas.KEY_NUM5] = SpecialAnalogRightTriggerGameInputProcessor(collidableDestroyableDamageableLayer)
    }
}

