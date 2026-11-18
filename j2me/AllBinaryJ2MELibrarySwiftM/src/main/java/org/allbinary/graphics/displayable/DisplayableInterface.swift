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
// import javax.microedition.lcdui.Command
// import javax.microedition.lcdui.CommandListener

public protocol DisplayableInterface: AnyObject {
    func addCommand(_ cmd: Command!)
    @discardableResult func getHeight() -> Int32
    @discardableResult func getWidth() -> Int32
    func removeCommand(_ cmd: Command!)
    func setCommandListener(_ l: CommandListener!)
}


