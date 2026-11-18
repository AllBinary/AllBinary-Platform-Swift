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
// package org.allbinary.input.motion.button

import J2SEForSwiftLibrary
// import org.allbinary.string.CommonStrings
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListUtil

open class BaseTouchInput: JObject {
    public var commonStrings: CommonStrings! = nil
    fileprivate var basicArrayListUtil: BasicArrayListUtil! = nil

    private func initFields() {
    self.commonStrings = CommonStrings.getInstance()
    self.basicArrayListUtil = BasicArrayListUtil.getInstance()
    }
    

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult open func getList() -> BasicArrayList! {
        return self.basicArrayListUtil.getImmutableInstance()
    }
    

    @discardableResult open override func toString() -> String! {
        return JObject.className(self)
    }
}

