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
// package org.allbinary.time

import J2SEForSwiftLibrary
// import java.text.SimpleDateFormat
// import java.util.Calendar
// import java.util.Date

//ActualPlatform
open class TimeStampUtil: JObject {
    fileprivate static let instance: TimeStampUtil! = TimeStampUtil()
    fileprivate var simpleDataFormat: SimpleDateFormat! = nil

    private func initFields() {
    self.simpleDataFormat = SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS")
    }
    

    @discardableResult public static func getInstance() -> TimeStampUtil! {
        return TimeStampUtil.instance
    }
    

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult open func getAsString() -> String! {
        let calendar: Calendar! = Calendar.getInstance()
        let date: Date! = calendar.getTime()
        return self.simpleDataFormat.format(date)
    }
}

