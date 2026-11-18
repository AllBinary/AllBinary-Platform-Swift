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
// package org.allbinary.game.physics.velocity

import J2SEForSwiftLibrary

open class VelocityProperties: BasicVelocityProperties, VelocityInterface {
    public static let NULL_VELOCITY_PROPERTIES: VelocityProperties! = VelocityProperties(0, 0)
    fileprivate var maxForwardVelocity: Int32 = 0
    fileprivate var maxReverseVelocity: Int32 = 0

    // Each class has its own field initializers
    private func initFields() {
    self.maxForwardVelocity = 0
    self.maxReverseVelocity = 0
    }
    

    public init(_ maxForwardVelocity: Int32, _ maxReverseVelocity: Int32) {
        super.init()
        self.initFields()
        self.setMaxForwardVelocity(maxForwardVelocity)
        self.setMaxReverseVelocity(maxReverseVelocity)
    }
    

    @discardableResult open func getMaxForwardVelocity() -> Int32 {
        return self.maxForwardVelocity
    }
    

    open func setMaxForwardVelocity(_ maxForwardVelocity: Int32) {
        self.maxForwardVelocity = maxForwardVelocity
    }
    

    @discardableResult open func getMaxReverseVelocity() -> Int32 {
        return self.maxReverseVelocity
    }
    

    open func setMaxReverseVelocity(_ maxReverseVelocity: Int32) {
        self.maxReverseVelocity = maxReverseVelocity
    }
    

    open func limitMaxXYForwardVelocity() {
        self.limitMaxXYVelocity(self.getMaxForwardVelocity())
    }
    

    open func limitMaxXYReverseVelocity() {
        self.limitMaxXYVelocity(self.getMaxReverseVelocity())
    }
    

    open func limitMaxYForwardVelocity() {
        self.limitMaxYVelocity(self.getMaxForwardVelocity())
    }
    

    open func limitMaxYReverseVelocity() {
        self.limitMaxYVelocity(self.getMaxReverseVelocity())
    }
    

    open func limitMaxXForwardVelocity() {
        self.limitMaxXVelocity(self.getMaxForwardVelocity())
    }
    

    open func limitMaxXReverseVelocity() {
        self.limitMaxXVelocity(self.getMaxReverseVelocity())
    }
    

    @discardableResult open func isOverXYMaxForwardVelocity() -> Bool {
        return self.isOverXYMaxVelocity(self.getMaxForwardVelocity())
    }
    

    @discardableResult open func isOverXYMaxReverseVelocity() -> Bool {
        return self.isOverXYMaxVelocity(self.getMaxReverseVelocity())
    }
    

    open func limitXYToForwardAndReverseMaxVelocity() {
        self.limitMaxXYForwardVelocity()
        self.limitMaxXYReverseVelocity()
    }
    

    open func limitMaxXYVelocity(_ maxVelocity: Int32) {
        self.limitMaxXVelocity(maxVelocity)
        self.limitMaxYVelocity(maxVelocity)
    }
    

    open func limitMaxPositiveYVelocity(_ maxVelocity: Int32) {
        if (self.velocityYBasicDecimal.getUnscaled() > Int64(truncatingIfNeeded: maxVelocity)) {
            self.velocityYBasicDecimal.setint(maxVelocity)
        }
    }
    

    open func limitMaxNegativeYVelocity(_ maxVelocity: Int32) {
        if (self.velocityYBasicDecimal.getUnscaled() < Int64(truncatingIfNeeded: -maxVelocity)) {
            self.velocityYBasicDecimal.setint(-maxVelocity)
        }
    }
    

    open func limitMaxYVelocity(_ maxVelocity: Int32) {
        self.limitMaxPositiveYVelocity(maxVelocity)
        self.limitMaxNegativeYVelocity(maxVelocity)
    }
    

    open func limitMaxXVelocity(_ maxVelocity: Int32) {
        if (self.velocityXBasicDecimal.getUnscaled() > Int64(truncatingIfNeeded: maxVelocity)) {
            self.velocityXBasicDecimal.setint(maxVelocity)
        }
        if (self.velocityXBasicDecimal.getUnscaled() < Int64(truncatingIfNeeded: -maxVelocity)) {
            self.velocityXBasicDecimal.setint(-maxVelocity)
        }
    }
    

    @discardableResult open func isOverXYMaxVelocity(_ maxVelocity: Int32) -> Bool {
        if (self.velocityXBasicDecimal.getUnscaled() > Int64(truncatingIfNeeded: maxVelocity)) {
            return true
        }
        if (self.velocityXBasicDecimal.getUnscaled() < Int64(truncatingIfNeeded: -maxVelocity)) {
            return true
        }
        if (self.velocityYBasicDecimal.getUnscaled() > Int64(truncatingIfNeeded: maxVelocity)) {
            return true
        }
        if (self.velocityYBasicDecimal.getUnscaled() < Int64(truncatingIfNeeded: -maxVelocity)) {
            return true
        }
        return false
    }
    

    open override func setVelocityi(_ magnitude: Int64, _ angle: Int32, _ otherAngle: Int32) {
        super.setVelocityi(magnitude, angle, otherAngle)
        self.limitXYToForwardAndReverseMaxVelocity()
    }
    

    open override func addVelocityi(_ magnitude: Int64, _ angle: Int32, _ otherAngle: Int32) {
        super.addVelocityi(magnitude, angle, otherAngle)
        self.limitXYToForwardAndReverseMaxVelocity()
    }
}

