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
// package org.allbinary.game.input

import J2SEForSwiftLibrary
// import javax.microedition.rms.RecordEnumeration
// import javax.microedition.rms.RecordStore
// import org.allbinary.game.configuration.persistance.BasicPersitance
// import org.allbinary.game.configuration.persistance.NullRecordComparator
// import org.allbinary.game.configuration.persistance.NullRecordFilter
// import org.allbinary.logic.communication.log.PreLogUtil
// import org.allbinary.logic.math.SmallIntegerSingletonFactory
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.logic.system.security.licensing.AbeClientInformationInterface
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.HashtableUtil
// import org.allbinary.logic.StdUtil
// import org.allbinary.util.ABHashtable

//GameInputNoPersistanceLibrary
open class InputPersistance: BasicPersitance {
    fileprivate var hashtableUtil: HashtableUtil! = nil

    // Each class has its own field initializers
    private func initFields() {
    self.hashtableUtil = HashtableUtil.getInstance()
    }
    

    public override init(_ name: String!) {
        super.init(name)
        self.initFields()
    }
    

    open func loadAll(_ abeClientInformation: AbeClientInformationInterface!) {
        let recordStore: RecordStore! = RecordStore.openRecordStore(self.getRecordId(abeClientInformation), true)
        let recordEnum: RecordEnumeration! = recordStore.enumerateRecords(NullRecordFilter.NULL_RECORD_FILTER, NullRecordComparator.NULL_RECORD_COMPARATOR, true)
        var hashtable: ABHashtable! = nil
        let stringBuffer: StringMaker! = StringMaker()
        let smallIntegerSingletonFactory: SmallIntegerSingletonFactory! = SmallIntegerSingletonFactory.getInstance()
        var id: Int32 = 0
        while (recordEnum.hasNextElement()) {
            id = recordEnum.nextRecordId()
            stringBuffer.delete(0, stringBuffer.length())
            self.logUtil.putF(stringBuffer.append(self.persistanceStrings.LOADING_ID).appendint(id).toString(), self, self.persistanceStrings.LOAD_ALL)
            hashtable = StdUtil.getInstance().createHashtable()
            self.valueList.add(hashtable)
            self.idList.add(jBoxValue(smallIntegerSingletonFactory.getAt(id)))
        }
        recordStore.closeRecordStore()
    }
    

    open func save(_ abeClientInformation: AbeClientInformationInterface!, _ hashtable: ABHashtable!) {
        PreLogUtil.put(StringMaker().append(self.persistanceStrings.NOT_SAVING).append(StringUtil.getInstance().toString(hashtable)).toString(), self, self.commonStrings.SAVE)
        let recordStore: RecordStore! = RecordStore.openRecordStore(self.getRecordId(abeClientInformation), true)
        var gameActionInput: Input! = nil
        var list: BasicArrayList! = nil
        var input: Input! = nil
        let inputObjectArray: JArray<JObject?>! = self.hashtableUtil.getKeysAsArray(hashtable)
        let size: Int32 = inputObjectArray.length
        do {
            var index: Int32 = 0
            while (index < size) {
                defer { index &+= 1 }
            gameActionInput = (inputObjectArray[index] as! Input)
            list = (hashtable.get(inputObjectArray[index]) as! BasicArrayList)
            do {
                var index2: Int32 = 0
                while (index2 < list.size()) {
                    defer { index2 &+= 1 }
                input = (list.get(index2) as! Input)
                }
            }
            }
        }
        recordStore.closeRecordStore()
    }
}

