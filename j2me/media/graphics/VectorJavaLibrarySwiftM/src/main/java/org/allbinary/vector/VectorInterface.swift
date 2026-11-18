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
// package org.allbinary.vector

import J2SEForSwiftLibrary

public protocol VectorInterface: AnyObject {
    @discardableResult func getPoints(_ frame: Int32) -> JArray<JArray<Int32>?>!
    func setPoints(_ currentPoints: JArray<JArray<JArray<Int32>?>?>!)
}


