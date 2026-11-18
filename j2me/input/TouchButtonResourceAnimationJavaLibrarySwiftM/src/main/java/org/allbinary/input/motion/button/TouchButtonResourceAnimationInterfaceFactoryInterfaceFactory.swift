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
// package org.allbinary.input.motion.button

import J2SEForSwiftLibrary
// import javax.microedition.lcdui.Image
// import org.allbinary.animation.AnimationBehaviorFactory
// import org.allbinary.animation.NullAnimationFactory
// import org.allbinary.animation.image.sprite.OneRowSpriteIndexedAnimationFactory
// import org.allbinary.animation.resource.BaseResourceAnimationInterfaceFactoryInterfaceFactory
// import org.allbinary.game.configuration.feature.Features
// import org.allbinary.game.resource.ResourceLoadingLevelFactory
// import org.allbinary.graphics.canvas.transition.progress.ProgressCanvas
// import org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory
// import org.allbinary.graphics.opengles.OpenGLFeatureFactory
// import org.allbinary.image.ImageCache
// import org.allbinary.image.ImageCacheFactory
// import org.allbinary.logic.StdUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.system.os.OperatingSystemFactory
// import org.allbinary.media.image.ImageCompleteUtil

open class TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory: BaseResourceAnimationInterfaceFactoryInterfaceFactory {
    

    @discardableResult open class func createFactory() -> TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory! {
        return TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory("TouchButton Animations")
    }
    

    public init(_ name: String!) {
        super.init(name, StdUtil.getInstance().createHashtable(), StdUtil.getInstance().createHashtable(), StdUtil.getInstance().createHashtable())
    }
    

    open override func `init`(_ level: Int32) {
        self.initImageCache(ImageCacheFactory.getInstance(), level)
    }
    

