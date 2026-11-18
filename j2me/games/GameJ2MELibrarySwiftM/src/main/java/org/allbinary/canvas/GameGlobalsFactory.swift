/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2022 AllBinary 
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
// package org.allbinary.canvas

import J2SEForSwiftLibrary
// import org.allbinary.graphics.GPoint
// import org.allbinary.graphics.PointFactory

open class GameGlobalsFactory: JObject {
    fileprivate static let instance: GameGlobalsFactory! = GameGlobalsFactory()
    public var newCanvas: Bool = false
    public var newDisplaybleTime: Int64 = 0
    public var point: GPoint! = nil

    private func initFields() {
    self.newCanvas = true
    self.newDisplaybleTime = Int64(truncatingIfNeeded: Integer.MIN_VALUE)
    self.point = PointFactory.getInstance().ZERO_ZERO
    }

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult open class func getInstance() -> GameGlobalsFactory! {
        return GameGlobalsFactory.instance
    }
}

