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
// package org.allbinary.image

import J2SEForSwiftLibrary
// import java.io.InputStream
// import javax.microedition.lcdui.Image
// import javax.microedition.lcdui.NullImage
// import org.allbinary.J2MEUtil
// import org.allbinary.TsUtil
// import org.allbinary.data.resource.ResourceUtil
// import org.allbinary.game.gd.resource.GDResources
// import org.allbinary.logic.ABSystemWrapper
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.string.CommonStrings
// import org.allbinary.system.Memory

open class ImageCache: ImageCacheBase {
    public static let NULL_IMAGE_CACHE: ImageCache! = ImageCache()
    public var commonStrings: CommonStrings! = nil
    fileprivate var tsUtil: TsUtil! = nil

    // Each class has its own field initializers
    private func initFields() {
    self.commonStrings = CommonStrings.getInstance()
    self.tsUtil = TsUtil.getInstance()
    }
    

    public override init() {
        super.init()
        self.initFields()
    }
    

    open func addListener(_ renderer: JObject!) {
    }
    

    @discardableResult open func getIndex(_ key: JObject!) -> Int32 {
        let gdResources: GDResources! = GDResources.getInstance()
        let resourceStringArray: JArray<String?>! = gdResources.resourceStringArray
        let size: Int32 = resourceStringArray.length
        do {
            var index: Int32 = 0
            while (index < size) {
                defer { index &+= 1 }
            if (resourceStringArray[index] === key) {
                return index
            }
            }
        }
        self.logUtil.putF(StringMaker().append("unable to find key: ").append(StringUtil.getInstance().toString(key)).toString(), self, self.commonStrings.RUN)
        jThrow(JException("RuntimeException", ""))
    }
    

    @discardableResult open override func get(_ caller: String!, _ width: Int32, _ height: Int32) -> Image! {
        var foundIndex: Int32 = self.getIndexWH(width, height)
        var image: Image! = self.getFromAvailable(foundIndex, width, height)
        if (image === NullImage.NULL_IMAGE) {
            self.volume = self.volume + width &* height
            if (self.volume > 32000) {
                self.tsUtil.gc()
                self.volume = 0
            }
            image = self.createImage(caller, width, height)
            let widths: JArray<Int32>! = self.widths
            if (self.nextIndex > widths.length &- 1) {
                if (foundIndex == -1) {
                    foundIndex = self.nextIndex
                    widths[self.nextIndex] = width
                    self.heights[self.nextIndex] = height
                    self.nextIndex &+= 1
                }
                self.listOfList[foundIndex].add(image)
            }
        }
        return image
    }
    

    @discardableResult open override func getWithKey(_ key: JObject!) -> Image! {
        var image: Image! = self.getImage(key)
        if (image === NullImage.NULL_IMAGE) {
            let resourceUtil: ResourceUtil! = ResourceUtil.getInstance()
            let resourceInputStream: InputStream! = resourceUtil.getResourceAsStream(jUnboxString(key))
            if (resourceInputStream == nil) {
                jThrow(JException("RuntimeException", StringMaker().append("Image resource is not available for key: ").append(StringUtil.getInstance().toString(key)).toString()))
            }
            do {
                image = self.createImageFromInputStream(key, resourceInputStream)
            } /* catch (Exception e): a thrown Java exception stops the program */
            if (J2MEUtil.isHTML()) {
            } else {
                resourceInputStream.close()
            }
            self.hashtable.put(key, image)
        }
        return image
    }
    

    open func loadImageForAnimation() {
    }
    

    open func progressEnded() {
    }
    

    open func runTask() {
    }
    

    @discardableResult open func isLazy() -> Bool {
        return false
    }
}

