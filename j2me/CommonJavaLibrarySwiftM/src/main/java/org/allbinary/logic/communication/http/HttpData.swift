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
// package org.allbinary.logic.communication.http

import J2SEForSwiftLibrary
// import org.allbinary.string.CommonSeps

open class HttpData: JObject {
    fileprivate static let instance: HttpData! = HttpData()
    public var EQUALS: String! = nil
    public var PARAM_SEP: String! = nil
    public var URL_PARAM_SEP: String! = nil
    public var URL_LABEL: String! = nil

    private func initFields() {
    
    
    
    self.URL_LABEL = "Url: "
    }
    

    @discardableResult open class func getInstance() -> HttpData! {
        return HttpData.instance
    }
    

    public override init() {
        super.init()
        self.initFields()
        let commonSeps: CommonSeps! = CommonSeps.getInstance()
        self.EQUALS = commonSeps.EQUALS
        self.PARAM_SEP = commonSeps.AMPERSAND
        self.URL_PARAM_SEP = commonSeps.QUESTION
    }
}

