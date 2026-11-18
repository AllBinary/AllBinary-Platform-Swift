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
// package org.allbinary.input.motion.gesture.configuration

import J2SEForSwiftLibrary
// import org.allbinary.game.input.CompleteMotionGestureInputEvent
// import org.allbinary.graphics.color.BasicColor
// import org.allbinary.graphics.color.BasicColorFactory
// import org.allbinary.input.motion.gesture.MotionGestureToMotionGestureActionAssociation
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListD

open class MotionGestureConfiguration: JObject {
    fileprivate var diagonalMotionGestureAllowed: Bool = false
    fileprivate var diagonalTolerance: Int32 = 0
    fileprivate var minimumMotionGesture: Int32 = 0
    fileprivate var button: String! = nil
    fileprivate var color: BasicColor! = nil
    fileprivate var executingActions: Bool = false
    fileprivate var mouseButtonMask: Int32 = 0
    fileprivate var activeCommands: BasicArrayList! = nil

    private func initFields() {
    self.diagonalMotionGestureAllowed = true
    self.diagonalTolerance = 7
    self.minimumMotionGesture = 9
    self.button = StringUtil.getInstance().EMPTY_STRING
    self.color = BasicColorFactory.getInstance().BLUE
    self.executingActions = true
    self.mouseButtonMask = 0
    self.activeCommands = BasicArrayListD()
    }
    

    public override init() {
        super.init()
        self.initFields()
    }
    

    open func addMotionGestureAction(_ list: BasicArrayList!, _ commandAction: CompleteMotionGestureInputEvent!) {
        self.activeCommands.add(MotionGestureToMotionGestureActionAssociation(list, commandAction))
    }
    

    open func clearMotionGestureAction() {
        self.activeCommands.clear()
    }
    

    @discardableResult open func getAssociateCommandActionsList() -> BasicArrayList! {
        return self.activeCommands
    }
    

    @discardableResult open func isDiagonalMotionGestureAllowed() -> Bool {
        return self.diagonalMotionGestureAllowed
    }
    

    @discardableResult open func isExecutingActionsAllowed() -> Bool {
        return self.executingActions
    }
    

    open func setExecutingActionsAllowed(_ executingActionAllowed: Bool) {
        self.executingActions = executingActionAllowed
    }
    

    open func setDiagonalMotionGestureAllowed(_ diagonalMotionGestureAllowed: Bool) {
        self.diagonalMotionGestureAllowed = diagonalMotionGestureAllowed
    }
    

    @discardableResult open func getDiagonalTolerance() -> Int32 {
        return self.diagonalTolerance
    }
    

    open func setDiagonalTolerance(_ diagonalTolerance: Int32) {
        self.diagonalTolerance = diagonalTolerance
    }
    

    @discardableResult open func getMinimumMotionGesture() -> Int32 {
        return self.minimumMotionGesture
    }
    

    open func setMinimumMotionGesture(_ minimumMotionGesture: Int32) {
        self.minimumMotionGesture = minimumMotionGesture
    }
    

    @discardableResult open func getButton() -> String! {
        return self.button
    }
    

    open func setButton(_ button: String!) {
        self.button = button
    }
    

    @discardableResult open func getColor() -> BasicColor! {
        return self.color
    }
    

    open func setColor(_ color: BasicColor!) {
        self.color = color
    }
    

    @discardableResult open func getMouseButtonMask() -> Int32 {
        return self.mouseButtonMask
    }
    

    open func setMouseButtonMask(_ mouseButtonMask: Int32) {
        self.mouseButtonMask = mouseButtonMask
    }
}

