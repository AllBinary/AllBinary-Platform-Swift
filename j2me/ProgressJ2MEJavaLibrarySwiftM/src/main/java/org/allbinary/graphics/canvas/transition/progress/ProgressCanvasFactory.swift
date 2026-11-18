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
// package org.allbinary.graphics.canvas.transition.progress

import J2SEForSwiftLibrary
// import org.allbinary.graphics.color.BasicColorFactory
// import org.allbinary.graphics.paint.NullPaintable
// import org.allbinary.graphics.paint.PaintableInterface
// import org.allbinary.logic.NullUtil
// import org.allbinary.logic.string.StringUtil

open class ProgressCanvasFactory: JObject {
    fileprivate static var PROGRESS_FORM_SCREEN: JObject! = NullUtil.getInstance().NULL_OBJECT

    public override init() {
        super.init()
    }
    

    @discardableResult open class func getInstance() -> ProgressCanvas! {
        if (ProgressCanvasFactory.PROGRESS_FORM_SCREEN === NullUtil.getInstance().NULL_OBJECT) {
            ProgressCanvasFactory.PROGRESS_FORM_SCREEN = ProgressCanvas(StringUtil.getInstance().EMPTY_STRING, BasicColorFactory.getInstance().BLACK, BasicColorFactory.getInstance().WHITE)
        }
        return (ProgressCanvasFactory.PROGRESS_FORM_SCREEN as! ProgressCanvas)
    }
    

    @discardableResult open class func getLazyInstance() -> PaintableInterface! {
        return NullPaintable.getInstance()
    }
}

