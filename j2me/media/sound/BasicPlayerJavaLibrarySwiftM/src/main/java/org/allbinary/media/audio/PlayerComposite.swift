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
// package org.allbinary.media.audio

import J2SEForSwiftLibrary
// import javax.microedition.media.Control
// import javax.microedition.media.Controllable
// import javax.microedition.media.Player
// import javax.microedition.media.PlayerListener
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.string.CommonStrings
// import org.allbinary.time.GameTickTimeDelayHelper
// import org.allbinary.time.GameTickTimeDelayHelperFactory
// import org.allbinary.time.TimeDelayHelper

//BasicPlayer
open class PlayerComposite: JObject, Controllable, Player {
    public var logUtil: LogUtil! = nil
    fileprivate var commonStrings: CommonStrings! = nil
    fileprivate var player: Player! = nil
    fileprivate var timeElapsedHelper: TimeDelayHelper! = nil
    fileprivate var gameTickTimeDelayHelper: GameTickTimeDelayHelper! = nil

    private func initFields() {
    self.logUtil = LogUtil.getInstance()
    self.commonStrings = CommonStrings.getInstance()
    
    self.timeElapsedHelper = TimeDelayHelper(0)
    self.gameTickTimeDelayHelper = GameTickTimeDelayHelperFactory.getInstance()
    }
    

    public init(_ player: Player!, _ repeatTime: Int32) {
        super.init()
        self.initFields()
        self.player = player
        self.timeElapsedHelper.delay = repeatTime
    }
    

    open func addPlayerListener(_ playerListener: PlayerListener!) {
        self.player.addPlayerListener(playerListener)
    }
    

    open func removePlayerListener(_ playerListener: PlayerListener!) {
        self.player.removePlayerListener(playerListener)
    }
    

    open func close() {
        self.player.close()
    }
    

    open func deallocate() {
        self.player.deallocate()
    }
    

    @discardableResult open func getContentType() -> String! {
        return self.player.getContentType()
    }
    

    @discardableResult open func getDuration() -> Int64 {
        return self.player.getDuration()
    }
    

    @discardableResult open func getMediaTime() -> Int64 {
        return self.player.getMediaTime()
    }
    

    open func prefetch() {
        do {
            self.player.prefetch()
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
    

    open func realize() {
        do {
            self.player.realize()
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
    

    @discardableResult open func getState() -> Int32 {
        return self.player.getState()
    }
    

    open func setLoopCount(_ count: Int32) {
        self.player.setLoopCount(count)
    }
    

    @discardableResult open func setMediaTime(_ now: Int64) -> Int64 {
        do {
            return self.player.setMediaTime(now)
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
    

    open func start() {
        do {
            if (self.timeElapsedHelper.isTime(self.gameTickTimeDelayHelper.startTime)) {
                self.player.start()
            }
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
    

    open func stop() {
        do {
            self.player.stop()
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
    

    @discardableResult open func getControl(_ controlType: String!) -> Control! {
        return self.player.getControl(controlType)
    }
    

    @discardableResult open func getControls() -> JArray<Control?>! {
        jThrow(JException("RuntimeException", ""))
    }
    

    open func setVolume(_ leftVolume: Int32, _ rightVolume: Int32) {
        let controllable2: Controllable2! = ((self.player as! Controllable2))
        controllable2.setVolume(leftVolume, rightVolume)
    }
    

    @discardableResult open func getPlayerP() -> Player! {
        return self.player
    }
}

