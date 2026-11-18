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
// import org.allbinary.game.input.event.GameKeyEvent
// import org.allbinary.graphics.form.ScrollSelectionForm
// import org.allbinary.input.motion.gesture.observer.MotionGestureEvent
// import org.allbinary.time.TimeDelayHelper
// import org.allbinary.util.BasicArrayList

open class ImmediateCommandFormInputProcessor: CommandFormInputProcessor {
    fileprivate var timeHelper: TimeDelayHelper! = nil
    public var gameCommandCanvas: GameCommandCanvas! = nil

    // Each class has its own field initializers
    private func initFields() {
    self.timeHelper = TimeDelayHelper(25)
    
    }
    

    public init(_ gameKeyEventList: BasicArrayList!, _ playerInputId: Int32, _ gameCommandCanvas: GameCommandCanvas!, _ form: ScrollSelectionForm!) {
        super.init(gameKeyEventList, playerInputId, gameCommandCanvas, form)
        self.initFields()
        self.gameCommandCanvas = gameCommandCanvas
    }
    

    open override func onPressGameKeyEvent(_ gameKeyEvent: GameKeyEvent!) {
        do {
            super.onPressGameKeyEvent(gameKeyEvent)
            if (self.timeHelper.isTimeTNT()) {
                self.processInputList()
                self.gameCommandCanvas.repaintBehavior.onChangeRepaint(self.getCanvas())
            }
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
    

    open override func onDownGameKeyEvent(_ gameKeyEvent: GameKeyEvent!) {
        do {
            super.onDownGameKeyEvent(gameKeyEvent)
            if (self.timeHelper.isTimeTNT()) {
                self.processInputList()
                self.gameCommandCanvas.repaintBehavior.onChangeRepaint(self.getCanvas())
            }
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
    

    open override func onUpGameKeyEvent(_ gameKeyEvent: GameKeyEvent!) {
        do {
            super.onUpGameKeyEvent(gameKeyEvent)
            if (self.timeHelper.isTimeTNT()) {
                self.processInputList()
                self.gameCommandCanvas.repaintBehavior.onChangeRepaint(self.getCanvas())
            }
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
    

    open override func onMotionGestureEvent(_ motionGestureEvent: MotionGestureEvent!) {
        do {
            super.onMotionGestureEvent(motionGestureEvent)
            if (self.timeHelper.isTimeTNT()) {
                self.processInputList()
                self.gameCommandCanvas.repaintBehavior.onChangeRepaint(self.getCanvas())
            }
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
}

