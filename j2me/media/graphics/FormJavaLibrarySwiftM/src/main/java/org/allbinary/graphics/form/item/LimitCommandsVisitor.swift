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
// package org.allbinary.graphics.form.item

import J2SEForSwiftLibrary
// import javax.microedition.lcdui.Command
// import org.allbinary.game.commands.GameCommandsFactory
// import org.allbinary.graphics.displayable.DisplayInfoSingleton
// import org.allbinary.graphics.form.ScreenInfo
// import org.allbinary.logic.java.bool.BooleanFactory
// import org.allbinary.logic.util.visitor.Visitor

open class LimitCommandsVisitor: Visitor {
    fileprivate var isNotSmallDisplay: Bool = false

    // Each class has its own field initializers
    private func initFields() {
    
    }
    

    public override init() {
        super.init()
        self.initFields()
        let displayInfo: DisplayInfoSingleton! = DisplayInfoSingleton.getInstance()
        self.isNotSmallDisplay = (displayInfo.isPortrait() && displayInfo.getLastHeight() > ScreenInfo.getInstance().SMALL_WIDTH) || (!displayInfo.isPortrait() && displayInfo.getLastHeight() > ScreenInfo.getInstance().SMALL_HEIGHT)
    }
    

    @discardableResult open override func visit(_ anyType: JObject!) -> JObject! {
        let command: Command! = (anyType as! Command)
        let booleanFactory: BooleanFactory! = BooleanFactory.getInstance()
        if (self.isNotSmallDisplay || command.getPriority() == 1 || command === GameCommandsFactory.getInstance().EXIT_COMMAND || command === GameCommandsFactory.getInstance().EXIT_WITHOUT_PROGRESS_COMMAND) {
            return jBoxValue(booleanFactory.TRUE)
        } else {
            return jBoxValue(booleanFactory.FALSE)
        }
    }
}

