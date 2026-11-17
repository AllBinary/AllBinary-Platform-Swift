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
// package org.allbinary.logic.util.cache

import J2SEForSwiftLibrary
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListUtil

open class KeylessBasicArrayListCache: IndexedBasicArrayListCache {
    public var logUtil: LogUtil! = nil
    public var basicArrayListUtil: BasicArrayListUtil! = nil

    // Each class has its own field initializers
    private func initFields() {
    self.logUtil = LogUtil.getInstance()
    self.basicArrayListUtil = BasicArrayListUtil.getInstance()
    }
    

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult open func get() -> BasicArrayList! {
        do {
            if (self.index >= self.list.size()) {
                self.addDefault()
            }
            let list: BasicArrayList! = (self.getAt(jPostIncrement(&self.index)) as! BasicArrayList)
            return list
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
    

    open override func clear() {
        super.clear()
        var basicArrayList: BasicArrayList! = nil
        do {
            var index: Int32 = self.list.size() &- 1
            while (index >= 0) {
                defer { index &-= 1 }
            basicArrayList = ((self.list.objectArray[index] as! BasicArrayList))
            basicArrayList.clear()
            }
        }
    }
    

    @discardableResult open override func log() -> String! {
        let stringBuffer: StringMaker! = StringMaker()
        stringBuffer.append("S: ")
        stringBuffer.appendint(self.list.size())
        let S_LABEL: String! = " s: "
        var basicArrayList: BasicArrayList! = nil
        do {
            var index: Int32 = self.list.size() &- 1
            while (index >= 0) {
                defer { index &-= 1 }
            stringBuffer.append(S_LABEL)
            basicArrayList = ((self.list.objectArray[index] as! BasicArrayList))
            stringBuffer.appendint(basicArrayList.size())
            }
        }
        return stringBuffer.toString()
    }
}

