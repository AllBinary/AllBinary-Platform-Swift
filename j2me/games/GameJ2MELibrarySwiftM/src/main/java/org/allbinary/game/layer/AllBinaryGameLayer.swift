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
// import javax.microedition.khronos.opengles.GL
// import javax.microedition.lcdui.Graphics
// import org.allbinary.graphics.Rectangle
// import org.allbinary.graphics.color.BasicColor
// import org.allbinary.graphics.color.BasicColorFactory
// import org.allbinary.graphics.color.BasicColorSetUtil
// import org.allbinary.graphics.paint.NullPaintable
// import org.allbinary.graphics.paint.Paintable
// import org.allbinary.image.opengles.OpenGLSurfaceChangedInterface
// import org.allbinary.layer.AllBinaryLayer
// import org.allbinary.layer.AllBinaryLayerManager
// import org.allbinary.logic.communication.log.ForcedLogUtil
// import org.allbinary.logic.util.event.AllBinaryEventObject
// import org.allbinary.logic.util.event.EventStrings
// import org.allbinary.string.CommonStrings
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListD
// import org.allbinary.view.ViewPositionBase
// import org.allbinary.view.event.ViewPositionEvent
// import org.allbinary.view.event.ViewPositionEventListenerInterface

open class AllBinaryGameLayer: AllBinaryLayer, ViewPositionEventListenerInterface, OpenGLSurfaceChangedInterface {
    public var commonStrings: CommonStrings! = nil
    public var basicSetColorUtil: BasicColorSetUtil! = nil
    public var RED: BasicColor! = nil
    fileprivate var paintable: Paintable! = nil
    fileprivate var gameKeyEventList: BasicArrayList! = nil

    // Each class has its own field initializers
    private func initFields() {
    self.commonStrings = CommonStrings.getInstance()
    self.basicSetColorUtil = BasicColorSetUtil.getInstance()
    self.RED = BasicColorFactory.getInstance().RED
    self.paintable = AllBinaryGameLayer.createPaintable()
    self.gameKeyEventList = BasicArrayListD()
    }
    

    @discardableResult fileprivate static func createPaintable() -> Paintable! {
        if (SWTUtil.isSWT) {
            return SWTBlackPaintable()
        }
        return NullPaintable.getInstance()
    }
    

    public override init(_ name: String!, _ layerInfo: Rectangle!, _ viewPosition: ViewPositionBase!) {
        super.init(name, layerInfo, viewPosition)
        self.initFields()
    }
    

    open func set(_ gl: GL!) {
        jThrow(JException("Exception", self.commonStrings.NOT_IMPLEMENTED))
    }
    

    open func move() {
    }
    

    @discardableResult open func getGameKeyEventList() -> BasicArrayList! {
        return self.gameKeyEventList
    }
    

    open func processInput(_ allBinaryLayerManager: AllBinaryLayerManager!) {
        jThrow(JException("Exception", self.commonStrings.NOT_IMPLEMENTED))
    }
    

    open func processTick(_ allBinaryLayerManager: AllBinaryLayerManager!) {
        jThrow(JException("Exception", self.commonStrings.NOT_IMPLEMENTED))
    }
    

    open func onEvent(_ eventObject: AllBinaryEventObject!) {
        ForcedLogUtil.log(EventStrings.getInstance().PERFORMANCE_MESSAGE, self)
    }
    

    open func onViewPositionChangeEvent() {
        self.onChangeEvent(self.viewPositionEvent)
    }
    

    open override func onChangeEvent(_ layerManagerEvent: ViewPositionEvent!) {
        if (GameLayerUtil.isOnScreen(self)) {
            self.setVisible(true)
        } else {
            self.setVisible(false)
        }
    }
    

    open func paintFirst(_ graphics: Graphics!) {
        self.paintable.paint(graphics)
    }
    

    open func paintDebug(_ graphics: Graphics!) {
        let viewPosition: ViewPositionBase! = self.getViewPosition()
        let viewX: Int32 = viewPosition.getX()
        let viewY: Int32 = viewPosition.getY()
        self.basicSetColorUtil.setBasicColorP(graphics, self.RED)
        graphics.drawRect(viewX, viewY, self.getWidth(), self.getHeight())
    }
    

    open func setWidth(_ width: Int32) {
        super.setLayerWidth(width)
        self.setHalfWidth(width >> 1)
    }
    

    open func setHeight(_ height: Int32) {
        super.setLayerHeight(height)
        self.setHalfHeight(height >> 1)
    }
}

