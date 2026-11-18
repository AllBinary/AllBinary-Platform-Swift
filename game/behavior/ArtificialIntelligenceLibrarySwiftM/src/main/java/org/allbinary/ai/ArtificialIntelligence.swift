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
// package org.allbinary.ai

import J2SEForSwiftLibrary
// import org.allbinary.layer.AllBinaryLayerManager

open class ArtificialIntelligence: JObject, ArtificialIntelligenceInterface {
    public static let AI_ID: Int32 = 2
    fileprivate static let instance: ArtificialIntelligence! = ArtificialIntelligence()
    

    @discardableResult open class func getInstance() -> ArtificialIntelligence! {
        return ArtificialIntelligence.instance
    }
    

    public override init() {
        super.init()
    }
    

    open func processAI(_ layerManager: AllBinaryLayerManager!) {
    }
    

    @discardableResult open func getId() -> Int32 {
        return 1
    }
}

