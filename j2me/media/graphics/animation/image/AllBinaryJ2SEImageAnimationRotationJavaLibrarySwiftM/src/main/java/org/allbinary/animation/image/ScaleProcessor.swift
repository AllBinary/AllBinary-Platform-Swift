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
// package org.allbinary.animation.image

import J2SEForSwiftLibrary
// import javax.microedition.lcdui.Image
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.media.image.ImageScaleUtil
// import org.allbinary.string.CommonStrings

open class ScaleProcessor: ScaleBaseProcessor {
    fileprivate static let instanceC: ScaleProcessor! = ScaleProcessor()
    public var logUtil: LogUtil! = nil
    public var commonStrings: CommonStrings! = nil
    fileprivate var imageScaleUtil: ImageScaleUtil! = nil

    // Each class has its own field initializers
    private func initFields() {
    self.logUtil = LogUtil.getInstance()
    self.commonStrings = CommonStrings.getInstance()
    self.imageScaleUtil = ImageScaleUtil.getInstance()
    }

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult open override class func getInstance() -> ScaleBaseProcessor! {
        return ScaleProcessor.instanceC
    }
    

    open override func update(_ originalImage: Image!, _ originalImageArray: JArray<Image?>!, _ ximageToShowArray: JArray<Image?>!, _ unused: Int32, _ scaleX: Float, _ scaleY: Float, _ maxScaleX: Float, _ maxScaleY: Float) {
        do {
            self.imageScaleUtil.scale2(originalImage, originalImageArray, ximageToShowArray, unused, scaleX, scaleY, maxScaleX, maxScaleY)
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
}

