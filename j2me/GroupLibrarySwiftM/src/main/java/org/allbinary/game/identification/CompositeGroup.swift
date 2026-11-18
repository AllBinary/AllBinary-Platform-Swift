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
// package org.allbinary.game.identification

import J2SEForSwiftLibrary
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.string.CommonStrings
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListD

open class CompositeGroup: JObject {
    public var logUtil: LogUtil! = nil
    fileprivate var groupInterface: Group! = nil
    fileprivate var list: BasicArrayList! = nil

    private func initFields() {
    self.logUtil = LogUtil.getInstance()
    
    self.list = BasicArrayListD()
    }
    

    public init(_ groupInterface: Group!) {
        super.init()
        self.initFields()
        self.groupInterface = groupInterface
    }
    

    open func clear() {
        self.list.clear()
    }
    

    open func add(_ groupInterface: Group!) {
        let commonStrings: CommonStrings! = CommonStrings.getInstance()
        let groupCommonFactory: GroupCommonFactory! = GroupCommonFactory.getInstance()
        let stringBuffer: StringMaker! = StringMaker()
        stringBuffer.append(groupCommonFactory.ADDING_LABEL)
        stringBuffer.append(groupInterface.toString())
        stringBuffer.append(groupCommonFactory.TO_LABEL)
        stringBuffer.append(StringUtil.getInstance().toString(self.groupInterface))
        self.logUtil.putF(stringBuffer.toString(), self, commonStrings.ADD)
        self.list.add(groupInterface)
    }
    

    @discardableResult open func isInGroup(_ groupInterface: Group!) -> Bool {
        if (self.list.contains(groupInterface)) {
            return true
        } else {
            return false
        }
    }
    

    @discardableResult open func getGroup() -> Group! {
        return self.groupInterface
    }
}

