/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2022 AllBinary 
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
// package org.allbinary.graphics.displayable

import J2SEForSwiftLibrary

open class GameTickDisplayInfoSingleton: JObject {
    fileprivate static let instance: GameTickDisplayInfoSingleton! = GameTickDisplayInfoSingleton()
    fileprivate var displayInfoSingleton: DisplayInfoSingleton! = nil
    fileprivate var lastWidth: Int32 = 0
    fileprivate var lastHeight: Int32 = 0
    fileprivate var lastHalfWidth: Int32 = 0
    fileprivate var lastHalfHeight: Int32 = 0

    private func initFields() {
    self.displayInfoSingleton = DisplayInfoSingleton.getInstance()
    self.lastWidth = self.displayInfoSingleton.getLastWidth()
    self.lastHeight = self.displayInfoSingleton.getLastHeight()
    self.lastHalfWidth = self.displayInfoSingleton.getLastHalfWidth()
    self.lastHalfHeight = self.displayInfoSingleton.getLastHalfHeight()
    }

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult open class func getInstance() -> GameTickDisplayInfoSingleton! {
        return GameTickDisplayInfoSingleton.instance
    }
    

    open func update() {
        self.lastWidth = self.displayInfoSingleton.getLastWidth()
        self.lastHeight = self.displayInfoSingleton.getLastHeight()
        self.lastHalfWidth = self.displayInfoSingleton.getLastHalfWidth()
        self.lastHalfHeight = self.displayInfoSingleton.getLastHalfHeight()
    }
    

    @discardableResult open func getLastWidth() -> Int32 {
        return self.lastWidth
    }
    

    @discardableResult open func getLastHeight() -> Int32 {
        return self.lastHeight
    }
    

    @discardableResult open func getLastHalfWidth() -> Int32 {
        return self.lastHalfWidth
    }
    

    @discardableResult open func getLastHalfHeight() -> Int32 {
        return self.lastHalfHeight
    }
}

