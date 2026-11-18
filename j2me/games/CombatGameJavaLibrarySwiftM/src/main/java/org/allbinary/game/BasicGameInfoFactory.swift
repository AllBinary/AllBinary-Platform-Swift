// Generated Code Do Not Modify
// package org.allbinary.game

import J2SEForSwiftLibrary

open class BasicGameInfoFactory: JObject {
    fileprivate static let SINGLETON: BasicGameInfoFactory! = BasicGameInfoFactory()
    public var currentReleaseIndex: Int32 = 0
    public var currentDestroyIndex: Int32 = 0
    public var total: Int32 = 0

    private func initFields() {
    self.currentReleaseIndex = 0
    self.currentDestroyIndex = 0
    self.total = 0
    }
    

    @discardableResult open class func getInstance() -> BasicGameInfoFactory! {
        return BasicGameInfoFactory.SINGLETON
    }
    

    public override init() {
        super.init()
        self.initFields()
    }
    

    open func `init`(_ total: Int32) {
        self.currentReleaseIndex = 0
        self.currentDestroyIndex = 0
        self.total = total
    }
    

    @discardableResult open func isPeaked() -> Bool {
        if (self.currentDestroyIndex >= self.total) {
            return true
        } else {
            return false
        }
    }
    

    @discardableResult open func howManyLeft() -> Int32 {
        return self.total &- self.currentDestroyIndex
    }
}

