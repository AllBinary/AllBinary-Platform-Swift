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
// package org.allbinary.game.layer

import J2SEForSwiftLibrary

open class LayerPlacementType: JObject {
    fileprivate var type: Int32 = 0

    private func initFields() {
    
    }
    

    public init(_ type: Int32) {
        super.init()
        self.initFields()
        self.type = type
    }
    

    @discardableResult open func getType() -> Int32 {
        return self.type
    }
    

    open func setType(_ type: Int32) {
        self.type = type
    }
}

