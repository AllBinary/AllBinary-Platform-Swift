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
// package org.allbinary.graphics.threed

import J2SEForSwiftLibrary
// import javax.microedition.lcdui.Font
// import javax.microedition.midlet.MIDlet

//OpenGLNone
open class SWTJOGLProcessor: JObject, Runnable {
    fileprivate static let instance: SWTJOGLProcessor! = SWTJOGLProcessor()

    public override init() {
        super.init()
    }
    

    @discardableResult open class func getInstance() -> SWTJOGLProcessor! {
        return SWTJOGLProcessor.instance
    }
    

    open func `init`(_ display: JObject!, _ comp: JObject!) {
    }
    

    @discardableResult open func isHolderCreated() -> Bool {
        return true
    }
    

    open func setRenderer(_ renderer: JObject!) {
    }
    

    @discardableResult open func isJOGL() -> Bool {
        return false
    }
    

    open func createSurface() {
    }
    

    open func onSurfaceCreated() {
    }
    

    open func onSurfaceChangedForEvent(_ event: JObject!) {
    }
    

    open func onSurfaceChanged() {
    }
    

    open func onSurfaceChangedWH(_ width: Int32, _ height: Int32) {
    }
    

    open func addListener() {
    }
    

    open func addListeners(_ midlet: MIDlet!) {
    }
    

    open func run() {
    }
    

    open func clear() {
    }
    

    open func setCustom(_ width: Int32, _ height: Int32, _ ratio: Float) {
    }
    

    open func setRatioProcessor(_ ratioProcessor: RatioProcessor!) {
    }
    

    @discardableResult open func isPortraitRatioProcessor() -> Bool {
        return true
    }
    

    @discardableResult open func charWidth(_ font: Font!, _ ch: UInt16) -> Int32 {
        jThrow(JException("RuntimeException", ""))
    }
    

    @discardableResult open func charsWidth(_ font: Font!, _ ch: JArray<UInt16>!, _ offset: Int32, _ length: Int32) -> Int32 {
        jThrow(JException("RuntimeException", ""))
    }
    

    @discardableResult open func stringWidth(_ font: Font!, _ str: String!) -> Int32 {
        jThrow(JException("RuntimeException", ""))
    }
    

    @discardableResult open func substringWidth(_ font: Font!, _ str: String!, _ offset: Int32, _ len: Int32) -> Int32 {
        jThrow(JException("RuntimeException", ""))
    }
}

