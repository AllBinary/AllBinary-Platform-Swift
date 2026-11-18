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
// package org.allbinary.game.configuration.feature

import J2SEForSwiftLibrary
// import javax.microedition.lcdui.ChoiceGroup
// import javax.microedition.lcdui.Item
// import javax.microedition.lcdui.NullImage
// import org.allbinary.MIDPUtil
// import org.allbinary.game.configuration.GameConfigurationGauge
// import org.allbinary.game.configuration.GameConfigurationUtil
// import org.allbinary.graphics.displayable.screen.CommandForm
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.util.ABHashtable
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.HashtableUtil

open class GameFeatureFormUtil: JObject {
    fileprivate static let instance: GameFeatureFormUtil! = GameFeatureFormUtil()
    public var logUtil: LogUtil! = nil
    fileprivate var meUtil: MIDPUtil! = nil

    private func initFields() {
    self.logUtil = LogUtil.getInstance()
    self.meUtil = MIDPUtil.getInstance()
    }

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult open class func getInstance() -> GameFeatureFormUtil! {
        return GameFeatureFormUtil.instance
    }
    

    @discardableResult open func getChoiceGroup(_ hashtable: ABHashtable!, _ name: String!, _ option: Int32) -> ChoiceGroup! {
        let stringMaker: StringMaker! = StringMaker()
        let choiceGroup: ChoiceGroup! = ChoiceGroup(name, option, StringUtil.getInstance().getArrayInstance(), NullImage.NULL_IMAGE_ARRAY)
        let list: BasicArrayList! = (hashtable.get(jBoxString(name)) as! BasicArrayList)
        let features: Features! = Features.getInstance()
        let ADD_CHOICE: String! = ": Adding Choice: "
        let GET_CHOICE_GROUP: String! = "getChoiceGroup"
        let size: Int32 = list.size()
        do {
            var index: Int32 = 0
            while (index < size) {
                defer { index &+= 1 }
            let gameFeature: Feature! = (list.objectArray[index] as! Feature)
            stringMaker.delete(0, stringMaker.length())
            self.logUtil.putF(stringMaker.append(name).append(ADD_CHOICE).append(gameFeature.toString()).toString(), self, GET_CHOICE_GROUP)
            choiceGroup.append(gameFeature.toString(), NullImage.NULL_IMAGE)
            if (features.isFeature(gameFeature)) {
                choiceGroup.setSelectedIndex(index, true)
            }
            }
        }
        return choiceGroup
    }
    

    open func addChoiceGroup(_ form: CommandForm!, _ hashtable: ABHashtable!, _ option: Int32) {
        let stringMaker: StringMaker! = StringMaker()
        let ADDING_CHOICE_GROUP: String! = "Adding Choice Group: "
        let ADD_CHOICE_GROUP: String! = "addChoiceGroup"
        let size: Int32 = hashtable.size()
        let objectArray: JArray<JObject?>! = HashtableUtil.getInstance().getKeysAsArray(hashtable)
        var name: String! = nil
        do {
            var index: Int32 = 0
            while (index < size) {
                defer { index &+= 1 }
            name = jUnboxString(objectArray[index])
            stringMaker.delete(0, stringMaker.length())
            self.logUtil.putF(stringMaker.append(ADDING_CHOICE_GROUP).append(name).toString(), self, ADD_CHOICE_GROUP)
            self.meUtil.appendItem(form, self.getChoiceGroup(hashtable, name, option))
            }
        }
    }
    

    open func setDefault(_ form: CommandForm!) {
        let size: Int32 = form.size()
        do {
            var index: Int32 = 0
            while (index < size) {
                defer { index &+= 1 }
            let item: Item! = form.get(index)
            if ((item is GameConfigurationGauge)) {
                GameConfigurationUtil.getInstance().setDefault((item as! GameConfigurationGauge))
            } else if ((item is ChoiceGroup)) {
                GameFeatureUtil.getInstance().setDefault((item as! ChoiceGroup))
            }
            }
        }
    }
}

