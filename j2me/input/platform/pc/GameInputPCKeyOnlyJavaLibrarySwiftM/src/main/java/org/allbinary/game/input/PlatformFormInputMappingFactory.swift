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
// import org.allbinary.game.input.mapping.InputToGameKeyMapping
// import org.allbinary.logic.NullUtil
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.string.CommonStrings

open class PlatformFormInputMappingFactory: JObject {
    fileprivate static var instance: JObject! = NullUtil.getInstance().NULL_OBJECT
    public var logUtil: LogUtil! = nil
    fileprivate var inputToGameKeyMapping: InputToGameKeyMapping! = nil

    private func initFields() {
    self.logUtil = LogUtil.getInstance()
    self.inputToGameKeyMapping = InputToGameKeyMapping.getNullInstance()
    }

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult open class func getInstance() -> PlatformFormInputMappingFactory! {
        if (PlatformFormInputMappingFactory.instance === NullUtil.getInstance().NULL_OBJECT) {
            PlatformFormInputMappingFactory.instance = PlatformFormInputMappingFactory()
        }
        return (PlatformFormInputMappingFactory.instance as! PlatformFormInputMappingFactory)
    }
    

    @discardableResult open func getOrCreate() -> InputToGameKeyMapping! {
        do {
            if (self.inputToGameKeyMapping === InputToGameKeyMapping.getNullInstance()) {
                let pcKeyFactory: PCKeyFactory! = PCKeyFactory.getInstance()
                let inputToGameKeyMapping: InputToGameKeyMapping! = InputToGameKeyMapping()
                let gameKeyFactory: GameKeyFactory! = GameKeyFactory.getInstance()
                inputToGameKeyMapping.add(gameKeyFactory.UP, pcKeyFactory.DPAD_UP)
                inputToGameKeyMapping.add(gameKeyFactory.DOWN, pcKeyFactory.DPAD_DOWN)
                inputToGameKeyMapping.add(gameKeyFactory.LEFT, pcKeyFactory.DPAD_LEFT)
                inputToGameKeyMapping.add(gameKeyFactory.RIGHT, pcKeyFactory.DPAD_RIGHT)
                inputToGameKeyMapping.add(gameKeyFactory.KEY_NUM1, pcKeyFactory.ENTER)
                self.inputToGameKeyMapping = inputToGameKeyMapping
            }
        } /* catch (Exception e): a thrown Java exception stops the program */
        return self.inputToGameKeyMapping
    }
}

