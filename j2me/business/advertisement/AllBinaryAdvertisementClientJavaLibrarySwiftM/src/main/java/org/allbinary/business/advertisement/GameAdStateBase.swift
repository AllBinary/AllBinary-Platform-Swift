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
// package org.allbinary.business.advertisement

import J2SEForSwiftLibrary
// import org.allbinary.game.GameType
// import org.allbinary.game.state.GameState
// import org.allbinary.logic.communication.log.ForcedLogUtil
// import org.allbinary.logic.util.event.AllBinaryEventObject
// import org.allbinary.logic.util.event.EventStrings

open class GameAdStateBase: JObject {
    public var adConfigurationP: AdConfiguration! = nil
    public var advertisementsP: Advertisements! = nil
    public var okayToShowAdsP: Bool = false

    private func initFields() {
    
    self.advertisementsP = Advertisements()
    self.okayToShowAdsP = false
    }
    

    public init(_ adConfiguration: AdConfiguration!) {
        super.init()
        self.initFields()
        self.adConfigurationP = adConfiguration
    }
    

    open func initViewArray(_ viewArray: JArray<JObject?>!) {
    }
    

    open func onStart(_ anyType: JObject!) {
        self.`init`()
    }
    

    open func `init`() {
    }
    

    @discardableResult open func isShowingAtLocation(_ location: Int32) -> Bool {
        return false
    }
    

    @discardableResult open func isShowingAt() -> Bool {
        return false
    }
    

    open func show() {
    }
    

    open func hide() {
    }
    

    open func onEvent(_ eventObject: AllBinaryEventObject!) {
        ForcedLogUtil.log(EventStrings.getInstance().PERFORMANCE_MESSAGE, self)
    }
    

    open func processAdState(_ gameState: GameState!, _ gameType: GameType!) {
    }
    

    open func processPageAdState() {
    }
    

    open func playingAdState() {
    }
    

    open func playingAdStateWH(_ width: Int32, _ height: Int32) {
    }
    

    open func notPlayingAdState() {
    }
    

    open func setGameIsReady(_ gameIsReady: Bool) {
    }
    

    @discardableResult open func isGameIsReady() -> Bool {
        return false
    }
    

    @discardableResult open func getAdvertisements() -> Advertisements! {
        return self.advertisementsP
    }
    

    @discardableResult open func getAdConfiguration() -> AdConfiguration! {
        return self.adConfigurationP
    }
    

    @discardableResult open func isOkayToShowPageAd() -> Bool {
        return false
    }
    

    open func setOkayToShowAds(_ okayToShowAds: Bool) {
        self.okayToShowAdsP = okayToShowAds
    }
    

    @discardableResult open func isOkayToShowAds() -> Bool {
        return self.okayToShowAdsP
    }
    

    @discardableResult open func isEnabled() -> Bool {
        return false
    }
}

