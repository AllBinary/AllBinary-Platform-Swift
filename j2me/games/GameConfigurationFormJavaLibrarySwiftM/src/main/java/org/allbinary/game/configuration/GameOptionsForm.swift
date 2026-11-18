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
// import javax.microedition.lcdui.Choice
// import javax.microedition.lcdui.Command
// import javax.microedition.lcdui.CommandListener
// import javax.microedition.lcdui.Item
// import javax.microedition.lcdui.TextField
// import org.allbinary.MIDPUtil
// import org.allbinary.game.commands.GameCommandsFactory
// import org.allbinary.game.configuration.feature.GameFeatureChoiceGroups
// import org.allbinary.game.configuration.feature.GameFeatureFormUtil
// import org.allbinary.game.configuration.feature.GameFeatureItemCommandListener
// import org.allbinary.game.configuration.feature.GameFeatureItemStateListener
// import org.allbinary.game.configuration.feature.SensorFeatureFactory
// import org.allbinary.game.configuration.persistance.GameConfigurationPersistanceSingleton
// import org.allbinary.game.configuration.persistance.KeyValuePersistance
// import org.allbinary.graphics.color.BasicColor
// import org.allbinary.graphics.displayable.command.MyCommandsFactory
// import org.allbinary.graphics.displayable.screen.CommandForm
// import org.allbinary.input.gyro.OrientationData
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.system.security.licensing.AbeClientInformationInterface
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.HashtableUtil
// import org.allbinary.logic.StdUtil
// import org.allbinary.util.ABHashtable

open class GameOptionsForm: CommandForm {
    fileprivate var meUtil: MIDPUtil! = nil

    // Each class has its own field initializers
    private func initFields() {
    self.meUtil = MIDPUtil.getInstance()
    }
    

    public override init(_ commandListener: CommandListener!, _ title: String!, _ backgrounBasicColor: BasicColor!, _ foregroundBasicColor: BasicColor!) {
        super.init(commandListener, title, backgrounBasicColor, foregroundBasicColor)
        self.initFields()
        self.logUtil.putF(self.commonStrings.START, self, self.commonStrings.CONSTRUCTOR)
        self.addConfiguration()
        let gameFeatureFormUtil: GameFeatureFormUtil! = GameFeatureFormUtil.getInstance()
        gameFeatureFormUtil.addChoiceGroup(self, GameFeatureChoiceGroups.getExclusiveInstance().get(), ChoiceConstants.EXCLUSIVE)
        gameFeatureFormUtil.addChoiceGroup(self, GameFeatureChoiceGroups.getMultipleInstance().get(), ChoiceConstants.MULTIPLE)
        self.initCommands(commandListener)
        self.setItemStateListener(GameFeatureItemStateListener(self))
        self.addTextFieldsIfSimulated()
    }
    

    open func closeClientInformation(_ abeClientInformation: AbeClientInformationInterface!) {
        super.close()
        self.save(abeClientInformation)
    }
    

    fileprivate func addTextFieldsIfSimulated() {
        let key: String! = OrientationData.getInstance().ORIENTATION_SENSOR_INPUT
        let hashtable: ABHashtable! = GameFeatureChoiceGroups.getExclusiveInstance().get()
        if (hashtable != nil) {
            let listCanBeNull: JObject! = hashtable.get(jBoxString(key))
            if (listCanBeNull != nil) {
                let list: BasicArrayList! = (listCanBeNull as! BasicArrayList)
                if (list.contains(SensorFeatureFactory.getInstance().SIMULATED_ORIENTATION_SENSORS)) {
                    self.addTextFields()
                }
            }
        }
    }
    

    fileprivate func addTextFields() {
        let hashtable: ABHashtable! = GameConfigurationTextInput.getHashtable()
        let size: Int32 = hashtable.size()
        let objectArray: JArray<JObject?>! = HashtableUtil.getInstance().getKeysAsArray(hashtable)
        var gameConfigurationTextInput: GameConfigurationTextInput! = nil
        var textField: TextField! = nil
        do {
            var index: Int32 = 0
            while (index < size) {
                defer { index &+= 1 }
            gameConfigurationTextInput = (hashtable.get(objectArray[index]) as! GameConfigurationTextInput)
            textField = TextField(gameConfigurationTextInput.getLabel(), gameConfigurationTextInput.getText(), 30, TextField.ANY)
            self.meUtil.appendItem(self, textField)
            }
        }
    }
    

    fileprivate func addConfiguration() {
        let METHOD_NAME: String! = "addConfiguration"
        let NAME: String! = "Name: "
        let list: BasicArrayList! = GameConfigurationSingleton.getInstance().getOptionsBasicArrayList()
        let GAUGE_CHANGE: Command! = MyCommandsFactory.getInstance().GAUGE_CHANGE
        let stringMaker: StringMaker! = StringMaker()
        let size: Int32 = list.size()
        var gameConfiguration: GameConfiguration! = nil
        var gauge: GameConfigurationGauge! = nil
        do {
            var index: Int32 = 0
            while (index < size) {
                defer { index &+= 1 }
            gameConfiguration = (list.objectArray[index] as! GameConfiguration)
            stringMaker.delete(0, stringMaker.length())
            self.logUtil.putF(stringMaker.append(NAME).append(gameConfiguration.toString()).toString(), self, METHOD_NAME)
            gauge = GameConfigurationGauge(gameConfiguration)
            gauge.setDefaultCommand(GAUGE_CHANGE)
            gauge.setItemCommandListener(GameFeatureItemCommandListener(self))
            self.meUtil.appendItem(self, gauge)
            }
        }
    }
    

    open override func initCommands(_ cmdListener: CommandListener!) {
        let gameCommandsFactory: GameCommandsFactory! = GameCommandsFactory.getInstance()
        self.removeAllCommands()
        self.addCommand(gameCommandsFactory.CLOSE_OPTIONS)
        self.addCommand(gameCommandsFactory.DEFAULT_OPTIONS)
        self.setCommandListener(cmdListener)
    }
    

    open func save(_ abeClientInformation: AbeClientInformationInterface!) {
        let size: Int32 = self.size()
        var item: Item! = nil
        do {
            var index: Int32 = 0
            while (index < size) {
                defer { index &+= 1 }
            item = self.get(index)
            if ((item is GameConfigurationGauge)) {
                GameConfigurationUtil.getInstance().update((item as! GameConfigurationGauge))
            } else if ((item is TextField)) {
                GameConfigurationTextInput.update((item as! TextField))
            }
            }
        }
        GameConfigurationUtil.getInstance().updateCompetitionValue()
        let hashtable: ABHashtable! = StdUtil.getInstance().createHashtable()
        let SCALE: GameConfiguration! = GameConfigurationCentral.getInstance().SCALE
        hashtable.put(jBoxString(SCALE.getName()), jBoxString(jstr(SCALE.getValue().intValue())))
        let keyValuePersistance: KeyValuePersistance! = GameConfigurationPersistanceSingleton.getInstance()
        keyValuePersistance.clear()
        keyValuePersistance.loadAll(abeClientInformation)
        let list: BasicArrayList! = keyValuePersistance.getIds()
        keyValuePersistance.save(abeClientInformation, hashtable)
        let size2: Int32 = list.size()
        var integer: Int32! = nil
        do {
            var index: Int32 = 0
            while (index < size2) {
                defer { index &+= 1 }
            integer = jUnboxValue(list.objectArray[index], Int32.self)
            keyValuePersistance.delete(abeClientInformation, integer.intValue())
            }
        }
    }
}

