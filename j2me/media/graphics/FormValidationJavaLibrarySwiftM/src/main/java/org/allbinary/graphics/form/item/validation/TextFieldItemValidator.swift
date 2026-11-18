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
// package org.allbinary.graphics.form.item.validation

import J2SEForSwiftLibrary
// import org.allbinary.graphics.form.item.ABTextFieldItem
// import org.allbinary.logic.control.validate.ValidatorBase
// import org.allbinary.logic.java.bool.BooleanFactory
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListD

open class TextFieldItemValidator: ValidatorBase {
    fileprivate var textFieldItem: ABTextFieldItem! = nil
    fileprivate var min: Int32 = 0
    fileprivate var max: Int32 = 0
    fileprivate var allowOnEmpty: Bool = false

    // Each class has its own field initializers
    private func initFields() {
    
    
    
    
    }
    

    public init(_ textFieldItem: ABTextFieldItem!, _ min: Int32, _ max: Int32, _ allowOnEmpty: Bool) {
        super.init()
        self.initFields()
        self.textFieldItem = textFieldItem
        self.min = min
        self.max = max
        self.allowOnEmpty = allowOnEmpty
    }
    

    @discardableResult open override func isValid() -> Bool! {
        let booleanFactory: BooleanFactory! = BooleanFactory.getInstance()
        var result: Bool! = booleanFactory.TRUE
        let string: String! = self.textFieldItem.getString()
        let textLength: Int32 = JString.length(string)
        if ((textLength == 0 && self.allowOnEmpty) || textLength > self.min && textLength < self.max) {
        } else {
            if (textLength < self.min) {
                result = booleanFactory.FALSE
            } else if (textLength > self.max) {
                result = booleanFactory.FALSE
            }
        }
        return result
    }
    

    @discardableResult open override func toList() -> BasicArrayList! {
        let list: BasicArrayList! = BasicArrayListD()
        let string: String! = self.textFieldItem.getString()
        let textLength: Int32 = JString.length(string)
        if (textLength > self.min && textLength < self.max) {
        } else {
            let label: String! = self.textFieldItem.getLabel()
            let name: String! = JString.substring(label, 0, JString.length(label) &- 2)
            if (textLength < self.min) {
                list.add(jBoxString(StringMaker().append(name).append(" is to short").toString()))
            } else if (textLength > self.max) {
                list.add(jBoxString(StringMaker().append(name).append(" is to long").toString()))
            }
        }
        return list
    }
}

