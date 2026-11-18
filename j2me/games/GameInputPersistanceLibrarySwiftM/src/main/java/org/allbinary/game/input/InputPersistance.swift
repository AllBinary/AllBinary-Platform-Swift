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
// import java.io.ByteArrayInputStream
// import java.io.ByteArrayOutputStream
// import java.io.DataInputStream
// import java.io.DataOutputStream
// import javax.microedition.rms.RecordEnumeration
// import javax.microedition.rms.RecordStore
// import org.allbinary.TsUtil
// import org.allbinary.game.configuration.persistance.BasicPersitance
// import org.allbinary.game.configuration.persistance.NullRecordComparator
// import org.allbinary.game.configuration.persistance.NullRecordFilter
// import org.allbinary.game.configuration.persistance.NullRecordStore
// import org.allbinary.logic.communication.log.PreLogUtil
// import org.allbinary.logic.math.SmallIntegerSingletonFactory
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.logic.system.security.licensing.AbeClientInformationInterface
// import org.allbinary.string.CommonSeps
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.HashtableUtil
// import org.allbinary.logic.StdUtil
// import org.allbinary.util.ABHashtable

//GameInputPersistanceLibrary
open class InputPersistance: BasicPersitance {
    fileprivate var tsUtil: TsUtil! = nil
    fileprivate var hashtableUtil: HashtableUtil! = nil

    // Each class has its own field initializers
    private func initFields() {
    self.tsUtil = TsUtil.getInstance()
    self.hashtableUtil = HashtableUtil.getInstance()
    }
    

    public override init(_ name: String!) {
        super.init(name)
        self.initFields()
    }
    

    open func loadAll(_ abeClientInformation: AbeClientInformationInterface!) {
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
            var gameActionInputId: Int64 = 0
            var inputId: Int64 = 0
            var gameActionInput: Input! = nil
            var input: Input! = nil
            var hashtable: ABHashtable! = nil
            let gameKeyFactory: GameKeyMappingFactory! = GameKeyMappingFactory.getInstance()
            let stringBuffer: StringMaker! = StringMaker()
            let inputFactory: InputFactory! = InputFactory.getInstance()
            let smallIntegerSingletonFactory: SmallIntegerSingletonFactory! = SmallIntegerSingletonFactory.getInstance()
            let stdUtil: StdUtil! = StdUtil.getInstance()
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
                    hashtable = stdUtil.createHashtable()
                    var value: Int32 = 0
                    while (inputStream.available() > 0) {
                        let gameActionInputIdAsString: String! = inputStream.readUTF()
                        value = Int32(gameActionInputIdAsString)!
                        gameActionInputId = Int64(truncatingIfNeeded: value)
                        inputStream.readUTF()
                        value = Int32(inputStream.readUTF())!
                        inputId = Int64(truncatingIfNeeded: value)
                        gameActionInput = gameKeyFactory.getGameKey(Int32(truncatingIfNeeded: gameActionInputId))
                        input = inputFactory.getInstanceById(Int32(truncatingIfNeeded: inputId))
                        if (input === inputFactory.NO_INPUT || gameActionInput == nil) {
                            stringBuffer.delete(0, stringBuffer.length())
                            if (input === inputFactory.NO_INPUT) {
                                stringBuffer.append(self.persistanceStrings.ERROR_LOADING_ID)
                                stringBuffer.appendlong(inputId)
                                stringBuffer.append(self.persistanceStrings.GAME_ACTION_INPUT)
                                stringBuffer.appendlong(gameActionInputId)
                                PreLogUtil.put(stringBuffer.toString(), self, self.persistanceStrings.LOAD_ALL)
                            }
                            if (gameActionInput == nil) {
                                stringBuffer.delete(0, stringBuffer.length())
                                stringBuffer.append(self.persistanceStrings.ERROR_LOADING)
                                stringBuffer.appendlong(gameActionInputId)
                                stringBuffer.append(self.persistanceStrings.ID)
                                stringBuffer.appendlong(inputId)
                                PreLogUtil.put(stringBuffer.toString(), self, self.persistanceStrings.LOAD_ALL)
                            }
                        } else {
                        }
                        hashtable.put(input, gameActionInput)
                    }
                    self.valueList.add(hashtable)
                    self.idList.add(jBoxValue(smallIntegerSingletonFactory.getAt(id)))
                } else {
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
            let stringBuffer: StringMaker! = StringMaker()
            PreLogUtil.put(stringBuffer.append(self.persistanceStrings.SAVING).append(StringUtil.getInstance().toString(hashtable)).toString(), self, self.commonStrings.SAVE)
            recordStore = RecordStore.openRecordStore(self.getRecordId(abeClientInformation), true)
            let byteArrayOutputStream: ByteArrayOutputStream! = ByteArrayOutputStream()
            let outputStream: DataOutputStream! = DataOutputStream(byteArrayOutputStream)
            var gameActionInput: Input! = nil
            var list: BasicArrayList! = nil
            var input: Input! = nil
            var savedGameBytes: JArray<Int8>! = nil
            let commonSeps: CommonSeps! = CommonSeps.getInstance()
            let smallIntegerSingletonFactory: SmallIntegerSingletonFactory! = SmallIntegerSingletonFactory.getInstance()
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
                    let gameActionInputIdAsString: String! = smallIntegerSingletonFactory.getAt(gameActionInput.getId()).toString()
                    outputStream.writeUTF(gameActionInputIdAsString)
                    outputStream.writeUTF(commonSeps.EQUALS)
                    input = (list.objectArray[index2] as! Input)
                    let inputIdAsString: String! = smallIntegerSingletonFactory.getAt(input.getId()).toString()
                    outputStream.writeUTF(inputIdAsString)
                    }
                }
                }
            }
            savedGameBytes = byteArrayOutputStream.toByteArray()
            recordStore.addRecord(savedGameBytes, 0, savedGameBytes.length)
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
}

