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
// package org.allbinary.game.input

import J2SEForSwiftLibrary
// import org.allbinary.logic.NullUtil
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.math.SmallIntegerSingletonFactory
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.string.CommonStrings

open class InputFactory: JObject {
    fileprivate static var instance: JObject! = NullUtil.getInstance().NULL_OBJECT
    public var logUtil: LogUtil! = nil
    fileprivate var commonStrings: CommonStrings! = nil
    public var KEY_CODE_LABEL: String! = nil
    public var DEVICE_ID_LABEL: String! = nil
    public var MAX: Int32 = 0
    public var inputIntegerArray: JArray<Input?>! = nil
    public var NO_INPUT: Input! = nil

    private func initFields() {
    self.logUtil = LogUtil.getInstance()
    self.commonStrings = CommonStrings.getInstance()
    self.KEY_CODE_LABEL = "KeyCode: "
    self.DEVICE_ID_LABEL = "DeviceId: "
    self.MAX = SmallIntegerSingletonFactory.getInstance().getMin()
    self.inputIntegerArray = JArray<Input?>(self.MAX, nil)
    self.NO_INPUT = Input(0, self.commonStrings.UNKNOWN)
    }
    

    @discardableResult open class func getInstance() -> InputFactory! {
        if (InputFactory.instance === NullUtil.getInstance().NULL_OBJECT) {
            InputFactory.instance = InputFactory()
        }
        return (InputFactory.instance as! InputFactory)
    }
    

    public override init() {
        super.init()
        self.initFields()
        let size: Int32 = self.inputIntegerArray.length
        do {
            var index: Int32 = 0
            while (index < size) {
                defer { index &+= 1 }
            self.inputIntegerArray[index] = self.NO_INPUT
            }
        }
    }
    

    open func add(_ id: Int32, _ input: Input!) {
        self.inputIntegerArray[id] = input
    }
    

    @discardableResult open func getInstanceById(_ id: Int32) -> Input! {
        var id: Int32 = id
        if (id < 0) {
            id = -id
        }
        if (id > self.inputIntegerArray.length) {
            self.logUtil.putF(StringMaker().append("Warning id: ").appendint(id).toString(), self, self.commonStrings.GET_INSTANCE)
            return self.NO_INPUT
        }
        return self.inputIntegerArray[id]
    }
}

