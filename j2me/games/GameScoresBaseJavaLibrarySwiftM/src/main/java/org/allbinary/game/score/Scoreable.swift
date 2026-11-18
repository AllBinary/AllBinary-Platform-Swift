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
// package org.allbinary.game.score

import J2SEForSwiftLibrary
// import org.allbinary.logic.math.SmallIntegerSingletonFactory

open class Scoreable: JObject, ScoreableInterface {
    public static var ID: Int32! = SmallIntegerSingletonFactory.getInstance().getAt(3)
    fileprivate var points: Int32 = 0

    private func initFields() {
    
    }
    

    public init(_ points: Int32) {
        super.init()
        self.initFields()
        self.points = points
    }
    

    open func addPoints(_ points: Int32) {
        self.points = self.points &+ points
    }
    

    open func removePoints(_ points: Int32) {
        self.points = self.points &- points
    }
    

    open func setPoints(_ points: Int32) {
        self.points = points
    }
    

    @discardableResult open func getPoints() -> Int32 {
        return self.points
    }
}

