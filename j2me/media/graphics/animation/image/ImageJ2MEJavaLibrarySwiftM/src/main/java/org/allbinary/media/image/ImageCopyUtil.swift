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
// package org.allbinary.media.image

import J2SEForSwiftLibrary
// import javax.microedition.lcdui.Graphics
// import javax.microedition.lcdui.Image
// import org.allbinary.game.configuration.feature.Features
// import org.allbinary.game.configuration.feature.GameFeatureFactory
// import org.allbinary.graphics.Anchor
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.string.CommonStrings

open class ImageCopyUtil: JObject {
    fileprivate static let instance: ImageCopyUtil! = ImageCopyUtil()
    public var logUtil: LogUtil! = nil
    fileprivate var commonStrings: CommonStrings! = nil
    fileprivate var imageCreationUtil: ImageCreationUtil! = nil
    fileprivate var anchor: Int32 = 0
    fileprivate var gameFeatureFactory: GameFeatureFactory! = nil
    fileprivate var features: Features! = nil
    fileprivate var NO_COPY: String! = nil

    private func initFields() {
    self.logUtil = LogUtil.getInstance()
    self.commonStrings = CommonStrings.getInstance()
    self.imageCreationUtil = ImageCreationUtil.getInstance()
    self.anchor = Anchor.TOP_LEFT
    self.gameFeatureFactory = GameFeatureFactory.getInstance()
    self.features = Features.getInstance()
    self.NO_COPY = "J2ME does not need to copy images after initial loading"
    }
    

    @discardableResult open class func getInstance() -> ImageCopyUtil! {
        return ImageCopyUtil.instance
    }
    

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult open func createImageForRotation(_ originalImage: Image!) -> Image! {
        return self.createImage(originalImage)
    }
    

    @discardableResult open func createImage(_ originalImage: Image!) -> Image! {
        if (!self.features.isFeature(self.gameFeatureFactory.POST_IMAGE_LOADING_MODIFICATION)) {
            self.logUtil.put(self.NO_COPY, self, self.commonStrings.CONSTRUCTOR, JException("Exception", ""))
            return originalImage
        }
        let image: Image! = self.imageCreationUtil.createImageWH(originalImage.getWidth(), originalImage.getHeight())
        if (image.isMutable()) {
            image.getGraphics().drawImage(originalImage, 0, 0, self.anchor)
            return image
        } else {
            jThrow(JException("Exception", "Not Mutable"))
        }
    }
    

    @discardableResult open func createImageScale(_ originalImage: Image!, _ canvasScale: Float, _ resize: Bool) -> Image! {
        if (!self.features.isFeature(self.gameFeatureFactory.POST_IMAGE_LOADING_MODIFICATION)) {
            self.logUtil.put(self.NO_COPY, self, self.commonStrings.CONSTRUCTOR, JException("Exception", ""))
            return originalImage
        }
        var newWidth: Int32 = JMath.toInt32(Double((Float(originalImage.getWidth()) * canvasScale)))
        var newHeight: Int32 = JMath.toInt32(Double((Float(originalImage.getHeight()) * canvasScale)))
        if (resize) {
            if (newWidth < newHeight) {
                newWidth = newHeight
            }
            if (newHeight < newWidth) {
                newHeight = newWidth
            }
        }
        let image: Image! = self.imageCreationUtil.createImageWH(newWidth, newHeight)
        if (image.isMutable()) {
            let halfWidthDelta: Int32 = (newWidth &- originalImage.getWidth()) / 2
            let halfHeightDelta: Int32 = (newHeight &- originalImage.getHeight()) / 2
            let graphics: Graphics! = image.getGraphics()
            graphics.drawImage(originalImage, halfWidthDelta, halfHeightDelta, self.anchor)
            return image
        } else {
            jThrow(JException("Exception", "Not Mutable"))
        }
    }
}

