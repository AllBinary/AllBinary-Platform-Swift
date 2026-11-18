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
// package org.allbinary.bounds

import J2SEForSwiftLibrary

public protocol BoundsVisitorInterface: AnyObject {
    @discardableResult func getX() -> Int32
    @discardableResult func getY() -> Int32
    func maxX()
    func maxY()
    func minX()
    func minY()
}


