// Generated Code Do Not Modify
// package org.allbinary.graphics.form

import J2SEForSwiftLibrary

open class ScreenInfo: JObject {
    fileprivate static let instance: ScreenInfo! = ScreenInfo()
    public var SMALL_WIDTH: Int32 = 0
    public var SMALL_HEIGHT: Int32 = 0
    public var MEDIUM_WIDTH: Int32 = 0
    public var MEDIUM_HEIGHT: Int32 = 0

    private func initFields() {
    self.SMALL_WIDTH = 320
    self.SMALL_HEIGHT = 240
    self.MEDIUM_WIDTH = 800
    self.MEDIUM_HEIGHT = 600
    }

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult open class func getInstance() -> ScreenInfo! {
        return ScreenInfo.instance
    }
}

