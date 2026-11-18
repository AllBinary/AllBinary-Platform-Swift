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
// import org.allbinary.logic.StdUtil
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.string.CommonLabels
// import org.allbinary.string.CommonSeps
// import org.allbinary.util.ABHashtable
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListD

open class ImageCacheBase: JObject {
    public var logUtil: LogUtil! = nil
    public var imageFactory: ImageFactory! = nil
    public var hashtable: ABHashtable! = nil
    public var SIZE: Int32 = 0
    public var widths: JArray<Int32>! = nil
    public var heights: JArray<Int32>! = nil
    public var listOfList: JArray<BasicArrayList?>! = nil
    public var availableListOfList: JArray<BasicArrayList?>! = nil
    public var volume: Int32 = 0
    public var nextIndex: Int32 = 0

    private func initFields() {
    self.logUtil = LogUtil.getInstance()
    self.imageFactory = ImageFactory.getInstance()
    self.hashtable = StdUtil.getInstance().createHashtable()
    self.SIZE = 128
    self.widths = JArray<Int32>(self.SIZE, 0)
    self.heights = JArray<Int32>(self.SIZE, 0)
    self.listOfList = JArray<BasicArrayList?>(self.SIZE, nil)
    self.availableListOfList = JArray<BasicArrayList?>(self.SIZE, nil)
    self.volume = 0
    self.nextIndex = 0
    }
    

    public override init() {
        super.init()
        self.initFields()
        do {
            var index: Int32 = self.listOfList.length &- 1
            while (index >= 0) {
                defer { index &-= 1 }
            self.listOfList[index] = BasicArrayListD()
            }
        }
        do {
            var index: Int32 = self.availableListOfList.length &- 1
            while (index >= 0) {
                defer { index &-= 1 }
            self.availableListOfList[index] = BasicArrayListD()
            }
        }
    }
    

    @discardableResult open func getImage(_ resourceId: JObject!) -> Image! {
        let imageCanBeNull: JObject! = self.hashtable.get(resourceId)
        if (imageCanBeNull == nil) {
            return NullImage.NULL_IMAGE
        }
        return (imageCanBeNull as! Image)
    }
    

    open func releaseAll() {
        do {
            var index: Int32 = self.listOfList.length &- 1
            while (index >= 0) {
                defer { index &-= 1 }
            self.availableListOfList[index]!.clear()
            self.availableListOfList[index]!.addAllList(self.listOfList[index])
            }
        }
        self.logUtil.putF(StringMaker().append("ImageCache: ").append(self.toString()).toString(), self, "releaseAll")
    }
    

    @discardableResult open func getIndexWH(_ width: Int32, _ height: Int32) -> Int32 {
        var foundIndex: Int32 = -1
        let size: Int32 = self.widths.length
        do {
            var index: Int32 = 0
            while (index < size) {
                defer { index &+= 1 }
            if (self.widths[index] == width && self.heights[index] == height) {
                foundIndex = index
                return foundIndex
            }
            }
        }
        return foundIndex
    }
    

    @discardableResult open func getFromAvailable(_ foundIndex: Int32, _ width: Int32, _ height: Int32) -> Image! {
        if (foundIndex != -1) {
            if (self.availableListOfList[foundIndex]!.size() > 0) {
                let list: BasicArrayList! = self.availableListOfList[foundIndex]
                return (list.removeAt(list.size() &- 1) as! Image)
            }
        }
        return NullImage.NULL_IMAGE
    }
    

    @discardableResult open func get(_ caller: String!, _ width: Int32, _ height: Int32) -> Image! {
        jThrow(JException("RuntimeException", ""))
    }
    

    @discardableResult open func getWithKey(_ key: JObject!) -> Image! {
        jThrow(JException("RuntimeException", ""))
    }
    

    @discardableResult open func createImage(_ caller: String!, _ width: Int32, _ height: Int32) -> Image! {
        return self.imageFactory.createImage(caller, width, height)
    }
    

    @discardableResult open func createImageFromInputStream(_ key: JObject!, _ inputStream: InputStream!) -> Image! {
        return self.imageFactory.createImageFromInputStream(key, inputStream)
    }
    

    @discardableResult open override func toString() -> String! {
        let stringBuffer: StringMaker! = StringMaker()
        do {
            var index: Int32 = self.nextIndex &- 1
            while (index >= 0) {
                defer { index &-= 1 }
            let width: Int32 = self.widths[index]
            let height: Int32 = self.heights[index]
            let total: Int32 = self.listOfList[index]!.size()
            let totalAvailable: Int32 = self.availableListOfList[index]!.size()
            stringBuffer.append(" w: ")
            stringBuffer.appendint(width)
            stringBuffer.append(" h: ")
            stringBuffer.appendint(height)
            stringBuffer.append(CommonSeps.getInstance().SPACE)
            stringBuffer.append(CommonLabels.getInstance().TOTAL_LABEL)
            stringBuffer.appendint(total)
            stringBuffer.append(" available: ")
            stringBuffer.appendint(totalAvailable)
            }
        }
        return stringBuffer.toString()
    }
    

    @discardableResult open func getHashtableP() -> ABHashtable! {
        return self.hashtable
    }
    

    open func `init`(_ image: Image!) {
    }
    

    open func initProgress() {
    }
}

