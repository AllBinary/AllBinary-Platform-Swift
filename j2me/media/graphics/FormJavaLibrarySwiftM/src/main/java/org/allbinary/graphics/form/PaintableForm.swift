// Generated Code Do Not Modify
// package org.allbinary.graphics.form

import J2SEForSwiftLibrary
// import org.allbinary.graphics.GPoint
// import org.allbinary.graphics.Rectangle
// import org.allbinary.graphics.RectangleFactory
// import org.allbinary.graphics.color.BasicColor
// import org.allbinary.graphics.color.BasicColorFactory
// import org.allbinary.graphics.displayable.CanvasStrings
// import org.allbinary.graphics.form.item.ABCustomItem
// import org.allbinary.logic.NullUtil
// import org.allbinary.logic.string.StringUtil

open class PaintableForm: ABCustomForm {
    fileprivate static var NULL_PAINTABLE_FORM: JObject! = NullUtil.getInstance().NULL_OBJECT
    public var canvasStrings: CanvasStrings! = nil
    public var rectangle: Rectangle! = nil
    public var x: Int32 = 0
    public var y: Int32 = 0
    public var formType: FormType! = nil

    // Each class has its own field initializers
    private func initFields() {
    self.canvasStrings = CanvasStrings.getInstance()
    self.rectangle = RectangleFactory.SINGLETON
    self.x = 0
    self.y = 0
    self.formType = FormTypeFactory.getInstance().NULL_FORM_TYPE
    }
    

    @discardableResult open class func getNullPaintableForm() -> PaintableForm! {
        if (PaintableForm.NULL_PAINTABLE_FORM === NullUtil.getInstance().NULL_OBJECT) {
            PaintableForm.NULL_PAINTABLE_FORM = PaintableForm(StringUtil.getInstance().EMPTY_STRING, JArray<ABCustomItem?>(0, nil), BasicColorFactory.getInstance().BLACK, BasicColorFactory.getInstance().WHITE)
        }
        return (PaintableForm.NULL_PAINTABLE_FORM as! PaintableForm)
    }
    

    public override init(_ title: String!, _ items: JArray<ABCustomItem?>!, _ backgroundBasicColor: BasicColor!, _ foregroundBasicColor: BasicColor!) {
        super.init(title, items, backgroundBasicColor, foregroundBasicColor)
        self.initFields()
        self.setSelectedIndex(0)
    }
    

    open func `init`(_ rectangle: Rectangle!, _ formType: FormType!) {
        self.rectangle = rectangle
        let point: GPoint! = self.rectangle.getPoint()
        self.x = point.getX()
        self.y = point.getY()
        self.formType = formType
    }
    

    @discardableResult open override func getWidth() -> Int32 {
        return self.rectangle.getWidth()
    }
}

