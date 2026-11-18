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
// package org.allbinary.game.part

import J2SEForSwiftLibrary
// import javax.microedition.lcdui.Font
// import javax.microedition.lcdui.Graphics
// import org.allbinary.animation.Animation
// import org.allbinary.animation.NullAnimationFactory
// import org.allbinary.game.layer.pickup.CountedPickedUpLayerInterfaceFactory
// import org.allbinary.graphics.font.MyFontProcessor
// import org.allbinary.graphics.font.UpdateMyFontInterface
// import org.allbinary.graphics.font.UpdateMyFontProcessor
// import org.allbinary.layer.AllBinaryLayer
// import org.allbinary.logic.NullUtil
// import org.allbinary.logic.math.PrimitiveLongUtil
// import org.allbinary.util.ABHashtable

open class CountedLayerInterfaceFactoryPart: JObject, PartInterface, UpdateMyFontInterface {
    public static let NULL_COUNTED_LAYER_INTERFACE_FACTORY: CountedLayerInterfaceFactoryPart! = CountedLayerInterfaceFactoryPart(0, CountedPickedUpLayerInterfaceFactory.NULL_COUNTED_PICKUP_LAYER_FACTORY)
    fileprivate var updateMyFontProcessor: MyFontProcessor! = nil
    fileprivate var myFontProcessor: MyFontProcessor! = nil
    fileprivate var animationInterface: Animation! = nil
    fileprivate var total: Int32 = 0
    fileprivate var totalString: JArray<UInt16>! = nil
    fileprivate var xOffset: Int32 = 0
    fileprivate var countedPickedUpLayerInterfaceFactory: CountedPickedUpLayerInterfaceFactory! = nil
    fileprivate var primitiveLongUtil: PrimitiveLongUtil! = nil

    private func initFields() {
    self.updateMyFontProcessor = UpdateMyFontProcessor(self)
    self.myFontProcessor = self.updateMyFontProcessor
    self.animationInterface = NullAnimationFactory.getFactoryInstance().getInstance(0)
    self.total = 0
    self.totalString = NullUtil.getInstance().NULL_CHAR_ARRAY
    self.xOffset = 0
    self.countedPickedUpLayerInterfaceFactory = CountedPickedUpLayerInterfaceFactory.NULL_COUNTED_PICKUP_LAYER_FACTORY
    
    }
    

    public init(_ total: Int32, _ countedPickedUpLayerInterfaceFactory: CountedPickedUpLayerInterfaceFactory!) {
        super.init()
        self.initFields()
        self.primitiveLongUtil = PrimitiveLongUtil.createPowerOfTen(1000)
        self.`init`(total, countedPickedUpLayerInterfaceFactory)
    }
    

    open func updateMeasurement(_ graphics: Graphics!) {
        let font: Font! = graphics.getFont()
        self.setXOffset(font.charsWidth(self.totalString, 0, self.primitiveLongUtil.getCurrentTotalDigits()) + (font.getSize() >> 1))
        self.myFontProcessor = MyFontProcessor.getInstance()
    }
    

    fileprivate func `init`(_ total: Int32, _ countedPickedUpLayerInterfaceFactory: CountedPickedUpLayerInterfaceFactory!) {
        self.setCountedPickedUpLayerInterfaceFactory(countedPickedUpLayerInterfaceFactory)
        self.total = total
    }
    

    @discardableResult open func getInstance(_ hashtable: ABHashtable!, _ x: Int32, _ y: Int32, _ z: Int32) -> AllBinaryLayer! {
        if (self.total > 0) {
            self.setTotal(self.total &- 1)
            return self.getCountedPickedUpLayerInterfaceFactory().getNextInstance(hashtable, x, y, z)
        } else {
            jThrow(JException("Exception", "No more left. Could use a listener to automatically remove"))
        }
    }
    

    @discardableResult open func getTotal() -> Int32 {
        return self.total
    }
    

    open func setTotal(_ total: Int32) {
        self.total = total
        self.totalString = self.primitiveLongUtil.getCharArray(total)
        self.myFontProcessor = self.updateMyFontProcessor
    }
    

    open func paint(_ graphics: Graphics!) {
        self.myFontProcessor.process(graphics)
    }
    

    open func paintThreed(_ graphics: Graphics!) {
    }
    

    @discardableResult open func getAnimationInterface() -> Animation! {
        return self.animationInterface
    }
    

    open func setAnimationInterface(_ animationInterface: Animation!) {
        self.animationInterface = animationInterface
    }
    

    @discardableResult open func getXOffset() -> Int32 {
        return self.xOffset
    }
    

    fileprivate func setXOffset(_ totalStringWidth: Int32) {
        self.xOffset = totalStringWidth
    }
    

    @discardableResult open func getTotalString() -> JArray<UInt16>! {
        return self.totalString
    }
    

    @discardableResult open func getCountedPickedUpLayerInterfaceFactory() -> CountedPickedUpLayerInterfaceFactory! {
        return self.countedPickedUpLayerInterfaceFactory
    }
    

    open func setCountedPickedUpLayerInterfaceFactory(_ countedPickedUpLayerInterfaceFactory: CountedPickedUpLayerInterfaceFactory!) {
        self.countedPickedUpLayerInterfaceFactory = countedPickedUpLayerInterfaceFactory
    }
}

