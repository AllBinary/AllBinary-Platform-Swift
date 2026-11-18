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
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.string.CommonStrings

open class ScoreComparator: JObject, RecordComparator {
    public var logUtil: LogUtil! = nil
    fileprivate var isHighestBest: Bool = false

    private func initFields() {
    self.logUtil = LogUtil.getInstance()
    
    }
    

    public init(_ isHighestBest: Bool) {
        super.init()
        self.initFields()
        self.isHighestBest = isHighestBest
    }
    

    @discardableResult open func getBestScore() -> Int64 {
        return (self.isHighestBest ? Long.MAX_VALUE : 0)
    }
    

    @discardableResult open func compare(_ recordOne: JArray<Int8>!, _ recordTwo: JArray<Int8>!) -> Int32 {
        let byteArrayInputStreamOne: ByteArrayInputStream! = ByteArrayInputStream(recordOne)
        let inputStreamOne: DataInputStream! = DataInputStream(byteArrayInputStreamOne)
        let byteArrayInputStreamTwo: ByteArrayInputStream! = ByteArrayInputStream(recordTwo)
        let inputStreamTwo: DataInputStream! = DataInputStream(byteArrayInputStreamTwo)
        var scoreOne: Int64 = 0
        var scoreTwo: Int64 = 0
        do {
            inputStreamOne.readUTF()
            inputStreamTwo.readUTF()
            scoreOne = inputStreamOne.readLong()
            scoreTwo = inputStreamTwo.readLong()
        } /* catch (EOFException e): a thrown Java exception stops the program */ /* catch (IOException e): a thrown Java exception stops the program */ /* catch (Exception e): a thrown Java exception stops the program */
        if (self.isHighestBest) {
            return self.getHighTooLow(scoreOne, scoreTwo)
        } else {
            return self.getLowTooHigh(scoreOne, scoreTwo)
        }
    }
    

    @discardableResult open func getHighTooLow(_ scoreOne: Int64, _ scoreTwo: Int64) -> Int32 {
        if (scoreOne > scoreTwo) {
            return RecordComparatorConstants.PRECEDES
        } else if (scoreOne < scoreTwo) {
            return RecordComparatorConstants.FOLLOWS
        } else {
            return RecordComparatorConstants.EQUIVALENT
        }
    }
    

    @discardableResult open func getLowTooHigh(_ scoreOne: Int64, _ scoreTwo: Int64) -> Int32 {
        if (scoreOne < scoreTwo) {
            return RecordComparatorConstants.PRECEDES
        } else if (scoreOne > scoreTwo) {
            return RecordComparatorConstants.FOLLOWS
        } else {
            return RecordComparatorConstants.EQUIVALENT
        }
    }
}

