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
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListD

open class GroupFactory: JObject {
    fileprivate static let instance: GroupFactory! = GroupFactory()
    public var logUtil: LogUtil! = nil
    public var NULL_GROUP_ARRAY: JArray<Group?>! = nil
    fileprivate var list: BasicArrayList! = nil
    fileprivate var index: Int32 = 0

    private func initFields() {
    self.logUtil = LogUtil.getInstance()
    self.NULL_GROUP_ARRAY = JArray<Group?>(0, nil)
    self.list = BasicArrayListD()
    self.index = 0
    }

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult open class func getInstance() -> GroupFactory! {
        return GroupFactory.instance
    }
    

    @discardableResult open func getNextGroup() -> Group! {
        let group: Group! = (self.list.objectArray[self.index] as! Group)
        self.index &+= 1
        return group
    }
    

    @discardableResult open func getNextGroupByName(_ name: String!) -> Group! {
        let group: Group! = self.getNextGroup()
        group.setName(name)
        return group
    }
    

    open func `init`(_ groups: Int16, _ nameArray: JArray<String?>!) {
        let stringMaker: StringMaker! = StringMaker()
        let stringUtil: StringUtil! = StringUtil.getInstance()
        let TEAM: String! = "Team "
        self.list.clear()
        self.index = 0
        var size: Int32 = self.list.size()
        var name: String! = nil
        while (size < Int32(Int32(truncatingIfNeeded: groups))) {
            name = stringUtil.EMPTY_STRING
            if (size < nameArray.length) {
                name = nameArray[size]
            } else {
                stringMaker.delete(0, stringMaker.length())
                name = stringMaker.append(TEAM).appendint(size).toString()
            }
            self.list.add(Group(name, Int16(truncatingIfNeeded: (size &+ 3))))
            size &+= 1
        }
    }
}

