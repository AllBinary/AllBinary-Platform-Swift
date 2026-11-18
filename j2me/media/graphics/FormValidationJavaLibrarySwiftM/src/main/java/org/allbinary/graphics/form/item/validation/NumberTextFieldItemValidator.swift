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
// import org.allbinary.logic.math.SmallIntegerSingletonFactory
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListD

open class NumberTextFieldItemValidator: ValidatorBase {
    fileprivate var textFieldItem: ABTextFieldItem! = nil
    fileprivate var min: Int32 = 0
    fileprivate var max: Int32 = 0
    fileprivate var maxChars: Int32 = 0

    // Each class has its own field initializers
    private func initFields() {
    
    
    
    
    }
    

    public init(_ textFieldItem: ABTextFieldItem!, _ maxChars: Int32, _ min: Int32, _ max: Int32) {
        super.init()
        self.initFields()
        self.textFieldItem = textFieldItem
        self.min = min
        self.max = max
        self.maxChars = maxChars
    }
    

    @discardableResult open func isNumberValid(_ value: Int32!) -> Bool! {
        return BooleanFactory.getInstance().TRUE
    }
    

    @discardableResult open func toNumberVector(_ value: Int32!) -> BasicArrayList! {
        return BasicArrayListD()
    }
    

    @discardableResult open override func isValid() -> Bool! {
        var result: Bool! = BooleanFactory.getInstance().TRUE
        let string: String! = self.textFieldItem.getString()
        let textLength: Int32 = JString.length(string)
        if (textLength > 0 && textLength < self.maxChars) {
            do {
                _ = Int32(self.textFieldItem.getString())!
            } /* catch (NumberFormatException e): a thrown Java exception stops the program */
        } else {
            if (textLength < 1) {
                result = BooleanFactory.getInstance().FALSE
            } else if (textLength > self.maxChars) {
                result = BooleanFactory.getInstance().FALSE
            }
        }
        return result
    }
    

    @discardableResult open override func toList() -> BasicArrayList! {
        let list: BasicArrayList! = BasicArrayListD()
        let string: String! = self.textFieldItem.getString()
        let textLength: Int32 = JString.length(string)
        let label: String! = self.textFieldItem.getLabel()
        let name: String! = JString.substring(label, 0, JString.length(label) &- 2)
        let smallIntegerSingletonFactory: SmallIntegerSingletonFactory! = SmallIntegerSingletonFactory.getInstance()
        let stringMaker: StringMaker! = StringMaker()
        if (textLength > 0 && textLength < self.maxChars) {
            do {
                let number: Int32! = smallIntegerSingletonFactory.createInstance(Int32(self.textFieldItem.getString())!)
                if (number.intValue() > self.min) {
                    stringMaker.delete(0, stringMaker.length())
                    list.add(jBoxString(stringMaker.append(name).append(" is to small").toString()))
                } else if (number.intValue() > self.max) {
                    stringMaker.delete(0, stringMaker.length())
                    list.add(jBoxString(stringMaker.append(name).append(" is to large").toString()))
                }
            } /* catch (NumberFormatException e): a thrown Java exception stops the program */
        } else {
            if (textLength < 1) {
                stringMaker.delete(0, stringMaker.length())
                list.add(jBoxString(stringMaker.append(name).append(" is to short").toString()))
            } else if (textLength > self.maxChars) {
                stringMaker.delete(0, stringMaker.length())
                list.add(jBoxString(stringMaker.append(name).append(" is to long").toString()))
            }
        }
        return list
    }
}

