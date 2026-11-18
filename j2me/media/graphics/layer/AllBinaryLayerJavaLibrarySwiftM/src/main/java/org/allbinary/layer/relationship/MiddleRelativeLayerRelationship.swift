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
// package org.allbinary.layer.relationship

import J2SEForSwiftLibrary
// import org.allbinary.graphics.PointFactory
// import org.allbinary.layer.AllBinaryLayer
// import org.allbinary.util.BasicArrayListUtil

open class MiddleRelativeLayerRelationship: RelativeLayerRelationship {
    

    public init(_ layer: AllBinaryLayer!) {
        super.init(layer, PointFactory.getInstance().createXY(layer.getHalfWidth(), layer.getHalfHeight()), BasicArrayListUtil.getInstance().getImmutableInstance())
    }
}

