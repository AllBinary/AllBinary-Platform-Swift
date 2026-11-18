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
// import javax.microedition.lcdui.Graphics
// import javax.microedition.lcdui.Image
// import org.allbinary.graphics.paint.PaintableInterface

open class PaintableToImageUtil: JObject {
    fileprivate static let instance: PaintableToImageUtil! = PaintableToImageUtil()

    public override init() {
        super.init()
    }
    

    @discardableResult open class func getImage(_ paintableInterface: PaintableInterface!, _ width: Int32, _ height: Int32) -> Image! {
        let image: Image! = GameFeatureImageCacheFactory.getInstance().get(JObject.className(PaintableToImageUtil.instance), width, height)
        let graphics: Graphics! = image.getGraphics()
        paintableInterface.paint(graphics)
        return image
    }
}

