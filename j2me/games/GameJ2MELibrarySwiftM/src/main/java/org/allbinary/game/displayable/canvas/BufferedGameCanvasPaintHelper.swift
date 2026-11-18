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
// package org.allbinary.game.displayable.canvas

import J2SEForSwiftLibrary
// import javax.microedition.lcdui.Canvas
// import javax.microedition.lcdui.Graphics
// import javax.microedition.lcdui.Image
// import javax.microedition.lcdui.NullCanvas
// import javax.microedition.lcdui.NullImage
// import org.allbinary.graphics.Anchor
// import org.allbinary.graphics.displayable.MyCanvas
// import org.allbinary.graphics.paint.ProcessPaintable
// import org.allbinary.util.CircularIndexUtil

open class BufferedGameCanvasPaintHelper: ProcessPaintable {
    fileprivate static let MAX_IMAGES: Int32 = 4
    fileprivate var gameCanvas: Canvas! = nil
    fileprivate var offScreenImage: JArray<Image?>! = nil
    fileprivate var previousImage: Image! = nil
    fileprivate var circularIndexUtil: CircularIndexUtil! = nil
    fileprivate var drawCircularIndexUtil: CircularIndexUtil! = nil
    fileprivate var anchor: Int32 = 0

    // Each class has its own field initializers
    private func initFields() {
    self.gameCanvas = NullCanvas.NULL_CANVAS
    self.offScreenImage = JArray<Image?>(BufferedGameCanvasPaintHelper.MAX_IMAGES, nil)
    self.previousImage = NullImage.NULL_IMAGE
    self.circularIndexUtil = CircularIndexUtil.createInstance(BufferedGameCanvasPaintHelper.MAX_IMAGES)
    self.drawCircularIndexUtil = CircularIndexUtil.createInstanceAt(BufferedGameCanvasPaintHelper.MAX_IMAGES &- 1, BufferedGameCanvasPaintHelper.MAX_IMAGES)
    self.anchor = Anchor.TOP_LEFT
    }
    

    public init(_ gameCanvas: AllBinaryGameCanvas!) {
        super.init()
        self.initFields()
        jThrow(JException("Exception", "No Longer Used"))
    }
    

    open override func process() {
        let myCanvas: MyCanvas! = ((self.gameCanvas as! MyCanvas))
        myCanvas.draw(self.offScreenImage[self.circularIndexUtil.getIndex()]!.getGraphics())
        self.circularIndexUtil.next()
        self.drawCircularIndexUtil.next()
    }
    

    open override func paint(_ graphics: Graphics!) {
        self.previousImage = self.offScreenImage[self.drawCircularIndexUtil.getIndex()]
        graphics.drawImage(self.previousImage, 0, 0, self.anchor)
    }
}

