/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2025 AllBinary 
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
// import org.allbinary.logic.NullUtil
// import org.allbinary.logic.math.SmallIntegerSingletonFactory

open class GroupCommonFactory: JObject {
    fileprivate static var instance: JObject! = NullUtil.getInstance().NULL_OBJECT
    public var ID: Int32! = nil
    public var GROUP_NAME_LABEL: String! = nil
    public var ID_LABEL: String! = nil
    public var ADDING_LABEL: String! = nil
    public var TO_LABEL: String! = nil

    private func initFields() {
    self.ID = SmallIntegerSingletonFactory.getInstance().getAt(10)
    self.GROUP_NAME_LABEL = "Group Name: "
    self.ID_LABEL = " Id: "
    self.ADDING_LABEL = "Adding: "
    self.TO_LABEL = " to: "
    }

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult open class func getInstance() -> GroupCommonFactory! {
        if (GroupCommonFactory.instance === NullUtil.getInstance().NULL_OBJECT) {
            GroupCommonFactory.instance = GroupCommonFactory()
        }
        return (GroupCommonFactory.instance as! GroupCommonFactory)
    }
}

