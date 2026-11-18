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
// package org.allbinary.game.health

import J2SEForSwiftLibrary

public protocol HealthInterface: AnyObject {
    @discardableResult func isAlive() -> Bool
    func damage(_ ahealth: Int32)
    func heal(_ ahealth: Int32)
    func healMax()
    @discardableResult func getMaxHealth() -> Int32
    func setMaxHealth(_ maxHealth: Int32)
    @discardableResult func getHealth() -> Int32
    func addListener(_ healthListenerInterface: HealthListenerInterface!)
}


