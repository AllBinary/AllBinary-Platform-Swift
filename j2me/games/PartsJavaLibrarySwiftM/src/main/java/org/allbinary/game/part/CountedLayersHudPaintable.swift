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
// import org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryInterface
// import org.allbinary.graphics.displayable.DisplayInfoSingleton
// import org.allbinary.graphics.font.MyFontProcessor
// import org.allbinary.graphics.font.UpdateMyFontInterface
// import org.allbinary.graphics.font.UpdateMyFontProcessor
// import org.allbinary.graphics.paint.PaintableInterface
// import org.allbinary.layer.AllBinaryLayer

open class CountedLayersHudPaintable: JObject, PaintableInterface, UpdateMyFontInterface {
    fileprivate static var XXStringWidth: Int32 = 0
    fileprivate var displayInfoSingleton: DisplayInfoSingleton! = nil
    fileprivate var partInterfaceArray: JArray<PartInterface?>! = nil
    fileprivate var countedTotalStringColor: Int32 = 0
    fileprivate var countedPartsBorder: Int32 = 0
    fileprivate var startIndex: Int32 = 0
    fileprivate var dropSize: Int32 = 0
    fileprivate var myFontProcessor: MyFontProcessor! = nil
    fileprivate var height: Int32 = 0

    private func initFields() {
    self.displayInfoSingleton = DisplayInfoSingleton.getInstance()
    
    
    
    
    
    self.myFontProcessor = UpdateMyFontProcessor(self)
    self.height = 0
    }
    

    public init(_ partInterfaceArray: JArray<PartInterface?>!, _ dropSize: Int32, _ startIndex: Int32, _ countedTotalStringColor: Int32, _ countedPartsBorder: Int32) {
        super.init()
        self.initFields()
        self.partInterfaceArray = partInterfaceArray
        self.startIndex = startIndex
        self.countedTotalStringColor = countedTotalStringColor
        self.countedPartsBorder = countedPartsBorder
        self.dropSize = dropSize
    }
    

    open func updateMeasurement(_ graphics: Graphics!) {
        let font: Font! = graphics.getFont()
        self.height = font.getHeight()
        if (self.dropSize > font.getHeight()) {
            self.height = self.dropSize
        }
        if (CountedLayersHudPaintable.XXStringWidth == 0) {
            let XXString: String! = "XX"
            CountedLayersHudPaintable.XXStringWidth = font.stringWidth(XXString)
        }
        self.myFontProcessor = MyFontProcessor.getInstance()
    }
    

    open func paint(_ graphics: Graphics!) {
        self.myFontProcessor.process(graphics)
        let lastWidth: Int32 = self.displayInfoSingleton.getLastWidth()
        let widthEdge: Int32 = lastWidth &- self.dropSize
        let size: Int32 = self.partInterfaceArray.length
        var count: Int32 = 0
        var y: Int32 = 0
        var countedLayerInterfaceFactory: CountedLayerInterfaceFactoryPart! = nil
        var pickedUpLayerInterfaceFactoryInterface: PickedUpLayerInterfaceFactoryInterface! = nil
        var layerInterface: AllBinaryLayer! = nil
        var charArray: JArray<UInt16>! = nil
        do {
            var index: Int32 = self.startIndex
            while (index < size) {
                defer { index &+= 1 }
            countedLayerInterfaceFactory = (self.partInterfaceArray[index] as! CountedLayerInterfaceFactoryPart)
            if (countedLayerInterfaceFactory.getTotal() > 0) {
                pickedUpLayerInterfaceFactoryInterface = countedLayerInterfaceFactory.getCountedPickedUpLayerInterfaceFactory()
                layerInterface = pickedUpLayerInterfaceFactoryInterface.getIconLayer()
                y = 40 &+ (count &* self.height)
                layerInterface.setPosition(widthEdge, y, layerInterface.getZP())
                layerInterface.paint(graphics)
                graphics.setColor(self.countedTotalStringColor)
                countedLayerInterfaceFactory.paint(graphics)
                charArray = countedLayerInterfaceFactory.getTotalString()
                graphics.drawChars(charArray, 0, charArray.length, widthEdge &- countedLayerInterfaceFactory.getXOffset(), y, 0)
                count &+= 1
            }
            }
        }
        if (count > 0) {
            graphics.setColor(self.countedPartsBorder)
            graphics.drawRect(lastWidth &- (CountedLayersHudPaintable.XXStringWidth &+ self.dropSize), 40, CountedLayersHudPaintable.XXStringWidth &+ self.dropSize, (count &* self.height) &+ 3)
        }
    }
    

    open func paintThreed(_ graphics: Graphics!) {
    }
}

