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
// import javax.microedition.lcdui.NullCanvas
// import org.allbinary.game.input.event.GameKeyEvent
// import org.allbinary.input.motion.gesture.observer.MotionGestureEvent
// import org.allbinary.util.BasicArrayListUtil

open class NoMenuInputProcessor: BasicMenuInputProcessor {
    fileprivate static let SINGLETON: NoMenuInputProcessor! = NoMenuInputProcessor()
    

    @discardableResult open class func getInstance() -> NoMenuInputProcessor! {
        return NoMenuInputProcessor.SINGLETON
    }
    

    public init() {
        super.init(BasicArrayListUtil.getInstance().getImmutableInstance(), -1, NullCanvas.NULL_CANVAS)
    }
    

    open override func onDownGameKeyEvent(_ gameKeyEvent: GameKeyEvent!) {
    }
    

    open override func onUpGameKeyEvent(_ gameKeyEvent: GameKeyEvent!) {
    }
    

    open override func onMotionGestureEvent(_ motionGestureEvent: MotionGestureEvent!) {
    }
}

