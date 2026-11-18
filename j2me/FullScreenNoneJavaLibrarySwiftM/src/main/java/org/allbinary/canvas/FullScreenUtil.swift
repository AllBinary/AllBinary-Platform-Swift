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
// package org.allbinary.canvas

import J2SEForSwiftLibrary
// import javax.microedition.lcdui.Canvas
// import javax.microedition.lcdui.CommandListener
// import org.allbinary.game.configuration.feature.Features
// import org.allbinary.game.configuration.feature.MainFeatureFactory

open class FullScreenUtil: JObject {
    fileprivate static let instance: FullScreenUtil! = FullScreenUtil()

    public override init() {
        super.init()
    }
    

    @discardableResult open class func getInstance() -> FullScreenUtil! {
        return FullScreenUtil.instance
    }
    

    public func initOnRun(_ fullScreenInterface: Canvas!, _ commandListener: CommandListener!) {
        if (commandListener != nil) {
            self.`init`(fullScreenInterface)
        }
    }
    

    public func `init`(_ fullScreenInterface: Canvas!) {
    }
    

    @discardableResult public func isScreenChange(_ isFullScreen: Bool) -> Bool {
        let mainFeatureFactory: MainFeatureFactory! = MainFeatureFactory.getInstance()
        let features: Features! = Features.getInstance()
        if (features.isFeature(mainFeatureFactory.FULL_SCREEN) != isFullScreen) {
            return true
        }
        return false
    }
    

    @discardableResult public func isScreenChangeCanvas(_ fullScreenInterface: Canvas!) -> Bool {
        return self.isScreenChange(false)
    }
}

