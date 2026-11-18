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
// package javax.microedition.lcdui

import J2SEForSwiftLibrary
// import org.allbinary.logic.NullUtil

//PlatformNullImageJavaLibrary
open class PlatformImage: JObject {

    public override init() {
        super.init()
    }
    

    @discardableResult open func getImage(_ graphicsSurface2: JObject!) -> JObject! {
        return NullImage.NULL_IMAGE
    }
    

    @discardableResult open func getSurfaceWidth(_ graphicsSurface2: JObject!, _ width: Int32) -> Int32 {
        return width
    }
    

    @discardableResult open func getSurfaceHeight(_ graphicsSurface2: JObject!, _ height: Int32) -> Int32 {
        return height
    }
    

    @discardableResult open func getWidth(_ image: Image!, _ width: Int32) -> Int32 {
        return width
    }
    

    @discardableResult open func getHeight(_ image: Image!, _ height: Int32) -> Int32 {
        return height
    }
    

    @discardableResult open func getGraphics(_ graphicsSurface: JObject!, _ width: Int32, _ height: Int32, _ image: Image!) -> Graphics! {
        jThrow(JException("RuntimeException", ""))
    }
    

    open func drawImage(_ image: Image!, _ x: Int32, _ y: Int32, _ anchor: Int32, _ g2: Graphics!, _ g: JObject!) {
    }
    

    open func drawRegion(_ image: Image!, _ x_src: Int32, _ y_src: Int32, _ width: Int32, _ height: Int32, _ transform: Int32, _ x_dst: Int32, _ y_dst: Int32, _ anchor: Int32, _ g: Graphics!) {
    }
    

    open func getRGB(_ argb: JArray<Int32>!, _ offset: Int32, _ scanlength: Int32, _ x: Int32, _ y: Int32, _ width: Int32, _ height: Int32, _ image: Image!) {
    }
    

    open func setRGB(_ argb: JArray<Int32>!, _ offset: Int32, _ scanlength: Int32, _ x: Int32, _ y: Int32, _ width: Int32, _ height: Int32, _ image: Image!) {
    }
    

    @discardableResult open func getData(_ image: Image!) -> JArray<Int32>! {
        return NullUtil.getInstance().NULL_INT_ARRAY
    }
}

