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
// package org.allbinary.animation.text

import J2SEForSwiftLibrary

public protocol TextInterface: AnyObject {
    func setTextWithOnMeasure(_ text: String!, _ textChangeListener: TextChangeListener!)
    @discardableResult func getText() -> String!
    func setText(_ text: String!)
    @discardableResult func getFontHeight() -> Int32
    @discardableResult func getWidth() -> Int32
}


