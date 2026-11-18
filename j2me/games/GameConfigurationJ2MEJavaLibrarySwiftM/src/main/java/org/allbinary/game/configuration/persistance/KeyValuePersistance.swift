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
// package org.allbinary.game.configuration.persistance

import J2SEForSwiftLibrary
// import java.io.ByteArrayInputStream
// import java.io.ByteArrayOutputStream
// import java.io.DataInputStream
// import java.io.DataOutputStream
// import javax.microedition.rms.RecordEnumeration
// import javax.microedition.rms.RecordStore
// import org.allbinary.TsUtil
// import org.allbinary.logic.communication.log.PreLogUtil
// import org.allbinary.logic.math.SmallIntegerSingletonFactory
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.logic.system.security.licensing.AbeClientInformationInterface
// import org.allbinary.string.CommonSeps
// import org.allbinary.util.ABHashtable
// import org.allbinary.util.HashtableUtil

open class KeyValuePersistance: BasicPersitance {
    fileprivate var tsUtil: TsUtil! = nil

    // Each class has its own field initializers
    private func initFields() {
    self.tsUtil = TsUtil.getInstance()
    }
    

    public override init(_ recordId: String!) {
        super.init(recordId)
        self.initFields()
    }
    

    open func loadAll(_ abeClientInformation: AbeClientInformationInterface!) {
        self.loadAllSize(abeClientInformation, 1)
    }
    

    open func loadAllSize(_ abeClientInformation: AbeClientInformationInterface!, _ size: Int32) {
        var recordStore: RecordStore! = NullRecordStore.NULL_RECORD_STORE
        do {
            defer {
            if (recordStore != nil) {
                PreLogUtil.put(self.persistanceStrings.CLOSING_RECORDSTORE, self, self.persistanceStrings.LOAD_ALL)
                recordStore.closeRecordStore()
            }
            }
            recordStore = RecordStore.openRecordStore(self.getRecordId(abeClientInformation), true)
            let recordEnum: RecordEnumeration! = recordStore.enumerateRecords(NullRecordFilter.NULL_RECORD_FILTER, NullRecordComparator.NULL_RECORD_COMPARATOR, true)
            var hashtable: ABHashtable! = nil
            var name: String! = nil
            var value: String! = nil
            let smallIntegerSingletonFactory: SmallIntegerSingletonFactory! = SmallIntegerSingletonFactory.getInstance()
            let stringBuffer: StringMaker! = StringMaker()
            var recordAsBytes: JArray<Int8>! = nil
            var byteArrayInputStream: ByteArrayInputStream! = nil
            var inputStream: DataInputStream! = nil
            while (recordEnum.hasNextElement()) {
                let id: Int32 = recordEnum.nextRecordId()
                stringBuffer.delete(0, stringBuffer.length())
                self.logUtil.putF(stringBuffer.append(self.persistanceStrings.LOADING_ID).appendint(id).toString(), self, self.persistanceStrings.LOAD_ALL)
                recordAsBytes = self.tsUtil.getRecord(recordStore, id)
                if (recordAsBytes != nil) {
                    byteArrayInputStream = ByteArrayInputStream(recordAsBytes)
                    inputStream = DataInputStream(byteArrayInputStream)
                    hashtable = ABHashtable()
                    do {
                        var index: Int32 = 0
                        while (index < size) {
                            defer { index &+= 1 }
                        name = inputStream.readUTF()
                        inputStream.readUTF()
                        value = inputStream.readUTF()
                        hashtable.put(jBoxString(name), jBoxString(value))
                        }
                    }
                    self.valueList.add(hashtable)
                    self.idList.add(jBoxValue(smallIntegerSingletonFactory.getAt(id)))
                }
            }
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
    

    open func save(_ abeClientInformation: AbeClientInformationInterface!, _ hashtable: ABHashtable!) {
        var recordStore: RecordStore! = NullRecordStore.NULL_RECORD_STORE
        do {
            defer {
            if (recordStore != nil) {
                PreLogUtil.put(self.persistanceStrings.CLOSING_RECORDSTORE, self, self.commonStrings.SAVE)
                recordStore.closeRecordStore()
            }
            }
            self.logUtil.putF(StringMaker().append(self.persistanceStrings.SAVING).append(StringUtil.getInstance().toString(hashtable)).toString(), self, self.commonStrings.SAVE)
            recordStore = RecordStore.openRecordStore(self.getRecordId(abeClientInformation), true)
            let byteArrayOutputStream: ByteArrayOutputStream! = ByteArrayOutputStream()
            let outputStream: DataOutputStream! = DataOutputStream(byteArrayOutputStream)
            var value: String! = nil
            let commonSeps: CommonSeps! = CommonSeps.getInstance()
            let objectArray: JArray<JObject?>! = HashtableUtil.getInstance().getKeysAsArray(hashtable)
            var anyType: JObject! = nil
            let size: Int32 = objectArray.length
            do {
                var index: Int32 = 0
                while (index < size) {
                    defer { index &+= 1 }
                outputStream.writeUTF(jUnboxString(objectArray[index]))
                outputStream.writeUTF(commonSeps.EQUALS)
                anyType = objectArray[index]
                value = jUnboxString(hashtable.get(anyType))
                outputStream.writeUTF(value)
                }
            }
            let tsUtil: TsUtil! = TsUtil.getInstance()
            let savedGameBytes: JArray<Int8>! = tsUtil.getByteArray(byteArrayOutputStream.toString())
            recordStore.addRecord(savedGameBytes, 0, savedGameBytes.length)
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
    

    @discardableResult open func get(_ index: Int32) -> ABHashtable! {
        let hashtable: ABHashtable! = (self.valueList.objectArray[index] as! ABHashtable)
        return hashtable
    }
}

