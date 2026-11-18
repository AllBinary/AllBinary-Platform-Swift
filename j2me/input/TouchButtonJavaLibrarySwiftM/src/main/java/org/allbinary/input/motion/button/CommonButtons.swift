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
// package org.allbinary.input.motion.button

import J2SEForSwiftLibrary
// import org.allbinary.graphics.PointFactory
// import org.allbinary.graphics.Rectangle
// import org.allbinary.graphics.displayable.DisplayInfoSingleton

open class CommonButtons: JObject {
    fileprivate static let instance: CommonButtons! = CommonButtons()
    public var STANDARD_BUTTON_SIZE: Int32 = 0
    public var NORMAL_BUTTON: Rectangle! = nil
    public var LARGE_BUTTON: Rectangle! = nil

    private func initFields() {
    
    
    
    }
    

    @discardableResult open class func getInstance() -> CommonButtons! {
        return CommonButtons.instance
    }
    

    public override init() {
        super.init()
        self.initFields()
        let displayInfo: DisplayInfoSingleton! = DisplayInfoSingleton.getInstance()
        var commonButtonSize: Int32 = 128
        while (commonButtonSize > 64) {
            let totalColumns: Int32 = displayInfo.getLastWidth() / commonButtonSize
            let totalRows: Int32 = displayInfo.getLastHeight() / commonButtonSize
            var max: Int32 = totalColumns
            if (totalRows > max) {
                max = totalRows
            }
            if (max > 9) {
                break
            }
            commonButtonSize = commonButtonSize >> 1
        }
        self.STANDARD_BUTTON_SIZE = commonButtonSize
        self.NORMAL_BUTTON = Rectangle(PointFactory.getInstance().ZERO_ZERO, self.STANDARD_BUTTON_SIZE, self.STANDARD_BUTTON_SIZE)
        self.LARGE_BUTTON = Rectangle(PointFactory.getInstance().ZERO_ZERO, self.STANDARD_BUTTON_SIZE << 1, self.STANDARD_BUTTON_SIZE << 1)
    }
}

