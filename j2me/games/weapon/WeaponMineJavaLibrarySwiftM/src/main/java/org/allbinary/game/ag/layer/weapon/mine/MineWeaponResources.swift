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
// package org.allbinary.game.ag.layer.weapon.mine

import J2SEForSwiftLibrary
// import org.allbinary.game.layer.resources.BasicGameResources
// import org.allbinary.logic.NullUtil

open class MineWeaponResources: BasicGameResources {
    fileprivate static var instance: JObject! = NullUtil.getInstance().NULL_OBJECT
    public var DROP_TEXT_RESOURCE: String! = nil
    public var DROP_RESOURCE: String! = nil
    public var DROP_ICON_RESOURCE: String! = nil

    // Each class has its own field initializers
    private func initFields() {
    self.DROP_TEXT_RESOURCE = "/mine_drop_text_20_by_20.png"
    self.DROP_RESOURCE = "/mine_drop_20_by_20.png"
    self.DROP_ICON_RESOURCE = "/mine_drop_icon_20_by_20.png"
    }
    

    @discardableResult open class func getInstance() -> MineWeaponResources! {
        if (MineWeaponResources.instance === NullUtil.getInstance().NULL_OBJECT) {
            MineWeaponResources.instance = MineWeaponResources()
        }
        return (MineWeaponResources.instance as! MineWeaponResources)
    }
    

    public override init() {
        super.init()
        self.initFields()
        let ROOT: String! = "/mine"
        let SMALL: String! = "_20_by_20.png"
        let MEDIUM: String! = SMALL
        let SIZE_FOUR: String! = SMALL
        let SIZE_FIVE: String! = SMALL
        let SIZE_SIX: String! = SMALL
        let SIZE: JArray<String?>! = JArray<String?>([SMALL, MEDIUM, SIZE_FOUR, SIZE_FIVE, SIZE_SIX])
        super.`init`(ROOT, SIZE)
    }
}

