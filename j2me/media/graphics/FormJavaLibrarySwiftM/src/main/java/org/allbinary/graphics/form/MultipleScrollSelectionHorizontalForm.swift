// Generated Code Do Not Modify
// package org.allbinary.graphics.form

import J2SEForSwiftLibrary
// import javax.microedition.lcdui.Font
// import javax.microedition.lcdui.Graphics
// import org.allbinary.J2MEUtil
// import org.allbinary.graphics.Rectangle
// import org.allbinary.graphics.color.BasicColor
// import org.allbinary.graphics.color.BasicColorFactory
// import org.allbinary.graphics.font.MyFontProcessor
// import org.allbinary.graphics.font.UpdateMyFontInterface
// import org.allbinary.graphics.font.UpdateMyFontProcessor
// import org.allbinary.graphics.form.item.ABCustomItem
// import org.allbinary.graphics.paint.NullPaintable
// import org.allbinary.graphics.paint.Paintable
// import org.allbinary.logic.communication.log.PreLogUtil
// import org.allbinary.logic.string.StringMaker

open class MultipleScrollSelectionHorizontalForm: ScrollSelectionForm, UpdateMyFontInterface {
    fileprivate var rectPaintable: Paintable! = nil
    fileprivate var multipleScrollSelectionHorizontalFormTypeItemIndexPaintable: ItemIndexPaintable! = nil
    fileprivate var backgroundColor: Int32 = 0
    fileprivate var myFontProcessor: MyFontProcessor! = nil
    fileprivate var logged: Bool = false
    fileprivate var fontHeight: Int32 = 0

    // Each class has its own field initializers
    private func initFields() {
    self.rectPaintable = NullPaintable.getInstance()
    self.multipleScrollSelectionHorizontalFormTypeItemIndexPaintable = ItemIndexPaintable.getInstance()
    self.backgroundColor = BasicColorFactory.getInstance().TRANSPARENT_GREY.intValue()
    self.myFontProcessor = UpdateMyFontProcessor(self)
    self.logged = false
    self.fontHeight = 0
    }
    

    @discardableResult open class func createForm(_ title: String!, _ items: JArray<ABCustomItem?>!, _ rectangle: Rectangle!, _ formType: FormType!, _ border: Int32, _ backgroundBasicColor: BasicColor!, _ foregroundBasicColor: BasicColor!) -> ScrollSelectionForm! {
        let scrollSelectionForm: ScrollSelectionForm! = MultipleScrollSelectionHorizontalForm(title, items, ItemPaintableFactory.getInstance(), border, backgroundBasicColor, foregroundBasicColor)
        scrollSelectionForm.`init`(rectangle, formType)
        return scrollSelectionForm
    }
    

    public init(_ title: String!, _ items: JArray<ABCustomItem?>!, _ formPaintableFactory: ItemPaintableFactory!, _ border: Int32, _ backgroundBasicColor: BasicColor!, _ foregroundBasicColor: BasicColor!) {
        super.init(title, items, formPaintableFactory, border, 3, backgroundBasicColor, foregroundBasicColor)
        self.initFields()
        if (J2MEUtil.isJ2ME() || J2MEUtil.isHTML()) {
        } else {
            self.rectPaintable = MultipleScrollSelectionFormRectPaintable(self)
        }
    }
    

    open func fillRect(_ graphics: Graphics!) {
        graphics.setColor(self.backgroundColor)
        graphics.fillRect(self.x, self.y, self.rectangle.getWidth(), self.rectangle.getHeight())
    }
    

    open override func `init`(_ rectangle: Rectangle!, _ formType: FormType!) {
        super.`init`(rectangle, formType)
        let formTypeFactory: FormTypeFactory! = FormTypeFactory.getInstance()
        if (formType === formTypeFactory.HORIZONTAL_FORM) {
            self.multipleScrollSelectionHorizontalFormTypeItemIndexPaintable = MultipleScrollSelectionFormHorizontalPaintable(self)
        } else if (formType === formTypeFactory.VERTICAL_CENTER_FORM) {
            self.multipleScrollSelectionHorizontalFormTypeItemIndexPaintable = MultipleScrollSelectionFormVerticalPaintable(self)
        } else if (formType === formTypeFactory.NULL_FORM_TYPE) {
        } else {
            jThrow(JException("Exception", formTypeFactory.UNK))
        }
    }
    

    open func updateMeasurement(_ graphics: Graphics!) {
        let font: Font! = graphics.getFont()
        self.fontHeight = font.getHeight()
        self.myFontProcessor = MyFontProcessor.getInstance()
    }
    

    @discardableResult open func paintHorizontal(_ graphics: Graphics!, _ index: Int32, _ item: ABCustomItem!, _ dx: Int32, _ dy: Int32) -> Int32 {
        var dx: Int32 = dx
        let dx2: Int32 = self.paintItem(graphics, index, item, dx, dy) + self.border
        self.paintable.paint(graphics, index, dx, dy)
        dx = dx2
        return dx
    }
    

    @discardableResult open func paintVertical(_ graphics: Graphics!, _ index: Int32, _ item: ABCustomItem!, _ dx: Int32, _ dy: Int32) -> Int32 {
        self.paintItem(graphics, index, item, dx, dy)
        self.paintable.paint(graphics, index, dx, dy)
        return dx
    }
    

    @discardableResult open override func getStartIndex() -> Int32 {
        return self.getSelectedIndex()
    }
    

    open override func paint(_ graphics: Graphics!) {
        do {
            self.myFontProcessor.process(graphics)
            let start: Int32 = self.getStartIndex()
            let size: Int32 = self.size()
            var dx: Int32 = self.x
            let dy: Int32 = self.y
            self.rectPaintable.paint(graphics)
            graphics.drawString(self.getTitle(), self.x, self.y - self.fontHeight, 0)
            var item: ABCustomItem! = nil
            do {
                var index: Int32 = start
                while (index < size) {
                    defer { index &+= 1 }
                item = self.get(index)
                if (dx >= self.rectangle.getMaxX()) {
                    if (self.logged) {
                    } else {
                        self.logged = true
                        PreLogUtil.put(StringMaker().append("painting beyond maxx: ").appendint(self.rectangle.getMaxX()).toString(), self, self.canvasStrings.PAINT)
                    }
                }
                dx = self.multipleScrollSelectionHorizontalFormTypeItemIndexPaintable.paint(graphics, index, item, dx, dy)
                }
            }
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
}

