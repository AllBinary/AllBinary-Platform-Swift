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
// import java.util.Enumeration
// import javax.microedition.lcdui.ChoiceGroup
// import org.allbinary.TsUtil
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.string.CommonLabels
// import org.allbinary.util.ABHashtable
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.EnumerationUtil
// import org.allbinary.util.HashtableUtil

open class GameFeatureUtil: JObject {
    fileprivate static let instance: GameFeatureUtil! = GameFeatureUtil()
    public var logUtil: LogUtil! = nil
    fileprivate var tsUtil: TsUtil! = nil
    fileprivate var enumerationUtil: EnumerationUtil! = nil
    public var ON_GAME_FEATURE_CHANGE: String! = nil
    public var GAME_FEATURE_CHANGED: String! = nil

    private func initFields() {
    self.logUtil = LogUtil.getInstance()
    self.tsUtil = TsUtil.getInstance()
    self.enumerationUtil = EnumerationUtil.getInstance()
    self.ON_GAME_FEATURE_CHANGE = "onGameFeatureChange"
    self.GAME_FEATURE_CHANGED = "Game Feature Changed: "
    }

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult open class func getInstance() -> GameFeatureUtil! {
        return GameFeatureUtil.instance
    }
    

    open func setDefault(_ choiceGroup: ChoiceGroup!) {
        let stringBuffer: StringMaker! = StringMaker()
        let METHOD_NAME: String! = "setDefault"
        let SELECTED_ARRAY_RETURN: String! = "selectedArray_return["
        let SELECTED_SEP: String! = "] = "
        let selectedArray_return: JArray<Bool>! = JArray<Bool>(choiceGroup.size(), false)
        let total: Int32 = choiceGroup.getSelectedFlags(selectedArray_return)
        stringBuffer.append("Multiple Total Choices: ")
        stringBuffer.appendint(total)
        self.logUtil.putF(stringBuffer.toString(), self, METHOD_NAME)
        let features: Features! = Features.getInstance()
        do {
            var index: Int32 = 0
            while (index < selectedArray_return.length) {
                defer { index &+= 1 }
            let isSelected: Bool = selectedArray_return[index]
            stringBuffer.delete(0, stringBuffer.length())
            stringBuffer.append(SELECTED_ARRAY_RETURN)
            stringBuffer.appendint(index)
            stringBuffer.append(SELECTED_SEP)
            stringBuffer.appendboolean(isSelected)
            self.logUtil.putF(stringBuffer.toString(), self, METHOD_NAME)
            let selectedChoiceLabel: String! = choiceGroup.getString(index)
            let gameFeature: Feature! = Feature.getInstance(selectedChoiceLabel)
            if (features.isDefault(gameFeature)) {
                features.add(gameFeature)
                choiceGroup.setSelectedIndex(index, true)
            } else {
                features.remove(gameFeature)
                choiceGroup.setSelectedIndex(index, false)
            }
            }
        }
    }
    

    open func updateMultiple(_ choiceGroup: ChoiceGroup!) {
        let stringBuffer: StringMaker! = StringMaker()
        let METHOD_NAME: String! = "updateMultiple"
        let SELECTED_ARRAY_RETURN: String! = "selectedArray_return["
        let SELECTED_SEP: String! = "] = "
        let selectedArray_return: JArray<Bool>! = JArray<Bool>(choiceGroup.size(), false)
        let total: Int32 = choiceGroup.getSelectedFlags(selectedArray_return)
        stringBuffer.append("Multiple Total Choices: ")
        stringBuffer.appendint(total)
        self.logUtil.putF(stringBuffer.toString(), self, METHOD_NAME)
        let features: Features! = Features.getInstance()
        do {
            var index: Int32 = 0
            while (index < selectedArray_return.length) {
                defer { index &+= 1 }
            let isSelected: Bool = selectedArray_return[index]
            stringBuffer.delete(0, stringBuffer.length())
            stringBuffer.append(SELECTED_ARRAY_RETURN)
            stringBuffer.appendint(index)
            stringBuffer.append(SELECTED_SEP)
            stringBuffer.appendboolean(isSelected)
            self.logUtil.putF(stringBuffer.toString(), self, METHOD_NAME)
            let selectedChoiceLabel: String! = choiceGroup.getString(index)
            let gameFeature: Feature! = Feature.getInstance(selectedChoiceLabel)
            if (!isSelected && features.isFeature(gameFeature)) {
                features.remove(gameFeature)
            } else if (isSelected && !features.isFeature(gameFeature)) {
                features.add(gameFeature)
            }
            }
        }
    }
    

