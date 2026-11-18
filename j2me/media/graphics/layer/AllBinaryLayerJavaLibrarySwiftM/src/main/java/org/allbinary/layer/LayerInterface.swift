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
// package org.allbinary.layer

import J2SEForSwiftLibrary
// import org.allbinary.game.identification.GroupInterfaceCompositeInterface
// import org.allbinary.graphics.paint.PaintableInterface

public protocol LayerInterface: AnyObject, NamedInterface, PaintableInterface, GroupInterfaceCompositeInterface, PositionInterface {
    @discardableResult func getHeight() -> Int32
    @discardableResult func getWidth() -> Int32
    @discardableResult func getHalfHeight() -> Int32
    @discardableResult func getHalfWidth() -> Int32
    @discardableResult func getXP() -> Int32
    @discardableResult func getYP() -> Int32
    @discardableResult func getZP() -> Int32
    @discardableResult func getX2() -> Int32
    @discardableResult func getY2() -> Int32
    @discardableResult func getZ2() -> Int32
    @discardableResult func isVisible() -> Bool
    func moveDXYZ(_ dx: Int32, _ dy: Int32, _ dz: Int32)
    func setVisible(_ visible: Bool)
    @discardableResult func implmentsTickableInterface() -> Bool
    @discardableResult func implmentsCollidableInterface() -> Bool
    @discardableResult func implmentsGameInputInterface() -> Bool
    @discardableResult func implmentsArtificialIntelligenceCompositeInterface() -> Bool
    @discardableResult func getType() -> Int32
}


