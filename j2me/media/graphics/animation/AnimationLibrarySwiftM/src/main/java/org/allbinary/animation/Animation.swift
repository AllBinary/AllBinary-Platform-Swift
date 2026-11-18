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
// package org.allbinary.animation

import J2SEForSwiftLibrary
// import javax.microedition.khronos.opengles.GL
// import javax.microedition.lcdui.Graphics
// import org.allbinary.graphics.color.BasicColor
// import org.allbinary.graphics.color.BasicColorFactory
// import org.allbinary.graphics.color.BasicColorSetUtil
// import org.allbinary.image.opengles.OpenGLSurfaceChangedInterface

open class Animation: JObject, AnimationInterface, OpenGLSurfaceChangedInterface {
    public var basicSetColorUtil: BasicColorSetUtil! = nil
    public var basicColor: BasicColor! = nil
    public var colorP: Int32 = 0
    public var changeBasicColorP: BasicColor! = nil
    public var changeColorP: Int32 = 0
    public var alphaP: Int32 = 0

    private func initFields() {
    self.basicSetColorUtil = BasicColorSetUtil.getInstance()
    self.basicColor = BasicColorFactory.getInstance().WHITE
    self.colorP = 0
    self.changeBasicColorP = BasicColorFactory.getInstance().NULL_COLOR
    self.changeColorP = 0
    self.alphaP = 0
    }
    

    public override init() {
        super.init()
        self.initFields()
    }
    

    open func setAlpha(_ alpha: Int32) {
        self.alphaP = alpha
    }
    

    open func nextFrame() {
    }
    

    open func paintXY(_ graphics: Graphics!, _ x: Int32, _ y: Int32) {
        self.basicSetColorUtil.setBasicColorP3(graphics, self.getBasicColorP(), self.getColor())
    }
    

    open func paintThreedXYZ(_ graphics: Graphics!, _ x: Int32, _ y: Int32, _ z: Int32) {
    }
    

    @discardableResult open func isThreed() -> Bool {
        return false
    }
    

    @discardableResult open func getBasicColorP() -> BasicColor! {
        return self.basicColor
    }
    

    open func setBasicColorP(_ basicColor: BasicColor!) {
        self.basicColor = basicColor
        self.colorP = self.basicColor.intValue()
    }
    

    open func setBackgroundBasicColorP(_ basicColor: BasicColor!) {
    }
    

    @discardableResult open func getChangeBasicColor() -> BasicColor! {
        return self.changeBasicColorP
    }
    

    open func changeBasicColor(_ basicColor: BasicColor!) {
        self.changeBasicColorP = basicColor
        self.changeColorP = self.changeBasicColorP.intValue()
    }
    

    @discardableResult open func getChangeColor() -> Int32 {
        return self.changeColorP
    }
    

    @discardableResult open func getColor() -> Int32 {
        return self.colorP
    }
    

    open func setScale(_ scaleX: Float, _ scaleY: Float) {
    }
    

    open func setMaxScale(_ maxScaleX: Float, _ maxScaleY: Float) {
    }
    

    open func set(_ gl: GL!) {
    }
    

    open func setDx(_ dx: Int32) {
    }
    

    @discardableResult open func getDx() -> Int32 {
        return 0
    }
    

    open func setDy(_ dy: Int32) {
    }
    

    @discardableResult open func getDy() -> Int32 {
        return 0
    }
}

