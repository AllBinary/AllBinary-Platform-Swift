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
// import javax.microedition.lcdui.Font
// import javax.microedition.lcdui.Graphics
// import org.allbinary.AndroidUtil
// import org.allbinary.J2MEUtil
// import org.allbinary.animation.Animation
// import org.allbinary.animation.NullAnimationFactory
// import org.allbinary.animation.vector.RectangleFilledAnimation
// import org.allbinary.game.configuration.feature.Features
// import org.allbinary.game.layer.SWTUtil
// import org.allbinary.graphics.GPoint
// import org.allbinary.graphics.Rectangle
// import org.allbinary.graphics.color.BasicColor
// import org.allbinary.graphics.color.BasicColorFactory
// import org.allbinary.graphics.color.BasicColorSetUtil
// import org.allbinary.graphics.draw.DrawVerticalStringUtil
// import org.allbinary.graphics.font.MyFontProcessor
// import org.allbinary.graphics.font.UpdateMyFontInterface
// import org.allbinary.graphics.font.UpdateMyFontProcessor
// import org.allbinary.graphics.opengles.OpenGLFeatureFactory
// import org.allbinary.graphics.opengles.OpenGLFeatureUtil
// import org.allbinary.graphics.paint.Paintable
// import org.allbinary.graphics.threed.SWTJOGLProcessor

open class BasicPopupMenuPaintable: Paintable, UpdateMyFontInterface {
    fileprivate static let NAME: String! = "MENU"
    public var basicSetColorUtil: BasicColorSetUtil! = nil
    fileprivate var drawStringUtil: DrawVerticalStringUtil! = nil
    fileprivate var label: String! = nil
    fileprivate var foregroundBasicColor: BasicColor! = nil
    fileprivate var myFontProcessor: MyFontProcessor! = nil
    fileprivate var rectangle: Rectangle! = nil
    fileprivate var BORDER: Int32 = 0
    fileprivate var heightOffset: Int32 = 0
    fileprivate var offset: Int32 = 0
    fileprivate var animationInterface: Animation! = nil

    // Each class has its own field initializers
    private func initFields() {
    self.basicSetColorUtil = BasicColorSetUtil.getInstance()
    self.drawStringUtil = DrawVerticalStringUtil.getInstance()
    
    
    self.myFontProcessor = UpdateMyFontProcessor(self)
    
    self.BORDER = 0
    self.heightOffset = 0
    self.offset = 0
    self.animationInterface = nil
    }
    

    public init(_ rectangle: Rectangle!, _ backgroundBasicColor: BasicColor!, _ foregroundBasicColor: BasicColor!) {
        super.init()
        self.initFields()
        self.foregroundBasicColor = foregroundBasicColor
        self.label = BasicPopupMenuPaintable.NAME
        self.rectangle = rectangle
        if (J2MEUtil.isJ2ME() || J2MEUtil.isHTML()) {
            self.animationInterface = NullAnimationFactory.getFactoryInstance().getInstance(0)
        } else {
            self.animationInterface = RectangleFilledAnimation(self.rectangle.getWidth(), self.rectangle.getHeight(), BasicColorFactory.getInstance().TRANSPARENT_GREY)
        }
        self.`init`(rectangle)
    }
    

    open func updateMeasurement(_ graphics: Graphics!) {
        let font: Font! = graphics.getFont()
        let features: Features! = Features.getInstance()
        let isOpenGL: Bool = features.isDefault(OpenGLFeatureFactory.getInstance().OPENGL)
        self.drawStringUtil.updateMeasurement(graphics, self.label)
        var BORDER: Int32 = 0
        if (J2MEUtil.isHTML() || isOpenGL) {
            BORDER = MyFontProcessor.defaultCharWidth(font) / 2
        } else if (AndroidUtil.isAndroid() || J2MEUtil.isJ2SE() || SWTUtil.isSWT) {
            BORDER = MyFontProcessor.defaultCharWidth(font)
        } else {
            BORDER = MyFontProcessor.defaultCharWidth(font) &* 2
        }
        self.BORDER = BORDER
        self.heightOffset = self.rectangle.getHeight() &- (font.getHeight() &* BasicPopupMenuPaintable.NAME.length())
        if (OpenGLFeatureUtil.getInstance().isAnyThreed()) {
            self.heightOffset = self.heightOffset &- font.getHeight() &+ 2
            if (AndroidUtil.isAndroid()) {
                self.heightOffset = font.getHeight()
            } else {
                self.heightOffset = self.heightOffset &- font.getHeight() &+ 2
            }
        }
        self.offset = (self.heightOffset >> 1) &+ ((SWTJOGLProcessor.getInstance().isJOGL() ? 4 : 0))
        self.myFontProcessor = MyFontProcessor.getInstance()
    }
    

    open func `init`(_ rectangle: Rectangle!) {
        self.rectangle = rectangle
        let width: Int32 = self.rectangle.getWidth()
        let height: Int32 = self.rectangle.getHeight()
        if (J2MEUtil.isJ2ME() || J2MEUtil.isHTML()) {
        } else {
            let rectangleFilledAnimation: RectangleFilledAnimation! = (self.animationInterface as! RectangleFilledAnimation)
            rectangleFilledAnimation.setWidth(width)
            rectangleFilledAnimation.setHeight(height)
        }
    }
    

    open override func paint(_ graphics: Graphics!) {
        self.myFontProcessor.process(graphics)
        let point: GPoint! = self.rectangle.getPoint()
        let x: Int32 = point.getX()
        let y: Int32 = point.getY()
        let width: Int32 = self.rectangle.getWidth()
        let height: Int32 = self.rectangle.getHeight()
        self.animationInterface.paintXY(graphics, x, y)
        self.basicSetColorUtil.setBasicColorP(graphics, self.foregroundBasicColor)
        self.drawStringUtil.paintVerticle(graphics, self.label, x &+ self.BORDER, y &+ self.offset, 0)
        graphics.drawRect(x, y, width, height)
    }
}

