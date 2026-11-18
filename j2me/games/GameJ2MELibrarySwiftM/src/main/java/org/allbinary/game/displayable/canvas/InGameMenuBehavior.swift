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

open class InGameMenuBehavior: BaseMenuBehavior {
    fileprivate static let instanceC: InGameMenuBehavior! = InGameMenuBehavior()

    public override init() {
        super.init()
    }
    

    @discardableResult open override class func getInstance() -> InGameMenuBehavior! {
        return InGameMenuBehavior.instanceC
    }
    

    open override func onDisplayChangeEvent(_ allBinaryGameCanvas: AllBinaryGameCanvas!, _ displayChangeEvent: DisplayChangeEvent!) {
        allBinaryGameCanvas.updateMenuFromEvent(displayChangeEvent)
    }
    

    open override func initSpecialPaint(_ allBinaryGameCanvas: AllBinaryGameCanvas!) {
        allBinaryGameCanvas.setNonBotPaintableP(GameCanvasNonBotPaintable(allBinaryGameCanvas))
    }
    

    open override func initMenu(_ allBinaryGameCanvas: AllBinaryGameCanvas!) {
        allBinaryGameCanvas.initMenu2()
    }
    

    open override func updateMenu(_ allBinaryGameCanvas: AllBinaryGameCanvas!) {
        allBinaryGameCanvas.initMenu2()
    }
    

    open override func popupMenu(_ allBinaryGameCanvas: AllBinaryGameCanvas!) {
        allBinaryGameCanvas.popupMenu2()
    }
    

    open override func closeMenu(_ allBinaryGameCanvas: AllBinaryGameCanvas!) {
        allBinaryGameCanvas.closeMenu2()
    }
}

