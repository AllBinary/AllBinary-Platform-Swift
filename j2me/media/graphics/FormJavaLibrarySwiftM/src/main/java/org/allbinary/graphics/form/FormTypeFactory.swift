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
// import org.allbinary.graphics.displayable.DisplayInfoSingleton
// import org.allbinary.logic.string.StringUtil

open class FormTypeFactory: JObject {
    fileprivate static let instance: FormTypeFactory! = FormTypeFactory()
    public var UNK: String! = nil
    public var NULL_FORM_TYPE: FormType! = nil
    public var TEMP_HORIZONTAL_FORM: FormType! = nil
    public var HORIZONTAL_FORM: FormType! = nil
    public var VERTICAL_CENTER_FORM: FormType! = nil

    private func initFields() {
    self.UNK = "Unknown FormType"
    self.NULL_FORM_TYPE = FormType(StringUtil.getInstance().NULL_STRING)
    self.TEMP_HORIZONTAL_FORM = FormType("TempHorizontal")
    self.HORIZONTAL_FORM = FormType("Horizontal")
    self.VERTICAL_CENTER_FORM = FormType("Vertical")
    }

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult open class func getInstance() -> FormTypeFactory! {
        return FormTypeFactory.instance
    }
    

    @discardableResult open func getFormType() -> FormType! {
        let displayInfo: DisplayInfoSingleton! = DisplayInfoSingleton.getInstance()
        var formType: FormType! = nil
        if (displayInfo.isPortrait()) {
            formType = self.VERTICAL_CENTER_FORM
        } else {
            formType = self.HORIZONTAL_FORM
        }
        return formType
    }
}

