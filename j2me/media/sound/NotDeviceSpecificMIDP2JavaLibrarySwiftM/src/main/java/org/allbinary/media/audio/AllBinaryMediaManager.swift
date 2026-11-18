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
// import java.io.InputStream
// import javax.microedition.media.Manager
// import javax.microedition.media.MediaException
// import javax.microedition.media.Player
// import org.allbinary.MIDPUtil
// import org.allbinary.TsUtil
// import org.allbinary.audio.AudioContentTypeDataFactory
// import org.allbinary.data.resource.ResourceUtil
// import org.allbinary.game.configuration.feature.Features
// import org.allbinary.game.configuration.feature.GameFeatureFactory
// import org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.string.CommonStrings

//NotDeviceSpecificMIDP2JavaLibrary
open class AllBinaryMediaManager: JObject {
    fileprivate static let THIS: String! = "AllBinaryMediaManagerNoMIPD2"
    

    public override init() {
        super.init()
    }
    

    @discardableResult open class func isMuted() -> Bool {
        return false
    }
    

    open class func setMuted(_ aMuted: Bool) {
    }
    

    @discardableResult open class func update() -> Bool {
        return true
    }
    

    open class func `init`(_ soundsFactoryInterface: SoundsFactoryInterface!) {
        let logUtil: LogUtil! = LogUtil.getInstance()
        let commonString: CommonStrings! = CommonStrings.getInstance()
        logUtil.putF(commonString.START, jBoxString(AllBinaryMediaManager.THIS), commonString.INIT)
        ProgressCanvasFactory.getInstance().addNormalPortion(50, "Media Manager")
        Sounds(soundsFactoryInterface).`init`()
    }
    

    open class func shutdown(_ soundsFactoryInterface: SoundsFactoryInterface!) {
        Sounds(soundsFactoryInterface).stopAll()
        Sounds(soundsFactoryInterface).closeAll()
        TsUtil.getInstance().gc()
    }
    

    @discardableResult open class func createPlayer(_ resource: String!) -> Player! {
        if (Features.getInstance().isFeature(GameFeatureFactory.getInstance().SOUND)) {
            if (TsUtil.getInstance().compareTo(resource, Manager.TONE_DEVICE_LOCATOR) == 0) {
                return Manager.createPlayer(resource)
            } else {
                let inputStream: InputStream! = ResourceUtil.getInstance().getResourceAsStream(resource)
                return MIDPUtil.getInstance().createPlayerFromInputStream(inputStream, AudioContentTypeDataFactory.getInstance().MIME_AUDIO_WAV.getName())
            }
        } else {
            return NoPlayer.NO_PLAYER
        }
    }
    

    open class func playTone(_ frequency: Int32, _ time: Int32, _ volume: Int32) {
        if (Features.getInstance().isFeature(GameFeatureFactory.getInstance().SOUND)) {
            Manager.playTone(frequency, time, volume)
        }
    }
}

