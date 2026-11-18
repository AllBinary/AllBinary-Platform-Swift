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
// package org.allbinary.game.canvas

import J2SEForSwiftLibrary
// import javax.microedition.lcdui.Canvas
// import javax.microedition.lcdui.NullCanvas
// import org.allbinary.game.layer.AllBinaryGameLayerManager

open class ABToGBUtil: JObject {
    fileprivate static let instance: ABToGBUtil! = ABToGBUtil()
    public var abCanvas: Canvas! = nil
    public var allBinaryGameLayerManager: AllBinaryGameLayerManager! = nil

    private func initFields() {
    self.abCanvas = NullCanvas.NULL_CANVAS
    self.allBinaryGameLayerManager = AllBinaryGameLayerManager.getNullInstance()
    }

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult open class func getInstance() -> ABToGBUtil! {
        return ABToGBUtil.instance
    }
}

