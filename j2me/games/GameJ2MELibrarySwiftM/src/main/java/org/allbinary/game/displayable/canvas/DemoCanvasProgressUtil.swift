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
// import org.allbinary.graphics.canvas.transition.progress.ProgressCanvas
// import org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory
// import org.allbinary.graphics.paint.PaintableComposite
// import org.allbinary.graphics.paint.PaintableInterface

open class DemoCanvasProgressUtil: JObject {

    public override init() {
        super.init()
    }
    

    open class func showProgress(_ demoCanvas: DemoCanvas!) {
        DemoCanvasProgressUtil.showProgressOptionallyInTheBackground(demoCanvas, false)
    }
    

    open class func showProgressOptionallyInTheBackground(_ demoCanvas: DemoCanvas!, _ background: Bool) {
        let progressCanvas: ProgressCanvas! = ProgressCanvasFactory.getInstance()
        progressCanvas.startBackground(background)
        let paintableArray: JArray<PaintableInterface?>! = JArray<PaintableInterface?>(2, nil)
        paintableArray[0] = progressCanvas
        paintableArray[1] = demoCanvas.getDefaultPaintableInterface()
        demoCanvas.setDefaultPaintableInterface(PaintableComposite(paintableArray))
        demoCanvas.setPaintableInterface(demoCanvas.getDefaultPaintableInterface())
    }
}