    open override func initImageCache(_ imageCache: ImageCache!, _ level: Int32) {
        if (self.isInitialized()) {
            return
        }
        let portion: Int32 = 140
        let loadingString: String! = StringMaker().append(self.toString()).append(" Loading: ").toString()
        var index: Int32 = 0
        let progressCanvas: ProgressCanvas! = ProgressCanvasFactory.getInstance()
        progressCanvas.addPortion(portion, loadingString, jPostIncrement(&index))
        let touchButtonBlankResource: TouchButtonResource! = TouchButtonBlankResource.getInstance()
        let touchButtonGenericActionResource: TouchButtonResource! = TouchButtonGenericActionResource.getInstance()
        let touchButtonStartResource: TouchButtonResource! = TouchButtonStartResource.getInstance()
        let touchButtonUpResource: TouchButtonResource! = TouchButtonUpResource.getInstance()
        let touchButtonDownResource: TouchButtonResource! = TouchButtonDownResource.getInstance()
        let touchButtonTurnLeftResource: TouchButtonResource! = TouchButtonTurnLeftResource.getInstance()
        let touchButtonTurnRightResource: TouchButtonResource! = TouchButtonTurnRightResource.getInstance()
        let touchButtonStrafeLeftResource: TouchButtonResource! = TouchButtonStrafeLeftResource.getInstance()
        let touchButtonStrafeRightResource: TouchButtonResource! = TouchButtonStrafeRightResource.getInstance()
        let touchButtonBlankResourceImage: Image! = imageCache.getWithKey(jBoxString(touchButtonBlankResource.RESOURCE))
        let touchButtonGenericActionResourceImage: Image! = imageCache.getWithKey(jBoxString(touchButtonGenericActionResource.RESOURCE))
        let touchButtonStartResourceImage: Image! = imageCache.getWithKey(jBoxString(touchButtonStartResource.RESOURCE))
        let touchButtonUpResourceImage: Image! = imageCache.getWithKey(jBoxString(touchButtonUpResource.RESOURCE))
        let touchButtonDownResourceImage: Image! = imageCache.getWithKey(jBoxString(touchButtonDownResource.RESOURCE))
        let touchButtonTurnLeftResourceImage: Image! = imageCache.getWithKey(jBoxString(touchButtonTurnLeftResource.RESOURCE))
        let touchButtonTurnRightResourceImage: Image! = imageCache.getWithKey(jBoxString(touchButtonTurnRightResource.RESOURCE))
        let touchButtonStrafeLeftResourceImage: Image! = imageCache.getWithKey(jBoxString(touchButtonStrafeLeftResource.RESOURCE))
        let touchButtonStrafeRightResourceImage: Image! = imageCache.getWithKey(jBoxString(touchButtonStrafeRightResource.RESOURCE))
        let nullAnimationFactory: NullAnimationFactory! = NullAnimationFactory.getFactoryInstance()
        if (OperatingSystemFactory.getInstance().getOperatingSystemInstance().isOverScan()) {
            imageCache.getWithKey(jBoxString(TouchButtonStartResource.getInstance().HINT))
        }
        progressCanvas.addPortion(portion, loadingString, jPostIncrement(&index))
        let imageCompleteUtil: ImageCompleteUtil! = ImageCompleteUtil.getInstance()
        progressCanvas.addPortion(portion, loadingString, jPostIncrement(&index))
        imageCompleteUtil.waitForImage(touchButtonBlankResourceImage, touchButtonBlankResource.RESOURCE)
        self.add(touchButtonBlankResource.RESOURCE, OneRowSpriteIndexedAnimationFactory.createFactory(touchButtonBlankResourceImage, AnimationBehaviorFactory.getInstance()))
        self.add(touchButtonBlankResource.HINT, nullAnimationFactory)
        progressCanvas.addPortion(portion, loadingString, jPostIncrement(&index))
        imageCompleteUtil.waitForImage(touchButtonGenericActionResourceImage, touchButtonGenericActionResource.RESOURCE)
        self.add(touchButtonGenericActionResource.RESOURCE, OneRowSpriteIndexedAnimationFactory.createFactory(touchButtonGenericActionResourceImage, AnimationBehaviorFactory.getInstance()))
        self.add(touchButtonGenericActionResource.HINT, nullAnimationFactory)
        progressCanvas.addPortion(portion, loadingString, jPostIncrement(&index))
        imageCompleteUtil.waitForImage(touchButtonStartResourceImage, touchButtonStartResource.RESOURCE)
        self.add(touchButtonStartResource.RESOURCE, OneRowSpriteIndexedAnimationFactory.createFactory(touchButtonStartResourceImage, AnimationBehaviorFactory.getInstance()))
        progressCanvas.addPortion(portion, loadingString, jPostIncrement(&index))
        imageCompleteUtil.waitForImage(touchButtonUpResourceImage, touchButtonUpResource.RESOURCE)
        self.add(touchButtonUpResource.RESOURCE, OneRowSpriteIndexedAnimationFactory.createFactory(touchButtonUpResourceImage, AnimationBehaviorFactory.getInstance()))
        self.add(touchButtonUpResource.HINT, nullAnimationFactory)
        progressCanvas.addPortion(portion, loadingString, jPostIncrement(&index))
        imageCompleteUtil.waitForImage(touchButtonDownResourceImage, touchButtonDownResource.RESOURCE)
        self.add(touchButtonDownResource.RESOURCE, OneRowSpriteIndexedAnimationFactory.createFactory(touchButtonDownResourceImage, AnimationBehaviorFactory.getInstance()))
        self.add(touchButtonDownResource.HINT, nullAnimationFactory)
        progressCanvas.addPortion(portion, loadingString, jPostIncrement(&index))
        imageCompleteUtil.waitForImage(touchButtonTurnLeftResourceImage, touchButtonTurnLeftResource.RESOURCE)
        self.add(touchButtonTurnLeftResource.RESOURCE, OneRowSpriteIndexedAnimationFactory.createFactory(touchButtonTurnLeftResourceImage, AnimationBehaviorFactory.getInstance()))
        self.add(touchButtonTurnLeftResource.HINT, nullAnimationFactory)
        progressCanvas.addPortion(portion, loadingString, jPostIncrement(&index))
        imageCompleteUtil.waitForImage(touchButtonTurnRightResourceImage, touchButtonTurnRightResource.RESOURCE)
        self.add(touchButtonTurnRightResource.RESOURCE, OneRowSpriteIndexedAnimationFactory.createFactory(touchButtonTurnRightResourceImage, AnimationBehaviorFactory.getInstance()))
        self.add(touchButtonTurnRightResource.HINT, nullAnimationFactory)
        progressCanvas.addPortion(portion, loadingString, jPostIncrement(&index))
        imageCompleteUtil.waitForImage(touchButtonStrafeLeftResourceImage, touchButtonStrafeLeftResource.RESOURCE)
        self.add(touchButtonStrafeLeftResource.RESOURCE, OneRowSpriteIndexedAnimationFactory.createFactory(touchButtonStrafeLeftResourceImage, AnimationBehaviorFactory.getInstance()))
        self.add(touchButtonStrafeLeftResource.HINT, nullAnimationFactory)
        progressCanvas.addPortion(portion, loadingString, jPostIncrement(&index))
        imageCompleteUtil.waitForImage(touchButtonStrafeRightResourceImage, touchButtonStrafeRightResource.RESOURCE)
        self.add(touchButtonStrafeRightResource.RESOURCE, OneRowSpriteIndexedAnimationFactory.createFactory(touchButtonStrafeRightResourceImage, AnimationBehaviorFactory.getInstance()))
        self.add(touchButtonStrafeRightResource.HINT, nullAnimationFactory)
        if (OperatingSystemFactory.getInstance().getOperatingSystemInstance().isOverScan()) {
            let touchButtonStartHintResource: Image! = imageCache.getWithKey(jBoxString(TouchButtonStartResource.getInstance().HINT))
            self.add(touchButtonStartResource.HINT, OneRowSpriteIndexedAnimationFactory.createFactory(touchButtonStartHintResource, AnimationBehaviorFactory.getInstance()))
        } else {
            self.add(touchButtonStartResource.HINT, nullAnimationFactory)
        }
        super.`init`(level)
    }
    

    @discardableResult open override func isLoadingLevel(_ level: Int32) -> Bool {
        let resourceLoadingLevelFactory: ResourceLoadingLevelFactory! = ResourceLoadingLevelFactory.getInstance()
        if (level == resourceLoadingLevelFactory.LOAD_TOUCH.getLevel()) {
            return true
        } else {
            return super.isLoadingLevel(level)
        }
    }
    

    @discardableResult open override func isFeature() -> Bool {
        if (!Features.getInstance().isDefault(OpenGLFeatureFactory.getInstance().OPENGL)) {
            return true
        } else {
            return false
        }
    }
}

