/*
 *
 * AllBinary Open License Version 1
 * Copyright (c) 2022 AllBinary
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
// package org.allbinary.graphics.displayable.screen

import J2SEForSwiftLibrary
// import org.allbinary.game.paint.AboutPaintable
// import org.allbinary.graphics.paint.NullPaintable
// import org.allbinary.graphics.paint.Paintable
// import org.allbinary.logic.string.StringUtil

open class AboutPaintableFactory: JObject {
    fileprivate static let instance: AboutPaintableFactory! = AboutPaintableFactory()
    public var paintableArray: JArray<Paintable?>! = nil

    private func initFields() {
    self.paintableArray = JArray<Paintable?>([NullPaintable.getInstance()])
    }
    

    @discardableResult open class func getInstance() -> AboutPaintableFactory! {
        return AboutPaintableFactory.instance
    }
    

    public override init() {
        super.init()
        self.initFields()
        let INFO: JArray<String?>! = JArray<String?>(["Built with the", "AllBinary Platform", StringUtil.getInstance().EMPTY_STRING, "Comments or Questions:", "support@allbinary.com"])
        let DEVELOPERS: JArray<String?>! = JArray<String?>(["Developed By:", "Travis Berthelot"])
        self.paintableArray = AboutPaintable.getInstance(INFO, DEVELOPERS).getPaintableArrayInstance()
    }
}

