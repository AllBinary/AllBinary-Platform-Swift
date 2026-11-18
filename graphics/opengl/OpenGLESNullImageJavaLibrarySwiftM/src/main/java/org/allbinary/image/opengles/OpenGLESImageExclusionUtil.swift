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
// package org.allbinary.image.opengles

import J2SEForSwiftLibrary
// import javax.microedition.lcdui.Image
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListD

open class OpenGLESImageExclusionUtil: JObject {
    fileprivate static let instance: OpenGLESImageExclusionUtil! = OpenGLESImageExclusionUtil()
    public var list: BasicArrayList! = nil

    private func initFields() {
    self.list = BasicArrayListD()
    }

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult open class func getInstance() -> OpenGLESImageExclusionUtil! {
        return OpenGLESImageExclusionUtil.instance
    }
    

    @discardableResult open func isCustomScaling(_ image: Image!) -> Bool {
        return false
    }
}

