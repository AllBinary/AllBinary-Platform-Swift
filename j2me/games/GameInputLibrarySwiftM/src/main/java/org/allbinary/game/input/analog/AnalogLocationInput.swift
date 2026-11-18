// Generated Code Do Not Modify
// package org.allbinary.game.input.analog

import J2SEForSwiftLibrary
// import org.allbinary.graphics.CustomGPoint

open class AnalogLocationInput: JObject {
    public static let NULL_ANALOG_LOCATION_INPUT: AnalogLocationInput! = AnalogLocationInput(-1)
    fileprivate var playerId: Int32 = 0
    fileprivate var customGPoint: CustomGPoint! = nil
    fileprivate var rz: Int32 = 0
    fileprivate var rightTrigger: Int32 = 0
    fileprivate var leftTrigger: Int32 = 0

    private func initFields() {
    
    
    self.rz = 0
    self.rightTrigger = 0
    self.leftTrigger = 0
    }
    

    public init(_ playerId: Int32) {
        super.init()
        self.initFields()
        self.playerId = playerId
        self.customGPoint = CustomGPoint(0, 0, 0)
    }
    

    @discardableResult open func getPlayerId() -> Int32 {
        return self.playerId
    }
    

    @discardableResult open func getCustomGPoint() -> CustomGPoint! {
        return self.customGPoint
    }
    

    @discardableResult open func getRz() -> Int32 {
        return self.rz
    }
    

    open func setRz(_ rz: Int32) {
        self.rz = rz
    }
    

    @discardableResult open func getRightTrigger() -> Int32 {
        return self.rightTrigger
    }
    

    open func setRightTrigger(_ rightTrigger: Int32) {
        self.rightTrigger = rightTrigger
    }
    

    @discardableResult open func getLeftTrigger() -> Int32 {
        return self.leftTrigger
    }
    

    open func setLeftTrigger(_ leftTrigger: Int32) {
        self.leftTrigger = leftTrigger
    }
}

