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
// import org.allbinary.game.input.TextNotificationUtil
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.java.bool.BooleanFactory
// import org.allbinary.logic.string.StringValidationUtil
// import org.allbinary.logic.util.visitor.Visitor
// import org.allbinary.string.CommonStrings

open class TextItemNumberVisitor: Visitor {
    public var logUtil: LogUtil! = nil

    // Each class has its own field initializers
    private func initFields() {
    self.logUtil = LogUtil.getInstance()
    }
    

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult open override func visit(_ anyType: JObject!) -> JObject! {
        let value: String! = jUnboxString(anyType)
        if (JString.length(value) < 2) {
            let stringValidationUtil: StringValidationUtil! = StringValidationUtil.getInstance()
            if (stringValidationUtil.isNumber(value)) {
                return jBoxValue(BooleanFactory.getInstance().TRUE)
            } else {
                do {
                    TextNotificationUtil.getInstance().fireError("Numbers Only")
                } /* catch (Exception e): a thrown Java exception stops the program */
                return jBoxValue(BooleanFactory.getInstance().FALSE)
            }
        } else {
            return jBoxValue(BooleanFactory.getInstance().FALSE)
        }
    }
}

