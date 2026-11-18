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
// package org.allbinary.image

import J2SEForSwiftLibrary
// import javax.microedition.lcdui.Image
// import org.allbinary.animation.IndexedAnimation

open class IndexedAnimationToImageArrayUtil: JObject {

    public override init() {
        super.init()
    }
    

    @discardableResult open class func getInstance(_ width: Int32, _ height: Int32, _ sequentialAnimationInterface: IndexedAnimation!) -> JArray<Image?>! {
        let size: Int32 = sequentialAnimationInterface.getAnimationSize()
        let imageArray: JArray<Image?>! = JArray<Image?>(size, nil)
        do {
            var index: Int32 = 0
            while (index < size) {
                defer { index &+= 1 }
            sequentialAnimationInterface.setFrame(index)
            imageArray[index] = AnimationFrameToImageUtil.getInstance().getInstanceWH(width, height, sequentialAnimationInterface)
            }
        }
        return imageArray
    }
}