    open func updateExclusiveForChoiceGroup(_ choiceGroup: ChoiceGroup!) {
        let stringBuffer: StringMaker! = StringMaker()
        let METHOD_NAME: String! = "updateExclusive"
        let SELECTED_ARRAY_RETURN: String! = "selectedArray_return["
        let SELECTED_SEP: String! = "] = "
        let selectedArray_return: JArray<Bool>! = JArray<Bool>(choiceGroup.size(), false)
        let total: Int32 = choiceGroup.getSelectedFlags(selectedArray_return)
        stringBuffer.append("Exclusive Total Choices: 1==")
        stringBuffer.appendint(total)
        self.logUtil.putF(stringBuffer.toString(), self, METHOD_NAME)
        do {
            var index: Int32 = 0
            while (index < selectedArray_return.length) {
                defer { index &+= 1 }
            let isSelected: Bool = selectedArray_return[index]
            stringBuffer.delete(0, stringBuffer.length())
            stringBuffer.append(SELECTED_ARRAY_RETURN)
            stringBuffer.appendint(index)
            stringBuffer.append(SELECTED_SEP)
            stringBuffer.appendboolean(isSelected)
            self.logUtil.putF(stringBuffer.toString(), self, METHOD_NAME)
            if (isSelected) {
                let selectedChoiceLabel: String! = choiceGroup.getString(index)
                self.updateExclusive(selectedChoiceLabel)
            }
            }
        }
    }
    

    @discardableResult open func isExclusive(_ itemLabel: String!) -> Bool {
        let enumeration: Enumeration! = GameFeatureChoiceGroups.getExclusiveInstance().get().keys()
        var name: String! = nil
        while (self.enumerationUtil.hasMoreElements(enumeration)) {
            name = jUnboxString(self.enumerationUtil.nextElement(enumeration))
            if (self.tsUtil.compareTo(itemLabel, name) == 0) {
                return true
            }
        }
        return false
    }
    

    fileprivate func updateExclusive(_ selectedChoiceLabel: String!) {
        self.logUtil.putF(StringMaker().append(CommonLabels.getInstance().ITEM_LABEL).append(selectedChoiceLabel).toString(), self, "updateExclusive")
        let gameFeature: Feature! = Feature.getInstance(selectedChoiceLabel)
        let hashtable: ABHashtable! = GameFeatureChoiceGroups.getExclusiveInstance().get()
        let objectArray: JArray<JObject?>! = HashtableUtil.getInstance().getKeysAsArray(hashtable)
        var basicArrayList: BasicArrayList! = nil
        var anyType: JObject! = nil
        let size: Int32 = objectArray.length
        do {
            var index: Int32 = 0
            while (index < size) {
                defer { index &+= 1 }
            anyType = objectArray[index]
            basicArrayList = (hashtable.get(anyType) as! BasicArrayList)
            self.updateExclusiveList(gameFeature, basicArrayList)
            }
        }
    }
    

    open func updateExclusiveList(_ gameFeature: Feature!, _ list: BasicArrayList!) {
        if (list.contains(gameFeature)) {
            let features: Features! = Features.getInstance()
            let addIndex: Int32 = list.indexOf(gameFeature)
            let size: Int32 = list.size()
            do {
                var index: Int32 = 0
                while (index < size) {
                    defer { index &+= 1 }
                if (addIndex != index) {
                    features.remove((list.objectArray[index] as! Feature))
                } else {
                    features.add((list.objectArray[index] as! Feature))
                }
                }
            }
        }
    }
}

