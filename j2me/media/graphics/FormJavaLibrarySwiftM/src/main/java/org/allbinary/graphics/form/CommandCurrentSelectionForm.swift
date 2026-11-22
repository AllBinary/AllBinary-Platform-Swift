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
// package org.allbinary.graphics.form

import J2SEForSwiftLibrary
// import javax.microedition.lcdui.Command
// import javax.microedition.lcdui.Graphics
// import org.allbinary.J2MEUtil
// import org.allbinary.animation.Animation
// import org.allbinary.animation.NullAnimationFactory
// import org.allbinary.animation.vector.RectangleAdjustedAnimation
// import org.allbinary.animation.vector.RectangleFilledAdjustedAnimation
// import org.allbinary.graphics.color.BasicColor
// import org.allbinary.graphics.color.BasicColorFactory
// import org.allbinary.graphics.font.UpdateMyFontInterface
// import org.allbinary.graphics.form.item.CommandTextItem
// import org.allbinary.graphics.form.item.ABCustomItem

open class CommandCurrentSelectionForm: ScrollCurrentSelectionForm {
    public var selectedAnimationArray: JArray<Animation?>! = nil
    public var unSelectedAnimationArray: JArray<Animation?>! = nil

    // Each class has its own field initializers
    private func initFields() {
    self.selectedAnimationArray = JArray<Animation?>(16, nil)
    self.unSelectedAnimationArray = JArray<Animation?>(16, nil)
    }
    

    public init(_ title: String!, _ items: JArray<ABCustomItem?>!, _ border: Int32, _ moveForSmallScreen: Bool, _ backgroundBasicColor: BasicColor!, _ foregroundBasicColor: BasicColor!) {
        super.init(title, items, ItemPaintableFactory.getInstance(), border, -3, moveForSmallScreen, backgroundBasicColor, foregroundBasicColor)
        self.initFields()
        self.initAnimations()
        self.addAll(items)
    }
    

    open override func updateMeasurement(_ graphics: Graphics!) {
        self.updateAll(graphics, self.getAllitems())
        super.updateMeasurement(graphics)
    }
    

    fileprivate func initAnimations() {
        let nullAnimation: Animation! = NullAnimationFactory.getFactoryInstance().getInstance(0)
        do {
            var index: Int32 = self.selectedAnimationArray.length
            while (jPreDecrement(&index) >= 0) {
            self.selectedAnimationArray[index] = nullAnimation
            }
        }
        do {
            var index: Int32 = self.unSelectedAnimationArray.length
            while (jPreDecrement(&index) >= 0) {
            self.unSelectedAnimationArray[index] = nullAnimation
            }
        }
    }
    

    fileprivate func addAll(_ items: JArray<ABCustomItem?>!) {
        do {
            var index: Int32 = items.length
            while (jPreDecrement(&index) >= 0) {
            self.addAt(index, items[index])
            }
        }
    }
    

    fileprivate func addAt(_ index: Int32, _ item: ABCustomItem!) {
        let basicColorFactory: BasicColorFactory! = BasicColorFactory.getInstance()
        let buttonColor: BasicColor! = basicColorFactory.TRANSPARENT_GREY
        let selectedButtonColor: BasicColor! = basicColorFactory.TRANSPARENT_RED
        let width: Int32 = item.getMinimumWidth()
        let height: Int32 = item.getMinimumHeight()
        var adjustedBorder: Int32 = 3
        let offset: Int32 = -(self.halfBorder + adjustedBorder)
        let rectWidth: Int32 = width + self.border - adjustedBorder
        let rectHeight: Int32 = height + self.border - adjustedBorder
        if (J2MEUtil.isJ2ME() || J2MEUtil.isHTML()) {
            self.selectedAnimationArray[index] = RectangleAdjustedAnimation(rectWidth, rectHeight, offset, offset, selectedButtonColor)
        } else {
            self.selectedAnimationArray[index] = RectangleFilledAdjustedAnimation(rectWidth, rectHeight, offset, offset, selectedButtonColor)
        }
        adjustedBorder = 4
        if (J2MEUtil.isJ2ME() || J2MEUtil.isHTML()) {
            self.unSelectedAnimationArray[index] = RectangleAdjustedAnimation(rectWidth, rectHeight, offset, offset, buttonColor)
        } else {
            self.unSelectedAnimationArray[index] = RectangleFilledAdjustedAnimation(rectWidth, rectHeight, offset, offset, buttonColor)
        }
    }
    

    fileprivate func updateAll(_ graphics: Graphics!, _ items: JArray<ABCustomItem?>!) {
        do {
            var index: Int32 = items.length
            while (jPreDecrement(&index) >= 0) {
            items[index]!.preMeasurement(graphics)
            self.updateAt(index, items[index])
            }
        }
    }
    

