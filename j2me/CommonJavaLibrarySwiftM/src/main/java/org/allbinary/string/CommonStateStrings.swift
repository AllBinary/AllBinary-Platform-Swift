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
// package org.allbinary.string

import J2SEForSwiftLibrary

open class CommonStateStrings: JObject {
    fileprivate static let instance: CommonStateStrings! = CommonStateStrings()
    public var CONTEXT: String! = nil
    public var FINISH: String! = nil
    public var CREATE: String! = nil
    public var START: String! = nil
    public var RESTART: String! = nil
    public var RESUME: String! = nil
    public var PAUSE: String! = nil
    public var STOP: String! = nil
    public var DESTROY: String! = nil
    public var BIND: String! = nil
    public var ON_SAVE_INSTANCE_STATE: String! = nil
    public var ON_START_COMMAND: String! = nil

    private func initFields() {
    self.CONTEXT = "Context: "
    self.FINISH = "finish"
    self.CREATE = "onCreate"
    self.START = "onStart"
    self.RESTART = "onRestart"
    self.RESUME = "onResume"
    self.PAUSE = "onPause"
    self.STOP = "onStop"
    self.DESTROY = "onDestroy"
    self.BIND = "onBind"
    self.ON_SAVE_INSTANCE_STATE = "onSaveInstanceState"
    self.ON_START_COMMAND = "onStartCommand"
    }

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult public static func getInstance() -> CommonStateStrings! {
        return CommonStateStrings.instance
    }
}

