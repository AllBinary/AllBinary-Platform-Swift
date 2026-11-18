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
// package org.allbinary.graphics

import J2SEForSwiftLibrary

open class RectangleFactory: JObject {
    public static let SINGLETON: Rectangle! = Rectangle(PointFactory.getInstance().ZERO_ZERO, 0, 0)
    public static let ARRAY_OF_ARRAYS: JArray<JArray<Rectangle?>?>! = JArray<JArray<Rectangle?>?>(0, factory: { JArray<Rectangle?>(0, nil) })

    public override init() {
        super.init()
    }
}

