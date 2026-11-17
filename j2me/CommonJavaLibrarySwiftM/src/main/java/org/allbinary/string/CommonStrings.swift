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
// package org.allbinary.string

import J2SEForSwiftLibrary
// import jsinterop.annotations.JsType
// import jsinterop.annotations.JsMethod
// import jsinterop.annotations.JsProperty

open class CommonStrings: JObject {
    fileprivate static let instance: CommonStrings! = CommonStrings()
    public var EMPTY: String! = nil
    public var CREATE_IMAGE: String! = nil
    public var PLEASE_WAIT: String! = nil
    public var PLEASE_WAIT_FOR_SERVER: String! = nil
    public var PERIODS: String! = nil
    public var LOADING: String! = nil
    public var CONSTRUCTOR: String! = nil
    public var START: String! = nil
    public var END: String! = nil
    public var EXCEPTION: String! = nil
    public var EXCEPTION_LABEL: String! = nil
    public var CLEANUP: String! = nil
    public var INIT: String! = nil
    public var CLOSE: String! = nil
    public var UP: String! = nil
    public var DOWN: String! = nil
    public var LEFT: String! = nil
    public var RIGHT: String! = nil
    public var DIRECTION_NAME: JArray<String?>! = nil
    public var CREATE: String! = nil
    public var REMOVE: String! = nil
    public var UPDATE: String! = nil
    public var DELETE: String! = nil
    public var delete: String! = nil
    public var LOAD: String! = nil
    public var SAVE: String! = nil
    public var ADD: String! = nil
    public var DROP: String! = nil
    public var INSERT: String! = nil
    public var VISIT: String! = nil
    public var START_METHOD_NAME: String! = nil
    public var END_METHOD_NAME: String! = nil
    public var GET: String! = nil
    public var PROCESS: String! = nil
    public var GET_INSTANCE: String! = nil
    public var GET_LIST: String! = nil
    public var RUN: String! = nil
    public var START_RUNNABLE: String! = nil
    public var RUNNING: String! = nil
    public var END_RUNNABLE: String! = nil
    public var DISABLE: String! = nil
    public var ENABLE: String! = nil
    public var SUCCESS: String! = nil
    public var FAILURE: String! = nil
    public var NOT_IMPLEMENTED: String! = nil
    public var UNKNOWN: String! = nil
    public var ON_EVENT: String! = nil
    public var IS_VALID: String! = nil
    public var TOSTRING: String! = nil
    public var ADD_LISTENER: String! = nil
    public var REMOVE_LISTENER: String! = nil
    public var SIZE: String! = nil

    private func initFields() {
    self.EMPTY = "Empty"
    self.CREATE_IMAGE = "createImage"
    self.PLEASE_WAIT = "Please Wait"
    self.PLEASE_WAIT_FOR_SERVER = "Please Wait Getting Data From Server..."
    self.PERIODS = "..."
    self.LOADING = "Loading..."
    self.CONSTRUCTOR = "Constructor"
    self.START = "Start"
    self.END = "End"
    self.EXCEPTION = "Exception"
    self.EXCEPTION_LABEL = "Exception: "
    self.CLEANUP = "cleanup"
    self.INIT = "init"
    self.CLOSE = "close"
    self.UP = "up"
    self.DOWN = "down"
    self.LEFT = "left"
    self.RIGHT = "right"
    self.DIRECTION_NAME = JArray<String?>([self.DOWN, self.LEFT, self.RIGHT, self.UP])
    self.CREATE = "Create"
    self.REMOVE = "Remove"
    self.UPDATE = "Update"
    self.DELETE = "Delete"
    self.delete = "delete"
    self.LOAD = "load"
    self.SAVE = "save"
    self.ADD = "Add"
    self.DROP = "Drop"
    self.INSERT = "Insert"
    self.VISIT = "visit"
    self.START_METHOD_NAME = self.START
    self.END_METHOD_NAME = "end"
    self.GET = "get"
    self.PROCESS = "process"
    self.GET_INSTANCE = "getInstance"
    self.GET_LIST = "getList"
    self.RUN = "run"
    self.START_RUNNABLE = "Start Runnable"
    self.RUNNING = "Running"
    self.END_RUNNABLE = "End Runnable"
    self.DISABLE = "disable"
    self.ENABLE = "enable"
    self.SUCCESS = "Command Success"
    self.FAILURE = "Command Failed"
    self.NOT_IMPLEMENTED = "Not Implemented"
    self.UNKNOWN = "Unknown"
    self.ON_EVENT = "onEvent"
    self.IS_VALID = "isValid"
    self.TOSTRING = "toString"
    self.ADD_LISTENER = "addListener"
    self.REMOVE_LISTENER = "removeListener"
    self.SIZE = "size"
    }

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult public static func getInstance() -> CommonStrings! {
        return CommonStrings.instance
    }
}

