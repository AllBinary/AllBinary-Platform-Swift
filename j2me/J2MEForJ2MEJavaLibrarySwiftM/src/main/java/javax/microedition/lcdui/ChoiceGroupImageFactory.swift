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
// import org.allbinary.MIDPUtil

open class ChoiceGroupImageFactory: JObject {
    fileprivate static let instance: ChoiceGroupImageFactory! = ChoiceGroupImageFactory()
    fileprivate var multiOff: JArray<Int8>! = nil
    fileprivate var multiOn: JArray<Int8>! = nil
    fileprivate var radioOff: JArray<Int8>! = nil
    fileprivate var radioOn: JArray<Int8>! = nil
    fileprivate var midpUtil: MIDPUtil! = nil
    fileprivate var imgMultiOffO: Image! = nil
    fileprivate var imgMultiOnO: Image! = nil
    fileprivate var imgRadioOffO: Image! = nil
    fileprivate var imgRadioOnO: Image! = nil
    public var imgMultiOff: Image! = nil
    public var imgMultiOn: Image! = nil
    public var imgRadioOff: Image! = nil
    public var imgRadioOn: Image! = nil
    fileprivate var imageArray: JArray<Image?>! = nil

    private func initFields() {
    self.multiOff = JArray<Int8>([Int8(truncatingIfNeeded: -119), 80, 78, 71, 13, 10, 26, 10, 0, 0, 0, 13, 73, 72, 68, 82, 0, 0, 0, 10, 0, 0, 0, 11, 2, 3, 0, 0, 0, 59, 0, Int8(truncatingIfNeeded: -12), Int8(truncatingIfNeeded: -117), 0, 0, 0, 6, 80, 76, 84, 69, Int8(truncatingIfNeeded: -1), Int8(truncatingIfNeeded: -1), Int8(truncatingIfNeeded: -1), Int8(truncatingIfNeeded: -69), Int8(truncatingIfNeeded: -69), Int8(truncatingIfNeeded: -69), Int8(truncatingIfNeeded: -57), 75, Int8(truncatingIfNeeded: -33), Int8(truncatingIfNeeded: -8), 0, 0, 0, 30, 73, 68, 65, 84, 120, Int8(truncatingIfNeeded: -38), 99, 96, 96, 96, 96, 12, 101, Int8(truncatingIfNeeded: -8), Int8(truncatingIfNeeded: -51), Int8(truncatingIfNeeded: -32), Int8(truncatingIfNeeded: -64), 32, Int8(truncatingIfNeeded: -64), Int8(truncatingIfNeeded: -60), Int8(truncatingIfNeeded: -64), Int8(truncatingIfNeeded: -64), Int8(truncatingIfNeeded: -128), 11, 51, Int8(truncatingIfNeeded: -122), 50, Int8(truncatingIfNeeded: -4), 6, 0, 63, 116, 3, 1, 53, Int8(truncatingIfNeeded: -108), 39, Int8(truncatingIfNeeded: -26), 0, 0, 0, 0, 73, 69, 78, 68, Int8(truncatingIfNeeded: -82), 66, 96, Int8(truncatingIfNeeded: -126)])
    self.multiOn = JArray<Int8>([Int8(truncatingIfNeeded: -119), 80, 78, 71, 13, 10, 26, 10, 0, 0, 0, 13, 73, 72, 68, 82, 0, 0, 0, 10, 0, 0, 0, 11, 2, 3, 0, 0, 0, 59, 0, Int8(truncatingIfNeeded: -12), Int8(truncatingIfNeeded: -117), 0, 0, 0, 12, 80, 76, 84, 69, Int8(truncatingIfNeeded: -1), Int8(truncatingIfNeeded: -1), Int8(truncatingIfNeeded: -1), Int8(truncatingIfNeeded: -69), Int8(truncatingIfNeeded: -69), Int8(truncatingIfNeeded: -69), 106, 106, 106, 2, 2, 2, 106, Int8(truncatingIfNeeded: -103), 14, Int8(truncatingIfNeeded: -47), 0, 0, 0, 53, 73, 68, 65, 84, 120, Int8(truncatingIfNeeded: -38), 99, 96, 96, 124, Int8(truncatingIfNeeded: -64), Int8(truncatingIfNeeded: -16), Int8(truncatingIfNeeded: -1), Int8(truncatingIfNeeded: -77), 3, Int8(truncatingIfNeeded: -45), 65, Int8(truncatingIfNeeded: -111), 15, 76, 12, 108, 12, 76, 12, Int8(truncatingIfNeeded: -4), 12, 76, 12, 18, 12, 76, Int8(truncatingIfNeeded: -68), 127, 24, Int8(truncatingIfNeeded: -104), 126, 45, 96, 96, Int8(truncatingIfNeeded: -7), Int8(truncatingIfNeeded: -11), Int8(truncatingIfNeeded: -109), Int8(truncatingIfNeeded: -127), Int8(truncatingIfNeeded: -23), Int8(truncatingIfNeeded: -65), 3, 3, Int8(truncatingIfNeeded: -29), 127, Int8(truncatingIfNeeded: -122), Int8(truncatingIfNeeded: -113), 0, 5, 37, 12, Int8(truncatingIfNeeded: -34), 1, Int8(truncatingIfNeeded: -99), Int8(truncatingIfNeeded: -83), 100, 0, 0, 0, 0, 73, 69, 78, 68, Int8(truncatingIfNeeded: -82), 66, 96, Int8(truncatingIfNeeded: -126)])
    self.radioOff = JArray<Int8>([Int8(truncatingIfNeeded: -119), 80, 78, 71, 13, 10, 26, 10, 0, 0, 0, 13, 73, 72, 68, 82, 0, 0, 0, 11, 0, 0, 0, 11, 2, 3, 0, 0, 0, Int8(truncatingIfNeeded: -44), Int8(truncatingIfNeeded: -62), Int8(truncatingIfNeeded: -97), Int8(truncatingIfNeeded: -75), 0, 0, 0, 9, 80, 76, 84, 69, Int8(truncatingIfNeeded: -1), Int8(truncatingIfNeeded: -1), Int8(truncatingIfNeeded: -1), Int8(truncatingIfNeeded: -69), Int8(truncatingIfNeeded: -69), Int8(truncatingIfNeeded: -69), 106, 106, 106, Int8(truncatingIfNeeded: -44), 13, Int8(truncatingIfNeeded: -1), Int8(truncatingIfNeeded: -24), 0, 0, 0, 42, 73, 68, 65, 84, 120, Int8(truncatingIfNeeded: -38), 99, 96, 90, Int8(truncatingIfNeeded: -59), Int8(truncatingIfNeeded: -64), 32, Int8(truncatingIfNeeded: -63), 48, Int8(truncatingIfNeeded: -127), 65, Int8(truncatingIfNeeded: -127), 65, Int8(truncatingIfNeeded: -127), 41, Int8(truncatingIfNeeded: -127), Int8(truncatingIfNeeded: -31), 5, 19, 3, 3, 3, 50, 102, 80, 96, 80, 96, Int8(truncatingIfNeeded: -6), Int8(truncatingIfNeeded: -63), 80, Int8(truncatingIfNeeded: -64), Int8(truncatingIfNeeded: -64), Int8(truncatingIfNeeded: -76), Int8(truncatingIfNeeded: -118), 1, 0, 113, 24, 5, 61, 73, Int8(truncatingIfNeeded: -68), Int8(truncatingIfNeeded: -100), 98, 0, 0, 0, 0, 73, 69, 78, 68, Int8(truncatingIfNeeded: -82), 66, 96, Int8(truncatingIfNeeded: -126)])
    self.radioOn = JArray<Int8>([Int8(truncatingIfNeeded: -119), 80, 78, 71, 13, 10, 26, 10, 0, 0, 0, 13, 73, 72, 68, 82, 0, 0, 0, 11, 0, 0, 0, 11, 2, 3, 0, 0, 0, Int8(truncatingIfNeeded: -44), Int8(truncatingIfNeeded: -62), Int8(truncatingIfNeeded: -97), Int8(truncatingIfNeeded: -75), 0, 0, 0, 12, 80, 76, 84, 69, Int8(truncatingIfNeeded: -1), Int8(truncatingIfNeeded: -1), Int8(truncatingIfNeeded: -1), Int8(truncatingIfNeeded: -69), Int8(truncatingIfNeeded: -69), Int8(truncatingIfNeeded: -69), 106, 106, 106, 2, 2, 2, 106, Int8(truncatingIfNeeded: -103), 14, Int8(truncatingIfNeeded: -47), 0, 0, 0, 50, 73, 68, 65, 84, 120, Int8(truncatingIfNeeded: -38), 5, Int8(truncatingIfNeeded: -63), 65, 13, 0, 32, 12, 4, Int8(truncatingIfNeeded: -63), Int8(truncatingIfNeeded: -19), Int8(truncatingIfNeeded: -11), Int8(truncatingIfNeeded: -117), 1, 18, 68, Int8(truncatingIfNeeded: -100), 10, 52, 19, 94, 72, 64, 17, 101, Int8(truncatingIfNeeded: -122), 44, Int8(truncatingIfNeeded: -44), Int8(truncatingIfNeeded: -29), 98, Int8(truncatingIfNeeded: -52), 89, 77, Int8(truncatingIfNeeded: -102), 40, 2, 85, Int8(truncatingIfNeeded: -95), Int8(truncatingIfNeeded: -73), Int8(truncatingIfNeeded: -63), Int8(truncatingIfNeeded: -104), Int8(truncatingIfNeeded: -63), 37, Int8(truncatingIfNeeded: -117), 15, Int8(truncatingIfNeeded: -40), 119, 10, 41, 78, 26, Int8(truncatingIfNeeded: -79), 59, 0, 0, 0, 0, 73, 69, 78, 68, Int8(truncatingIfNeeded: -82), 66, 96, Int8(truncatingIfNeeded: -126)])
    self.midpUtil = MIDPUtil.getInstance()
    self.imgMultiOffO = self.midpUtil.createImageFromByteArray(self.multiOff, 0, self.multiOff.length)
    self.imgMultiOnO = self.midpUtil.createImageFromByteArray(self.multiOn, 0, self.multiOn.length)
    self.imgRadioOffO = self.midpUtil.createImageFromByteArray(self.radioOff, 0, self.radioOff.length)
    self.imgRadioOnO = self.midpUtil.createImageFromByteArray(self.radioOn, 0, self.radioOn.length)
    self.imgMultiOff = self.imgMultiOffO
    self.imgMultiOn = self.imgMultiOnO
    self.imgRadioOff = self.imgRadioOffO
    self.imgRadioOn = self.imgRadioOnO
    self.imageArray = JArray<Image?>([self.imgMultiOff, self.imgMultiOn, self.imgRadioOff, self.imgRadioOn])
    }

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult open class func getInstance() -> ChoiceGroupImageFactory! {
        return ChoiceGroupImageFactory.instance
    }
    

    @discardableResult open func getImageArray() -> JArray<Image?>! {
        return self.imageArray
    }
    

    open func `init`(_ imageArray: JArray<Image?>!) {
        self.imgMultiOff = imageArray[0]
        self.imageArray[0] = self.imgMultiOff
        self.imgMultiOn = imageArray[1]
        self.imageArray[1] = self.imgMultiOn
        self.imgRadioOff = imageArray[2]
        self.imageArray[2] = self.imgRadioOff
        self.imgRadioOn = imageArray[3]
        self.imageArray[3] = self.imgRadioOn
    }
}

