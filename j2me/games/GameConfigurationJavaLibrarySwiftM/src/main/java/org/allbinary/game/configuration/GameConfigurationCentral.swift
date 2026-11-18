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
// import org.allbinary.game.configuration.persistance.GameConfigurationPersistanceSingleton
// import org.allbinary.game.configuration.persistance.KeyValuePersistance
// import org.allbinary.logic.NullUtil
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.math.SmallIntegerSingletonFactory
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.system.security.licensing.AbeClientInformationInterface
// import org.allbinary.string.CommonSeps
// import org.allbinary.string.CommonStrings
// import org.allbinary.util.ABHashtable
// import org.allbinary.util.BasicArrayList

open class GameConfigurationCentral: JObject {
    fileprivate static var SINGLETON: JObject! = NullUtil.getInstance().NULL_OBJECT
    public var logUtil: LogUtil! = nil
    public var SCALE: GameConfiguration! = nil
    public var ORIENTATION: GameConfiguration! = nil
    public var SENSOR_UPDATE_RATE: GameConfiguration! = nil
    public var VIBRATION: GameConfiguration! = nil
    public var CHALLENGE_LEVEL: GameConfiguration! = nil
    public var COLLIDE_DAMAGE: GameConfiguration! = nil
    public var DURABILITY_CHALLENGE_LEVEL: GameConfiguration! = nil
    public var SPEED_CHALLENGE_LEVEL: GameConfiguration! = nil
    public var ATTACK_CHALLENGE_LEVEL: GameConfiguration! = nil
    public var CONTROL_LEVEL: GameConfiguration! = nil
    public var PLAYER_INPUT_WAIT: GameConfiguration! = nil
    public var SPEED: GameConfiguration! = nil
    public var SOUND_VOLUME: GameConfiguration! = nil
    public var MAX_GAME_OBJECTS: GameConfiguration! = nil
    public var MAX_LAYERS: GameConfiguration! = nil
    fileprivate var gameControlFidelity: Int32 = 0

    private func initFields() {
    self.logUtil = LogUtil.getInstance()
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    self.gameControlFidelity = 36
    }
    

    @discardableResult open class func getInstance() -> GameConfigurationCentral! {
        if (GameConfigurationCentral.SINGLETON === NullUtil.getInstance().NULL_OBJECT) {
            GameConfigurationCentral.SINGLETON = GameConfigurationCentral()
        }
        return (GameConfigurationCentral.SINGLETON as! GameConfigurationCentral)
    }
    

