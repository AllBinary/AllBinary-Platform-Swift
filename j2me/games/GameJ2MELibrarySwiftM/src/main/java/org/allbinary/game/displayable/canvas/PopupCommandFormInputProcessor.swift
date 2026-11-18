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
// import org.allbinary.graphics.displayable.MyCanvas
// import org.allbinary.graphics.form.ScrollSelectionForm
// import org.allbinary.input.motion.gesture.observer.MotionGestureEvent
// import org.allbinary.util.BasicArrayList

open class PopupCommandFormInputProcessor: CommandFormInputProcessor {
    

    public init(_ gameKeyEventList: BasicArrayList!, _ playerInputId: Int32, _ gameCanvas: MyCanvas!, _ form: ScrollSelectionForm!, _ popupMenuInputProcessor: PopupMenuInputProcessor!) {
        super.init(gameKeyEventList, playerInputId, gameCanvas, form)
    }
    

    @discardableResult open override func processInput(_ key: Int32) -> Int32 {
        return super.processInput(key)
    }
    

    open override func processMotionInput(_ motionGestureEvent: MotionGestureEvent!) {
        super.processMotionInput(motionGestureEvent)
    }
}

