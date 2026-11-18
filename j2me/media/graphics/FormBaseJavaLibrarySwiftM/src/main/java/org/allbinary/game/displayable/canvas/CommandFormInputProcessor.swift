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
// import javax.microedition.lcdui.Canvas
// import javax.microedition.lcdui.Command
// import org.allbinary.game.commands.GameCommandsFactory
// import org.allbinary.game.configuration.feature.Features
// import org.allbinary.game.configuration.feature.InputFeatureFactory
// import org.allbinary.game.input.event.GameKeyEvent
// import org.allbinary.game.input.event.GameKeyEventFactory
// import org.allbinary.game.layer.SWTUtil
// import org.allbinary.graphics.GPoint
// import org.allbinary.graphics.displayable.MyCanvas
// import org.allbinary.graphics.form.CommandCurrentSelectionForm
// import org.allbinary.graphics.form.ScrollSelectionForm
// import org.allbinary.graphics.opengles.OpenGLFeatureFactory
// import org.allbinary.input.motion.gesture.MotionGestureInput
// import org.allbinary.input.motion.gesture.TouchMotionGestureFactory
// import org.allbinary.input.motion.gesture.observer.MotionGestureEvent
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.media.audio.PrimaryPlayerQueueFactory
// import org.allbinary.media.audio.SelectSound
// import org.allbinary.thread.PrimaryThreadPool
// import org.allbinary.time.TimeDelayHelper
// import org.allbinary.util.BasicArrayList

//In general allow scrolling of the menu and selection the center item
open class CommandFormInputProcessor: BasicMenuInputProcessor {
    fileprivate var MOTION_GESTURE_SOURCE_ID: Int32 = 0
    fileprivate var CLICK_DELAY: Int32 = 0
    fileprivate var clickTimeHelper: TimeDelayHelper! = nil
    fileprivate var DOUBLE_CLICK_DELAY: Int32 = 0
    fileprivate var doubleClickTimeHelper: TimeDelayHelper! = nil
    public var isSingleKeyProcessing: Bool = false
    fileprivate var form: ScrollSelectionForm! = nil
    fileprivate var hasPressed: Bool = false
    fileprivate var PROCESS_COMMAND: String! = nil
    fileprivate var NAME_LABEL: String! = nil

    // Each class has its own field initializers
    private func initFields() {
    self.MOTION_GESTURE_SOURCE_ID = GameKeyEventFactory.getInstance().MOTION_GESTURE_SOURCE_ID
    self.CLICK_DELAY = 150
    self.clickTimeHelper = TimeDelayHelper(self.CLICK_DELAY)
    self.DOUBLE_CLICK_DELAY = 1200
    self.doubleClickTimeHelper = TimeDelayHelper(self.DOUBLE_CLICK_DELAY)
    self.isSingleKeyProcessing = InputFeatureFactory.getInstance().isSingleKeyProcessing()
    
    self.hasPressed = false
    self.PROCESS_COMMAND = "processCommand"
    self.NAME_LABEL = " ScrollSelectionForm: "
    }
    

    public init(_ gameKeyEventList: BasicArrayList!, _ playerInputId: Int32, _ gameCanvas: MyCanvas!, _ form: ScrollSelectionForm!) {
        super.init(gameKeyEventList, playerInputId, gameCanvas)
        self.initFields()
        self.form = form
    }
    

    @discardableResult open func processInput(_ key: Int32) -> Int32 {
        if (key == Canvas.LEFT || key == Canvas.RIGHT || key == Canvas.UP || key == Canvas.DOWN) {
            PrimaryPlayerQueueFactory.getInstance().add(SelectSound.getInstance())
            self.form.processInputKey(key)
            return 1
        } else if (key == Canvas.FIRE) {
            PrimaryPlayerQueueFactory.getInstance().add(SelectSound.getInstance())
            return self.processCommand()
        }
        return 0
    }
    

