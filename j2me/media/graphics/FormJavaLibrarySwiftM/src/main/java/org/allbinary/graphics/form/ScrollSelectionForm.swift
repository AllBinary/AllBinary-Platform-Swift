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
// import javax.microedition.lcdui.Canvas
// import javax.microedition.lcdui.Graphics
// import org.allbinary.graphics.GPoint
// import org.allbinary.graphics.Rectangle
// import org.allbinary.graphics.color.BasicColor
// import org.allbinary.graphics.color.BasicColorFactory
// import org.allbinary.graphics.form.item.ABCustomItem
// import org.allbinary.logic.NullUtil
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.math.RectangleCollisionUtil
// import org.allbinary.string.CommonLabels
// import org.allbinary.string.CommonSeps
// import org.allbinary.string.CommonStrings

open class ScrollSelectionForm: PaintableForm {
    fileprivate static var NULL_SCROLL_SELECTION_FORM: JObject! = NullUtil.getInstance().NULL_OBJECT
    fileprivate static var NULL_SCROLL_SELECTION_HORIZONTAL_FORM: JObject! = NullUtil.getInstance().NULL_OBJECT
    fileprivate static let INSIDE_FORM: String! = " inside form"
    fileprivate static let IS_IN_FORM: String! = "isInForm"
    fileprivate static let GET_SELECTED_INDEX: String! = "getSelectedIndexForPoint"
    fileprivate var rectangleCollisionUtil: RectangleCollisionUtil! = nil
    public var border: Int32 = 0
    public var halfBorder: Int32 = 0
    fileprivate var buttonBasicColor: BasicColor! = nil
    public var scrollSelectionFormFormTypeItemIndexPaintable: ItemIndexPaintable! = nil
    fileprivate var formTypeItemIndexDx: ItemIndexDx! = nil
    public var paintable: ItemPaintable! = nil
    fileprivate var adjustedExtraBorder: Int32 = 0

    // Each class has its own field initializers
    private func initFields() {
    self.rectangleCollisionUtil = RectangleCollisionUtil.getInstance()
    
    
    
    self.scrollSelectionFormFormTypeItemIndexPaintable = ItemIndexPaintable.getInstance()
    self.formTypeItemIndexDx = ItemIndexDx.getInstance()
    self.paintable = ItemPaintableFactory.getInstance()
    
    }
    

