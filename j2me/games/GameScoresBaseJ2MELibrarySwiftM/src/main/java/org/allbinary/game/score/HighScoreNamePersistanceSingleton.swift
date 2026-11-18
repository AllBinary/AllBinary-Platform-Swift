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
// package org.allbinary.game.score

import J2SEForSwiftLibrary
// import java.io.ByteArrayInputStream
// import java.io.ByteArrayOutputStream
// import java.io.DataInputStream
// import java.io.DataOutputStream
// import javax.microedition.rms.RecordEnumeration
// import javax.microedition.rms.RecordStore
// import javax.microedition.rms.RecordStoreException
// import org.allbinary.TsUtil
// import org.allbinary.game.GameInfo
// import org.allbinary.game.configuration.persistance.NullRecordComparator
// import org.allbinary.game.configuration.persistance.NullRecordFilter
// import org.allbinary.game.configuration.persistance.NullRecordStore
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.communication.log.PreLogUtil
// import org.allbinary.logic.java.exception.ExceptionUtil
// import org.allbinary.logic.math.SmallIntegerSingletonFactory
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.logic.system.security.licensing.AbeClientInformationInterface
// import org.allbinary.persistance.PlatformRecordIdUtil
// import org.allbinary.string.CommonStrings
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListD

open class HighScoreNamePersistanceSingleton: JObject {
    fileprivate static var SINGLETON: HighScoreNamePersistanceSingleton! = HighScoreNamePersistanceSingleton()
    public var logUtil: LogUtil! = nil
    fileprivate var tsUtil: TsUtil! = nil
    fileprivate var commonStrings: CommonStrings! = nil
    fileprivate var platformRecordIdUtil: PlatformRecordIdUtil! = nil
    fileprivate var RECORD_ID: String! = nil
    fileprivate var name: String! = nil
    fileprivate var nameBasicArrayList: BasicArrayList! = nil

    private func initFields() {
    self.logUtil = LogUtil.getInstance()
    self.tsUtil = TsUtil.getInstance()
    self.commonStrings = CommonStrings.getInstance()
    self.platformRecordIdUtil = PlatformRecordIdUtil.getInstance()
    self.RECORD_ID = "_SN"
    self.name = StringUtil.getInstance().EMPTY_STRING
    self.nameBasicArrayList = BasicArrayListD()
    }

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult open class func getInstance() -> HighScoreNamePersistanceSingleton! {
        return HighScoreNamePersistanceSingleton.SINGLETON
    }
    

    open func clear() {
        self.name = StringUtil.getInstance().EMPTY_STRING
    }
    

    open func deleteAll(_ abeClientInformation: AbeClientInformationInterface!, _ gameInfo: GameInfo!) {
        let size: Int32 = self.nameBasicArrayList.size()
        do {
            var index: Int32 = 0
            while (index < size) {
                defer { index &+= 1 }
            let integer: Int32! = jUnboxValue(self.nameBasicArrayList.objectArray[index], Int32.self)
            self.delete(abeClientInformation, gameInfo, integer.intValue())
            }
        }
        self.clear()
    }
    

    @discardableResult fileprivate func getRecordId(_ abeClientInformation: AbeClientInformationInterface!) -> String! {
        return self.platformRecordIdUtil.getRecordId(abeClientInformation, self.RECORD_ID)
    }
    

    open func delete(_ abeClientInformation: AbeClientInformationInterface!, _ gameInfo: GameInfo!, _ deleteId: Int32) {
        var recordStore: RecordStore! = NullRecordStore.NULL_RECORD_STORE
        do {
            defer {
            if (recordStore != nil) {
                PreLogUtil.put("Closing RecordStore", self, self.commonStrings.delete)
                recordStore.closeRecordStore()
            }
            }
            self.logUtil.putF(StringMaker().append("Deleting: ").appendint(deleteId).toString(), self, self.commonStrings.delete)
            recordStore = RecordStore.openRecordStore(self.getRecordId(abeClientInformation), true)
            recordStore.deleteRecord(deleteId)
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
    

    @discardableResult open func getIds() -> BasicArrayList! {
        return self.nameBasicArrayList
    }
    

    @discardableResult open func load(_ abeClientInformation: AbeClientInformationInterface!, _ gameInfo: GameInfo!) -> String! {
        var recordStore: RecordStore! = NullRecordStore.NULL_RECORD_STORE
        do {
            defer {
            do {
                if (recordStore != nil) {
                    PreLogUtil.put("Closing RecordStore", self, self.commonStrings.LOAD)
                    recordStore.closeRecordStore()
                }
            } /* catch (RecordStoreException e): a thrown Java exception stops the program */
            }
            if (self.name == StringUtil.getInstance().EMPTY_STRING) {
                let LOADING_ID: String! = "Loading id: "
                recordStore = RecordStore.openRecordStore(self.getRecordId(abeClientInformation), true)
                let recordEnum: RecordEnumeration! = recordStore.enumerateRecords(NullRecordFilter.NULL_RECORD_FILTER, NullRecordComparator.NULL_RECORD_COMPARATOR, true)
                let smallIntegerSingletonFactory: SmallIntegerSingletonFactory! = SmallIntegerSingletonFactory.getInstance()
                var recordAsBytes: JArray<Int8>! = nil
                var byteArrayInputStream: ByteArrayInputStream! = nil
                var inputStream: DataInputStream! = nil
                while (recordEnum.hasNextElement()) {
                    let id: Int32 = recordEnum.nextRecordId()
                    self.logUtil.putF(StringMaker().append(LOADING_ID).appendint(id).toString(), self, self.commonStrings.LOAD)
                    recordAsBytes = self.tsUtil.getRecord(recordStore, id)
                    byteArrayInputStream = ByteArrayInputStream(recordAsBytes)
                    inputStream = DataInputStream(byteArrayInputStream)
                    while (inputStream.available() > 0) {
                        self.name = inputStream.readUTF()
                    }
                    self.nameBasicArrayList.add(jBoxValue(smallIntegerSingletonFactory.getAt(id)))
                }
            }
        } /* catch (Exception e): a thrown Java exception stops the program */
        return self.name
    }
    

    open func save(_ abeClientInformation: AbeClientInformationInterface!, _ gameInfo: GameInfo!, _ name: String!) {
        var recordStore: RecordStore! = NullRecordStore.NULL_RECORD_STORE
        do {
            defer {
            do {
                if (recordStore != nil) {
                    PreLogUtil.put("Closing RecordStore", self, self.commonStrings.SAVE)
                    recordStore.closeRecordStore()
                }
            } /* catch (RecordStoreException e): a thrown Java exception stops the program */
            }
            self.logUtil.putF(StringMaker().append("Saving: ").append(name).toString(), self, self.commonStrings.SAVE)
            recordStore = RecordStore.openRecordStore(self.getRecordId(abeClientInformation), true)
            let byteArrayOutputStream: ByteArrayOutputStream! = ByteArrayOutputStream()
            let outputStream: DataOutputStream! = DataOutputStream(byteArrayOutputStream)
            outputStream.writeUTF(name)
            let savedGameBytes: JArray<Int8>! = byteArrayOutputStream.toByteArray()
            recordStore.addRecord(savedGameBytes, 0, savedGameBytes.length)
            self.name = name
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
}

