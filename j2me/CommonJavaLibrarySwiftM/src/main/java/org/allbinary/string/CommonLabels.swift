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

open class CommonLabels: JObject {
    fileprivate static let instance: CommonLabels! = CommonLabels()
    public var WIDTH_LABEL: String! = nil
    public var HEIGHT_LABEL: String! = nil
    public var END_LABEL: String! = nil
    public var TOTAL_LABEL: String! = nil
    public var INDEX_LABEL: String! = nil
    public var START_LABEL: String! = nil
    public var COMMAND_LABEL: String! = nil
    public var NAME_LABEL: String! = nil
    public var START: String! = nil
    public var ELAPSED: String! = nil
    public var CURRENT: String! = nil
    public var NEXT: String! = nil
    public var ITEM_LABEL: String! = nil
    public var RESULT_: String! = nil
    public var COLON_SEP: String! = nil

    private func initFields() {
    self.WIDTH_LABEL = " Width: "
    self.HEIGHT_LABEL = " Height: "
    self.END_LABEL = "End: "
    self.TOTAL_LABEL = "Total: "
    self.INDEX_LABEL = "index: "
    self.START_LABEL = "Start: "
    self.COMMAND_LABEL = "Command: "
    self.NAME_LABEL = "Name: "
    self.START = self.START_LABEL
    self.ELAPSED = " Elapsed: "
    self.CURRENT = " Current: "
    self.NEXT = "Next"
    self.ITEM_LABEL = "Item: "
    self.RESULT_ = "Result: "
    self.COLON_SEP = ": "
    }

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult open class func getInstance() -> CommonLabels! {
        return CommonLabels.instance
    }
}

