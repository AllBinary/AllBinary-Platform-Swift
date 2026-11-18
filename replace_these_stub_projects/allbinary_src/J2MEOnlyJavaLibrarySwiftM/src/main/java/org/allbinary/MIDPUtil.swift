/*
 *
 * AllBinary Open License Version 1
 * Copyright (c) 2026 AllBinary
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
// package org.allbinary

import J2SEForSwiftLibrary
// import java.io.IOException
// import java.io.InputStream
// import javax.microedition.lcdui.Form
// import javax.microedition.lcdui.Image
// import javax.microedition.lcdui.Item
// import javax.microedition.media.Manager
// import javax.microedition.media.MediaException
// import javax.microedition.media.Player

//like microemu-playn, so the languages without overloading can be generated. J2ME uses the MIDP overloads.
open class MIDPUtil: JObject {
    fileprivate static let instance: MIDPUtil! = MIDPUtil()

    public override init() {
        super.init()
    }
    

    @discardableResult open class func getInstance() -> MIDPUtil! {
        return MIDPUtil.instance
    }
    

    @discardableResult open func createImageWH(_ width: Int32, _ height: Int32) -> Image! {
        return Image.createImageWH(width, height)
    }
    

    @discardableResult open func createImageFromByteArray(_ imageData: JArray<Int8>!, _ imageOffset: Int32, _ imageLength: Int32) -> Image! {
        return Image.createImageFromByteArray(imageData, imageOffset, imageLength)
    }
    

    @discardableResult open func createImageFromInputStream(_ inputStream: InputStream!) -> Image! {
        return Image.createImageFromInputStream(inputStream)
    }
    

    @discardableResult open func createPlayerFromInputStream(_ inputStream: InputStream!, _ type: String!) -> Player! {
        return Manager.createPlayerFromInputStream(inputStream, type)
    }
    

    @discardableResult open func appendItem(_ form: Form!, _ item: Item!) -> Int32 {
        return form.appendItem(item)
    }
}

