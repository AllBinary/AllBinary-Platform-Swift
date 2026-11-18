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
// package org.allbinary.game.input

import J2SEForSwiftLibrary
// import org.allbinary.game.input.mapping.PersistentInputMapping
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.string.CommonStrings

open class PlatformInputMappingFactory: JObject {
    fileprivate static let instance: PlatformInputMappingFactory! = PlatformInputMappingFactory()
    public var logUtil: LogUtil! = nil
    fileprivate var inputToGameKeyMapping: PersistentInputMapping! = nil

    private func initFields() {
    self.logUtil = LogUtil.getInstance()
    self.inputToGameKeyMapping = PersistentInputMapping.getNullInstance()
    }

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult open class func getInstance() -> PlatformInputMappingFactory! {
        return PlatformInputMappingFactory.instance
    }
    

    @discardableResult open func getPersistentInputMappingInstance() -> PersistentInputMapping! {
        do {
            if (self.inputToGameKeyMapping === PersistentInputMapping.getNullInstance()) {
                self.inputToGameKeyMapping = MotionLaptopGameInputMapping()
            }
        } /* catch (Exception e): a thrown Java exception stops the program */
        return self.inputToGameKeyMapping
    }
}

