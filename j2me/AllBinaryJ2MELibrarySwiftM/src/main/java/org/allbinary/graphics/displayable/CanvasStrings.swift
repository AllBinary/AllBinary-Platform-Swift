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
// package org.allbinary.graphics.displayable

import J2SEForSwiftLibrary
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListUtil

open class CanvasStrings: JObject {
    fileprivate static let instance: CanvasStrings! = CanvasStrings()
    public var CONSTRUCTOR: String! = nil
    public var PAUSE: String! = nil
    public var UN_PAUSE: String! = nil
    public var SET_FULL_SCREEN_MODE: String! = nil
    public var SIZE_CHANGED: String! = nil
    public var SCALED_IMAGES: String! = nil
    public var PAINT: String! = nil
    public var ON_DISPLAY_CHANGE_EVENT: String! = nil
    public var UPDATE_MEASUREMENT: String! = nil
    public var FD_WIDTH: String! = nil
    public var FD_HEIGHT: String! = nil
    public var EMPTY_CHILD_NAME_LIST: BasicArrayList! = nil
    public var ABOUT: String! = nil
    public var OPTIONS: String! = nil
    public var FONT_ATLAS: String! = nil
    public var OBJ_MODEL: String! = nil
    public var MD2_MODEL: String! = nil
    public var _PNG: String! = nil

    private func initFields() {
    self.CONSTRUCTOR = "MyCanvas::MyCanvas"
    self.PAUSE = "MyCanvas::pause"
    self.UN_PAUSE = "MyCanvas::unPause"
    self.SET_FULL_SCREEN_MODE = "setFullScreenMode"
    self.SIZE_CHANGED = "sizeChanged"
    self.SCALED_IMAGES = "scaledImages"
    self.PAINT = "paint"
    self.ON_DISPLAY_CHANGE_EVENT = "onDisplayChangeEvent"
    self.UPDATE_MEASUREMENT = "updateMeasurement"
    self.FD_WIDTH = " font/display width: "
    self.FD_HEIGHT = " font/display height: "
    self.EMPTY_CHILD_NAME_LIST = BasicArrayListUtil.getInstance().getImmutableInstance()
    self.ABOUT = "About"
    self.OPTIONS = "Options"
    self.FONT_ATLAS = "/font.png"
    self.OBJ_MODEL = "_obj"
    self.MD2_MODEL = "_md2"
    self._PNG = ".png"
    }

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult open class func getInstance() -> CanvasStrings! {
        return CanvasStrings.instance
    }
}

