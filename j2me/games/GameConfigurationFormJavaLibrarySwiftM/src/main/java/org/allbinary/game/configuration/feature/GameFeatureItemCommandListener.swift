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
// package org.allbinary.game.configuration.feature

import J2SEForSwiftLibrary
// import javax.microedition.lcdui.Command
// import javax.microedition.lcdui.Item
// import javax.microedition.lcdui.ItemCommandListener
// import org.allbinary.game.configuration.GameConfigurationGauge
// import org.allbinary.game.configuration.GameConfigurationUtil
// import org.allbinary.game.configuration.GameOptionsForm
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.midlet.MidletStrings
// import org.allbinary.string.CommonLabels
// import org.allbinary.string.CommonStrings

open class GameFeatureItemCommandListener: JObject, ItemCommandListener {
    public var logUtil: LogUtil! = nil
    fileprivate var gameOptionsForm: GameOptionsForm! = nil

    private func initFields() {
    self.logUtil = LogUtil.getInstance()
    
    }
    

    public init(_ gameOptionsForm: GameOptionsForm!) {
        super.init()
        self.initFields()
        self.gameOptionsForm = gameOptionsForm
    }
    

    open func commandAction(_ command: Command!, _ item: Item!) {
        do {
            let itemLabel: String! = item.getLabel()
            self.logUtil.putF(StringMaker().append(CommonLabels.getInstance().ITEM_LABEL).append(itemLabel).toString(), self, MidletStrings.getInstance().COMMAND_ACTION)
            if ((item is GameConfigurationGauge)) {
                GameConfigurationUtil.getInstance().change(self.gameOptionsForm, (item as! GameConfigurationGauge))
            }
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
}

