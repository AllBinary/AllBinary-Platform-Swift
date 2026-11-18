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
// package org.allbinary.game.configuration

import J2SEForSwiftLibrary
// import javax.microedition.lcdui.Item
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.math.SmallIntegerSingletonFactory
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.string.CommonStrings

open class GameConfigurationUtil: JObject {
    fileprivate static let instance: GameConfigurationUtil! = GameConfigurationUtil()
    public var logUtil: LogUtil! = nil
    fileprivate var commonStrings: CommonStrings! = nil
    fileprivate var GAUGE_UPDATE: String! = nil
    fileprivate var FROM: String! = nil
    fileprivate var TO: String! = nil
    fileprivate var COMPETITION_VALUE: Int32 = 0

    private func initFields() {
    self.logUtil = LogUtil.getInstance()
    self.commonStrings = CommonStrings.getInstance()
    self.GAUGE_UPDATE = "Gauge Update: "
    self.FROM = " from: "
    self.TO = " to: "
    self.COMPETITION_VALUE = 1
    }

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult open class func getInstance() -> GameConfigurationUtil! {
        return GameConfigurationUtil.instance
    }
    

    open func change(_ gameOptionsForm: GameOptionsForm!, _ gauge: GameConfigurationGauge!) {
        self.update(gauge)
        let gameConfigurationSingleton: GameConfigurationSingleton! = GameConfigurationSingleton.getInstance()
        let gameConfiguration: GameConfiguration! = gameConfigurationSingleton.getInstanceByName(gauge.getLabel())
        self.updateChallange(gameOptionsForm, gameConfiguration)
    }
    

    open func update(_ gauge: GameConfigurationGauge!) {
        let gameConfigurationSingleton: GameConfigurationSingleton! = GameConfigurationSingleton.getInstance()
        let gameConfiguration: GameConfiguration! = gameConfigurationSingleton.getInstanceByName(gauge.getLabel())
        let smallIntegerSingletonFactory: SmallIntegerSingletonFactory! = SmallIntegerSingletonFactory.getInstance()
        let value: Int32! = smallIntegerSingletonFactory.getAt(gauge.getValue() + gameConfiguration.getMinValue().intValue())
        let stringBuffer: StringMaker! = StringMaker()
        stringBuffer.append(self.GAUGE_UPDATE)
        stringBuffer.append(gameConfiguration.getName())
        stringBuffer.append(self.FROM)
        stringBuffer.appendint(Int32(truncatingIfNeeded: gameConfiguration.getValue().intValue()))
        stringBuffer.append(self.TO)
        stringBuffer.appendint(Int32(truncatingIfNeeded: value.intValue()))
        self.logUtil.putF(stringBuffer.toString(), self, self.commonStrings.UPDATE)
        gameConfiguration.setValue(value)
    }
    

    open func setDefault(_ gauge: GameConfigurationGauge!) {
        let gameConfigurationSingleton: GameConfigurationSingleton! = GameConfigurationSingleton.getInstance()
        let gameConfiguration: GameConfiguration! = gameConfigurationSingleton.getInstanceByName(gauge.getLabel())
        let stringBuffer: StringMaker! = StringMaker()
        stringBuffer.append("Gauge Default: ")
        stringBuffer.append(gameConfiguration.getName())
        stringBuffer.append(self.TO)
        stringBuffer.appendint(Int32(truncatingIfNeeded: gameConfiguration.getDefaultValue().intValue()))
        self.logUtil.putF(stringBuffer.toString(), self, "setDefault")
        gauge.setValue(gameConfiguration.getDefaultValue().intValue() - gameConfiguration.getMinValue().intValue())
        gameConfiguration.setValue(gameConfiguration.getDefaultValue())
    }
    

    open func updateChallange(_ gameOptionsForm: GameOptionsForm!, _ gameConfiguration: GameConfiguration!) {
        let gameConfigurationSingleton: GameConfigurationSingleton! = GameConfigurationSingleton.getInstance()
        let gameConfigurationCentral: GameConfigurationCentral! = GameConfigurationCentral.getInstance()
        if (gameConfiguration === gameConfigurationCentral.CHALLENGE_LEVEL) {
            self.logUtil.putF(self.commonStrings.START, self, "updateChallange")
            gameConfigurationCentral.COLLIDE_DAMAGE.setValue(gameConfiguration.getValue())
            gameConfigurationCentral.ATTACK_CHALLENGE_LEVEL.setValue(gameConfiguration.getValue())
            gameConfigurationCentral.DURABILITY_CHALLENGE_LEVEL.setValue(gameConfiguration.getValue())
            gameConfigurationCentral.SPEED_CHALLENGE_LEVEL.setValue(gameConfiguration.getValue())
            let size: Int32 = gameOptionsForm.size()
            do {
                var index: Int32 = 0
                while (index < size) {
                    defer { index &+= 1 }
                let item: Item! = gameOptionsForm.get(index)
                if ((item is GameConfigurationGauge)) {
                    let gauge: GameConfigurationGauge! = (item as! GameConfigurationGauge)
                    let name: String! = item.getLabel()
                    let nextGameConfiguration: GameConfiguration! = gameConfigurationSingleton.getInstanceByName(name)
                    if (nextGameConfiguration === gameConfigurationCentral.COLLIDE_DAMAGE) {
                        gauge.setValue(gameConfigurationCentral.COLLIDE_DAMAGE.getValue().intValue() - gameConfiguration.getMinValue().intValue())
                    } else if (nextGameConfiguration === gameConfigurationCentral.DURABILITY_CHALLENGE_LEVEL) {
                        gauge.setValue(gameConfigurationCentral.DURABILITY_CHALLENGE_LEVEL.getValue().intValue() - gameConfiguration.getMinValue().intValue())
                    } else if (nextGameConfiguration === gameConfigurationCentral.ATTACK_CHALLENGE_LEVEL) {
                        gauge.setValue(gameConfigurationCentral.ATTACK_CHALLENGE_LEVEL.getValue().intValue() - gameConfiguration.getMinValue().intValue())
                    } else if (nextGameConfiguration === gameConfigurationCentral.SPEED_CHALLENGE_LEVEL) {
                        gauge.setValue(gameConfigurationCentral.SPEED_CHALLENGE_LEVEL.getValue().intValue() - gameConfiguration.getMinValue().intValue())
                    }
                }
                }
            }
        }
    }
    

    open func updateCompetitionValue() {
        self.logUtil.putF(self.commonStrings.START, self, "updateCompetitionValue")
        let gameConfigurationCentral: GameConfigurationCentral! = GameConfigurationCentral.getInstance()
        self.COMPETITION_VALUE = gameConfigurationCentral.COLLIDE_DAMAGE.getValue().intValue() + gameConfigurationCentral.ATTACK_CHALLENGE_LEVEL.getValue().intValue() + gameConfigurationCentral.DURABILITY_CHALLENGE_LEVEL.getValue().intValue() + gameConfigurationCentral.SPEED_CHALLENGE_LEVEL.getValue().intValue()
        self.COMPETITION_VALUE = (self.COMPETITION_VALUE >> 2)
    }
    

    @discardableResult open func getCompetitionValue() -> Int32 {
        return self.COMPETITION_VALUE
    }
}

