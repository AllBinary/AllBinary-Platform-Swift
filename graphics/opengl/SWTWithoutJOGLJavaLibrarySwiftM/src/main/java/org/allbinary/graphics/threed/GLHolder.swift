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
// package org.allbinary.graphics.threed

import J2SEForSwiftLibrary

open class GLHolder: JObject {
    public var isCreated: Bool = false

    private func initFields() {
    self.isCreated = true
    }
    

    public override init() {
        super.init()
        self.initFields()
    }
    

    open func runOnSurfaceCreated(_ renderer: JObject!) {
    }
    

    open func runOnSurfaceChanged(_ renderer: JObject!, _ width: Int32, _ height: Int32) {
    }
    

    open func run(_ renderer: JObject!) {
    }
}

