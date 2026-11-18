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
// package org.allbinary.game.terrain

import J2SEForSwiftLibrary
// import org.allbinary.math.Angle
// import org.allbinary.math.AngleFactory

open class BasicTerrainInfo: JObject {
    public static let NULL_BASIC_TERRAIN_INFO: BasicTerrainInfo! = BasicTerrainInfo(AngleFactory.getInstance().NOT_ANGLE)
    fileprivate var angle: Angle! = nil

    private func initFields() {
    
    }
    

    public init(_ angle: Angle!) {
        super.init()
        self.initFields()
        self.angle = angle
    }
    

    @discardableResult open func getAngle() -> Angle! {
        return self.angle
    }
    

    open func setAngle(_ angle: Angle!) {
        self.angle = angle
    }
}