    public override init() {
        super.init()
        self.initFields()
        let smallIntegerSingletonFactory: SmallIntegerSingletonFactory! = SmallIntegerSingletonFactory.getInstance()
        self.SCALE = GameConfiguration("Scale", smallIntegerSingletonFactory.getAt(2), smallIntegerSingletonFactory.getAt(2), smallIntegerSingletonFactory.getAt(3))
        self.ORIENTATION = GameConfiguration("Orientation", smallIntegerSingletonFactory.getAt(0), smallIntegerSingletonFactory.getAt(0), smallIntegerSingletonFactory.getAt(8))
        self.SENSOR_UPDATE_RATE = GameConfiguration("Sensor Update Rate", smallIntegerSingletonFactory.getAt(0), smallIntegerSingletonFactory.getAt(0), smallIntegerSingletonFactory.getAt(3))
        self.VIBRATION = GameConfiguration("Vibration", smallIntegerSingletonFactory.getAt(0), smallIntegerSingletonFactory.getAt(0), smallIntegerSingletonFactory.getAt(3))
        self.CHALLENGE_LEVEL = GameConfiguration("Global Challenge Level", smallIntegerSingletonFactory.getAt(3), smallIntegerSingletonFactory.getAt(1), smallIntegerSingletonFactory.getAt(10))
        self.COLLIDE_DAMAGE = GameConfiguration("Collide Damage Challenge Level", smallIntegerSingletonFactory.getAt(3), smallIntegerSingletonFactory.getAt(1), smallIntegerSingletonFactory.getAt(10))
        self.DURABILITY_CHALLENGE_LEVEL = GameConfiguration("Enemy Durability Challenge Level", smallIntegerSingletonFactory.getAt(3), smallIntegerSingletonFactory.getAt(1), smallIntegerSingletonFactory.getAt(10))
        self.SPEED_CHALLENGE_LEVEL = GameConfiguration("Enemy Speed Challenge Level", smallIntegerSingletonFactory.getAt(3), smallIntegerSingletonFactory.getAt(1), smallIntegerSingletonFactory.getAt(10))
        self.ATTACK_CHALLENGE_LEVEL = GameConfiguration("Enemy Attack Challenge Level", smallIntegerSingletonFactory.getAt(3), smallIntegerSingletonFactory.getAt(1), smallIntegerSingletonFactory.getAt(10))
        self.CONTROL_LEVEL = GameConfiguration("Control Fidelity", smallIntegerSingletonFactory.getAt(5), smallIntegerSingletonFactory.getAt(1), smallIntegerSingletonFactory.getAt(10))
        self.PLAYER_INPUT_WAIT = GameConfiguration("Input Wait", smallIntegerSingletonFactory.getAt(5), smallIntegerSingletonFactory.getAt(1), smallIntegerSingletonFactory.getAt(10))
        self.SPEED = GameConfiguration("Game Speed (Device Specific)", smallIntegerSingletonFactory.getAt(5), smallIntegerSingletonFactory.getAt(1), smallIntegerSingletonFactory.getAt(10))
        self.SOUND_VOLUME = GameConfiguration("Sound Volume", smallIntegerSingletonFactory.getAt(6), smallIntegerSingletonFactory.getAt(0), smallIntegerSingletonFactory.getAt(10))
        self.MAX_GAME_OBJECTS = GameConfiguration("Max Game Objects", smallIntegerSingletonFactory.getAt(20), smallIntegerSingletonFactory.getAt(1), smallIntegerSingletonFactory.getAt(50))
        self.MAX_LAYERS = GameConfiguration("Max Layers", smallIntegerSingletonFactory.getAt(20), smallIntegerSingletonFactory.getAt(1), smallIntegerSingletonFactory.getAt(50))
    }
    

