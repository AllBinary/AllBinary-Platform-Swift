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
// package org.allbinary.graphics.form.item

import J2SEForSwiftLibrary

open class CustomItemUtil: JObject {
    fileprivate static let instance: CustomItemUtil! = CustomItemUtil()
    public var CUSTOM_ITEM_ARRAY: JArray<ABCustomItem?>! = nil

    private func initFields() {
    self.CUSTOM_ITEM_ARRAY = JArray<ABCustomItem?>(0, nil)
    }

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult open class func getInstance() -> CustomItemUtil! {
        return CustomItemUtil.instance
    }
}

