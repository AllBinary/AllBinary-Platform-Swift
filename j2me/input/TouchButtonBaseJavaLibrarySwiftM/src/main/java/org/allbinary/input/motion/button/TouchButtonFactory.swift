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
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListUtil

open class TouchButtonFactory: JObject {
    fileprivate static let SINGLETON: TouchButtonFactory! = TouchButtonFactory()
    fileprivate var LIST: BasicArrayList! = nil
    fileprivate var list: BasicArrayList! = nil
    fileprivate var savedList: BasicArrayList! = nil
    fileprivate var saved: Bool = false

    private func initFields() {
    self.LIST = BasicArrayListUtil.getInstance().getImmutableInstance()
    self.list = self.LIST
    self.savedList = self.LIST
    self.saved = false
    }
    

    @discardableResult open class func getInstance() -> TouchButtonFactory! {
        return TouchButtonFactory.SINGLETON
    }
    

    public override init() {
        super.init()
        self.initFields()
    }
    

    open func defaultList() {
        self.list = self.LIST
        self.toggle(false, self.LIST)
    }
    

    open func toggle(_ save: Bool, _ list: BasicArrayList!) {
        if (list !== BasicArrayListUtil.getInstance().getImmutableInstance()) {
            self.savedList = list
            if (!self.saved) {
                self.list = self.savedList
            }
        } else {
            if (save) {
                if (!self.saved) {
                    self.saved = true
                    self.savedList = self.list
                    self.list = self.LIST
                } else {
                }
            } else {
                self.list = self.savedList
                self.saved = false
            }
        }
    }
    

    open func setList(_ list: BasicArrayList!) {
        if (list == nil) {
            jThrow(JException("Exception", "Null List"))
        }
        self.list = list
    }
    

    @discardableResult open func getList() -> BasicArrayList! {
        return self.list
    }
}

