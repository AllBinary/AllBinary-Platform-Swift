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
// import org.allbinary.animation.Animation
// import org.allbinary.animation.AnimationBehaviorFactory
// import org.allbinary.animation.AnimationInterfaceFactoryInterface
// import org.allbinary.graphics.color.BasicColor
// import org.allbinary.graphics.color.BasicColorFactory
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.media.ScaleProperties

open class CustomTextAnimationFactory: JObject, AnimationInterfaceFactoryInterface {
    public var logUtil: LogUtil! = nil
    fileprivate var animationBehaviorFactory: AnimationBehaviorFactory! = nil
    public var basicColor: BasicColor! = nil
    fileprivate var text: String! = nil
    fileprivate var initScaleHeight: Int32 = 0
    public var dx: Int32 = 0
    public var dy: Int32 = 0
    public var font: Font! = nil
    public var scaleProperties: ScaleProperties! = nil

    private func initFields() {
    self.logUtil = LogUtil.getInstance()
    
    self.basicColor = BasicColorFactory.getInstance().BLACK
    
    
    self.dx = 0
    self.dy = 0
    
    
    }
    

    @discardableResult open class func createDXY(_ text: String!, _ fontSize: Int32, _ dx: Int32, _ dy: Int32, _ animationBehaviorFactory: AnimationBehaviorFactory!) -> CustomTextAnimationFactory! {
        let customTextAnimationFactory: CustomTextAnimationFactory! = CustomTextAnimationFactory(text, fontSize, animationBehaviorFactory)
        customTextAnimationFactory.dx = dx
        customTextAnimationFactory.dy = dy
        return customTextAnimationFactory
    }
    

    public init(_ text: String!, _ fontSize: Int32, _ animationBehaviorFactory: AnimationBehaviorFactory!) {
        super.init()
        self.initFields()
        self.scaleProperties = ScaleProperties()
        self.text = text
        self.scaleProperties.scaleHeight = fontSize &- (fontSize / 4)
        self.initScaleHeight = self.scaleProperties.scaleHeight
        self.animationBehaviorFactory = animationBehaviorFactory
        self.font = Font.getFont(Font.FACE_SYSTEM, Font.STYLE_PLAIN, self.initScaleHeight)
    }
    

    @discardableResult open func getInstance(_ instanceId: Int32) -> Animation! {
        var customTextAnimation: CustomTextAnimation! = nil
        if (self.dx != 0 || self.dy != 0) {
            customTextAnimation = AdjustCustomTextAnimation(self.text, self.scaleProperties.scaleHeight, self.dx, self.dy, self.animationBehaviorFactory.getOrCreateInstance())
        } else {
            customTextAnimation = CustomTextAnimation(self.text, self.scaleProperties.scaleHeight, self.animationBehaviorFactory.getOrCreateInstance())
        }
        customTextAnimation.setBasicColorP(self.basicColor)
        return customTextAnimation
    }
    

    open func setInitialScale(_ scaleProperties: ScaleProperties!) {
    }
    

    @discardableResult open func getWidth() -> Int32 {
        return self.font.stringWidth(self.text)
    }
    

    @discardableResult open func getHeight() -> Int32 {
        return self.font.getHeight()
    }
}

