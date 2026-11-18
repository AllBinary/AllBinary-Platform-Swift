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
// package org.allbinary.game.displayable.canvas

import J2SEForSwiftLibrary
// import org.allbinary.graphics.displayable.event.DisplayChangeEvent
// import org.allbinary.graphics.paint.NullPaintable

open class BaseMenuBehavior: JObject {
    fileprivate static let instance: BaseMenuBehavior! = BaseMenuBehavior()

    public override init() {
        super.init()
    }
    

    @discardableResult open class func getInstance() -> BaseMenuBehavior! {
        return BaseMenuBehavior.instance
    }
    

    open func onDisplayChangeEvent(_ allBinaryGameCanvas: AllBinaryGameCanvas!, _ displayChangeEvent: DisplayChangeEvent!) {
    }
    

    open func initSpecialPaint(_ allBinaryGameCanvas: AllBinaryGameCanvas!) {
        allBinaryGameCanvas.setNonBotPaintableP(NullPaintable.getInstance())
    }
    

    open func initMenu(_ allBinaryGameCanvas: AllBinaryGameCanvas!) {
    }
    

    open func updateMenu(_ allBinaryGameCanvas: AllBinaryGameCanvas!) {
    }
    

    open func popupMenu(_ allBinaryGameCanvas: AllBinaryGameCanvas!) {
    }
    

    open func closeMenu(_ allBinaryGameCanvas: AllBinaryGameCanvas!) {
    }
}

