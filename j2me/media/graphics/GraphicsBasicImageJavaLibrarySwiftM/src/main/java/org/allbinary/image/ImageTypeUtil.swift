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
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListD

open class ImageTypeUtil: JObject {
    fileprivate static var SINGLETON: ImageTypeUtil! = ImageTypeUtil()
    public var PNG: String! = nil
    public var JPG: String! = nil
    public var GIF: String! = nil
    fileprivate var list: BasicArrayList! = nil

    private func initFields() {
    self.PNG = "png"
    self.JPG = "jpg"
    self.GIF = "gif"
    self.list = BasicArrayListD()
    }
    

    public override init() {
        super.init()
        self.initFields()
        self.list.add(jBoxString(self.JPG))
        self.list.add(jBoxString(self.GIF))
        self.list.add(jBoxString(self.PNG))
    }
    

    @discardableResult open func isSupported(_ mediaFileType: String!) -> Bool {
        var mediaFileType: String! = mediaFileType
        mediaFileType = JString.toLowerCase(mediaFileType)
        do {
            var index: Int32 = self.list.size() &- 1
            while (index >= 0) {
                defer { index &-= 1 }
            let name: String! = jUnboxString(self.list.get(index))
            if (JString.compareTo(mediaFileType, name) == 0) {
                return true
            }
            }
        }
        return false
    }
    

    @discardableResult open class func getInstance() -> ImageTypeUtil! {
        return ImageTypeUtil.SINGLETON
    }
}

