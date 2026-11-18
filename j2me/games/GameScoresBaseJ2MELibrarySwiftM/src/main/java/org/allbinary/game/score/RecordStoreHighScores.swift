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
// import java.io.DataInputStream
// import java.io.EOFException
// import java.io.IOException
// import javax.microedition.rms.RecordComparator
// import javax.microedition.rms.RecordEnumeration
// import javax.microedition.rms.RecordStore
// import javax.microedition.rms.RecordStoreException
// import javax.microedition.rms.RecordStoreNotFoundException
// import org.allbinary.TsUtil
// import org.allbinary.game.GameInfo
// import org.allbinary.game.configuration.persistance.NullRecordComparator
// import org.allbinary.game.configuration.persistance.NullRecordFilter
// import org.allbinary.game.configuration.persistance.NullRecordStore
// import org.allbinary.logic.StdUtil
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.communication.log.PreLogUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.system.security.licensing.AbeClientInformationInterface
// import org.allbinary.persistance.PlatformRecordIdUtil
// import org.allbinary.string.CommonSeps
// import org.allbinary.string.CommonStrings
// import org.allbinary.util.ABHashtable
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListD

open class RecordStoreHighScores: HighScores {
    fileprivate static let hashTable: ABHashtable! = StdUtil.getInstance().createHashtable()
    public var logUtil: LogUtil! = nil
    fileprivate var commonStrings: CommonStrings! = nil
    fileprivate var platformRecordIdUtil: PlatformRecordIdUtil! = nil
    fileprivate var tsUtil: TsUtil! = nil
    fileprivate var RECORD_ID: String! = nil
    fileprivate var MAXHIGHSCORES: Int32 = 0
    fileprivate var gameInfo: GameInfo! = nil
    fileprivate var abeClientInformation: AbeClientInformationInterface! = nil
    fileprivate var recordComparatorInterface: RecordComparator! = nil

    // Each class has its own field initializers
    private func initFields() {
    self.logUtil = LogUtil.getInstance()
    self.commonStrings = CommonStrings.getInstance()
    self.platformRecordIdUtil = PlatformRecordIdUtil.getInstance()
    self.tsUtil = TsUtil.getInstance()
    self.RECORD_ID = "_HS"
    self.MAXHIGHSCORES = 100
    
    
    
    }
    

    public init(_ abeClientInformation: AbeClientInformationInterface!, _ gameInfo: GameInfo!, _ name: String!, _ heading: String!, _ columnTwoHeading: String!, _ recordComparatorInterface: RecordComparator!) {
        super.init(name, heading, columnTwoHeading)
        self.initFields()
        self.abeClientInformation = abeClientInformation
        self.gameInfo = gameInfo
        self.recordComparatorInterface = recordComparatorInterface
        self.load()
    }
    

    @discardableResult open class func getInstance(_ abeClientInformation: AbeClientInformationInterface!, _ gameInfo: GameInfo!, _ highScoreName: String!, _ heading: String!, _ columnTwoHeading: String!, _ recordComparatorInterface: RecordComparator!) -> HighScores! {
        let highScoresCanBeNull: JObject! = RecordStoreHighScores.hashTable.get(jBoxString(highScoreName))
        if (highScoresCanBeNull == nil) {
            let highScores: HighScores! = RecordStoreHighScores(abeClientInformation, gameInfo, highScoreName, heading, columnTwoHeading, recordComparatorInterface)
            RecordStoreHighScores.hashTable.put(jBoxString(highScores.getName()), highScores)
            return highScores
        }
        return (highScoresCanBeNull as! HighScores)
    }
    

    @discardableResult fileprivate func getRecordId(_ abeClientInformation: AbeClientInformationInterface!) -> String! {
        return self.platformRecordIdUtil.getRecordId(abeClientInformation, StringMaker().append(CommonSeps.getInstance().UNDERSCORE).append(self.getName()).append(self.RECORD_ID).toString())
    }
    

