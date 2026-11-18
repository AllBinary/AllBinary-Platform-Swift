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
// package org.allbinary.graphics.opengles

import J2SEForSwiftLibrary
// import javax.microedition.lcdui.Displayable
// import org.allbinary.J2MEUtil
// import org.allbinary.game.configuration.feature.Features
// import org.allbinary.game.displayable.canvas.AllBinaryGameCanvas
// import org.allbinary.game.displayable.canvas.DemoCanvas
// import org.allbinary.game.displayable.canvas.GameInputMappingCanvas
// import org.allbinary.game.displayable.canvas.GameInputMappingInstructionsCanvas
// import org.allbinary.game.displayable.canvas.GameRunnable
// import org.allbinary.game.displayable.canvas.NullDisplayable
// import org.allbinary.game.displayable.canvas.NullWaitGameRunnable
// import org.allbinary.game.layer.SWTUtil
// import org.allbinary.game.score.displayable.HighScoresCanvas
// import org.allbinary.graphics.GraphicsStrings
// import org.allbinary.graphics.displayable.CanvasStrings
// import org.allbinary.graphics.displayable.MyCanvas
// import org.allbinary.logic.communication.log.PreLogUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.string.CommonSeps
// import org.allbinary.string.CommonStrings
// import org.allbinary.thread.NullRunnable
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListD

open class CurrentDisplayableFactory: JObject {
    fileprivate static let instance: CurrentDisplayableFactory! = CurrentDisplayableFactory()
    fileprivate var commonStrings: CommonStrings! = nil
    fileprivate var canvasStrings: CanvasStrings! = nil
    fileprivate var stringUtil: StringUtil! = nil
    fileprivate var SET_DISPLAYABLE: String! = nil
    fileprivate var SET_RUNNABLE: String! = nil
    fileprivate var CLEAR_RUNNABLE: String! = nil
    fileprivate var SET_USED_RUNNABLE: String! = nil
    fileprivate var RUNNABLE: String! = nil
    fileprivate var RUNNABLE_WAS_ALREADY_IN_USE: String! = nil
    public var DEFAULT_CHILD_NAME_LIST: BasicArrayList! = nil
    fileprivate var displayable: Displayable! = nil
    fileprivate var openGlReadydisplayable: Displayable! = nil
    fileprivate var runnable: GameRunnable! = nil
    fileprivate var usedRunnable: GameRunnable! = nil

    private func initFields() {
    self.commonStrings = CommonStrings.getInstance()
    self.canvasStrings = CanvasStrings.getInstance()
    self.stringUtil = StringUtil.getInstance()
    self.SET_DISPLAYABLE = "setDisplayable"
    self.SET_RUNNABLE = "setRunnable"
    self.CLEAR_RUNNABLE = "clearRunnable"
    self.SET_USED_RUNNABLE = "setUsedRunnable"
    self.RUNNABLE = "Runnable: "
    self.RUNNABLE_WAS_ALREADY_IN_USE = "Runnable was already in use: "
    self.DEFAULT_CHILD_NAME_LIST = BasicArrayListD()
    self.displayable = NullDisplayable.getInstance()
    self.openGlReadydisplayable = NullDisplayable.getInstance()
    self.runnable = NullWaitGameRunnable.getInstance()
    self.usedRunnable = NullWaitGameRunnable.getInstance()
    }
    

    @discardableResult open class func getInstance() -> CurrentDisplayableFactory! {
        return CurrentDisplayableFactory.instance
    }
    

    public override init() {
        super.init()
        self.initFields()
        self.DEFAULT_CHILD_NAME_LIST.add(jBoxString(self.canvasStrings.ABOUT))
        self.DEFAULT_CHILD_NAME_LIST.add(jBoxString(self.canvasStrings.OPTIONS))
        self.DEFAULT_CHILD_NAME_LIST.add(jBoxString(GameInputMappingCanvas.NAME))
        self.DEFAULT_CHILD_NAME_LIST.add(jBoxString(GameInputMappingInstructionsCanvas.NAME))
        self.DEFAULT_CHILD_NAME_LIST.add(jBoxString(HighScoresCanvas.NAME))
    }
    

