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
// import javax.microedition.lcdui.Graphics
// import org.allbinary.canvas.Processor
// import org.allbinary.graphics.Rectangle
// import org.allbinary.graphics.color.BasicColor
// import org.allbinary.graphics.font.MyFontProcessor
// import org.allbinary.graphics.font.UpdateMyFontInterface
// import org.allbinary.graphics.font.UpdateMyFontProcessor
// import org.allbinary.graphics.form.item.ABCustomItem

open class ScrollCurrentSelectionForm: ScrollSelectionForm, UpdateMyFontInterface {
    fileprivate var moveForSmallScreen: Bool = false
    public var updateMyFontProcessor: MyFontProcessor! = nil
    public var myFontProcessor: MyFontProcessor! = nil
    public var processor: Processor! = nil
    fileprivate var preItemIndexDx: ItemIndexDx! = nil
    fileprivate var dx: Int32 = 0
    fileprivate var dy: Int32 = 0
    fileprivate var maxWidth: Int32 = 0

    // Each class has its own field initializers
    private func initFields() {
    
    self.updateMyFontProcessor = UpdateMyFontProcessor(self)
    self.myFontProcessor = self.updateMyFontProcessor
    self.processor = Processor.getInstance()
    self.preItemIndexDx = ItemIndexDx.getInstance()
    self.dx = 0
    self.dy = 0
    self.maxWidth = 0
    }
    

    public init(_ title: String!, _ items: JArray<ABCustomItem?>!, _ formPaintableFactory: ItemPaintableFactory!, _ border: Int32, _ adjustedExtraBorder: Int32, _ moveForSmallScreen: Bool, _ backgroundBasicColor: BasicColor!, _ foregroundBasicColor: BasicColor!) {
        super.init(title, items, formPaintableFactory, border, adjustedExtraBorder, backgroundBasicColor, foregroundBasicColor)
        self.initFields()
        self.moveForSmallScreen = moveForSmallScreen
    }
    

    open override func `init`(_ rectangle: Rectangle!, _ formType: FormType!) {
        super.`init`(rectangle, formType)
        let formTypeFactory: FormTypeFactory! = FormTypeFactory.getInstance()
        if (formType === formTypeFactory.TEMP_HORIZONTAL_FORM) {
            self.processor = TempHorizontalFormProcessor(self)
            self.preItemIndexDx = TempHorizontalItemIndexDx(self)
        } else if (formType === formTypeFactory.HORIZONTAL_FORM) {
            self.processor = HorizontalFormProcessor(self)
            self.preItemIndexDx = HorizontalItemIndexDx(self)
        } else if (formType === formTypeFactory.VERTICAL_CENTER_FORM) {
            self.processor = VerticalFormProcessor(self)
            self.preItemIndexDx = VerticalItemIndexDx(self)
        } else if (formType === formTypeFactory.NULL_FORM_TYPE) {
        } else {
            self.logUtil.putF(formTypeFactory.UNK, self, self.commonStrings.INIT)
        }
        self.myFontProcessor = self.updateMyFontProcessor
    }
    

    open func updateMeasurement(_ graphics: Graphics!) {
        self.myFontProcessor = MyFontProcessor.getInstance()
    }
    

    open func processTempHorizontalForm() {
        self.dx = self.x - 30 + (self.rectangle.getWidth() >> 1)
        self.dy = self.y
    }
    

    open func processHorizontalForm() {
        let size: Int32 = self.size()
        var totalWidth: Int32 = 0
        var item: ABCustomItem! = nil
        do {
            var index: Int32 = 0
            while (index < size) {
                defer { index &+= 1 }
            item = self.get(index)
            totalWidth = totalWidth &+ item.getMinimumWidth() + self.border
            }
        }
        self.dx = self.x + (self.rectangle.getWidth() >> 1) - (totalWidth >> 1)
        self.dy = self.y + (self.rectangle.getHeight() >> 1)
        if (self.moveForSmallScreen) {
            let maxTitleHeight: Int32 = 175
            if (self.dy < maxTitleHeight) {
                self.dy = maxTitleHeight
            }
        }
    }
    

    open func processVerticalForm() {
        var totalHeight: Int32 = 0
        let size: Int32 = self.size()
        var item2: ABCustomItem! = nil
        do {
            var index: Int32 = 0
            while (index < size) {
                defer { index &+= 1 }
            item2 = self.get(index)
            if (self.maxWidth < item2.getMinimumWidth()) {
                self.maxWidth = item2.getMinimumWidth()
            }
            totalHeight = totalHeight &+ item2.getMinimumHeight() + self.border
            }
        }
        self.dx = ((self.rectangle.getWidth() &- self.maxWidth) / 2)
        if (self.size() > 0) {
            self.dy = self.y + ((self.rectangle.getHeight() &- totalHeight) / 2)
            if (self.moveForSmallScreen) {
                let maxTitleHeight: Int32 = 175
                if (self.dy < maxTitleHeight) {
                    self.dy = maxTitleHeight
                }
            }
        } else {
            self.dy = self.y
        }
    }
    

    @discardableResult open func getXTempHorizontalForm(_ index: Int32, _ item: ABCustomItem!, _ dx: Int32, _ dy: Int32) -> Int32 {
        return self.getDiffX(item)
    }
    

    @discardableResult open func getXHorizontalForm(_ index: Int32, _ item: ABCustomItem!, _ dx: Int32, _ dy: Int32) -> Int32 {
        return 0
    }
    

    @discardableResult open func getXVerticalForm(_ index: Int32, _ item: ABCustomItem!, _ dx: Int32, _ dy: Int32) -> Int32 {
        return self.getDiffX(item) + self.halfBorder
    }
    

    @discardableResult open override func getDiffX(_ item: ABCustomItem!) -> Int32 {
        return ((self.maxWidth &- item.getMinimumWidth()) >> 1)
    }
    

    @discardableResult open override func getDx() -> Int32 {
        return self.dx
    }
    

    @discardableResult open override func getDy() -> Int32 {
        return self.dy
    }
    

    open override func paint(_ graphics: Graphics!) {
        do {
            self.processor.process()
            var delta: Int32 = 0
            var deltaX: Int32 = self.getDx()
            var deltaY: Int32 = self.getDy()
            let size: Int32 = self.size()
            let formTypeFactory: FormTypeFactory! = FormTypeFactory.getInstance()
            var item: ABCustomItem! = nil
            do {
                var index: Int32 = 0
                while (index < size) {
                    defer { index &+= 1 }
                item = self.get(index)
                let diffX: Int32 = self.preItemIndexDx.getDx(index, item, self.dx, self.dy)
                if (index == self.getSelectedIndex()) {
                    delta = self.paintItem(graphics, index, item, deltaX &+ diffX, deltaY)
                    self.paintable.paint(graphics, index, deltaX &+ diffX, deltaY)
                } else {
                    delta = self.paintUnselectedItem(graphics, index, item, deltaX &+ diffX, deltaY)
                    self.paintable.paint(graphics, index, deltaX &+ diffX, deltaY)
                }
                if (self.formType === formTypeFactory.TEMP_HORIZONTAL_FORM) {
                } else if (self.formType === formTypeFactory.HORIZONTAL_FORM) {
                    deltaX = delta
                } else if (self.formType === formTypeFactory.VERTICAL_CENTER_FORM) {
                    deltaY = delta
                } else {
                    jThrow(JException("Exception", formTypeFactory.UNK))
                }
                }
            }
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
}

