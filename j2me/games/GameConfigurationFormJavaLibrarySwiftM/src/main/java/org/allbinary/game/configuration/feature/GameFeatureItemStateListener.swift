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
// import javax.microedition.lcdui.ChoiceGroup
// import javax.microedition.lcdui.Item
// import javax.microedition.lcdui.ItemStateListener
// import org.allbinary.game.configuration.GameConfigurationGauge
// import org.allbinary.game.configuration.GameConfigurationUtil
// import org.allbinary.game.configuration.GameOptionsForm
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.string.CommonLabels
// import org.allbinary.string.CommonStrings
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListD

open class GameFeatureItemStateListener: JObject, ItemStateListener {
    fileprivate static var toggleList: BasicArrayList! = BasicArrayListD()
    public var logUtil: LogUtil! = nil
    fileprivate var gameOptionsForm: GameOptionsForm! = nil

    private func initFields() {
    self.logUtil = LogUtil.getInstance()
    
    }
    

    public init(_ gameOptionsForm: GameOptionsForm!) {
        super.init()
        self.initFields()
        self.gameOptionsForm = gameOptionsForm
        let gameFeatureFactory: GameFeatureFactory! = GameFeatureFactory.getInstance()
        GameFeatureItemStateListener.add(gameFeatureFactory.ARTIFICIAL_INTELLEGENCE_PROCESSOR)
        GameFeatureItemStateListener.add(gameFeatureFactory.COLLIDABLE_INTERFACE_LAYER_PROCESSOR)
        GameFeatureItemStateListener.add(gameFeatureFactory.DAMAGE_FLOATERS)
        GameFeatureItemStateListener.add(gameFeatureFactory.DROPPED_ITEMS)
        GameFeatureItemStateListener.add(gameFeatureFactory.GAME_INPUT_LAYER_PROCESSOR)
        GameFeatureItemStateListener.add(gameFeatureFactory.HEALTH_BARS)
        GameFeatureItemStateListener.add(gameFeatureFactory.SOUND)
        GameFeatureItemStateListener.add(gameFeatureFactory.TICKABLE_LAYER_PROCESSOR)
    }
    

    open class func add(_ gameFeature: GameFeature!) {
        if (!GameFeatureItemStateListener.toggleList.contains(gameFeature)) {
            GameFeatureItemStateListener.toggleList.add(gameFeature)
        }
    }
    

    open func itemStateChanged(_ item: Item!) {
        do {
            let itemLabel: String! = item.getLabel()
            self.logUtil.putF(StringMaker().append(CommonLabels.getInstance().ITEM_LABEL).append(itemLabel).toString(), self, "itemStateChanged")
            if ((item is GameConfigurationGauge)) {
                GameConfigurationUtil.getInstance().change(self.gameOptionsForm, (item as! GameConfigurationGauge))
            } else if ((item is ChoiceGroup)) {
                let gameFeatureUtil: GameFeatureUtil! = GameFeatureUtil.getInstance()
                if (gameFeatureUtil.isExclusive(itemLabel)) {
                    gameFeatureUtil.updateExclusiveForChoiceGroup((item as! ChoiceGroup))
                } else {
                    gameFeatureUtil.updateMultiple((item as! ChoiceGroup))
                }
            }
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
}

