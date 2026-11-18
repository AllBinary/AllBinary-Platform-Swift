/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2025 AllBinary 
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
// import javax.microedition.rms.RecordComparator

open class NullRecordComparator: JObject, RecordComparator {
    public static let NULL_RECORD_COMPARATOR: NullRecordComparator! = NullRecordComparator()

    public override init() {
        super.init()
    }
    

    @discardableResult open func compare(_ rec1: JArray<Int8>!, _ rec2: JArray<Int8>!) -> Int32 {
        return 0
    }
}

