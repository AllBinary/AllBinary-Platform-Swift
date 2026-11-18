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
// package org.allbinary.graphics.font

import J2SEForSwiftLibrary
// import javax.microedition.lcdui.Graphics

open class UpdateMyFontProcessor: MyFontProcessor {
    fileprivate var updateMeasurementProcessor: UpdateMyFontInterface! = nil

    // Each class has its own field initializers
    private func initFields() {
    
    }
    

    public init(_ keyValueDrawCharArray: UpdateMyFontInterface!) {
        super.init()
        self.initFields()
        self.updateMeasurementProcessor = keyValueDrawCharArray
    }
    

    open override func process(_ graphics: Graphics!) {
        self.updateMeasurementProcessor.updateMeasurement(graphics)
    }
}

