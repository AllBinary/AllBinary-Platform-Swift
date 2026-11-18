/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2025 AllBinary 
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
// import org.allbinary.layer.AllBinaryLayerManager
// import org.allbinary.logic.string.StringUtil

open class NullPlayerGameInputComposite: JObject, PlayerGameInputCompositeInterface {
    public static let NULL_PLAYER_GAME_INPUT_COMPOSITE: NullPlayerGameInputComposite! = NullPlayerGameInputComposite()

    public override init() {
        super.init()
    }
    

    @discardableResult open func getName() -> String! {
        return StringUtil.getInstance().EMPTY_STRING
    }
    

    open func processInput(_ layerManager: AllBinaryLayerManager!) {
    }
    

    open func initInputProcessors() {
    }
    

    @discardableResult open func getPlayerGameInput() -> PlayerGameInput! {
        return NoPlayerGameInput.getInstance()
    }
}

