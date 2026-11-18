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
// import javax.microedition.lcdui.Command
// import javax.microedition.lcdui.CommandListener
// import javax.microedition.lcdui.Graphics
// import org.allbinary.game.layer.AllBinaryGameLayerManager
// import org.allbinary.game.paint.ColorFillBasePaintable
// import org.allbinary.game.paint.ColorFillPaintableFactory
// import org.allbinary.graphics.Anchor
// import org.allbinary.graphics.draw.DrawStringUtil
// import org.allbinary.logic.string.StringUtil

open class GameInputMappingInstructionsCanvas: GameCommandCanvas {
    public static let DISPLAY: Command! = Command("Help", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 1)
    public static let CLOSE: Command! = Command("Close", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 1)
    public static let NAME: String! = "GameInputMappingInstructionsCanvas"
    fileprivate var drawStringUtil: DrawStringUtil! = nil
    public var TITLE: String! = nil
    fileprivate var instructions: JArray<String?>! = nil
    fileprivate var colorFillPaintable: ColorFillBasePaintable! = nil
    fileprivate var anchor: Int32 = 0

    // Each class has its own field initializers
    private func initFields() {
    self.drawStringUtil = DrawStringUtil.getInstance()
    self.TITLE = "Input Instructions"
    self.instructions = JArray<String?>(["Add Input Mapping:", "1. Select the desired action by generating a currently defined input for a given action.", "(Example: Press the '1' key to select the Fire action)", "2. Make the newly desired input for the selected action.", "(Example: Press 'f' to add it to the selected action)", "Note: If the input is already mapped to another action then it will not be added. You", "will need to deleted from the other action before adding it to another.", "Warning: Not all keys map for a given platform and show as Unknown.", StringUtil.getInstance().EMPTY_STRING, "Remove Input Mapping:", "1. Select the desired action by generating a currently defined input for a given action.", "(Example: Press the key '1' to select the Fire action)", "2. Select a mapped input for the selected action.", "(Example: Press the key '1' to select the '1' key input for the selected Fire action)", "3. Press the Delete Key."])
    
    self.anchor = Anchor.TOP_LEFT
    }
    

    public init(_ commandListener: CommandListener!, _ allBinaryGameLayerManager: AllBinaryGameLayerManager!) {
        super.init(commandListener, GameInputMappingInstructionsCanvas.NAME, allBinaryGameLayerManager.getBackgroundBasicColor(), allBinaryGameLayerManager.getForegroundBasicColor())
        self.initFields()
        self.logUtil.putF(self.commonStrings.START, self, self.commonStrings.CONSTRUCTOR)
        self.colorFillPaintable = ColorFillPaintableFactory.getInstance().getInstance(allBinaryGameLayerManager.getBackgroundBasicColor(), false)
    }
    

    open override func initCommands(_ cmdListener: CommandListener!) {
        self.removeAllCommands()
        self.addCommand(GameInputMappingInstructionsCanvas.CLOSE)
        self.setCommandListener(cmdListener)
    }
    

    open override func paint(_ graphics: Graphics!) {
        self.myFontProcessor.process(graphics)
        self.colorFillPaintable.paint(graphics)
        let halfWidth: Int32 = self.displayInfo.getLastHalfWidth()
        let beginWidth: Int32 = (graphics.getFont().stringWidth(self.TITLE) >> 1)
        graphics.setColor(self.foregroundColor)
        graphics.drawString(self.TITLE, halfWidth &- beginWidth, self.fontHeight, self.anchor)
        self.drawStringUtil.drawCenterStrings(graphics, self.instructions, self.displayInfo.getLastWidth(), self.fontHeight, halfWidth, 3 * self.fontHeight)
        super.paint(graphics)
    }
}

