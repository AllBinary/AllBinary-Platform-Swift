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
// package org.allbinary.midlet

import J2SEForSwiftLibrary
// import javax.microedition.lcdui.Command
// import javax.microedition.lcdui.CommandListener
// import javax.microedition.lcdui.Display
// import javax.microedition.lcdui.Displayable
// import javax.microedition.lcdui.NullCanvas
// import javax.microedition.midlet.MIDlet
// import javax.microedition.midlet.MIDletStateChangeException
// import org.allbinary.logic.StdUtil
// import org.allbinary.logic.communication.log.ForcedLogUtil
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.communication.log.PreLogUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.logic.util.event.EventStrings
// import org.allbinary.string.CommonLabels
// import org.allbinary.string.CommonStrings
// import org.allbinary.system.Memory
// import org.allbinary.logic.NullUtil
// import org.allbinary.util.ABHashtable

open class AllBinaryMidlet: MIDlet, CommandListener {
    fileprivate static var NULL_ALLBINARY_MIDLET: JObject! = NullUtil.getInstance().NULL_OBJECT
    public var logUtil: LogUtil! = nil
    public var commonStrings: CommonStrings! = nil
    fileprivate var SET_DISPLAY: String! = nil
    fileprivate var SETTING_: String! = nil
    fileprivate var _DISPLAY_: String! = nil
    fileprivate var SETTING_NO_TITLE: String! = nil
    fileprivate var hashtable: ABHashtable! = nil
    fileprivate var midletDestroyed: Bool = false

    // Each class has its own field initializers
    private func initFields() {
    self.logUtil = LogUtil.getInstance()
    self.commonStrings = CommonStrings.getInstance()
    self.SET_DISPLAY = "setDisplay"
    self.SETTING_ = "Setting: "
    self._DISPLAY_ = " Display: "
    self.SETTING_NO_TITLE = "Setting: No Title, Display: "
    self.hashtable = StdUtil.getInstance().createHashtable()
    self.midletDestroyed = false
    }
    

    @discardableResult open class func getNullInstance() -> AllBinaryMidlet! {
        if (AllBinaryMidlet.NULL_ALLBINARY_MIDLET === NullUtil.getInstance().NULL_OBJECT) {
            AllBinaryMidlet.NULL_ALLBINARY_MIDLET = AllBinaryMidlet()
        }
        return (AllBinaryMidlet.NULL_ALLBINARY_MIDLET as! AllBinaryMidlet)
    }
    

    public override init() {
        super.init()
        self.initFields()
        self.logUtil.putF(self.commonStrings.CONSTRUCTOR, self, "AllBinaryMidlet::AllBinaryMidlet")
    }
    

    open func setDisplay(_ newDisplay: Displayable!) {
        var title: String! = StringUtil.getInstance().EMPTY_STRING
        if (newDisplay !== NullCanvas.NULL_CANVAS) {
            title = newDisplay.getTitle()
            self.logUtil.putF(StringMaker().append(self.SETTING_).append(title).append(self._DISPLAY_).append(StringUtil.getInstance().toString(newDisplay)).toString(), self, self.SET_DISPLAY)
        }
        let display: Display! = self.getDisplay()
        display.setCurrent(newDisplay)
    }
    

    @discardableResult open func getDisplay() -> Display! {
        return Display.getDisplay(self)
    }
    

    @discardableResult open func getCurrentDisplayable() -> Displayable! {
        return Display.getDisplay(self).getCurrent()
    }
    

    open func setDestroyed(_ destroyed: Bool) {
        self.midletDestroyed = destroyed
    }
    

    @discardableResult open func isDestroyed() -> Bool {
        return self.midletDestroyed
    }
    

    open override func startApp() {
        ForcedLogUtil.log(EventStrings.getInstance().PERFORMANCE_MESSAGE, self)
    }
    

    open override func pauseApp() {
        ForcedLogUtil.log(EventStrings.getInstance().PERFORMANCE_MESSAGE, self)
    }
    

    open func destroyAppInRunnable(_ unconditional: Bool, _ isProgress: Bool) {
    }
    

    open override func destroyApp(_ unconditional: Bool) {
        let METHOD_NAME: String! = "AllBinaryMidlet::destroyApp"
        do {
            self.logUtil.putF(self.commonStrings.START, self, METHOD_NAME)
            PreLogUtil.put(Memory.getInfo(), self, METHOD_NAME)
            self.setDestroyed(true)
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
    

    open func setStartStateHashtable(_ hashtable: ABHashtable!) {
        self.logUtil.putF(StringMaker().append(CommonLabels.getInstance().START_LABEL).append(StringUtil.getInstance().toString(hashtable)).toString(), self, "setStartStateHashtable")
        self.hashtable = hashtable
    }
    

    @discardableResult open func getStartStateHashtable() -> ABHashtable! {
        self.logUtil.putF(StringMaker().append(CommonLabels.getInstance().START_LABEL).append(StringUtil.getInstance().toString(self.hashtable)).toString(), self, "getStartStateHashtable")
        return self.hashtable
    }
    

    @discardableResult open func getCurrentStateHashtable() -> ABHashtable! {
        self.logUtil.putF(self.commonStrings.START, self, "getStateHashtable")
        return StdUtil.getInstance().NULL_TABLE
    }
    

    open func commandAction(_ command: Command!, _ displayable: Displayable!) {
    }
}

