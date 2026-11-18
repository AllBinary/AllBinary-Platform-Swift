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
// package org.allbinary.logic.string.tokens

import J2SEForSwiftLibrary
// import org.allbinary.TsUtil
// import org.allbinary.logic.StdUtil
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.util.ABHashtable
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListD

open class Tokenizer: JObject {
    fileprivate var sep: String! = nil
    fileprivate var endSep: String! = nil

    private func initFields() {
    
    self.endSep = StringUtil.getInstance().EMPTY_STRING
    }
    

    public init(_ sep: String!) {
        super.init()
        self.initFields()
        if (TsUtil.getInstance().compareTo(sep, StringUtil.getInstance().EMPTY_STRING) == 0) {
            jThrow(JException("Exception", "Sep provided is not valid"))
        }
        self.sep = sep
    }
    

    open func setSep(_ sep: String!) {
        self.sep = sep
    }
    

    open func setEndSep(_ endSep: String!) {
        self.endSep = endSep
    }
    

    @discardableResult open func getInsideSep(_ string: String!) -> BasicArrayList! {
        let tokenList: BasicArrayList! = BasicArrayListD()
        var index: Int32 = 0
        let size: Int32 = JString.length(string)
        while (index < size) {
            index = JString.indexOf(string, self.sep, index)
            if (index != -1) {
                let end: Int32 = JString.indexOf(string, self.endSep, index &+ JString.length(self.sep))
                if (end != -1) {
                    tokenList.add(jBoxString(JString.substring(string, index &+ JString.length(self.sep), end &- (JString.length(self.endSep) &- 1))))
                    index = end &+ JString.length(self.endSep)
                } else {
                }
            } else {
                break
            }
        }
        return tokenList
    }
    

    @discardableResult open func getTokensFromString(_ string: String!, _ tokenVector: BasicArrayList!) -> BasicArrayList! {
        var index: Int32 = 0
        var end: Int32 = 0
        while (index < JString.length(string)) {
            end = JString.indexOf(string, self.sep, index)
            if (end != -1) {
                tokenVector.add(jBoxString(JString.substring(string, index, end)))
                index = end &+ JString.length(self.sep)
            } else {
                tokenVector.add(jBoxString(JString.substring(string, index, JString.length(string))))
                break
            }
        }
        return tokenVector
    }
    

    @discardableResult open func getTokens(_ stringVector: BasicArrayList!) -> ABHashtable! {
        let tokenHashtable: ABHashtable! = StdUtil.getInstance().createHashtable()
        var string: String! = StringUtil.getInstance().EMPTY_STRING
        var end: Int32 = 0
        let size: Int32 = stringVector.size()
        do {
            var index: Int32 = 0
            while (index < size) {
                defer { index &+= 1 }
            string = jUnboxString(stringVector.objectArray[index])
            end = JString.indexOf(string, self.sep)
            if (end >= 0) {
                tokenHashtable.put(jBoxString(JString.substring(string, 0, end)), jBoxString(JString.substring(string, end &+ 1, JString.length(string))))
            }
            }
        }
        return tokenHashtable
    }
}

