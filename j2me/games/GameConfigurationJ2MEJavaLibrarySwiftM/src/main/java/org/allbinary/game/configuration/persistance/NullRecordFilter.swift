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
// import javax.microedition.rms.RecordFilter

open class NullRecordFilter: JObject, RecordFilter {
    public static var NULL_RECORD_FILTER: NullRecordFilter! = NullRecordFilter()

    public override init() {
        super.init()
    }
    

    @discardableResult open func matches(_ candidate: JArray<Int8>!) -> Bool {
        return true
    }
}

