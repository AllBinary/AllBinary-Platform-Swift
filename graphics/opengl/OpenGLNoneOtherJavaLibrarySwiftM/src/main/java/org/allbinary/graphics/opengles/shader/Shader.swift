/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2025 AllBinary 
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
// package org.allbinary.graphics.opengles.shader

import J2SEForSwiftLibrary
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListUtil

open class Shader: JObject {
    public var shaderName: String! = nil
    public var shaderStringList: BasicArrayList! = nil
    public var shaderAsString: String! = nil
    public var shaderHandle: Int32 = 0

    private func initFields() {
    self.shaderName = StringUtil.getInstance().EMPTY_STRING
    self.shaderStringList = BasicArrayListUtil.getInstance().getImmutableInstance()
    self.shaderAsString = StringUtil.getInstance().EMPTY_STRING
    self.shaderHandle = 0
    }

    public override init() {
        super.init()
        self.initFields()
    }
}