    open override func addHighScore(_ newHighScore: HighScore!) {
        var recordStore: RecordStore! = NullRecordStore.NULL_RECORD_STORE
        do {
            defer {
            do {
                if (recordStore != nil) {
                    PreLogUtil.put("Closing RecordStore", self, self.commonStrings.ADD)
                    recordStore.closeRecordStore()
                }
            } /* catch (RecordStoreException e): a thrown Java exception stops the program */
            }
            self.logUtil.putF(StringMaker().append("Adding HighScore: ").appendlong(newHighScore.getScore()).toString(), self, self.commonStrings.ADD)
            if (self.isTooManyHighScores()) {
                self.logUtil.putF("Removing Lowest Score", self, self.commonStrings.ADD)
                self.removeLowestHighScore()
            }
            recordStore = RecordStore.openRecordStore(self.getRecordId(self.abeClientInformation), true)
            let highScoreBytes: JArray<Int8>! = newHighScore.getAsBytes()
            _ = recordStore.addRecord(highScoreBytes, 0, highScoreBytes.length)
            self.load()
        } /* catch (RecordStoreException e): a thrown Java exception stops the program */ /* catch (IOException e): a thrown Java exception stops the program */ /* catch (Exception e): a thrown Java exception stops the program */
    }
    

    fileprivate func removeLowestHighScore() {
        var recordStore: RecordStore! = NullRecordStore.NULL_RECORD_STORE
        do {
            defer {
            do {
                if (recordStore != nil) {
                    PreLogUtil.put("Closing RecordStore", self, "removeLowestHighScore")
                    recordStore.closeRecordStore()
                }
            } /* catch (RecordStoreException e): a thrown Java exception stops the program */
            }
            recordStore = RecordStore.openRecordStore(self.getRecordId(self.abeClientInformation), true)
            let recordEnum: RecordEnumeration! = recordStore.enumerateRecords(NullRecordFilter.NULL_RECORD_FILTER, NullRecordComparator.NULL_RECORD_COMPARATOR, true)
            let scoreComparator: ScoreComparator! = ((self.recordComparatorInterface as! ScoreComparator))
            var bestHighScore: HighScore! = HighScore(-1, "none", GameInfo.NONE, scoreComparator.getBestScore())
            var recordAsBytes: JArray<Int8>! = nil
            var byteArrayInputStream: ByteArrayInputStream! = nil
            var inputStream: DataInputStream! = nil
            while (recordEnum.hasNextElement()) {
                let id: Int32 = recordEnum.nextRecordId()
                recordAsBytes = self.tsUtil.getRecord(recordStore, id)
                if (recordAsBytes != nil) {
                    byteArrayInputStream = ByteArrayInputStream(recordAsBytes)
                    inputStream = DataInputStream(byteArrayInputStream)
                    let name: String! = inputStream.readUTF()
                    let nextScore: Int64 = inputStream.readLong()
                    let nextCurrentHighScore: HighScore! = HighScore(id, name, GameInfo.NONE, nextScore)
                    if (self.recordComparatorInterface.compare(nextCurrentHighScore.getAsBytes(), bestHighScore.getAsBytes()) == RecordComparatorConstants.FOLLOWS) {
                        bestHighScore = nextCurrentHighScore
                    }
                }
            }
            if (bestHighScore.getId() != -1) {
                self.logUtil.putF(StringMaker().append("Removing Lowest HighScore: ").appendlong(bestHighScore.getScore()).toString(), self, self.commonStrings.LOAD)
                recordStore.deleteRecord(bestHighScore.getId())
            }
        } /* catch (RecordStoreException e): a thrown Java exception stops the program */ /* catch (Exception e): a thrown Java exception stops the program */
    }
    