    @discardableResult fileprivate func processCommand() -> Int32 {
        let commandCurrentSelectionForm: CommandCurrentSelectionForm! = (self.form as! CommandCurrentSelectionForm)
        let command: Command! = commandCurrentSelectionForm.getSelectedCommand()
        self.logUtil.putF(command.toString(), self, self.PROCESS_COMMAND)
        let features: Features! = Features.getInstance()
        let openGLFeatureFactory: OpenGLFeatureFactory! = OpenGLFeatureFactory.getInstance()
        if (SWTUtil.isSWT && features.isFeature(openGLFeatureFactory.OPENGL) && command !== GameCommandsFactory.getInstance().EXIT_COMMAND) {
            CommandRunnable(self, command).run()
        } else {
            PrimaryThreadPool.getInstance().runTask(CommandRunnable(self, command))
        }
        if (command === GameCommandsFactory.getInstance().QUIT_COMMAND) {
            return -1
        } else {
            return 1
        }
    }
    

    @discardableResult open override func processInputList() -> Int32 {
        do {
            let motionInputsIndex: Int32 = self.processMotionInputs()
            let list: BasicArrayList! = self.getGameKeyEventList()
            let size: Int32 = list.size()
            var key: Int32 = 0
            var gameKeyEvent: GameKeyEvent! = nil
            do {
                var index: Int32 = 0
                while (index < size) {
                    defer { index &+= 1 }
                gameKeyEvent = (list.objectArray[index] as! GameKeyEvent)
                key = gameKeyEvent.getKey()
                if (gameKeyEvent.getSourceId() != self.MOTION_GESTURE_SOURCE_ID) {
                    if (self.processInput(key) == 1) {
                        break
                    }
                }
                }
            }
            self.clear()
            if (size > 0 || motionInputsIndex >= 0) {
                return 1
            } else {
                return -1
            }
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
    

    @discardableResult open func processMotionInputs() -> Int32 {
        let lastIndex: Int32 = self.motionGestureEventList.size() &- 1
        if (lastIndex >= 0) {
            let motionGestureEvent: MotionGestureEvent! = (self.motionGestureEventList.objectArray[lastIndex] as! MotionGestureEvent)
            self.processMotionInput(motionGestureEvent)
        }
        self.motionGestureEventList.clear()
        return lastIndex
    }
    

    open func processMotionInput(_ motionGestureEvent: MotionGestureEvent!) {
        let touchMotionGestureFactory: TouchMotionGestureFactory! = TouchMotionGestureFactory.getInstance()
        let motionGestureInput: MotionGestureInput! = motionGestureEvent.getMotionGesture()
        if (motionGestureInput === touchMotionGestureFactory.RELEASED) {
            let point: GPoint! = motionGestureEvent.getCurrentPoint()
            if (self.form.isInForm(point)) {
                let index: Int32 = self.form.getSelectedIndexForPoint(point)
                if (index != -1) {
                    PrimaryPlayerQueueFactory.getInstance().add(SelectSound.getInstance())
                    if (index == self.form.getSelectedIndex()) {
                        if (self.clickTimeHelper.isTimeTNT()) {
                            self.processCommand()
                        }
                    } else {
                        self.form.setSelectedIndex(index)
                    }
                } else {
                }
            }
            if (self.hasPressed) {
                if (!self.doubleClickTimeHelper.isTimeTNT()) {
                    self.logUtil.putF("Double Press", self, self.gameInputStrings.PROCESS_MOTION_INPUT)
                    self.processCommand()
                }
                self.doubleClickTimeHelper.delay = self.DOUBLE_CLICK_DELAY
                self.doubleClickTimeHelper.setStartTimeTNT()
            }
            self.hasPressed = false
        } else if (motionGestureInput === touchMotionGestureFactory.PRESSED) {
            self.doubleClickTimeHelper.delay = 0
            self.hasPressed = true
        }
    }
    

    @discardableResult open override func toString() -> String! {
        return StringMaker().append(super.toString()).append(self.NAME_LABEL).append(self.form.toString()).toString()
    }
}

