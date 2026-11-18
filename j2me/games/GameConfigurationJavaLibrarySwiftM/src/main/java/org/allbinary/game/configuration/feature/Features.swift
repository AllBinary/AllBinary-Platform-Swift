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
// import org.allbinary.game.configuration.event.GameFeatureEvent
// import org.allbinary.game.configuration.event.GameFeatureEventHandler
// import org.allbinary.logic.NullUtil
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.communication.log.PreLogUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.system.os.GenericOperatingSystem
// import org.allbinary.logic.system.os.OperatingSystemFactory
// import org.allbinary.string.CommonLabels
// import org.allbinary.string.CommonStrings
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListD

open class Features: JObject {
    fileprivate static var SINGLETON: JObject! = NullUtil.getInstance().NULL_OBJECT
    public var logUtil: LogUtil! = nil
    fileprivate var commonStrings: CommonStrings! = nil
    fileprivate var list: BasicArrayList! = nil
    fileprivate var defaultList: BasicArrayList! = nil

    private func initFields() {
    self.logUtil = LogUtil.getInstance()
    self.commonStrings = CommonStrings.getInstance()
    
    
    }
    

    @discardableResult open class func getInstance() -> Features! {
        if (Features.SINGLETON === NullUtil.getInstance().NULL_OBJECT) {
            Features.SINGLETON = Features()
        }
        return (Features.SINGLETON as! Features)
    }
    

    public override init() {
        super.init()
        self.initFields()
        self.list = BasicArrayListD()
        self.defaultList = BasicArrayListD()
        self.`init`()
    }
    

    open func addDefault(_ gameFeature: Feature!) {
        self.add(gameFeature)
        if (!self.defaultList.contains(gameFeature)) {
            self.defaultList.add(gameFeature)
        }
    }
    

    open func add(_ gameFeature: Feature!) {
        if (!self.list.contains(gameFeature)) {
            self.logUtil.putF(StringMaker().append(CommonLabels.getInstance().START_LABEL).append(gameFeature.toString()).toString(), self, self.commonStrings.ADD)
            self.list.add(gameFeature)
            GameFeatureEventHandler.getInstance().fireEvent(GameFeatureEvent(gameFeature, gameFeature.toString()))
        }
    }
    

    open func removeDefault(_ gameFeature: Feature!) {
        self.logUtil.putF(StringMaker().append(CommonLabels.getInstance().START_LABEL).append(gameFeature.toString()).toString(), self, "removeDefault")
        self.remove(gameFeature)
        self.defaultList.remove(gameFeature)
    }
    

    open func remove(_ gameFeature: Feature!) {
        if (self.list.contains(gameFeature)) {
            self.logUtil.putF(self.commonStrings.START, self, self.commonStrings.REMOVE)
            self.list.remove(gameFeature)
            GameFeatureEventHandler.getInstance().fireEvent(GameFeatureEvent(gameFeature, gameFeature.toString()))
        }
    }
    

    fileprivate func `init`() {
        do {
            let gameFeatureFactory: GameFeatureFactory! = GameFeatureFactory.getInstance()
            let inputFeatureFactory: InputFeatureFactory! = InputFeatureFactory.getInstance()
            let sensorFeatureFactory: SensorFeatureFactory! = SensorFeatureFactory.getInstance()
            let touchFeatureFactory: TouchFeatureFactory! = TouchFeatureFactory.getInstance()
            self.addDefault(gameFeatureFactory.ARTIFICIAL_INTELLEGENCE_PROCESSOR)
            self.addDefault(gameFeatureFactory.COLLIDABLE_INTERFACE_LAYER_PROCESSOR)
            self.addDefault(gameFeatureFactory.GAME_INPUT_LAYER_PROCESSOR)
            self.addDefault(gameFeatureFactory.TICKABLE_LAYER_PROCESSOR)
            self.addDefault(inputFeatureFactory.MULTI_KEY_PRESS)
            self.addDefault(inputFeatureFactory.REMOVE_DUPLICATE_KEY_PRESSES)
            self.addDefault(gameFeatureFactory.SCREEN_SHAKE)
            self.addDefault(gameFeatureFactory.POST_IMAGE_LOADING_MODIFICATION)
            let operatingSystemInterface: GenericOperatingSystem! = OperatingSystemFactory.getInstance().getOperatingSystemInstance()
            if (operatingSystemInterface.isOverScan()) {
                self.addDefault(sensorFeatureFactory.NO_ORIENTATION)
                self.addDefault(touchFeatureFactory.HIDE_SCREEN_BUTTONS)
            } else {
                self.addDefault(sensorFeatureFactory.ORIENTATION_SENSORS)
                self.addDefault(touchFeatureFactory.AUTO_HIDE_SHOW_SCREEN_BUTTONS)
            }
            self.addDefault(touchFeatureFactory.TOUCH_ENABLED)
            self.addDefault(MainFeatureFactory.getInstance().FULL_SCREEN)
            self.addDefault(MainFeatureFactory.getInstance().LOAD_ONDEMAND)
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
    

    @discardableResult open func isDefault(_ gameFeature: Feature!) -> Bool {
        return self.defaultList.contains(gameFeature)
    }
    

    @discardableResult open func isFeature(_ gameFeature: Feature!) -> Bool {
        return self.list.contains(gameFeature)
    }
    

    open func toggle(_ gameFeature: Feature!) {
        if (self.isFeature(gameFeature)) {
            self.remove(gameFeature)
        } else {
            self.add(gameFeature)
        }
    }
}

