/*
 *
 * AllBinary Open License Version 1
 * Copyright (c) 2022 AllBinary
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
// package org.allbinary.graphics.displayable.screen

import J2SEForSwiftLibrary
// import javax.microedition.lcdui.Canvas
// import javax.microedition.lcdui.Command
// import javax.microedition.lcdui.CommandListener
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.string.CommonStrings
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListD

open class WebCommandProcessor: JObject {
    fileprivate static let instance: WebCommandProcessor! = WebCommandProcessor()
    public var logUtil: LogUtil! = nil
    fileprivate var aboutCommandProcessor: AboutCommandProcessor! = nil
    public var list: BasicArrayList! = nil

    private func initFields() {
    self.logUtil = LogUtil.getInstance()
    self.aboutCommandProcessor = AboutCommandProcessor.getInstance()
    self.list = BasicArrayListD()
    }

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult open class func getInstance() -> WebCommandProcessor! {
        return WebCommandProcessor.instance
    }
    

    open func process(_ midletCommandListener: CommandListener!, _ command: Command!, _ canvas: Canvas!) {
        do {
            self.list.removeAt(0)
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
}