    @discardableResult fileprivate static func createForm(_ title: String!, _ items: JArray<ABCustomItem?>!, _ formPaintableFactory: ItemPaintableFactory!, _ border: Int32, _ backgroundBasicColor: BasicColor!, _ foregroundBasicColor: BasicColor!) -> PaintableForm! {
        do {
            if (formPaintableFactory === ItemPaintableFactory.getInstance()) {
                return ScrollSelectionForm(title, items, formPaintableFactory, border, -3, backgroundBasicColor, foregroundBasicColor)
            } else {
                let commonStrings: CommonStrings! = CommonStrings.getInstance()
                let logUtil: LogUtil! = LogUtil.getInstance()
                logUtil.putF(commonStrings.EXCEPTION, logUtil, commonStrings.EXCEPTION)
                return PaintableForm.getNullPaintableForm()
            }
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
    

    @discardableResult open class func getNullScrollSelectionForm() -> ScrollSelectionForm! {
        if (ScrollSelectionForm.NULL_SCROLL_SELECTION_FORM === NullUtil.getInstance().NULL_OBJECT) {
            ScrollSelectionForm.NULL_SCROLL_SELECTION_FORM = ScrollSelectionForm.createForm(StringUtil.getInstance().EMPTY_STRING, JArray<ABCustomItem?>(0, nil), ItemPaintableFactory.getInstance(), 0, BasicColorFactory.getInstance().BLACK, BasicColorFactory.getInstance().WHITE)
        }
        return (ScrollSelectionForm.NULL_SCROLL_SELECTION_FORM as! ScrollSelectionForm)
    }
    

    @discardableResult open class func getNullScrollSelectionFormHorizontal() -> ScrollSelectionForm! {
        if (ScrollSelectionForm.NULL_SCROLL_SELECTION_HORIZONTAL_FORM === NullUtil.getInstance().NULL_OBJECT) {
            ScrollSelectionForm.NULL_SCROLL_SELECTION_HORIZONTAL_FORM = ScrollSelectionForm.createForm(StringUtil.getInstance().EMPTY_STRING, JArray<ABCustomItem?>(0, nil), ItemPaintableFactory.getInstance(), 0, BasicColorFactory.getInstance().BLACK, BasicColorFactory.getInstance().WHITE)
        }
        return (ScrollSelectionForm.NULL_SCROLL_SELECTION_HORIZONTAL_FORM as! ScrollSelectionForm)
    }
    

    public init(_ title: String!, _ items: JArray<ABCustomItem?>!, _ formPaintableFactory: ItemPaintableFactory!, _ border: Int32, _ adjustedExtraBorder: Int32, _ backgroundBasicColor: BasicColor!, _ foregroundBasicColor: BasicColor!) {
        super.init(title, items, backgroundBasicColor, foregroundBasicColor)
        self.initFields()
        self.adjustedExtraBorder = adjustedExtraBorder
        self.buttonBasicColor = foregroundBasicColor
        self.border = border
        self.halfBorder = (border >> 1)
        self.paintable = formPaintableFactory.getInstanceItemPaintable(self)
    }
    

    open override func `init`(_ rectangle: Rectangle!, _ formType: FormType!) {
        super.`init`(rectangle, formType)
        let formTypeFactory: FormTypeFactory! = FormTypeFactory.getInstance()
        if (formType === formTypeFactory.HORIZONTAL_FORM) {
            self.scrollSelectionFormFormTypeItemIndexPaintable = ScrollSelectionFormHorizontalPaintable(self)
            self.formTypeItemIndexDx = ScrollSelectionFormHorizontalDx(self)
        } else if (formType === formTypeFactory.VERTICAL_CENTER_FORM) {
            self.scrollSelectionFormFormTypeItemIndexPaintable = ScrollSelectionFormVerticalPaintable(self)
            self.formTypeItemIndexDx = ScrollSelectionFormVericalDx(self)
        } else if (formType === formTypeFactory.TEMP_HORIZONTAL_FORM) {
            self.scrollSelectionFormFormTypeItemIndexPaintable = ScrollSelectionFormTempHorizontalPaintable(self)
            self.formTypeItemIndexDx = ScrollSelectionFormTempHorizontalDx(self)
        } else if (formType === formTypeFactory.NULL_FORM_TYPE) {
        } else {
            jThrow(JException("Exception", formTypeFactory.UNK))
        }
    }
    

    @discardableResult open func paintItemHorizontal(_ graphics: Graphics!, _ index: Int32, _ item: ABCustomItem!, _ x: Int32, _ y: Int32) -> Int32 {
        let width: Int32 = item.getMinimumWidth()
        return x &+ width &+ self.border
    }
    

    @discardableResult open func paintItemVertical(_ graphics: Graphics!, _ index: Int32, _ item: ABCustomItem!, _ x: Int32, _ y: Int32) -> Int32 {
        let height: Int32 = item.getMinimumHeight()
        return y &+ height &+ self.border
    }
    

    @discardableResult open func paintItemTempHorizontal(_ graphics: Graphics!, _ index: Int32, _ item: ABCustomItem!, _ x: Int32, _ y: Int32) -> Int32 {
        return 0
    }
    

    @discardableResult open func getSelectedIndexForPointHorizontalDx(_ index: Int32, _ item: ABCustomItem!, _ dx: Int32, _ dy: Int32) -> Int32 {
        return dx &- self.halfBorder
    }
    

    @discardableResult open func getSelectedIndexForPointVerticalDx(_ index: Int32, _ item: ABCustomItem!, _ dx: Int32, _ dy: Int32) -> Int32 {
        return dx &+ self.getDiffX(item)
    }
    

    @discardableResult open func getSelectedIndexForPointTempHorizontalDx(_ index: Int32, _ item: ABCustomItem!, _ dx: Int32, _ dy: Int32) -> Int32 {
        return dx &+ self.getDiffX(item)
    }
    

    @discardableResult open override func append(_ item: ABCustomItem!) -> Int32 {
        return super.append(item)
    }
    

    @discardableResult open func getSelectedItem(_ point: GPoint!) -> ABCustomItem! {
        let index: Int32 = self.getSelectedIndexForPoint(point)
        if (index != -1) {
            return self.get(index)
        } else {
            return ABCustomItem.getNullInstance()
        }
    }
    

    @discardableResult open func getItemIndex(_ item: ABCustomItem!) -> Int32 {
        var nextItem: ABCustomItem! = nil
        let size: Int32 = self.size()
        do {
            var index: Int32 = 0
            while (index < size) {
                defer { index &+= 1 }
            nextItem = self.get(index)
            if (nextItem === item) {
                return index
            }
            }
        }
        return -1
    }
    

    @discardableResult open func getStartIndex() -> Int32 {
        return 0
    }
    

    @discardableResult open func getSelectedIndexForPoint(_ point: GPoint!) -> Int32 {
        let start: Int32 = self.getStartIndex()
        let size: Int32 = self.size()
        var dx: Int32 = self.getDx()
        var dy: Int32 = self.getDy()
        let formTypeFactory: FormTypeFactory! = FormTypeFactory.getInstance()
        let commonLabels: CommonLabels! = CommonLabels.getInstance()
        let stringBuffer: StringMaker! = StringMaker()
        stringBuffer.append(commonLabels.START_LABEL)
        stringBuffer.appendint(start)
        stringBuffer.append(CommonSeps.getInstance().SPACE)
        stringBuffer.append(commonLabels.TOTAL_LABEL)
        stringBuffer.appendint(size)
        self.logUtil.putF(stringBuffer.toString(), self, ScrollSelectionForm.GET_SELECTED_INDEX)
        var item: ABCustomItem! = nil
        var width: Int32 = 0
        var height: Int32 = 0
        var diffX: Int32 = 0
        do {
            var index: Int32 = start
            while (index < size) {
                defer { index &+= 1 }
            item = self.get(index)
            width = item.getMinimumWidth()
            height = item.getMinimumHeight()
            diffX = self.formTypeItemIndexDx.getDx(index, item, dx, dy)
            if (self.rectangleCollisionUtil.isInside(diffX, dy &- self.halfBorder, diffX &+ width &+ self.border, dy &+ height &+ self.halfBorder &+ 1, point.getX(), point.getY())) {
                stringBuffer.delete(0, stringBuffer.length())
                stringBuffer.append(commonLabels.ITEM_LABEL)
                stringBuffer.append(item.getLabel())
                stringBuffer.append(CommonSeps.getInstance().SPACE)
                stringBuffer.append(commonLabels.INDEX_LABEL)
                stringBuffer.appendint(index)
                self.logUtil.putF(stringBuffer.toString(), self, ScrollSelectionForm.GET_SELECTED_INDEX)
                return index
            }
            if (self.formType === formTypeFactory.HORIZONTAL_FORM) {
                dx = dx &+ width &+ self.border
                if (dx > self.rectangle.getMaxX()) {
                    break
                }
            } else if (self.formType === formTypeFactory.VERTICAL_CENTER_FORM) {
                dy = dy &+ height &+ self.border
                if (dy > self.rectangle.getMaxY()) {
                    break
                }
            } else if (self.formType === formTypeFactory.NULL_FORM_TYPE) {
            } else {
                jThrow(JException("Exception", formTypeFactory.UNK))
            }
            }
        }
        return -1
    }
    

    @discardableResult open func processInputKey(_ gameKeyCode: Int32) -> Int32 {
        let formTypeFactory: FormTypeFactory! = FormTypeFactory.getInstance()
        if (self.size() == 0) {
            return -1
        }
        var index: Int32 = self.getSelectedIndex()
        if (self.formType === formTypeFactory.HORIZONTAL_FORM || self.formType === formTypeFactory.TEMP_HORIZONTAL_FORM) {
            if (gameKeyCode == Canvas.RIGHT) {
                index &+= 1
            } else if (gameKeyCode == Canvas.LEFT) {
                index &-= 1
            }
        } else if (self.formType === formTypeFactory.VERTICAL_CENTER_FORM) {
            if (gameKeyCode == Canvas.DOWN) {
                index &+= 1
            } else if (gameKeyCode == Canvas.UP) {
                index &-= 1
            }
        } else if (self.formType === formTypeFactory.NULL_FORM_TYPE) {
        } else {
            jThrow(JException("Exception", formTypeFactory.UNK))
        }
        let max: Int32 = self.size() &- 1
        if (index < 0) {
            self.setSelectedIndex(0)
        } else if (index > max) {
            self.setSelectedIndex(max)
        } else {
            self.setSelectedIndex(index)
        }
        return -1
    }
    

    @discardableResult open func isInForm(_ point: GPoint!) -> Bool {
        if (self.rectangleCollisionUtil.isInside(self.x, self.y - self.halfBorder, self.rectangle.getMaxX() &+ self.border, self.rectangle.getMaxY() &+ self.border, point.getX(), point.getY())) {
            self.logUtil.putF(StringMaker().append(StringUtil.getInstance().toString(point)).append(ScrollSelectionForm.INSIDE_FORM).toString(), self, ScrollSelectionForm.IS_IN_FORM)
            return true
        }
        return false
    }
    

    @discardableResult open func paintItem(_ graphics: Graphics!, _ index: Int32, _ item: ABCustomItem!, _ x: Int32, _ y: Int32) -> Int32 {
        item.paintXY(graphics, x, y)
        let width: Int32 = item.getMinimumWidth()
        let height: Int32 = item.getMinimumHeight()
        graphics.setColor(self.getButtonBasicColor().intValue())
        let adjustedBorder: Int32 = 3
        graphics.drawRect(x &- self.halfBorder &- adjustedBorder, y &- self.halfBorder &- adjustedBorder, width &+ self.border &+ self.adjustedExtraBorder, height &+ self.border &+ self.adjustedExtraBorder)
        return self.scrollSelectionFormFormTypeItemIndexPaintable.paint(graphics, index, item, x, y)
    }
    

    @discardableResult open func paintUnselectedItem(_ graphics: Graphics!, _ index: Int32, _ item: ABCustomItem!, _ x: Int32, _ y: Int32) -> Int32 {
        graphics.setColor(self.getButtonBasicColor().intValue())
        item.paintUnselected(graphics, x, y)
        return self.scrollSelectionFormFormTypeItemIndexPaintable.paint(graphics, index, item, x, y)
    }
    

    @discardableResult open func getDiffX(_ item: ABCustomItem!) -> Int32 {
        return 0
    }
    

    @discardableResult open func getDx() -> Int32 {
        return self.x
    }
    

    @discardableResult open func getDy() -> Int32 {
        return self.y
    }
    

    open func setButtonBasicColor(_ buttonBasicColor: BasicColor!) {
        self.buttonBasicColor = buttonBasicColor
    }
    

    @discardableResult fileprivate func getButtonBasicColor() -> BasicColor! {
        return self.buttonBasicColor
    }
}

