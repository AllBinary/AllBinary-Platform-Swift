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
// package org.allbinary.graphics.displayable

import J2SEForSwiftLibrary

public protocol ScalableListener: AnyObject {
    @discardableResult func getRatio(_ ratio: Float) -> Float
    @discardableResult func getLeft(_ xOffset: Int32) -> Int32
    @discardableResult func getTop(_ yOffset: Int32) -> Int32
    func scale(_ ratio: Float)
}


