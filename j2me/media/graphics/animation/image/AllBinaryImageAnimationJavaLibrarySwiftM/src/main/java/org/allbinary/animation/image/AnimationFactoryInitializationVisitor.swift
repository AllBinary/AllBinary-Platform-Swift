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
// package org.allbinary.animation.image

import J2SEForSwiftLibrary
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.math.PositionStrings
// import org.allbinary.string.CommonLabels
// import org.allbinary.string.CommonSeps

open class AnimationFactoryInitializationVisitor: JObject {
    public var width: Int32 = 0
    public var height: Int32 = 0
    public var dx: Int32 = 0
    public var dy: Int32 = 0
    public var originalDx: Int32 = 0
    public var originalDy: Int32 = 0

    private func initFields() {
    self.width = 0
    self.height = 0
    self.dx = 0
    self.dy = 0
    self.originalDx = 0
    self.originalDy = 0
    }

    public override init() {
        super.init()
        self.initFields()
    }
    

    open func visit() {
    }
    

    @discardableResult open override func toString() -> String! {
        let commonSeps: CommonSeps! = CommonSeps.getInstance()
        let commonLabels: CommonLabels! = CommonLabels.getInstance()
        let stringBuffer: StringMaker! = StringMaker()
        stringBuffer.append(PositionStrings.getInstance().DX_LABEL).appendfloat(Float(self.dx))
        stringBuffer.append(PositionStrings.getInstance().DY_LABEL).appendfloat(Float(self.dy))
        stringBuffer.append(commonLabels.WIDTH_LABEL)
        stringBuffer.appendint(self.width)
        stringBuffer.append(commonSeps.SPACE)
        stringBuffer.append(commonLabels.HEIGHT_LABEL)
        stringBuffer.appendint(self.height)
        return stringBuffer.toString()
    }
}

