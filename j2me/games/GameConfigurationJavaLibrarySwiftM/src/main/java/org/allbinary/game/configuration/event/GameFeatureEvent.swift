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
// package org.allbinary.game.configuration.event

import J2SEForSwiftLibrary
// import org.allbinary.logic.util.event.AllBinaryEventObject

open class GameFeatureEvent: AllBinaryEventObject {
    fileprivate var whatChanged: String! = nil

    // Each class has its own field initializers
    private func initFields() {
    
    }
    

    public init(_ anyType: JObject!, _ whatChanged: String!) {
        super.init(anyType)
        self.initFields()
        self.whatChanged = whatChanged
    }
    

    @discardableResult open func getWhatChanged() -> String! {
        return self.whatChanged
    }
    

    @discardableResult open func getGameOption() -> JObject! {
        return self.getSource()
    }
}

