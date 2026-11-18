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
// import javax.microedition.media.MediaException
// import javax.microedition.media.Player
// import javax.microedition.media.PlayerListener
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.string.CommonStrings
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListD

//BasicPlayerJavaLibrary
open class BasicPlayer: JObject, Player, Controllable2 {
    public static var CONTROL_TYPE: String! = "ToneControl"
    public var commonStrings: CommonStrings! = nil
    public var listenersList: BasicArrayList! = nil
    public var stateP: Int32 = 0
    public var loopCountP: Int32 = 0

    private func initFields() {
    self.commonStrings = CommonStrings.getInstance()
    self.listenersList = BasicArrayListD()
    self.stateP = 0
    self.loopCountP = 0
    }
    

    public override init() {
        super.init()
        self.initFields()
        self.setLoopCount(0)
        self.setState(PlayerConstants.UNREALIZED)
    }
    

    @discardableResult open func getContentType() -> String! {
        return StringUtil.getInstance().EMPTY_STRING
    }
    

    @discardableResult open func getControl(_ controlType: String!) -> Control! {
        return NullControl()
    }
    

    @discardableResult open func getControls() -> JArray<Control?>! {
        return JArray<Control?>(0, nil)
    }
    

    open func close() {
    }
    

    open func addPlayerListener(_ playerListener: PlayerListener!) {
        if (!self.listenersList.contains((playerListener as? JObject))) {
            self.listenersList.add((playerListener as? JObject))
        }
    }
    

    open func removePlayerListener(_ playerListener: PlayerListener!) {
        self.listenersList.remove((playerListener as? JObject))
    }
    

    @discardableResult open func getState() -> Int32 {
        return self.stateP
    }
    

    open func setState(_ state: Int32) {
        self.stateP = state
    }
    

    @discardableResult open func getDuration() -> Int64 {
        return 0
    }
    

    @discardableResult open func getMediaTime() -> Int64 {
        return 0
    }
    

    open func deallocate() {
    }
    

    open func prefetch() {
    }
    

    open func realize() {
    }
    

    open func setLoopCount(_ count: Int32) {
        self.loopCountP = count
    }
    

    @discardableResult open func getLoopCount() -> Int32 {
        return self.loopCountP
    }
    

    @discardableResult open func setMediaTime(_ now: Int64) -> Int64 {
        return 0
    }
    

    open func start() {
        self.setState(PlayerConstants.STARTED)
    }
    

    open func stop() {
        self.setState(PlayerConstants.PREFETCHED)
    }
    

    open func setVolume(_ leftVolume: Int32, _ rightVolume: Int32) {
    }
}

