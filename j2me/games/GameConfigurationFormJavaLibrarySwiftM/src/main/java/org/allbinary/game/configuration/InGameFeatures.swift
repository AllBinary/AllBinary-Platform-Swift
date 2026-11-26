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
// import org.allbinary.game.configuration.feature.Features
// import org.allbinary.game.configuration.feature.GameFeatureChoiceGroups
// import org.allbinary.game.configuration.feature.InGameFeatureChoiceGroups
// import org.allbinary.game.configuration.feature.SensorFeatureFactory
// import org.allbinary.game.configuration.feature.TouchFeatureFactory
// import org.allbinary.init.Init
// import org.allbinary.input.gyro.OrientationData
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListD

open class InGameFeatures: Init {

    public override init() {
        super.init()
    }
    

    open override func `init`() {
        let LABEL: String! = "Screen Buttons"
        let orientationData: OrientationData! = OrientationData.getInstance()
        let exclusiveOrientationSensorVector: BasicArrayList! = (GameFeatureChoiceGroups.getExclusiveInstance().get().get(jBoxString(orientationData.ORIENTATION_SENSOR_INPUT)) as! BasicArrayList)
        let inGameFeatureChoiceGroups: InGameFeatureChoiceGroups! = InGameFeatureChoiceGroups.getExclusiveInstance()
        if (exclusiveOrientationSensorVector != nil) {
            let inGameExclusiveOrientationSensorVectorCanBeNull: JObject! = inGameFeatureChoiceGroups.get().get(jBoxString(orientationData.ORIENTATION_SENSOR_INPUT))
            if (inGameExclusiveOrientationSensorVectorCanBeNull == nil) {
                self.addToInGameMenu()
            } else {
                let inGameExclusiveOrientationSensorVector: BasicArrayList! = (inGameExclusiveOrientationSensorVectorCanBeNull as! BasicArrayList)
                if (inGameExclusiveOrientationSensorVector.size() == 0) {
                    self.addToInGameMenu()
                }
            }
        }
        let features: Features! = Features.getInstance()
        if (features.isFeature(TouchFeatureFactory.getInstance().SHOW_SCREEN_BUTTONS) || features.isFeature(TouchFeatureFactory.getInstance().AUTO_HIDE_SHOW_SCREEN_BUTTONS) || features.isFeature(TouchFeatureFactory.getInstance().HIDE_SCREEN_BUTTONS)) {
            let exclusiveScreenButtonsVector: BasicArrayList! = BasicArrayListD()
            let touchFeatureFactory: TouchFeatureFactory! = TouchFeatureFactory.getInstance()
            exclusiveScreenButtonsVector.add(touchFeatureFactory.AUTO_HIDE_SHOW_SCREEN_BUTTONS)
            exclusiveScreenButtonsVector.add(touchFeatureFactory.SHOW_SCREEN_BUTTONS)
            exclusiveScreenButtonsVector.add(touchFeatureFactory.HIDE_SCREEN_BUTTONS)
            inGameFeatureChoiceGroups.add(LABEL, exclusiveScreenButtonsVector)
        }
    }
    

    fileprivate func addToInGameMenu() {
        let orientationData: OrientationData! = OrientationData.getInstance()
        let inGameExclusiveOrientationSensorVector: BasicArrayList! = BasicArrayListD()
        inGameExclusiveOrientationSensorVector.add(SensorFeatureFactory.getInstance().ORIENTATION_SENSORS)
        inGameExclusiveOrientationSensorVector.add(SensorFeatureFactory.getInstance().NO_ORIENTATION)
        InGameFeatureChoiceGroups.getExclusiveInstance().add(orientationData.ORIENTATION_SENSOR_INPUT, inGameExclusiveOrientationSensorVector)
    }
    

    @discardableResult open func isAny() -> Bool {
        let features: Features! = Features.getInstance()
        let touchFeatureFactory: TouchFeatureFactory! = TouchFeatureFactory.getInstance()
        if (features.isFeature(touchFeatureFactory.SHOW_SCREEN_BUTTONS) || features.isFeature(touchFeatureFactory.AUTO_HIDE_SHOW_SCREEN_BUTTONS) || features.isFeature(touchFeatureFactory.HIDE_SCREEN_BUTTONS)) {
            return true
        }
        let exclusiveOrientationSensorVector: BasicArrayList! = (GameFeatureChoiceGroups.getExclusiveInstance().get().get(jBoxString(OrientationData.getInstance().ORIENTATION_SENSOR_INPUT)) as! BasicArrayList)
        if (exclusiveOrientationSensorVector != nil) {
            return true
        }
        return false
    }
}

