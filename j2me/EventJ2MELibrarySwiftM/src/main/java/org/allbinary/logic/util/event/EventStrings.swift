/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2022 AllBinary 
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
// package org.allbinary.logic.util.event

import J2SEForSwiftLibrary

open class EventStrings: JObject {
    fileprivate static let instance: EventStrings! = EventStrings()
    public var PERFORMANCE_MESSAGE: String! = nil
    public var TOTAL_LISTENERS: String! = nil
    public var LISTENER_LABEL: String! = nil
    public var FIRE_EVENT: String! = nil

    private func initFields() {
    self.PERFORMANCE_MESSAGE = "Use Custom onEvent Methods for needed optimization"
    self.TOTAL_LISTENERS = "Total Listeners: "
    self.LISTENER_LABEL = " Listener: "
    self.FIRE_EVENT = "fireEvent"
    }

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult public static func getInstance() -> EventStrings! {
        return EventStrings.instance
    }
}

