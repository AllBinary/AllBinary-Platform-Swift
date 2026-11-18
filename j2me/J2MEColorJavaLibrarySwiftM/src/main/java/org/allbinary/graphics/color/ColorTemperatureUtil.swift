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
// package org.allbinary.graphics.color

import J2SEForSwiftLibrary

open class ColorTemperatureUtil: JObject {
    fileprivate static let instance: ColorTemperatureUtil! = ColorTemperatureUtil()
    fileprivate var basicColorFactory: BasicColorFactory! = nil

    private func initFields() {
    self.basicColorFactory = BasicColorFactory.getInstance()
    }

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult open class func getInstance() -> ColorTemperatureUtil! {
        return ColorTemperatureUtil.instance
    }
    

    @discardableResult open func getBasicColor(_ thirdTemp: Int32) -> BasicColor! {
        var basicColor: BasicColor! = self.basicColorFactory.RED
        if (thirdTemp > 3700) {
            basicColor = self.basicColorFactory.PURPLE
        } else if (thirdTemp > 3200) {
            basicColor = self.basicColorFactory.BLUE
        } else if (thirdTemp > 2700) {
            basicColor = self.basicColorFactory.PUCE
        } else if (thirdTemp > 2200) {
            basicColor = self.basicColorFactory.WHITE
        } else if (thirdTemp > 1700) {
            basicColor = self.basicColorFactory.GREEN
        } else if (thirdTemp > 1200) {
            basicColor = self.basicColorFactory.YELLOW
        } else if (thirdTemp > 700) {
            basicColor = self.basicColorFactory.ORANGE
        }
        return basicColor
    }
}

