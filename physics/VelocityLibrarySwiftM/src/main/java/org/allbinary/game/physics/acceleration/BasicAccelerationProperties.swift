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
// package org.allbinary.game.physics.acceleration

import J2SEForSwiftLibrary

open class BasicAccelerationProperties: JObject {
    fileprivate var forward: Int32 = 0
    fileprivate var reverse: Int32 = 0

    private func initFields() {
    self.forward = 0
    self.reverse = 0
    }
    

    public init(_ forward: Int32, _ reverse: Int32) {
        super.init()
        self.initFields()
        self.setForward(forward)
        self.setReverse(reverse)
    }
    

    open func setReverse(_ reverse: Int32) {
        self.reverse = reverse
    }
    

    @discardableResult open func getReverse() -> Int32 {
        return self.reverse
    }
    

    open func setForward(_ forward: Int32) {
        self.forward = forward
    }
    

    @discardableResult open func getForward() -> Int32 {
        return self.forward
    }
}

