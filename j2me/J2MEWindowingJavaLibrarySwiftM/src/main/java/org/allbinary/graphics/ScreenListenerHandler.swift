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
// package org.allbinary.graphics

import J2SEForSwiftLibrary

open class ScreenListenerHandler: JObject {
    fileprivate static let instance: ScreenListenerHandler! = ScreenListenerHandler()
    fileprivate var screenListenerInterface: ScreenListenerInterface! = nil

    private func initFields() {
    self.screenListenerInterface = ScreenEmptyListener()
    }

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult public static func getInstance() -> ScreenListenerHandler! {
        return ScreenListenerHandler.instance
    }
    

    open func setListener(_ screenListenerInterface: ScreenListenerInterface!) {
        self.screenListenerInterface = screenListenerInterface
    }
    

    open func fireWithState(_ isFullScreen: Bool) {
        self.screenListenerInterface.onFullScreen(isFullScreen)
    }
    

    open func fire() {
        self.screenListenerInterface.onFullScreenDisplay()
    }
}

