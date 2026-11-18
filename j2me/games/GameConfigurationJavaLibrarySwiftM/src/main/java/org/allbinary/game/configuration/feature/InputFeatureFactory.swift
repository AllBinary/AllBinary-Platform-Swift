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
// package org.allbinary.game.configuration.feature

import J2SEForSwiftLibrary

open class InputFeatureFactory: JObject {
    fileprivate static let instance: InputFeatureFactory! = InputFeatureFactory()
    public var REMOVE_DUPLICATE_KEY_PRESSES: InputFeature! = nil
    public var INPUT_MAPPING: InputFeature! = nil
    public var MULTI_KEY_PRESS: InputFeature! = nil
    public var SINGLE_KEY_REPEAT_PRESS: InputFeature! = nil
    public var SINGLE_KEY_PRESS: InputFeature! = nil

    private func initFields() {
    self.REMOVE_DUPLICATE_KEY_PRESSES = InputFeature("Remove Duplicate Key Presses")
    self.INPUT_MAPPING = InputFeature("Input Mapping")
    self.MULTI_KEY_PRESS = InputFeature("Multi Key Press")
    self.SINGLE_KEY_REPEAT_PRESS = InputFeature("Single Key Repeat Press")
    self.SINGLE_KEY_PRESS = InputFeature("Single Key Press")
    }
    

    @discardableResult open class func getInstance() -> InputFeatureFactory! {
        return InputFeatureFactory.instance
    }
    

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult open func isSingleKeyProcessing() -> Bool {
        let features: Features! = Features.getInstance()
        if (features.isFeature(self.SINGLE_KEY_REPEAT_PRESS) || features.isFeature(self.SINGLE_KEY_PRESS)) {
            return true
        } else {
            return false
        }
    }
}

