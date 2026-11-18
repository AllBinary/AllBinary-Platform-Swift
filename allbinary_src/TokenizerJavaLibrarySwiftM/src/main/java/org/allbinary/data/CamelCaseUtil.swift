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
// package org.allbinary.data

import J2SEForSwiftLibrary
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.logic.string.StringValidationUtil
// import org.allbinary.logic.string.tokens.Tokenizer
// import org.allbinary.string.CommonSeps
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListD

open class CamelCaseUtil: JObject {
    fileprivate static let instance: CamelCaseUtil! = CamelCaseUtil()
    fileprivate var commonSeps: CommonSeps! = nil

    private func initFields() {
    self.commonSeps = CommonSeps.getInstance()
    }

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult open class func getInstance() -> CamelCaseUtil! {
        return CamelCaseUtil.instance
    }
    

    @discardableResult open func getAsCamelCase(_ string: String!, _ stringBuilder: StringMaker!) -> String! {
        let stringValidationUtil: StringValidationUtil! = StringValidationUtil.getInstance()
        stringBuilder.delete(0, stringBuilder.length())
        let list: BasicArrayList! = BasicArrayListD()
        let tokenizer: Tokenizer! = Tokenizer(self.commonSeps.UNDERSCORE)
        tokenizer.getTokensFromString(string, list)
        let size: Int32 = list.size()
        var word: String! = nil
        do {
            var i: Int32 = 0
            while (i < size) {
                defer { i &+= 1 }
            word = jUnboxString(list.get(i))
            word = (stringValidationUtil.isEmpty(word) ? word : StringMaker().appendchar(Character.toUpperCase(JString.charAt(word, 0))).append(JString.toLowerCase(JString.substring(word, 1))).toString())
            stringBuilder.append(word)
            }
        }
        return stringBuilder.toString()
    }
}

