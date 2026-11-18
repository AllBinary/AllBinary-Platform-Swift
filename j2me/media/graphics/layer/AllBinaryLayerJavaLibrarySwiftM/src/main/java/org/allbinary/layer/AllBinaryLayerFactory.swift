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
// package org.allbinary.layer

import J2SEForSwiftLibrary
// import org.allbinary.graphics.Rectangle
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.view.ViewPosition

open class AllBinaryLayerFactory: JObject, AllBinaryLayerFactoryInterface {
    fileprivate var rectangle: Rectangle! = nil

    private func initFields() {
    
    }
    

    public init(_ rectangle: Rectangle!) {
        super.init()
        self.initFields()
        self.rectangle = rectangle
    }
    

    @discardableResult open func getInstance() -> AllBinaryLayer! {
        return AllBinaryLayer(StringUtil.getInstance().EMPTY_STRING, self.rectangle, ViewPosition.getInstanceD())
    }
}

