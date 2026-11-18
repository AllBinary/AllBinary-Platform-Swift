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
// package org.allbinary.game.ag.life

import J2SEForSwiftLibrary

open class Life: JObject, LifeInterface {
    public static let NO_LIFE: Life! = Life.createLife()
    fileprivate var lives: Int16 = 0
    fileprivate var startLives: Int16 = 0
    fileprivate var maxlives: Int16 = 0

    private func initFields() {
    
    
    
    }
    

    @discardableResult open class func createLife() -> Life! {
        do {
            return Life(Int16(truncatingIfNeeded: 0), Int16(truncatingIfNeeded: 0))
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
    

    public init(_ lives: Int16, _ maxlives: Int16) {
        super.init()
        self.initFields()
        self.maxlives = maxlives
        if (Int32(lives) > Int32(self.maxlives)) {
            jThrow(JException("Exception", "To Many Lives"))
        }
        self.lives = lives
        self.startLives = lives
    }
    

    @discardableResult open func get() -> Int16 {
        return self.lives
    }
    

    open func set(_ lives: Int16) {
        self.lives = lives
    }
    

    open func reset() {
        self.lives = self.startLives
    }
    

    open func add(_ lives: Int16) {
        if (!self.reachedLimit()) {
            if (Int32(self.lives) &+ Int32(lives) <= Int32(Int32(truncatingIfNeeded: self.getMaxlives()))) {
                self.lives = Int16(truncatingIfNeeded: (Int32(self.lives) &+ Int32(lives)))
            } else {
                self.lives = self.getMaxlives()
            }
        }
    }
    

    @discardableResult open func isAlive() -> Bool {
        if (Int32(Int32(truncatingIfNeeded: self.lives)) <= 0) {
            return false
        } else {
            return true
        }
    }
    

    @discardableResult open func getMaxlives() -> Int16 {
        return self.maxlives
    }
    

    @discardableResult fileprivate func reachedLimit() -> Bool {
        if (Int32(self.lives) > Int32(self.maxlives) || Int32(Int32(truncatingIfNeeded: self.lives)) < 0) {
            return true
        } else {
            return false
        }
    }
    

    open func deaths(_ lives: Int16) {
        if (!self.reachedLimit()) {
            if (Int32(self.lives) &- Int32(lives) >= 0) {
                self.lives = Int16(truncatingIfNeeded: (Int32(self.lives) &- Int32(lives)))
            } else {
                self.lives = 0
            }
        }
    }
    

    @discardableResult open func getStartLives() -> Int16 {
        return self.startLives
    }
    

    open func setStartLives(_ startLives: Int16) {
        self.startLives = startLives
    }
}

