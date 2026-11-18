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
// package org.allbinary.midlet

import J2SEForSwiftLibrary
// import javax.microedition.lcdui.Displayable
// import javax.microedition.midlet.MIDlet

public protocol MidletCompositeInterface: AnyObject {
    func setMidlet(_ midlet: MIDlet!)
    @discardableResult func getMidlet() -> AllBinaryMidlet!
    @discardableResult func getDisplayable() -> Displayable!
}


