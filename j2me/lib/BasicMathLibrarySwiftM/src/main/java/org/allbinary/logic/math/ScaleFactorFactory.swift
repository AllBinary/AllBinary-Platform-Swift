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
// package org.allbinary.logic.math

import J2SEForSwiftLibrary

open class ScaleFactorFactory: JObject {
    fileprivate static let instance: ScaleFactorFactory! = ScaleFactorFactory()
    public var DEFAULT_SCALE_FACTOR: Int32 = 0
    public var DEFAULT_SCALE_VALUE: Int32 = 0

    private func initFields() {
    self.DEFAULT_SCALE_FACTOR = 10
    self.DEFAULT_SCALE_VALUE = 1024
    }

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult public static func getInstance() -> ScaleFactorFactory! {
        return ScaleFactorFactory.instance
    }
}

