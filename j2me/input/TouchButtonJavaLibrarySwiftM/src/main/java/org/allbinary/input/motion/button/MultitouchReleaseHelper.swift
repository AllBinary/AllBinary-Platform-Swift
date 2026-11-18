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
// import org.allbinary.game.input.event.GameKeyEvent

open class MultitouchReleaseHelper: ReleaseHelper {
    

    public override init(_ touchButtonRecognizer: TouchButtonRecognizer!) {
        super.init(touchButtonRecognizer)
    }
    

    open override func release(_ touchButtonInput: TouchButtonInput!, _ deviceId: Int32) {
        let cancelTouchButtonInput: TouchButtonInput! = CancelTouchButtonInputFactory.getInstance().getCancel(touchButtonInput)
        var nextTouchButtonInput: TouchButtonInput! = nil
        var gameKeyEvent: GameKeyEvent! = nil
        do {
            var index: Int32 = self.touchButtonRecognizer.currentlyPressedTouchButtonSingleton.size() &- 1
            while (index >= 0) {
                defer { index &-= 1 }
            nextTouchButtonInput = self.touchButtonRecognizer.currentlyPressedTouchButtonSingleton.get(index)
            if (cancelTouchButtonInput === nextTouchButtonInput) {
                gameKeyEvent = nextTouchButtonInput.getGameKeyEvent()
                self.touchButtonRecognizer.upGameKeyEventHandler.fireEvent(gameKeyEvent)
                self.touchButtonRecognizer.upGameKeyEventHandler.getInstanceForDevice(deviceId).fireEvent(gameKeyEvent)
                self.touchButtonRecognizer.currentlyPressedTouchButtonSingleton.removeAt(index)
            }
            }
        }
    }
}

