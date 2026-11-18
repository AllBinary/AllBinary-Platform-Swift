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
// package org.allbinary.media.audio

import J2SEForSwiftLibrary

open class SoundStrings: JObject {
    fileprivate static let instance: SoundStrings! = SoundStrings()
    public var STOP_ALL: String! = nil
    public var CLOSE_ALL: String! = nil
    public var SOUND: String! = nil
    public var INIT_SOUND: String! = nil
    public var STOPPING_SOUND: String! = nil
    public var CLOSING_SOUND: String! = nil

    private func initFields() {
    self.STOP_ALL = "stopAll"
    self.CLOSE_ALL = "closeAll"
    self.SOUND = " Sound: "
    self.INIT_SOUND = "Initializing Sound: "
    self.STOPPING_SOUND = "Stopping Sound: "
    self.CLOSING_SOUND = "Closing Sound: "
    }

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult open class func getInstance() -> SoundStrings! {
        return SoundStrings.instance
    }
}

