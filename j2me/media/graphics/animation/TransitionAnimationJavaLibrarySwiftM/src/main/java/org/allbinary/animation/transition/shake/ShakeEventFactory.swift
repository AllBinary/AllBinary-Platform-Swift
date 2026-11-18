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
// package org.allbinary.animation.transition.shake

import J2SEForSwiftLibrary

open class ShakeEventFactory: JObject {
    fileprivate static let instance: ShakeEventFactory! = ShakeEventFactory()
    public var MICRO: ShakeEvent! = nil
    public var SMALL: ShakeEvent! = nil
    public var MEDIUM: ShakeEvent! = nil
    public var LARGE: ShakeEvent! = nil

    private func initFields() {
    self.MICRO = ShakeEvent()
    self.SMALL = ShakeEvent()
    self.MEDIUM = ShakeEvent()
    self.LARGE = ShakeEvent()
    }

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult open class func getInstance() -> ShakeEventFactory! {
        return ShakeEventFactory.instance
    }
    

    open func `init`() {
    }
}

