/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2025 AllBinary 
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
// package org.allbinary.game.input

import J2SEForSwiftLibrary

public protocol KeyInterface: AnyObject {
    func keyPressed(_ keyCode: Int32)
    func keyReleased(_ keyCode: Int32)
    func keyPressedByDevice(_ keyCode: Int32, _ deviceId: Int32)
    func keyReleasedByDevice(_ keyCode: Int32, _ deviceId: Int32)
}