    fileprivate func updateAt(_ index: Int32, _ item: ABCustomItem!) {
        let basicColorFactory: BasicColorFactory! = BasicColorFactory.getInstance()
        let buttonColor: BasicColor! = basicColorFactory.TRANSPARENT_GREY
        let selectedButtonColor: BasicColor! = basicColorFactory.TRANSPARENT_RED
        let width: Int32 = item.getMinimumWidth()
        let height: Int32 = item.getMinimumHeight()
        var adjustedBorder: Int32 = 3
        let offset: Int32 = -(self.halfBorder + adjustedBorder)
        let rectWidth: Int32 = width + self.border - adjustedBorder
        let rectHeight: Int32 = height + self.border - adjustedBorder
        if (J2MEUtil.isJ2ME() || J2MEUtil.isHTML()) {
            let rectangleAdjustedAnimation: RectangleAdjustedAnimation! = (self.selectedAnimationArray[index] as! RectangleAdjustedAnimation)
            rectangleAdjustedAnimation.setWidth(rectWidth)
            rectangleAdjustedAnimation.setHeight(rectHeight)
            rectangleAdjustedAnimation.setOffsetX(offset)
            rectangleAdjustedAnimation.setOffsetY(offset)
            rectangleAdjustedAnimation.setBasicColorP(selectedButtonColor)
        } else {
            let rectangleAdjustedAnimation: RectangleFilledAdjustedAnimation! = (self.selectedAnimationArray[index] as! RectangleFilledAdjustedAnimation)
            rectangleAdjustedAnimation.setWidth(rectWidth)
            rectangleAdjustedAnimation.setHeight(rectHeight)
            rectangleAdjustedAnimation.setOffsetX(offset)
            rectangleAdjustedAnimation.setOffsetY(offset)
            rectangleAdjustedAnimation.setBasicColorP(selectedButtonColor)
        }
        adjustedBorder = 4
        if (J2MEUtil.isJ2ME() || J2MEUtil.isHTML()) {
            let rectangleAdjustedAnimation: RectangleAdjustedAnimation! = (self.unSelectedAnimationArray[index] as! RectangleAdjustedAnimation)
            rectangleAdjustedAnimation.setWidth(rectWidth)
            rectangleAdjustedAnimation.setHeight(rectHeight)
            rectangleAdjustedAnimation.setOffsetX(offset)
            rectangleAdjustedAnimation.setOffsetY(offset)
            rectangleAdjustedAnimation.setBasicColorP(buttonColor)
        } else {
            let rectangleAdjustedAnimation: RectangleFilledAdjustedAnimation! = (self.unSelectedAnimationArray[index] as! RectangleFilledAdjustedAnimation)
            rectangleAdjustedAnimation.setWidth(rectWidth)
            rectangleAdjustedAnimation.setHeight(rectHeight)
            rectangleAdjustedAnimation.setOffsetX(offset)
            rectangleAdjustedAnimation.setOffsetY(offset)
            rectangleAdjustedAnimation.setBasicColorP(buttonColor)
        }
    }
    

    @discardableResult open func getSelectedCommand() -> Command! {
        let index: Int32 = super.getSelectedIndex()
        let commandTextItem: CommandTextItem! = (self.get(index) as! CommandTextItem)
        return commandTextItem.getCommand()
    }
    

    @discardableResult open override func append(_ item: ABCustomItem!) -> Int32 {
        let result: Int32 = super.append(item)
        self.addAt(result, item)
        return result
    }
    

    open override func delete(_ itemNum: Int32) {
        super.delete(itemNum)
    }
    

    open override func deleteAll() {
        self.initAnimations()
        super.deleteAll()
    }
    

    open override func insert(_ itemNum: Int32, _ item: ABCustomItem!) {
        super.insert(itemNum, item)
    }
    

    open override func set(_ itemNum: Int32, _ item: ABCustomItem!) {
        super.set(itemNum, item)
    }
    

    open override func paint(_ graphics: Graphics!) {
        self.myFontProcessor.process(graphics)
        super.paint(graphics)
    }
    

    @discardableResult open override func paintItem(_ graphics: Graphics!, _ index: Int32, _ item: ABCustomItem!, _ x: Int32, _ y: Int32) -> Int32 {
        self.selectedAnimationArray[index]!.paintXY(graphics, x, y)
        return super.paintItem(graphics, index, item, x, y)
    }
    

    @discardableResult open override func paintUnselectedItem(_ graphics: Graphics!, _ index: Int32, _ item: ABCustomItem!, _ x: Int32, _ y: Int32) -> Int32 {
        self.unSelectedAnimationArray[index]!.paintXY(graphics, x, y)
        return super.paintUnselectedItem(graphics, index, item, x, y)
    }
}

