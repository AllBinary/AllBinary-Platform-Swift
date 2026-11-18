// Generated Code Do Not Modify
// package org.allbinary.game.input.analog

import J2SEForSwiftLibrary
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListD

open class AnalogLocationInputFactory: JObject {
    fileprivate static let instance: AnalogLocationInputFactory! = AnalogLocationInputFactory()
    fileprivate var list: BasicArrayList! = nil

    private func initFields() {
    self.list = BasicArrayListD()
    }
    

    @discardableResult open class func getInstance() -> AnalogLocationInputFactory! {
        return AnalogLocationInputFactory.instance
    }
    

    public override init() {
        super.init()
        self.initFields()
    }
    

    open func addPlayer(_ playerInputId: Int32) {
        var analogLocationInput: AnalogLocationInput! = AnalogLocationInput.NULL_ANALOG_LOCATION_INPUT
        if (playerInputId < self.list.size()) {
            analogLocationInput = (self.list.get(playerInputId) as! AnalogLocationInput)
        }
        if (analogLocationInput === AnalogLocationInput.NULL_ANALOG_LOCATION_INPUT) {
            analogLocationInput = AnalogLocationInput(playerInputId)
            self.list.add(analogLocationInput)
        }
    }
    

    @discardableResult open func getInstanceForPlayer(_ playerInputId: Int32) -> AnalogLocationInput! {
        return (self.list.get(playerInputId) as! AnalogLocationInput)
    }
    

    @discardableResult open func getList() -> BasicArrayList! {
        return self.list
    }
}

