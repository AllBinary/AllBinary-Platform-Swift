// Generated Code Do Not Modify
// package org.allbinary.graphics.displayable

import J2SEForSwiftLibrary
// import javax.microedition.lcdui.Image

open class ScreenRelationalUtil: JObject {
    fileprivate static let instance: ScreenRelationalUtil! = ScreenRelationalUtil()

    public override init() {
        super.init()
    }
    

    @discardableResult open class func getInstance() -> ScreenRelationalUtil! {
        return ScreenRelationalUtil.instance
    }
    

    @discardableResult open func getScaleImage(_ image: Image!) -> Float {
        return self.getScaleWH(image.getWidth(), image.getHeight())
    }
    

    @discardableResult open func getScaleWH(_ aWidth: Int32, _ aHeight: Int32) -> Float {
        return self.getScaleWHA(aWidth, aHeight, 20)
    }
    

    @discardableResult open func getScaleWHA(_ aWidth: Int32, _ aHeight: Int32, _ add: Int32) -> Float {
        let displayInfoSingleton: DisplayInfoSingleton! = DisplayInfoSingleton.getInstance()
        let last: JArray<Int32>! = displayInfoSingleton.getLast()
        let width: Float = Float(last[displayInfoSingleton.WIDTH])
        let height: Float = Float(last[displayInfoSingleton.HEIGHT])
        var largestSize: Float = width
        if (largestSize < height) {
            largestSize = height
        }
        let scale: Float = (largestSize) / Float(aWidth)
        return scale
    }
    

    @discardableResult open func getScaledHeight(_ aWidth: Int32, _ aHeight: Int32) -> Int32 {
        return JMath.toInt32(Double((self.getScaleWH(aWidth, aHeight) * Float(aHeight))))
    }
    

    @discardableResult open func getScaledHeightAdd(_ aWidth: Int32, _ aHeight: Int32, _ add: Int32) -> Int32 {
        return JMath.toInt32(Double((self.getScaleWHA(aWidth, aHeight, add) * Float(aHeight))))
    }
}

