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
// import org.allbinary.logic.NullUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.util.event.AllBinaryEventObject

open class TerrainEvent: AllBinaryEventObject {
    fileprivate var basicTerrainInfo: BasicTerrainInfo! = nil

    // Each class has its own field initializers
    private func initFields() {
    self.basicTerrainInfo = BasicTerrainInfo.NULL_BASIC_TERRAIN_INFO
    }
    

    public override init(_ basicTerrainInfo: JObject!) {
        super.init(basicTerrainInfo)
        self.initFields()
        self.setBasicTerrainInfo(self.basicTerrainInfo)
    }
    

    @discardableResult open override func toString() -> String! {
        let stringBuffer: StringMaker! = StringMaker()
        stringBuffer.append("TerrainEvent: \n")
        stringBuffer.append("LayerInterface: ")
        stringBuffer.append(self.basicTerrainInfo.toString())
        return stringBuffer.toString()
    }
    

    @discardableResult open func getBasicTerrainInfo() -> BasicTerrainInfo! {
        return self.basicTerrainInfo
    }
    

    open func setBasicTerrainInfo(_ basicTerrainInfo: BasicTerrainInfo!) {
        self.basicTerrainInfo = basicTerrainInfo
    }
    

    open func setBasicTerrainInfoForCircularStaticPool(_ basicTerrainInfo: BasicTerrainInfo!) {
        self.basicTerrainInfo = basicTerrainInfo
    }
}

