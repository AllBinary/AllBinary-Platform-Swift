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
// package org.allbinary.animation.image

import J2SEForSwiftLibrary
// import javax.microedition.lcdui.Image
// import org.allbinary.animation.Animation
// import org.allbinary.animation.AnimationBehaviorFactory
// import org.allbinary.animation.AnimationInterfaceFactoryInterface
// import org.allbinary.animation.NullAnimationFactory
// import org.allbinary.image.AnimationFactoryImageScaleUtil
// import org.allbinary.logic.communication.log.ForcedLogUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.media.ScaleProperties
// import org.allbinary.string.CommonLabels
// import org.allbinary.string.CommonSeps

open class BaseImageAnimationFactory: JObject, AnimationInterfaceFactoryInterface {
    public var animationFactoryImageScaleUtil: AnimationFactoryImageScaleUtil! = nil
    fileprivate var image: Image! = nil
    public var animationBehaviorFactory: AnimationBehaviorFactory! = nil
    fileprivate var sequenceArray: JArray<Int32>! = nil
    public var animationFactoryInitializationVisitor: AnimationFactoryInitializationVisitor! = nil
    public var scaleProperties: ScaleProperties! = nil

    private func initFields() {
    self.animationFactoryImageScaleUtil = AnimationFactoryImageScaleUtil.getInstance()
    
    
    
    
    self.scaleProperties = ScaleProperties.instance
    }
    

    @discardableResult open class func createFactoryBase(_ image: Image!, _ sequenceArray: JArray<Int32>!, _ width: Int32, _ height: Int32, _ animationBehaviorFactory: AnimationBehaviorFactory!) -> BaseImageAnimationFactory! {
        return BaseImageAnimationFactory(image, sequenceArray, width, height, 0, 0, animationBehaviorFactory)
    }
    

    public init(_ image: Image!, _ sequenceArray: JArray<Int32>!, _ width: Int32, _ height: Int32, _ dx: Int32, _ dy: Int32, _ animationBehaviorFactory: AnimationBehaviorFactory!) {
        super.init()
        self.initFields()
        self.animationFactoryInitializationVisitor = AnimationFactoryInitializationVisitor()
        self.image = image
        self.animationFactoryInitializationVisitor.width = width
        self.animationFactoryInitializationVisitor.height = height
        self.animationBehaviorFactory = animationBehaviorFactory
        self.sequenceArray = sequenceArray
        self.animationFactoryInitializationVisitor.dx = dx
        self.animationFactoryInitializationVisitor.dy = dy
    }
    

    @discardableResult open func getInstance(_ instanceId: Int32) -> Animation! {
        return NullAnimationFactory.getFactoryInstance().getInstance(instanceId)
    }
    

    @discardableResult open func getImage() -> Image! {
        return self.image
    }
    

    @discardableResult open func getSequenceArray() -> JArray<Int32>! {
        return self.sequenceArray
    }
    

    open func setInitialScale(_ scaleProperties: ScaleProperties!) {
        self.scaleProperties = scaleProperties
        if (self.scaleProperties.shouldScale) {
            self.scaleProperties.scaleWidth = JMath.toInt32(Double((Float(self.animationFactoryInitializationVisitor.width) * self.scaleProperties.scaleX)))
            self.scaleProperties.scaleHeight = JMath.toInt32(Double((Float(self.animationFactoryInitializationVisitor.height) * self.scaleProperties.scaleY)))
        } else {
        }
    }
    

    @discardableResult open func getAnimationFactoryInitializationVisitorP() -> AnimationFactoryInitializationVisitor! {
        return self.animationFactoryInitializationVisitor
    }
    

    @discardableResult open func getScalePropertiesP() -> ScaleProperties! {
        return self.scaleProperties
    }
    

    @discardableResult open override func toString() -> String! {
        let commonSeps: CommonSeps! = CommonSeps.getInstance()
        let commonLabels: CommonLabels! = CommonLabels.getInstance()
        let stringBuffer: StringMaker! = StringMaker()
        stringBuffer.append(super.toString())
        stringBuffer.append(commonLabels.HEIGHT_LABEL)
        stringBuffer.appendint(self.image.getHeight())
        stringBuffer.append(commonSeps.SPACE)
        stringBuffer.append(self.animationFactoryInitializationVisitor.toString())
        return stringBuffer.toString()
    }
}

