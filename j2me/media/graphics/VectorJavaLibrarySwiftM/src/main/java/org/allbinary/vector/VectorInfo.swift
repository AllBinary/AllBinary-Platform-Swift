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
// package org.allbinary.vector

import J2SEForSwiftLibrary

open class VectorInfo: JObject {
    fileprivate var width: Int32 = 0
    fileprivate var height: Int32 = 0
    fileprivate var points: JArray<JArray<Int32>?>! = nil
    fileprivate var totalFrames: Int32 = 0

    private func initFields() {
    
    
    
    
    }
    

    public init(_ width: Int32, _ height: Int32, _ points: JArray<JArray<Int32>?>!, _ totalFrames: Int32) {
        super.init()
        self.initFields()
        self.width = width
        self.height = height
        self.points = points
        self.totalFrames = totalFrames
    }
    

    @discardableResult open func getWidth() -> Int32 {
        return self.width
    }
    

    fileprivate func setWidth(_ width: Int32) {
        self.width = width
    }
    

    @discardableResult open func getHeight() -> Int32 {
        return self.height
    }
    

    fileprivate func setHeight(_ height: Int32) {
        self.height = height
    }
    

    @discardableResult open func getPoints() -> JArray<JArray<Int32>?>! {
        return self.points
    }
    

    fileprivate func setPoints(_ points: JArray<JArray<Int32>?>!) {
        self.points = points
    }
    

    @discardableResult open func getTotalFrames() -> Int32 {
        return self.totalFrames
    }
    

    fileprivate func setTotalFrames(_ totalFrames: Int32) {
        self.totalFrames = totalFrames
    }
}

