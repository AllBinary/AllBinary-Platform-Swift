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
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListD

open class GameInputProcessorComposite: PlayerGameInput {
    fileprivate var name: String! = nil
    fileprivate var gameInputProcessorInterface: GameInputProcessorInterface! = nil
    fileprivate var NAME_LABEL: String! = nil

    // Each class has its own field initializers
    private func initFields() {
    
    
    self.NAME_LABEL = " GameInputProcessorInterface: "
    }
    

    public init(_ name: String!, _ gameInputProcessorInterface: GameInputProcessorInterface!) {
        super.init(BasicArrayListD(), BasicArrayListD(), -1)
        self.initFields()
        self.name = name
        self.gameInputProcessorInterface = gameInputProcessorInterface
    }
    

    open override func update() {
        do {
            let list: BasicArrayList! = self.getGameKeyEventList()
            self.gameInputProcessorInterface.onInput(list)
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
    

    @discardableResult open override func toString() -> String! {
        return StringMaker().append(super.toString()).append(self.NAME_LABEL).append(self.name).toString()
    }
}

