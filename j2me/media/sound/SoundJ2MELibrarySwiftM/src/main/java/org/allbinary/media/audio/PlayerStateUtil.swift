/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2022 AllBinary 
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
// import org.allbinary.string.CommonStrings

open class PlayerStateUtil: JObject {
    fileprivate static let instance: PlayerStateUtil! = PlayerStateUtil()
    fileprivate var commonStrings: CommonStrings! = nil
    public var UNREALIZED: String! = nil
    public var REALIZED: String! = nil
    public var PREFETCHED: String! = nil
    public var STARTED: String! = nil
    public var CLOSED: String! = nil

    private func initFields() {
    self.commonStrings = CommonStrings.getInstance()
    self.UNREALIZED = "UNREALIZED"
    self.REALIZED = "REALIZED"
    self.PREFETCHED = "PREFETCHED"
    self.STARTED = "STARTED"
    self.CLOSED = "CLOSED"
    }

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult open class func getInstance() -> PlayerStateUtil! {
        return PlayerStateUtil.instance
    }
    

    @discardableResult open func convert(_ state: Int32) -> String! {
        if (state == PlayerConstants.UNREALIZED) {
            return self.UNREALIZED
        } else if (state == PlayerConstants.REALIZED) {
            return self.REALIZED
        } else if (state == PlayerConstants.PREFETCHED) {
            return self.PREFETCHED
        } else if (state == PlayerConstants.STARTED) {
            return self.STARTED
        } else if (state == PlayerConstants.CLOSED) {
            return self.CLOSED
        }
        return self.commonStrings.UNKNOWN
    }
}

