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
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.string.StringUtil

open class Group: JObject, GroupInterface {
    fileprivate var name: String! = nil
    fileprivate var teamId: Int16 = 0
    fileprivate var string: String! = nil

    private func initFields() {
    self.name = StringUtil.getInstance().EMPTY_STRING
    
    self.string = StringUtil.getInstance().EMPTY_STRING
    }
    

    public init(_ teamName: String!, _ teamId: Int16) {
        super.init()
        self.initFields()
        self.teamId = teamId
        self.setName(teamName)
    }
    

    @discardableResult open func getGroupName() -> String! {
        return self.name
    }
    

    open func setName(_ name: String!) {
        self.name = name
        let groupCommonFactory: GroupCommonFactory! = GroupCommonFactory.getInstance()
        let stringBuffer: StringMaker! = StringMaker()
        stringBuffer.append(groupCommonFactory.GROUP_NAME_LABEL)
        stringBuffer.append(self.name)
        stringBuffer.append(groupCommonFactory.ID_LABEL)
        stringBuffer.appendshort(self.teamId)
        self.string = stringBuffer.toString()
    }
    

    @discardableResult open func getGroupId() -> Int16 {
        return self.teamId
    }
    

    @discardableResult open override func toString() -> String! {
        return self.string
    }
}

