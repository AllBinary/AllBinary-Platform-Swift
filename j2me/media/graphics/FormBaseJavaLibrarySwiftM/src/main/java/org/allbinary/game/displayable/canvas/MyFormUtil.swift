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
// import org.allbinary.game.configuration.feature.Features
// import org.allbinary.graphics.PointFactory
// import org.allbinary.graphics.Rectangle
// import org.allbinary.graphics.RectangleFactory
// import org.allbinary.graphics.displayable.DisplayInfoSingleton
// import org.allbinary.graphics.font.MyFontProcessor
// import org.allbinary.graphics.opengles.OpenGLFeatureFactory
// import org.allbinary.graphics.threed.SWTJOGLProcessor
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.string.CommonStrings

open class MyFormUtil: JObject {
    fileprivate static let instance: MyFormUtil! = MyFormUtil()
    public var logUtil: LogUtil! = nil
    fileprivate var commonStrings: CommonStrings! = nil
    fileprivate var popupMenuRectangle: Rectangle! = nil

    private func initFields() {
    self.logUtil = LogUtil.getInstance()
    self.commonStrings = CommonStrings.getInstance()
    self.popupMenuRectangle = RectangleFactory.SINGLETON
    }

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult open class func getInstance() -> MyFormUtil! {
        return MyFormUtil.instance
    }
    

    open func updateMeasurement(_ graphics: Graphics!) {
        let font: Font! = graphics.getFont()
        let displayInfo: DisplayInfoSingleton! = DisplayInfoSingleton.getInstance()
        let features: Features! = Features.getInstance()
        let isOpenGL: Bool = features.isDefault(OpenGLFeatureFactory.getInstance().OPENGL)
        let TOTAL_CHAR_WIDTH: Int32 = (SWTJOGLProcessor.getInstance().isJOGL() && isOpenGL ? 2 : 3)
        let width: Int32 = MyFontProcessor.defaultStringWidth(font, TOTAL_CHAR_WIDTH)
        let pointFactory: PointFactory! = PointFactory.getInstance()
        if (displayInfo.getLastHeight() < 320) {
            self.popupMenuRectangle = Rectangle(pointFactory.createXY(0, 25), width, (font.getHeight() &* 4) &+ 2)
        } else {
            self.popupMenuRectangle = Rectangle(pointFactory.createXY(0, displayInfo.getLastHalfHeight() &- 70), width, (font.getHeight() &* 5))
        }
    }
    

    @discardableResult open func getPopupMenuRectangle() -> Rectangle! {
        return self.popupMenuRectangle
    }
}