    fileprivate func load() {
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
            recordStore = RecordStore.openRecordStore(self.getRecordId(self.abeClientInformation), true)
            self.setList(BasicArrayListD())
            let recordEnum: RecordEnumeration! = recordStore.enumerateRecords(NullRecordFilter.NULL_RECORD_FILTER, NullRecordComparator.NULL_RECORD_COMPARATOR, true)
            var recordAsBytes: JArray<Int8>! = nil
            var byteArrayInputStream: ByteArrayInputStream! = nil
            var inputStream: DataInputStream! = nil
            while (recordEnum.hasNextElement()) {
                let id: Int32 = recordEnum.nextRecordId()
                recordAsBytes = self.tsUtil.getRecord(recordStore, id)
                if (recordAsBytes != nil) {
                    byteArrayInputStream = ByteArrayInputStream(recordAsBytes)
                    inputStream = DataInputStream(byteArrayInputStream)
                    do {
                        let name: String! = inputStream.readUTF()
                        let score: Int64 = inputStream.readLong()
                        let newHighScore: HighScore! = HighScore(id, name, GameInfo.NONE, score)
                        let list: BasicArrayList! = self.getList()
                        let size: Int32 = list.size()
                        var lastIndex: Int32 = size
                        do {
                            var index: Int32 = 0
                            while (index < size) {
                                defer { index &+= 1 }
                            let highScore: HighScore! = (list.objectArray[index] as! HighScore)
                            if (self.recordComparatorInterface.compare(newHighScore.getAsBytes(), highScore.getAsBytes()) == RecordComparatorConstants.PRECEDES) {
                                lastIndex = index
                                break
                            }
                            }
                        }
                        list.addAt(lastIndex, newHighScore)
                    } /* catch (EOFException e): a thrown Java exception stops the program */
                }
            }
        } /* catch (RecordStoreNotFoundException e): a thrown Java exception stops the program */ /* catch (RecordStoreException e): a thrown Java exception stops the program */ /* catch (IOException e): a thrown Java exception stops the program */ /* catch (Exception e): a thrown Java exception stops the program */
    }
    

    @discardableResult fileprivate func isTooManyHighScores() -> Bool {
        if (self.getList() != nil && self.getList().size() < self.MAXHIGHSCORES) {
            return false
        } else {
            self.logUtil.putF(StringMaker().append("HighScores RecordStore Max Reached: ").appendint(self.MAXHIGHSCORES).toString(), self, "isTooManyHighScores")
            return true
        }
    }
    

    @discardableResult open override func isBestScore(_ newHighScore: HighScore!) -> Bool {
        do {
            if (!self.isTooManyHighScores()) {
                self.logUtil.putF("Slot Available for a High Score", self, "isBestScore")
                return true
            } else {
                let list: BasicArrayList! = self.getList()
                let size: Int32 = list.size()
                do {
                    var index: Int32 = 0
                    while (index < size) {
                        defer { index &+= 1 }
                    let highScore: HighScore! = (list.objectArray[index] as! HighScore)
                    if (self.recordComparatorInterface.compare(newHighScore.getAsBytes(), highScore.getAsBytes()) == RecordComparatorConstants.FOLLOWS) {
                        self.logUtil.putF("Obtained a High Score", self, "isBestScore")
                        return true
                    }
                    }
                }
            }
            self.logUtil.putF("Not a High Score", self, "isBestScore")
            return false
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
    

    @discardableResult open override func toString() -> String! {
        let stringBuffer: StringMaker! = StringMaker()
        stringBuffer.append(super.toString())
        let list: BasicArrayList! = self.getList()
        let size: Int32 = list.size()
        do {
            var index: Int32 = 0
            while (index < size) {
                defer { index &+= 1 }
            let highScore: HighScore! = (list.objectArray[index] as! HighScore)
            stringBuffer.append(highScore.getScoreString())
            stringBuffer.append(CommonSeps.getInstance().COMMA_SEP)
            }
        }
        return stringBuffer.toString()
    }
}

