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
// package org.allbinary.bounds.event

import J2SEForSwiftLibrary
// import org.allbinary.graphics.Rectangle
// import org.allbinary.logic.util.event.AllBinaryEventObject

open class BoundsChangeEvent: AllBinaryEventObject {
    

    public init(_ rectangle: Rectangle!) {
        super.init(rectangle)
    }
    

    @discardableResult open func getRectangle() -> Rectangle! {
        return (self.getSource() as! Rectangle)
    }
}