    open func load(_ abeClientInformation: AbeClientInformationInterface!) {
        let commonStrings: CommonStrings! = CommonStrings.getInstance()
        do {
            let smallIntegerSingletonFactory: SmallIntegerSingletonFactory! = SmallIntegerSingletonFactory.getInstance()
            let keyValuePersistance: KeyValuePersistance! = GameConfigurationPersistanceSingleton.getInstance()
            keyValuePersistance.clear()
            keyValuePersistance.loadAll(abeClientInformation)
            let list: BasicArrayList! = keyValuePersistance.getIds()
            if (list.size() > 0) {
                let hashtable: ABHashtable! = keyValuePersistance.get(0)
                let anyType: JObject! = (self.SCALE.getName() as! JObject)
                let value: String! = jUnboxString(hashtable.get(anyType))
                self.SCALE.setValue(smallIntegerSingletonFactory.getAt(jstr(value).intValue()))
            } else {
                self.logUtil.putF("No Game Configuration To Load", self, commonStrings.LOAD)
            }
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
    

    open func setGameControlFidelity(_ gameControlFidelity: Int32) {
        self.gameControlFidelity = gameControlFidelity
    }
    

    @discardableResult open func getGameControlFidelity() -> Int32 {
        return self.gameControlFidelity
    }
    

    @discardableResult open override func toString() -> String! {
        let stringBuffer: StringMaker! = StringMaker()
        let commonStrings: CommonSeps! = CommonSeps.getInstance()
        stringBuffer.append(commonStrings.COMMA_SEP)
        stringBuffer.append(self.SCALE.getName())
        stringBuffer.append(commonStrings.EQUALS)
        stringBuffer.appendint(Int32(truncatingIfNeeded: self.SCALE.getValue().intValue()))
        stringBuffer.append(commonStrings.COMMA_SEP)
        stringBuffer.append(self.ORIENTATION.getName())
        stringBuffer.append(commonStrings.EQUALS)
        stringBuffer.appendint(Int32(truncatingIfNeeded: self.ORIENTATION.getValue().intValue()))
        stringBuffer.append(commonStrings.COMMA_SEP)
        stringBuffer.append(self.SENSOR_UPDATE_RATE.getName())
        stringBuffer.append(commonStrings.EQUALS)
        stringBuffer.appendint(Int32(truncatingIfNeeded: self.SENSOR_UPDATE_RATE.getValue().intValue()))
        stringBuffer.append(commonStrings.COMMA_SEP)
        stringBuffer.append(self.VIBRATION.getName())
        stringBuffer.append(commonStrings.EQUALS)
        stringBuffer.appendint(Int32(truncatingIfNeeded: self.VIBRATION.getValue().intValue()))
        stringBuffer.append(commonStrings.COMMA_SEP)
        stringBuffer.append(self.CHALLENGE_LEVEL.getName())
        stringBuffer.append(commonStrings.EQUALS)
        stringBuffer.appendint(Int32(truncatingIfNeeded: self.CHALLENGE_LEVEL.getValue().intValue()))
        stringBuffer.append(commonStrings.COMMA_SEP)
        stringBuffer.append(self.COLLIDE_DAMAGE.getName())
        stringBuffer.append(commonStrings.EQUALS)
        stringBuffer.appendint(Int32(truncatingIfNeeded: self.COLLIDE_DAMAGE.getValue().intValue()))
        stringBuffer.append(commonStrings.COMMA_SEP)
        stringBuffer.append(self.DURABILITY_CHALLENGE_LEVEL.getName())
        stringBuffer.append(commonStrings.EQUALS)
        stringBuffer.appendint(Int32(truncatingIfNeeded: self.DURABILITY_CHALLENGE_LEVEL.getValue().intValue()))
        stringBuffer.append(commonStrings.COMMA_SEP)
        stringBuffer.append(self.SPEED_CHALLENGE_LEVEL.getName())
        stringBuffer.append(commonStrings.EQUALS)
        stringBuffer.appendint(Int32(truncatingIfNeeded: self.SPEED_CHALLENGE_LEVEL.getValue().intValue()))
        stringBuffer.append(commonStrings.COMMA_SEP)
        stringBuffer.append(self.ATTACK_CHALLENGE_LEVEL.getName())
        stringBuffer.append(commonStrings.EQUALS)
        stringBuffer.appendint(Int32(truncatingIfNeeded: self.ATTACK_CHALLENGE_LEVEL.getValue().intValue()))
        stringBuffer.append(commonStrings.COMMA_SEP)
        stringBuffer.append(self.CONTROL_LEVEL.getName())
        stringBuffer.append(commonStrings.EQUALS)
        stringBuffer.appendint(Int32(truncatingIfNeeded: self.CONTROL_LEVEL.getValue().intValue()))
        stringBuffer.append(commonStrings.COMMA_SEP)
        stringBuffer.append(self.SPEED.getName())
        stringBuffer.append(commonStrings.EQUALS)
        stringBuffer.appendint(Int32(truncatingIfNeeded: self.SPEED.getValue().intValue()))
        stringBuffer.append(commonStrings.COMMA_SEP)
        stringBuffer.append(self.MAX_GAME_OBJECTS.getName())
        stringBuffer.append(commonStrings.EQUALS)
        stringBuffer.appendint(Int32(truncatingIfNeeded: self.MAX_GAME_OBJECTS.getValue().intValue()))
        stringBuffer.append(commonStrings.COMMA_SEP)
        stringBuffer.append(self.MAX_LAYERS.getName())
        stringBuffer.append(commonStrings.EQUALS)
        stringBuffer.appendint(Int32(truncatingIfNeeded: self.MAX_LAYERS.getValue().intValue()))
        return stringBuffer.toString()
    }
}

