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

public protocol LifeInterface: AnyObject {
    @discardableResult func get() -> Int16
    func set(_ lives: Int16)
    func reset()
    func add(_ lives: Int16)
    func deaths(_ lives: Int16)
    @discardableResult func getMaxlives() -> Int16
    @discardableResult func isAlive() -> Bool
}


