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
// import javax.microedition.media.Player
// import org.allbinary.logic.communication.log.PreLogUtil
// import org.allbinary.string.CommonStrings

open class Sound: JObject, SoundInterface, Runnable {
    fileprivate var resource: String! = nil
    public var player: Player! = nil

    private func initFields() {
    
    self.player = NoPlayer.NO_PLAYER
    }
    

    public init(_ resource: String!) {
        super.init()
        self.initFields()
        self.resource = resource
    }
    

    @discardableResult open func getResource() -> String! {
        return self.resource
    }
    

    @discardableResult open func getPlayerP() -> Player! {
        return self.player
    }
    

    open func setPlayerP(_ player: Player!) {
        self.player = player
    }
    

    open func `init`() {
    }
    

    @discardableResult open func getDuration() -> Int32 {
        return -1
    }
    

    open func run() {
        do {
            self.player.start()
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
}

