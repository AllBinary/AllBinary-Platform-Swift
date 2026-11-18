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
// package org.allbinary.game.configuration.event

import J2SEForSwiftLibrary
// import org.allbinary.game.configuration.feature.Feature
// import org.allbinary.game.configuration.feature.Features
// import org.allbinary.game.configuration.feature.GameFeatureUtil
// import org.allbinary.logic.communication.log.ForcedLogUtil
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.logic.util.event.AllBinaryEventObject
// import org.allbinary.string.CommonStrings
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListD

open class BaseChangedGameFeatureListener: JObject, GameFeatureListenerInterface {
    public var logUtil: LogUtil! = nil
    public var gameFeatureUtil: GameFeatureUtil! = nil
    public var list: BasicArrayList! = nil
    fileprivate var changed: Bool = false

    private func initFields() {
    self.logUtil = LogUtil.getInstance()
    self.gameFeatureUtil = GameFeatureUtil.getInstance()
    self.list = BasicArrayListD()
    self.changed = true
    }

    public override init() {
        super.init()
        self.initFields()
    }
    

    open func onEvent(_ eventObject: AllBinaryEventObject!) {
        ForcedLogUtil.log(CommonStrings.getInstance().NOT_IMPLEMENTED, self)
    }
    

    open func onGameFeatureChange(_ gameFeatureEvent: GameFeatureEvent!) {
        self.logUtil.putF(StringMaker().append(self.gameFeatureUtil.GAME_FEATURE_CHANGED).append(gameFeatureEvent.getWhatChanged()).toString(), self, self.gameFeatureUtil.ON_GAME_FEATURE_CHANGE)
        self.list.add(gameFeatureEvent.getGameOption())
        self.setChanged(true)
    }
    

    open func add(_ gameFeature: Feature!) {
        self.list.add(gameFeature)
    }
    

    open func remove(_ gameFeature: Feature!) {
        self.list.remove(gameFeature)
    }
    

    open func setChanged(_ initialized: Bool) {
        self.changed = initialized
        if (!self.isChanged()) {
            self.list.clear()
        }
    }
    

    @discardableResult open func isChangedFeature(_ gameFeature: Feature!) -> Bool {
        let isChanged: Bool = self.list.contains(gameFeature)
        let stringBuffer: StringMaker! = StringMaker()
        stringBuffer.append("GameFeature: ")
        stringBuffer.append(StringUtil.getInstance().toString(gameFeature))
        stringBuffer.append(" isFeature: ")
        stringBuffer.appendboolean(Features.getInstance().isFeature(gameFeature))
        stringBuffer.append(" isChanged: ")
        stringBuffer.appendboolean(isChanged)
        self.logUtil.putF(stringBuffer.toString(), self, "isChanged")
        return isChanged
    }
    

    @discardableResult open func isChanged() -> Bool {
        return self.changed
    }
}

