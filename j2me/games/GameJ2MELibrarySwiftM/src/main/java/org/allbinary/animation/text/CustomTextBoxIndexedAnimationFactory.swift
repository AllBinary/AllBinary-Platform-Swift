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
// package org.allbinary.animation.text

import J2SEForSwiftLibrary
// import javax.microedition.lcdui.Font
// import javax.microedition.lcdui.TextField
// import org.allbinary.graphics.form.item.CustomTextBox
// import org.allbinary.animation.Animation
// import org.allbinary.animation.AnimationInterfaceFactoryInterface
// import org.allbinary.game.canvas.ABToGBUtil
// import org.allbinary.game.displayable.canvas.AllBinaryGameCanvas
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.string.CommonStrings
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.media.ScaleProperties

open class CustomTextBoxIndexedAnimationFactory: JObject, AnimationInterfaceFactoryInterface {
    public var logUtil: LogUtil! = nil
    public var scaleProperties: ScaleProperties! = nil
    fileprivate var maxLength: Int32 = 0

    private func initFields() {
    self.logUtil = LogUtil.getInstance()
    
    
    }
    

    public init(_ fontSize: Int32, _ maxLength: Int32) {
        super.init()
        self.initFields()
        self.scaleProperties = ScaleProperties()
        self.scaleProperties.scaleHeight = fontSize
        self.maxLength = maxLength
    }
    

    @discardableResult open func getInstance(_ instanceId: Int32) -> Animation! {
        let abToGBUtil: ABToGBUtil! = ABToGBUtil.getInstance()
        let abCanvas: AllBinaryGameCanvas! = (abToGBUtil.abCanvas as! AllBinaryGameCanvas)
        let font: Font! = Font.getFont(Font.FACE_SYSTEM, Font.STYLE_PLAIN, self.scaleProperties.scaleHeight)
        let customTextBox: CustomTextBox! = CustomTextBox2(abCanvas.getCustomCommandListener(), StringUtil.getInstance().EMPTY_STRING, StringUtil.getInstance().EMPTY_STRING, self.maxLength, TextField.ANY, font, abCanvas.getLayerManager().getBackgroundBasicColor(), abCanvas.getLayerManager().getForegroundBasicColor())
        return CustomTextBoxIndexedAnimation(customTextBox)
    }
    

    open func setInitialScale(_ scaleProperties: ScaleProperties!) {
        let fontSize: Int32 = self.scaleProperties.scaleHeight
        self.scaleProperties = scaleProperties
        if (self.scaleProperties.scaleHeight < 6) {
            self.scaleProperties.scaleHeight = fontSize
        }
    }
}

