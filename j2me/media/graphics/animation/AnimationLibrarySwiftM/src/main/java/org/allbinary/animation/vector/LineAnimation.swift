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
// package org.allbinary.animation.vector

import J2SEForSwiftLibrary
// import javax.microedition.lcdui.Graphics
// import org.allbinary.animation.Animation
// import org.allbinary.graphics.color.BasicColor
// import org.allbinary.graphics.color.ColorCompositeInterface
// import org.allbinary.layer.PositionInterface
// import org.allbinary.logic.NullUtil

open class LineAnimation: Animation, ColorCompositeInterface, PositionInterface {
    fileprivate var newLine: JArray<JArray<Int32>?>! = nil
    fileprivate var tempLine: JArray<JArray<Int32>?>! = nil
    fileprivate var line: JArray<JArray<Int32>?>! = nil

    // Each class has its own field initializers
    private func initFields() {
    self.newLine = JArray<JArray<Int32>?>(2, factory: { JArray<Int32>(2, 0) })
    self.tempLine = NullUtil.getInstance().NULL_INT_ARRAY_ARRAY
    self.line = JArray<JArray<Int32>?>(2, factory: { JArray<Int32>(2, 0) })
    }
    

    public init(_ basicColor: BasicColor!) {
        super.init()
        self.initFields()
        self.setBasicColorP(basicColor)
    }
    

    open func `init`(_ x: Int32, _ y: Int32) {
        self.newLine[0]![0] = x
        self.newLine[0]![1] = y
        self.newLine[1]![0] = x
        self.newLine[1]![1] = y
        self.tempLine = self.line
        self.line = self.newLine
        self.newLine = self.tempLine
    }
    

    open func setPosition(_ x: Int32, _ y: Int32, _ z: Int32) {
        self.newLine[0]![0] = self.line[1]![0]
        self.newLine[0]![1] = self.line[1]![1]
        self.newLine[1]![0] = x
        self.newLine[1]![1] = y
        self.tempLine = self.line
        self.line = self.newLine
        self.newLine = self.tempLine
    }
    

    open override func paintXY(_ graphics: Graphics!, _ x: Int32, _ y: Int32) {
        let currentLine: JArray<JArray<Int32>?>! = self.line
        self.basicSetColorUtil.setBasicColorP3(graphics, self.getBasicColorP(), self.getColor())
        graphics.drawLine(currentLine[0]![0], currentLine[0]![1], currentLine[1]![0], currentLine[1]![1])
    }
    

    open override func nextFrame() {
    }
    

    @discardableResult open override func getBasicColorP() -> BasicColor! {
        return super.getBasicColorP()
    }
    

    open override func setBasicColorP(_ basicColor: BasicColor!) {
        super.setBasicColorP(basicColor)
    }
}

