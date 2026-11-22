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
// package org.allbinary.game.configuration

import J2SEForSwiftLibrary
// import javax.microedition.lcdui.TextField
// import org.allbinary.logic.StdUtil
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.util.ABHashtable

open class GameConfigurationTextInput: JObject {
    fileprivate static var hashtable: ABHashtable! = StdUtil.getInstance().createHashtable()
    public static var SIMULATOR_IP: GameConfigurationTextInput! = GameConfigurationTextInput("IP: ", "192.168.1.3")
    public static var SIMULATOR_PORT: GameConfigurationTextInput! = GameConfigurationTextInput("Port: ", "8010")
    fileprivate var label: String! = nil
    fileprivate var text: String! = nil

    private func initFields() {
    self.label = StringUtil.getInstance().EMPTY_STRING
    self.text = StringUtil.getInstance().EMPTY_STRING
    }
    

    public init(_ label: String!, _ text: String!) {
        super.init()
        self.initFields()
        self.setText(text)
        self.setLabel(label)
        GameConfigurationTextInput.hashtable.put(self.getLabel(), self)
    }
    

    open class func update(_ textField: TextField!) {
        let anyType: JObject! = jAsObject(textField.getLabel())
        let gameConfigurationTextInput: GameConfigurationTextInput! = (GameConfigurationTextInput.hashtable.get(anyType) as! GameConfigurationTextInput)
        gameConfigurationTextInput.setText(textField.getString())
    }
    

    open func setText(_ text: String!) {
        self.text = text
    }
    

    @discardableResult open func getText() -> String! {
        return self.text
    }
    

    open func setLabel(_ label: String!) {
        self.label = label
    }
    

    @discardableResult open func getLabel() -> String! {
        return self.label
    }
    

    @discardableResult open class func getHashtable() -> ABHashtable! {
        return GameConfigurationTextInput.hashtable
    }
}

