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
// package org.allbinary.media

import J2SEForSwiftLibrary
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.string.CommonLabels

open class ScaleProperties: JObject {
    public static let instance: ScaleProperties! = ScaleProperties()
    public var scaleX: Float = 0.0
    public var scaleY: Float = 0.0
    public var scaleWidth: Int32 = 0
    public var scaleHeight: Int32 = 0
    public var shouldScale: Bool = false

    private func initFields() {
    self.scaleX = 0.0
    self.scaleY = 0.0
    self.scaleWidth = 0
    self.scaleHeight = 0
    self.shouldScale = false
    }

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult open override func toString() -> String! {
        return StringMaker().append(CommonLabels.getInstance().COLON_SEP).appendboolean(self.shouldScale).append("scaleX: ").appendfloat(self.scaleX).append("scaleY: ").appendfloat(self.scaleY).append("scaleWidth: ").appendint(self.scaleWidth).append("scaleHeight: ").appendint(self.scaleHeight).toString()
    }
}

