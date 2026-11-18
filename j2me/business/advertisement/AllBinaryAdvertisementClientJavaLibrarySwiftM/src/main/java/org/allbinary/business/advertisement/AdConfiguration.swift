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
// package org.allbinary.business.advertisement

import J2SEForSwiftLibrary
// import org.allbinary.direction.Direction
// import org.allbinary.game.state.GameState

open class AdConfiguration: JObject {
    public var INNERACTIVE: String! = nil
    public var LEADBOLT: String! = nil
    public var ADMOB: String! = nil

    private func initFields() {
    
    
    
    }
    

    public init(_ advertIdArray: JArray<JObject?>!) {
        super.init()
        self.initFields()
        self.INNERACTIVE = jUnboxString(advertIdArray[0])
        self.ADMOB = jUnboxString(advertIdArray[1])
        self.LEADBOLT = jUnboxString(advertIdArray[2])
    }
    

    @discardableResult open func getValidAdSpots() -> JArray<Direction?>! {
        return JArray<Direction?>(0, nil)
    }
    

    open func process(_ gameState: GameState!) {
    }
    

    open func processDemo(_ state: Int32) {
    }
    

    open func setShowAds() {
    }
    

    open func setToggleAds(_ showAds: Bool) {
    }
    

    @discardableResult open func isShowAds() -> Bool {
        return true
    }
}

