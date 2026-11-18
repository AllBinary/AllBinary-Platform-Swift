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
// package org.allbinary.game.input.mapping

import J2SEForSwiftLibrary
// import org.allbinary.game.input.Input
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.string.CommonLabels
// import org.allbinary.string.CommonStrings
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListD
// import org.allbinary.logic.StdUtil
// import org.allbinary.util.ABHashtable

open class InputMapping: JObject {
    public var logUtil: LogUtil! = nil
    public var commonStrings: CommonStrings! = nil
    fileprivate var hashtable: ABHashtable! = nil
    fileprivate var mappedList: BasicArrayList! = nil

    private func initFields() {
    self.logUtil = LogUtil.getInstance()
    self.commonStrings = CommonStrings.getInstance()
    self.hashtable = StdUtil.getInstance().createHashtable()
    self.mappedList = BasicArrayListD()
    }
    

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult open func getTotalMapped() -> Int32 {
        return self.hashtable.size()
    }
    

    @discardableResult open func isDefaultNew() -> Bool {
        return false
    }
    

    @discardableResult open func getDefault() -> InputToGameKeyMapping! {
        return InputToGameKeyMapping.getNullInstance()
    }
    

    open func removeAll() {
        self.hashtable.clear()
        self.mappedList.clear()
    }
    

    open func remove(_ input: Input!, _ mappedToInput: Input!) {
        let stringBuffer: StringMaker! = StringMaker()
        let stringUtil: StringUtil! = StringUtil.getInstance()
        stringBuffer.append(CommonLabels.getInstance().START_LABEL)
        stringBuffer.append(stringUtil.toString(input))
        stringBuffer.append(" == ")
        stringBuffer.append(stringUtil.toString(mappedToInput))
        self.logUtil.putF(stringBuffer.toString(), self, "InputMapping::remove")
        let list: BasicArrayList! = self.getMappedInput(input)
        if (list.contains(mappedToInput)) {
            list.remove(mappedToInput)
            self.mappedList.remove(mappedToInput)
            stringBuffer.delete(0, stringBuffer.length())
            stringBuffer.append("Removed: ")
            stringBuffer.append(stringUtil.toString(input))
            stringBuffer.append(" == ")
            stringBuffer.append(stringUtil.toString(mappedToInput))
            self.logUtil.putF(stringBuffer.toString(), self, "InputMapping::remove")
        } else {
            stringBuffer.delete(0, stringBuffer.length())
            stringBuffer.append("Not Deleted: ")
            stringBuffer.append(stringUtil.toString(input))
            stringBuffer.append(" == ")
            stringBuffer.append(stringUtil.toString(mappedToInput))
            self.logUtil.putF(stringBuffer.toString(), self, "InputMapping::remove")
        }
    }
    

    open func addMapping(_ inputToGameKeyMapping: InputToGameKeyMapping!) {
        jThrow(JException("Exception", self.commonStrings.NOT_IMPLEMENTED))
    }
    

    open func add(_ input: Input!, _ mappedToInput: Input!) {
        let list: BasicArrayList! = self.getMappedInput(input)
        if (!list.contains(mappedToInput)) {
            list.add(mappedToInput)
            self.mappedList.add(mappedToInput)
        }
    }
    

    @discardableResult open func isMapped(_ input: Input!) -> Bool {
        return self.mappedList.contains(input)
    }
    

    @discardableResult open func getMappedInput(_ id: Input!) -> BasicArrayList! {
        let mappingInputCanBeNullList: JObject! = self.hashtable.get(id)
        if (mappingInputCanBeNullList == nil) {
            let list: BasicArrayList! = BasicArrayListD()
            self.hashtable.put(id, list)
            return list
        }
        return (mappingInputCanBeNullList as! BasicArrayList)
    }
    

    @discardableResult open func getHashtable() -> ABHashtable! {
        return self.hashtable
    }
}

