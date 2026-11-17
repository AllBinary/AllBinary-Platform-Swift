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
// package org.allbinary.util

import J2SEForSwiftLibrary
// import jsinterop.annotations.JsType
// import org.allbinary.logic.communication.log.ForcedLogUtil

open class ImmutableBasicArrayList: BasicArrayListS {
    fileprivate var name: String! = nil

    // Each class has its own field initializers
    private func initFields() {
    
    }
    

    public init(_ name: String!, _ size: Int32) {
        super.init(size)
        self.initFields()
        self.name = name
    }
    

    @discardableResult open override func add(_ e: JObject!) -> Bool {
        ForcedLogUtil.log(self.name, self)
        return true
    }
    

    open override func addAt(_ index: Int32, _ element: JObject!) {
        ForcedLogUtil.log(self.name, self)
    }
    

    @discardableResult open override func toString() -> String! {
        return self.name
    }
}

