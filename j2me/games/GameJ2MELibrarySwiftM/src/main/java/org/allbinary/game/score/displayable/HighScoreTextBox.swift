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
// package org.allbinary.game.score.displayable

import J2SEForSwiftLibrary
// import javax.microedition.lcdui.CommandListener
// import javax.microedition.lcdui.Font
// import javax.microedition.lcdui.Graphics
// import javax.microedition.lcdui.TextField
// import org.allbinary.PostGameCommandFactory
// import org.allbinary.game.GameInfo
// import org.allbinary.game.score.HighScore
// import org.allbinary.game.score.HighScoresHelperBaseInterface
// import org.allbinary.game.score.HighScoresFactoryInterface
// import org.allbinary.graphics.color.BasicColor
// import org.allbinary.graphics.color.BasicColorFactory
// import org.allbinary.graphics.form.item.CustomTextBox
// import org.allbinary.graphics.paint.NullPaintable
// import org.allbinary.graphics.paint.Paintable
// import org.allbinary.graphics.paint.SimpleTextPaintable
// import org.allbinary.input.event.VirtualKeyboardEventHandler
// import org.allbinary.logic.system.os.GenericOperatingSystem
// import org.allbinary.logic.system.os.OperatingSystemFactory
// import org.allbinary.logic.system.security.licensing.AbeClientInformationInterface
// import org.allbinary.logic.system.security.licensing.InApplicationPurchaseFactory

open class HighScoreTextBox: CustomTextBox {
    fileprivate var virtualKeyboardEventHandler: VirtualKeyboardEventHandler! = nil
    fileprivate var highScoreUtil: HighScoreUtil! = nil
    fileprivate var pleaseWait: Paintable! = nil
    fileprivate var paintable: Paintable! = nil
    public var submitted: Bool = false

    // Each class has its own field initializers
    private func initFields() {
    self.virtualKeyboardEventHandler = VirtualKeyboardEventHandler.getInstance()
    
    self.pleaseWait = SimpleTextPaintable(self.commonStrings.PLEASE_WAIT, BasicColorFactory.getInstance().WHITE)
    self.paintable = NullPaintable.getInstance()
    self.submitted = false
    }
    

    public init(_ highScoresFactoryInterface: HighScoresFactoryInterface!, _ highScoresHelper: HighScoresHelperBaseInterface!, _ abeClientInformation: AbeClientInformationInterface!, _ gameInfo: GameInfo!, _ cmdListener: CommandListener!, _ name: String!, _ highScore: HighScore!, _ backgrounBasicColor: BasicColor!, _ foregroundBasicColor: BasicColor!) {
        super.init(cmdListener, "New High Score Enter Name:", name, 12, TextField.ANY, Font.getDefaultFont(), backgrounBasicColor, foregroundBasicColor)
        self.initFields()
        self.highScoreUtil = HighScoreUtil(highScoresFactoryInterface, highScoresHelper, abeClientInformation, gameInfo, cmdListener, name, highScore)
        let operatingSystemInterface: GenericOperatingSystem! = OperatingSystemFactory.getInstance().getOperatingSystemInstance()
        if (operatingSystemInterface.isOverScan()) {
            let username: String! = InApplicationPurchaseFactory.getInstance().getUserName()
            self.getTextFieldItem().setString(username)
        }
    }
    

    open override func initCommands(_ cmdListener: CommandListener!) {
        self.removeAllCommands()
        PostGameCommandFactory.getInstance().addCommands(self)
        self.addCommand(HighScoreUtil.SUBMIT_TEXTBOX_COMMAND)
        self.setCommandListener(cmdListener)
    }
    

    open override func `open`() {
        self.virtualKeyboardEventHandler.`open`()
        self.paintable = NullPaintable.getInstance()
        super.`open`()
    }
    

    open override func close() {
        self.virtualKeyboardEventHandler.close()
        self.paintable = self.pleaseWait
        self.repaintBehavior.onChangeRepaint(self)
        super.close()
        self.removeCommand(HighScoreUtil.SUBMIT_TEXTBOX_COMMAND)
        self.update()
        if (self.submitted) {
            self.highScoreUtil.saveHighScore()
        } else {
        }
        self.paintable = NullPaintable.getInstance()
        self.repaintBehavior.onChangeRepaint(self)
    }
    

    open override func update() {
        let name: String! = self.getTextFieldItem().getString()
        self.highScoreUtil.update(name)
        super.update()
    }
    

    open override func paint(_ graphics: Graphics!) {
        super.paint(graphics)
        self.paintable.paint(graphics)
    }
    

    open func saveHighScore() {
        self.highScoreUtil.saveHighScore()
    }
    

    open override func submit() {
        self.highScoreUtil.submit(self)
    }
}

