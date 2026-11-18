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
// package org.allbinary.audio

import J2SEForSwiftLibrary

open class AudioContentTypeDataFactory: JObject {
    fileprivate static let instance: AudioContentTypeDataFactory! = AudioContentTypeDataFactory()
    public var MIME_AUDIO_TONE: AudioContentTypeData! = nil
    public var MIME_AUDIO_AMR: AudioContentTypeData! = nil
    public var MIME_AUDIO_AMR_WB: AudioContentTypeData! = nil
    public var MIME_AUDIO_WAV: AudioContentTypeData! = nil
    public var MIME_AUDIO_MIDI: AudioContentTypeData! = nil
    public var MIME_AUDIO_SP_MIDI: AudioContentTypeData! = nil

    private func initFields() {
    self.MIME_AUDIO_TONE = AudioContentTypeData("audio/x-tone-seq")
    self.MIME_AUDIO_AMR = AudioContentTypeData("audio/amr")
    self.MIME_AUDIO_AMR_WB = AudioContentTypeData("audio/amr-wb")
    self.MIME_AUDIO_WAV = AudioContentTypeData("audio/x-wav")
    self.MIME_AUDIO_MIDI = AudioContentTypeData("audio/midi")
    self.MIME_AUDIO_SP_MIDI = AudioContentTypeData("audio/sp-midi")
    }
    

    @discardableResult open class func getInstance() -> AudioContentTypeDataFactory! {
        return AudioContentTypeDataFactory.instance
    }
    

    public override init() {
        super.init()
        self.initFields()
    }
}

