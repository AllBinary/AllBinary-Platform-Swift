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

open class InputProcessorFactory: JObject {
    fileprivate static let instance: InputProcessorFactory! = InputProcessorFactory()
    fileprivate var inputProcessor: InputProcessor! = nil

    private func initFields() {
    self.inputProcessor = InputProcessor()
    }

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult open class func getInstance() -> InputProcessorFactory! {
        return InputProcessorFactory.instance
    }
    

    @discardableResult open func getInputProcessor() -> InputProcessor! {
        return self.inputProcessor
    }
}

