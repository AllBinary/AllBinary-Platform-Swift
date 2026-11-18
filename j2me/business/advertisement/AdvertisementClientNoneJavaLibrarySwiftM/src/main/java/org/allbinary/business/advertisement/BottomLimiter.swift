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
// package org.allbinary.business.advertisement

import J2SEForSwiftLibrary
// import org.allbinary.game.GameAdState
// import org.allbinary.graphics.displayable.DisplayInfoSingleton

open class BottomLimiter: JObject {
    fileprivate static let instance: BottomLimiter! = BottomLimiter()
    fileprivate var bottom: Int32 = 0
    fileprivate var deltaY: Int32 = 0
    fileprivate var lower: Int32 = 0
    fileprivate var higher: Int32 = 0

    private func initFields() {
    self.bottom = 0
    self.deltaY = 0
    self.lower = 0
    self.higher = 0
    }
    

    @discardableResult open class func getInstance() -> BottomLimiter! {
        return BottomLimiter.instance
    }
    

    public override init() {
        super.init()
        self.initFields()
    }
    

    open func `init`(_ lower: Int32, _ higher: Int32) {
        self.lower = lower
        self.higher = higher
    }
    

    open func update() {
        let displayInfo: DisplayInfoSingleton! = DisplayInfoSingleton.getInstance()
        let gameAdState: GameAdState! = GameAdStateFactory.getInstance().getCurrentInstance()
        if (gameAdState.isShowingAt()) {
            self.deltaY = self.higher
        } else {
            self.deltaY = self.lower
        }
        self.bottom = displayInfo.getLastHeight() &- self.deltaY
    }
    

    @discardableResult open func getDeltaY() -> Int32 {
        return self.deltaY
    }
    

    @discardableResult open func getBottom() -> Int32 {
        return self.bottom
    }
}

