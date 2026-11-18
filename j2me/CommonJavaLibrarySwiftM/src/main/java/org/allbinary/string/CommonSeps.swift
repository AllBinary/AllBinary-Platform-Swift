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
// package org.allbinary.string

import J2SEForSwiftLibrary
// import jsinterop.annotations.JsType
// import org.allbinary.logic.string.StringMaker
// import jsinterop.annotations.JsMethod
// import jsinterop.annotations.JsProperty

open class CommonSeps: JObject {
    fileprivate static let instance: CommonSeps! = CommonSeps()
    public var NEW_LINE: String! = nil
    public var SEMICOLON: String! = nil
    public var EQUALS: String! = nil
    public var SPACE: String! = nil
    public var COMMA: String! = nil
    public var COLON: String! = nil
    public var PERIOD: String! = nil
    public var UNDERSCORE: String! = nil
    public var COLON_SEP: String! = nil
    public var COMMA_SEP: String! = nil
    public var PARENTHESIS_OPEN: String! = nil
    public var PARENTHESIS_CLOSE: String! = nil
    public var BRACE_OPEN: String! = nil
    public var BRACE_CLOSE: String! = nil
    public var BRACKET_OPEN: String! = nil
    public var BRACKET_CLOSE: String! = nil
    public var DASH: String! = nil
    public var PERCENT: String! = nil
    public var AMPERSAND: String! = nil
    public var FORWARD_SLASH: String! = nil
    public var BACK_SLASH: String! = nil
    public var QUESTION: String! = nil
    public var QUOTE: String! = nil
    public var QUOTE_END: String! = nil
    public var COMMENT: String! = nil
    public var INDENT: String! = nil

    private func initFields() {
    self.NEW_LINE = "\n"
    self.SEMICOLON = ";"
    self.EQUALS = "="
    self.SPACE = " "
    self.COMMA = ","
    self.COLON = ":"
    self.PERIOD = "."
    self.UNDERSCORE = "_"
    self.COLON_SEP = StringMaker().append(self.COLON).append(self.SPACE).toString()
    self.COMMA_SEP = StringMaker().append(self.COMMA).append(self.SPACE).toString()
    self.PARENTHESIS_OPEN = "("
    self.PARENTHESIS_CLOSE = ")"
    self.BRACE_OPEN = "{"
    self.BRACE_CLOSE = "}"
    self.BRACKET_OPEN = "["
    self.BRACKET_CLOSE = "]"
    self.DASH = "-"
    self.PERCENT = "%"
    self.AMPERSAND = "&"
    self.FORWARD_SLASH = "/"
    self.BACK_SLASH = "\\"
    self.QUESTION = "?"
    self.QUOTE = "\""
    self.QUOTE_END = "\","
    self.COMMENT = "//"
    self.INDENT = "    "
    }

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult open class func getInstance() -> CommonSeps! {
        return CommonSeps.instance
    }
}

