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
// package org.allbinary.game.ag.layer.hud.basic

import J2SEForSwiftLibrary
// import org.allbinary.game.graphics.hud.BasicHudFactory
// import org.allbinary.graphics.color.BasicColorFactory
// import org.allbinary.logic.NullUtil
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.string.CommonStrings

open class NumberStringHudFactory: JObject {
    fileprivate static var instance: JObject! = NullUtil.getInstance()
    public var NULL_NUMBER_STRING_HUD: NumberStringHud! = nil

    private func initFields() {
    self.NULL_NUMBER_STRING_HUD = self.createHud()
    }

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult open class func getInstance() -> NumberStringHudFactory! {
        if (NumberStringHudFactory.instance === NullUtil.getInstance()) {
            NumberStringHudFactory.instance = NumberStringHudFactory()
        }
        return (NumberStringHudFactory.instance as! NumberStringHudFactory)
    }
    

    @discardableResult open func createHud() -> NumberStringHud! {
        do {
            return NumberStringHud(StringUtil.getInstance().EMPTY_STRING, 9, BasicHudFactory.getInstance().ABSOLUTE, 1, 0, BasicColorFactory.getInstance().NULL_COLOR)
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
}

