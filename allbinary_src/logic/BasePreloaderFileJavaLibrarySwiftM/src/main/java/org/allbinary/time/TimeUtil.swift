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
// import java.util.Calendar

open class TimeUtil: JObject {
    fileprivate static let instance: TimeUtil! = TimeUtil()
    fileprivate static let calendar: Calendar! = Calendar.getInstance()

    public override init() {
        super.init()
    }
    

    @discardableResult open class func getInstance() -> TimeUtil! {
        return TimeUtil.instance
    }
    

    open func setCalendar(_ calendar: Calendar!, _ yearString: String!, _ monthString: String!, _ dayString: String!, _ hourString: String!) {
        let year: Int32 = yearString.intValue()
        let month: Int32 = monthString.intValue()
        let day: Int32 = dayString.intValue()
        let hour: Int32 = hourString.intValue()
        calendar.set(year, month, day, hour, 0)
    }
    

    open func setCalendarWithTime(_ calendar: Calendar!, _ yearString: String!, _ monthString: String!, _ dayString: String!, _ hourString: String!, _ minuteString: String!, _ secondString: String!) {
        let year: Int32 = yearString.intValue()
        let month: Int32 = monthString.intValue()
        let day: Int32 = dayString.intValue()
        let hour: Int32 = hourString.intValue()
        let minute: Int32 = minuteString.intValue()
        let second: Int32 = secondString.intValue()
        calendar.set(year, month, day, hour, minute, second)
    }
    

    open func setExpirationCalendar(_ calendar: Calendar!, _ yearsString: String!, _ monthsString: String!, _ daysString: String!, _ hoursString: String!, _ minutesString: String!, _ secondsString: String!) {
        let year: Int32 = calendar.get(Calendar.YEAR) + yearsString.intValue()
        let month: Int32 = calendar.get(Calendar.MONTH) + monthsString.intValue()
        let day: Int32 = calendar.get(Calendar.DAY_OF_MONTH) + daysString.intValue()
        let hour: Int32 = calendar.get(Calendar.HOUR) + hoursString.intValue()
        let minute: Int32 = calendar.get(Calendar.MINUTE) + minutesString.intValue()
        let second: Int32 = calendar.get(Calendar.SECOND) + secondsString.intValue()
        calendar.set(year, month, day, hour, minute, second)
    }
    

    @discardableResult open func getTotalTime(_ yearString: String!, _ monthString: String!, _ dayString: String!, _ hourString: String!, _ minuteString: String!, _ secondString: String!) -> Int64 {
        let time: Int64 = TimeUtil.calendar.getTimeInMillis()
        self.setExpirationCalendar(TimeUtil.calendar, yearString, monthString, dayString, hourString, minuteString, secondString)
        let timeDelta: Int64 = TimeUtil.calendar.getTimeInMillis()
        return timeDelta &- time
    }
}

