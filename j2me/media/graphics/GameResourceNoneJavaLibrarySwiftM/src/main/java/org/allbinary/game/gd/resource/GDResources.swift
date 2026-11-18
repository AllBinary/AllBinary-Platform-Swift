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
// package org.allbinary.game.gd.resource

import J2SEForSwiftLibrary

open class GDResources: JObject {
    fileprivate static let instance: GDResources! = GDResources()
    public var resourceStringArray: JArray<String?>! = nil
    public var currentLayoutRequiredTotal: Int32 = 0

    private func initFields() {
    self.resourceStringArray = JArray<String?>([])
    self.currentLayoutRequiredTotal = 0
    }

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult open class func getInstance() -> GDResources! {
        return GDResources.instance
    }
}

