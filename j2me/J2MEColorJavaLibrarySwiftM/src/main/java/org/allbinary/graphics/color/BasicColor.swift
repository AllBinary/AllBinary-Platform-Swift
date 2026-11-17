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
// package org.allbinary.graphics.color

import J2SEForSwiftLibrary
// import jsinterop.annotations.JsType
// import org.allbinary.logic.string.StringMaker
// import jsinterop.annotations.JsMethod
// import jsinterop.annotations.JsConstructor
// import jsinterop.annotations.JsProperty

open class BasicColor: JObject {
    fileprivate var name: String! = nil
    fileprivate var value: Int32 = 0
    fileprivate var redComponent: Float = 0.0
    fileprivate var greenComponent: Float = 0.0
    fileprivate var blueComponent: Float = 0.0
    fileprivate var alphaComponent: Float = 0.0
    public var red: Int16 = 0
    public var green: Int16 = 0
    public var blue: Int16 = 0
    public var alpha: Int16 = 0

    private func initFields() {
    
    
    
    
    
    
    
    
    
    
    }
    

    public init(_ alphaValue: Int32, _ value: Int32, _ name: String!) {
        super.init()
        self.initFields()
        self.name = name
        var tempValue: Int32 = 0
        let basicColorUtil: BasicColorUtil! = BasicColorUtil.getInstance()
        if (basicColorUtil.isAlpha) {
            if (basicColorUtil.ffOpaque) {
                tempValue = alphaValue | value
            } else {
                tempValue = 0x00000000 | value
            }
        } else {
            tempValue = value
        }
        let alphaInt: Int32 = ((tempValue >> 24) & 255)
        self.alpha = Int16(truncatingIfNeeded: alphaInt)
        self.alphaComponent = (Float(alphaInt)) / 255.0
        let redInt: Int32 = ((tempValue >> 16) & 255)
        self.red = Int16(truncatingIfNeeded: redInt)
        self.redComponent = (Float(redInt)) / 255.0
        let greenInt: Int32 = ((tempValue >> 8) & 255)
        self.green = Int16(truncatingIfNeeded: greenInt)
        self.greenComponent = (Float(greenInt)) / 255.0
        let blueInt: Int32 = ((tempValue) & 255)
        self.blue = Int16(truncatingIfNeeded: blueInt)
        self.blueComponent = (Float(blueInt)) / 255.0
        self.value = tempValue
    }
    

    @discardableResult open func intValue() -> Int32 {
        return self.value
    }
    

    @discardableResult open func toInt() -> Int32 {
        return self.value
    }
    

    @discardableResult open override func toString() -> String! {
        let stringBuffer: StringMaker! = StringMaker()
        stringBuffer.append("BasicColor: ")
        stringBuffer.append("Alpha: ")
        stringBuffer.appendshort(self.alpha)
        stringBuffer.append(" Red: ")
        stringBuffer.appendshort(self.red)
        stringBuffer.append(" Green: ")
        stringBuffer.appendshort(self.green)
        stringBuffer.append(" Blue: ")
        stringBuffer.appendshort(self.blue)
        stringBuffer.append(" Value: ")
        stringBuffer.appendint(self.value)
        return stringBuffer.toString()
    }
    

    @discardableResult open func getName() -> String! {
        return self.name
    }
    

    @discardableResult open func getRedComponent() -> Float {
        return self.redComponent
    }
    

    @discardableResult open func getGreenComponent() -> Float {
        return self.greenComponent
    }
    

    @discardableResult open func getBlueComponent() -> Float {
        return self.blueComponent
    }
    

    @discardableResult open func getAlphaComponent() -> Float {
        return self.alphaComponent
    }
}

