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

open class GameInputProcessorUtil: JObject {

    public override init() {
        super.init()
    }
    

    open class func `init`(_ inputProcessorArray: JArray<GameInputProcessor?>!) {
        let noInputProcessor: GameInputProcessor! = GameInputProcessor.getInstance()
        let total: Int32 = InputFactory.getInstance().MAX
        do {
            var index: Int32 = 0
            while (index < total) {
                defer { index &+= 1 }
            let inputProcessorCanBeNull: GameInputProcessor! = inputProcessorArray[index]
            if (inputProcessorCanBeNull == nil) {
                inputProcessorArray[index] = noInputProcessor
            }
            }
        }
    }
}

