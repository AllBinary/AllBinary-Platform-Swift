/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2022 AllBinary 
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
// package org.allbinary

import J2SEForSwiftLibrary
// import javax.microedition.lcdui.Canvas

open class PostGameCommandFactory: JObject {
    fileprivate static let instance: PostGameCommandFactory! = PostGameCommandFactory()

    public override init() {
        super.init()
    }
    

    @discardableResult open class func getInstance() -> PostGameCommandFactory! {
        jThrow(JException("RuntimeException", ""))
    }
    

    open func addCommands(_ canvas: Canvas!) {
    }
}

