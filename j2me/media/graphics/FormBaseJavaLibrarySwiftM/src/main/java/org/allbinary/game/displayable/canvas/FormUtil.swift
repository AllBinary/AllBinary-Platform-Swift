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
// package org.allbinary.game.displayable.canvas

import J2SEForSwiftLibrary
// import org.allbinary.graphics.PointFactory
// import org.allbinary.graphics.Rectangle
// import org.allbinary.graphics.displayable.DisplayInfoSingleton
// import org.allbinary.logic.communication.log.LogUtil

open class FormUtil: JObject {
    fileprivate static let instance: FormUtil! = FormUtil()

    public override init() {
        super.init()
    }
    

    @discardableResult open class func getInstance() -> FormUtil! {
        return FormUtil.instance
    }
    

    @discardableResult open func createFormRectangle() -> Rectangle! {
        let displayInfo: DisplayInfoSingleton! = DisplayInfoSingleton.getInstance()
        let pointFactory: PointFactory! = PointFactory.getInstance()
        let rectangle: Rectangle! = Rectangle(pointFactory.createXY(30, 10), displayInfo.getLastWidth() &- 30, displayInfo.getLastHeight() &- 35)
        return rectangle
    }
}

