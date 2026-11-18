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
// import org.allbinary.logic.NullUtil

open class BasicGroupFactory: JObject {
    fileprivate static var instance: JObject! = NullUtil.getInstance().NULL_OBJECT
    public var NAME: String! = nil
    public var NO_SUCH_GROUP: String! = nil
    public var GOOD: Group! = nil
    public var ENEMY: Group! = nil
    public var ENEMY_ON_LEVEL: Group! = nil
    public var NONE: Group! = nil
    public var GOOD_ARRAY: JArray<Group?>! = nil
    public var ENEMY_ARRAY: JArray<Group?>! = nil
    public var ENEMY_ON_LEVEL_ARRAY: JArray<Group?>! = nil
    public var NONE_ARRAY: JArray<Group?>! = nil

    private func initFields() {
    self.NAME = "GROUP_NAME"
    self.NO_SUCH_GROUP = "No Such Group: "
    self.GOOD = Group("Good Guys", Int16(truncatingIfNeeded: 0))
    self.ENEMY = Group("Bad Guys", Int16(truncatingIfNeeded: 1))
    self.ENEMY_ON_LEVEL = Group("Bad Guys on Level", Int16(truncatingIfNeeded: 2))
    self.NONE = Group("Not On A Team", Int16(truncatingIfNeeded: 3))
    self.GOOD_ARRAY = JArray<Group?>([self.GOOD])
    self.ENEMY_ARRAY = JArray<Group?>([self.ENEMY])
    self.ENEMY_ON_LEVEL_ARRAY = JArray<Group?>([self.ENEMY, self.ENEMY_ON_LEVEL])
    self.NONE_ARRAY = JArray<Group?>([self.NONE])
    }

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult open class func getInstance() -> BasicGroupFactory! {
        if (BasicGroupFactory.instance === NullUtil.getInstance().NULL_OBJECT) {
            BasicGroupFactory.instance = BasicGroupFactory()
        }
        return (BasicGroupFactory.instance as! BasicGroupFactory)
    }
}

