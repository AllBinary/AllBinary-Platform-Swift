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
// package org.allbinary.graphics

import J2SEForSwiftLibrary

open class ResizableListenerHandler: JObject {
    fileprivate static let instance: ResizableListenerHandler! = ResizableListenerHandler()

    public override init() {
        super.init()
    }
    

    @discardableResult open class func getInstance() -> ResizableListenerHandler! {
        return ResizableListenerHandler.instance
    }
    

    open func setListener(_ resizableListenerInterface: ResizableListenerInterface!) {
    }
    

    open func fire(_ isFullScreen: Bool) {
    }
    

    open func fireEvent(_ value: Bool) {
    }
}

