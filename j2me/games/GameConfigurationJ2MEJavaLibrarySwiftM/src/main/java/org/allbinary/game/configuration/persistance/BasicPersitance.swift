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
// import javax.microedition.rms.RecordStore
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.communication.log.PreLogUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.system.security.licensing.AbeClientInformationInterface
// import org.allbinary.persistance.PlatformRecordIdUtil
// import org.allbinary.string.CommonStrings
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListD

open class BasicPersitance: JObject {
    public var logUtil: LogUtil! = nil
    public var commonStrings: CommonStrings! = nil
    public var persistanceStrings: PersistanceStrings! = nil
    fileprivate var platformRecordIdUtil: PlatformRecordIdUtil! = nil
    fileprivate var recordId: String! = nil
    public var valueList: BasicArrayList! = nil
    public var idList: BasicArrayList! = nil

    private func initFields() {
    self.logUtil = LogUtil.getInstance()
    self.commonStrings = CommonStrings.getInstance()
    self.persistanceStrings = PersistanceStrings.getInstance()
    self.platformRecordIdUtil = PlatformRecordIdUtil.getInstance()
    
    self.valueList = BasicArrayListD()
    self.idList = BasicArrayListD()
    }
    

    public init(_ recordId: String!) {
        super.init()
        self.initFields()
        self.recordId = recordId
    }
    

    open func deleteRecoreStore(_ abeClientInformation: AbeClientInformationInterface!) {
        RecordStore.deleteRecordStore(self.getRecordId(abeClientInformation))
    }
    

    open func deleteAll(_ abeClientInformation: AbeClientInformationInterface!) {
        let size: Int32 = self.idList.size()
        do {
            var index: Int32 = 0
            while (index < size) {
                defer { index &+= 1 }
            let integer: Int32! = jUnboxValue(self.idList.objectArray[index], Int32.self)
            self.delete(abeClientInformation, integer.intValue())
            }
        }
        self.clear()
    }
    

    open func delete(_ abeClientInformation: AbeClientInformationInterface!, _ deleteId: Int32) {
        var recordStore: RecordStore! = NullRecordStore.NULL_RECORD_STORE
        do {
            defer {
            if (recordStore != nil) {
                PreLogUtil.put(self.persistanceStrings.CLOSING_RECORDSTORE, self, self.commonStrings.delete)
                recordStore.closeRecordStore()
            }
            }
            self.logUtil.putF(StringMaker().append(self.persistanceStrings.DELETING_WITH_ID).appendint(deleteId).toString(), self, self.commonStrings.delete)
            recordStore = RecordStore.openRecordStore(self.getRecordId(abeClientInformation), true)
            recordStore.deleteRecord(deleteId)
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
    

    @discardableResult open func getRecordId(_ abeClientInformation: AbeClientInformationInterface!) -> String! {
        return self.platformRecordIdUtil.getRecordId(abeClientInformation, self.recordId)
    }
    

    @discardableResult open func getList() -> BasicArrayList! {
        return self.valueList
    }
    

    @discardableResult open func getIds() -> BasicArrayList! {
        return self.idList
    }
    

    open func clear() {
        self.valueList.clear()
        self.idList.clear()
    }
}

