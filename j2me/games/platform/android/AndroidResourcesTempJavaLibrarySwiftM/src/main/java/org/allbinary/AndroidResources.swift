// Generated Code Do Not Modify
// package org.allbinary

import J2SEForSwiftLibrary
// import org.allbinary.game.testgamedemo.R

open class AndroidResources: JObject {
    fileprivate static let instance: AndroidResources! = AndroidResources()
    public var drawable: drawable! = nil
    public var id: id! = nil
    public var layout: layout! = nil
    public var raw: raw! = nil
    public var string: string! = nil

    private func initFields() {
    self.drawable = drawable()
    self.id = id()
    self.layout = layout()
    self.raw = raw()
    self.string = string()
    }

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult open class func getInstance() -> AndroidResources! {
        return AndroidResources.instance
    }
}