    open func setMyCanvas(_ displayable: MyCanvas!) {
        if ((self.displayable is MyCanvas)) {
            if (displayable.hasChild((self.displayable as! MyCanvas))) {
                PreLogUtil.put(StringMaker().append("Child Displayable is already set for: ").append(self.stringUtil.toString(displayable)).toString(), self, self.SET_DISPLAYABLE)
                return
            }
        }
        self.setDisplayable(displayable)
    }
    

    open func setDisplayable(_ displayable: Displayable!) {
        self.displayable = displayable
        self.setOpenGlReadydisplayable(displayable)
    }
    

    open func setOpenGlReadydisplayable(_ openGlReadydisplayable: Displayable!) {
        self.openGlReadydisplayable = openGlReadydisplayable
        self.update()
    }
    

    @discardableResult open func getOpenGlReadydisplayable() -> Displayable! {
        return self.openGlReadydisplayable
    }
    

    open func setRunnable(_ runnable: GameRunnable!) {
        PreLogUtil.put(StringMaker().append(self.RUNNABLE).append(self.stringUtil.toString(runnable)).toString(), self, self.SET_RUNNABLE)
        self.runnable = runnable
        if (self.usedRunnable !== self.runnable) {
            self.update()
        } else {
            PreLogUtil.put(StringMaker().append(self.RUNNABLE_WAS_ALREADY_IN_USE).append(self.stringUtil.toString(runnable)).toString(), self, self.SET_RUNNABLE)
        }
    }
    

    open func clearRunnable() {
        PreLogUtil.put(StringMaker().append(self.RUNNABLE).append(self.stringUtil.toString(NullRunnable.getInstance())).toString(), self, self.CLEAR_RUNNABLE)
        self.setUsedRunnable(NullWaitGameRunnable.getInstance())
    }
    

    fileprivate func update() {
        do {
            let commonSeps: CommonSeps! = CommonSeps.getInstance()
            let features: Features! = Features.getInstance()
            let stringMaker: StringMaker! = StringMaker()
            stringMaker.append(self.stringUtil.toString(self.openGlReadydisplayable))
            if (SWTUtil.isSWT && !features.isDefault(OpenGLFeatureFactory.getInstance().OPENGL)) {
                PreLogUtil.put(stringMaker.append(commonSeps.SPACE).append(SWTUtil.SWT).append(commonSeps.SPACE).append(self.RUNNABLE).append(self.stringUtil.toString(NullRunnable.getInstance())).toString(), self, self.commonStrings.UPDATE)
                self.setUsedRunnable(NullWaitGameRunnable.getInstance())
            } else if (J2MEUtil.isHTML()) {
                PreLogUtil.put(stringMaker.append(commonSeps.SPACE).append(GraphicsStrings.getInstance().HTML).append(commonSeps.SPACE).append(self.RUNNABLE).append(self.stringUtil.toString(self.runnable)).toString(), self, self.commonStrings.UPDATE)
                self.setUsedRunnable(self.runnable)
            } else if ((self.openGlReadydisplayable is DemoCanvas) || (self.openGlReadydisplayable is AllBinaryGameCanvas) || features.isDefault(OpenGLFeatureFactory.getInstance().OPENGL)) {
                PreLogUtil.put(stringMaker.append(commonSeps.SPACE).append(OpenGLFeatureFactory.getInstance().OPENGL.toString()).append(commonSeps.SPACE).append(self.RUNNABLE).append(self.stringUtil.toString(self.runnable)).toString(), self, self.commonStrings.UPDATE)
                self.setUsedRunnable(self.runnable)
            } else {
                PreLogUtil.put(stringMaker.append(self.RUNNABLE).append(self.stringUtil.toString(NullRunnable.getInstance())).toString(), self, self.commonStrings.UPDATE)
                self.setUsedRunnable(NullWaitGameRunnable.getInstance())
            }
        }
    }
    

    @discardableResult open func getDisplayable() -> Displayable! {
        return self.displayable
    }
    

    @discardableResult open func getUsedRunnable() -> GameRunnable! {
        return self.usedRunnable
    }
    

    open func setUsedRunnable(_ usedRunnable: GameRunnable!) {
        PreLogUtil.put(StringMaker().append(self.RUNNABLE).append(self.stringUtil.toString(self.runnable)).append(CommonSeps.getInstance().COLON_SEP).append(self.stringUtil.toString(usedRunnable)).toString(), self, self.SET_USED_RUNNABLE)
        self.usedRunnable = usedRunnable
    }
}

