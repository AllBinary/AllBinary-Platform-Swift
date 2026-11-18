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
// import org.allbinary.graphics.color.BasicColor

open class CommandTextItem: ABTextItem {
    fileprivate var command: Command! = nil

    // Each class has its own field initializers
    private func initFields() {
    
    }
    

    public init(_ command: Command!, _ layout: Int32, _ altText: String!, _ backgroundBasicColor: BasicColor!, _ foregroundBasicColor: BasicColor!) {
        super.init(command.getLabel(), layout, altText, backgroundBasicColor, foregroundBasicColor)
        self.initFields()
        self.command = command
    }
    

    @discardableResult open override func isFocusable() -> Bool {
        return true
    }
    

    @discardableResult open func getCommand() -> Command! {
        return self.command
    }
}

