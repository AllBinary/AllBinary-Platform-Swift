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
// package org.allbinary.game.physics.velocity

import J2SEForSwiftLibrary

public protocol VelocityInterface: AnyObject, BasicVelocityInterface {
    @discardableResult func getMaxForwardVelocity() -> Int32
    @discardableResult func getMaxReverseVelocity() -> Int32
    func limitMaxXYForwardVelocity()
    func limitMaxXYReverseVelocity()
    func limitXYToForwardAndReverseMaxVelocity()
    func limitMaxXYVelocity(_ maxVelocity: Int32)
    func setMaxForwardVelocity(_ maxForwardVelocity: Int32)
    func setMaxReverseVelocity(_ maxReverseVelocity: Int32)
}


