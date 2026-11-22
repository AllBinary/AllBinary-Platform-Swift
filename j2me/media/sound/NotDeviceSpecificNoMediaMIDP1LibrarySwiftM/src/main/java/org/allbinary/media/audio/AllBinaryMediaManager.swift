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
// import javax.microedition.media.Player
// import org.allbinary.TsUtil
// import org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.string.CommonStrings

//NotDeviceSpecificNoMediaMIDP1Library
open class AllBinaryMediaManager: JObject {
    fileprivate static let THIS: String! = "AllBinaryMediaManagerNoMediaMIDP1"
    

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
    

    @discardableResult open class func createPlayerFromInputStream(_ stream: InputStream!, _ type: String!) -> Player! {
        let logUtil: LogUtil! = LogUtil.getInstance()
        let commonString: CommonStrings! = CommonStrings.getInstance()
        logUtil.putF(commonString.START, jBoxString(AllBinaryMediaManager.THIS), "creatPlayer(InputStream)")
        return (NoPlayer.NO_PLAYER as Any as? Player)
    }
    

    @discardableResult open class func createPlayer(_ locator: String!) -> Player! {
        let logUtil: LogUtil! = LogUtil.getInstance()
        let commonString: CommonStrings! = CommonStrings.getInstance()
        logUtil.putF(commonString.START, jBoxString(AllBinaryMediaManager.THIS), "creatPlayer(locator)")
        return (NoPlayer.NO_PLAYER as Any as? Player)
    }
    

    open class func playTone(_ frequency: Int32, _ time: Int32, _ volume: Int32) {
    }
    

    @discardableResult open class func getSupportedContentTypes(_ `protocol`: String!) -> JArray<String?>! {
        return StringUtil.getInstance().getArrayInstance()
    }
    

    @discardableResult open class func getSupportedProtocols(_ content_type: String!) -> JArray<String?>! {
        return StringUtil.getInstance().getArrayInstance()
    }
}

