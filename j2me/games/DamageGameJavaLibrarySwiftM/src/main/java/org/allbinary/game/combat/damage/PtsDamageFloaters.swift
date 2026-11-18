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
// package org.allbinary.game.combat.damage

import J2SEForSwiftLibrary
// import javax.microedition.lcdui.Graphics
// import org.allbinary.game.rand.MyRandomFactory
// import org.allbinary.graphics.color.BasicColor
// import org.allbinary.graphics.color.BasicColorArrayIndexer
// import org.allbinary.graphics.color.BasicColorFactory
// import org.allbinary.graphics.color.BasicColorSetUtil
// import org.allbinary.layer.AllBinaryLayer
// import org.allbinary.logic.java.character.CharArrayFactory
// import org.allbinary.logic.math.PrimitiveLongUtil
// import org.allbinary.util.CircularIndexUtil
// import org.allbinary.view.ViewPosition
// import org.allbinary.view.ViewPositionBase

open class PtsDamageFloaters: DamageFloaters {
    fileprivate static let basicColorArrayIndexer: BasicColorArrayIndexer! = BasicColorArrayIndexer(JArray<BasicColor?>([BasicColorFactory.getInstance().WHITE, BasicColorFactory.getInstance().RED, BasicColorFactory.getInstance().YELLOW, BasicColorFactory.getInstance().BLUE]))
    public var basicSetColorUtil: BasicColorSetUtil! = nil
    fileprivate var layerInterface: AllBinaryLayer! = nil
    fileprivate var lastDamage: JArray<Int32>! = nil
    fileprivate var lastDamageString: JArray<JArray<UInt16>?>! = nil
    fileprivate var lastDamageStringSizeArray: JArray<Int32>! = nil
    fileprivate var circularIndexUtil: CircularIndexUtil! = nil
    fileprivate var primitiveLongUtil: PrimitiveLongUtil! = nil
    fileprivate var myRandomFactory: MyRandomFactory! = nil

    // Each class has its own field initializers
    private func initFields() {
    self.basicSetColorUtil = BasicColorSetUtil.getInstance()
    
    self.lastDamage = JArray<Int32>(5, 0)
    self.lastDamageString = JArray<JArray<UInt16>?>(5, factory: { JArray<UInt16>(0, 0) })
    self.lastDamageStringSizeArray = JArray<Int32>(5, 0)
    self.circularIndexUtil = CircularIndexUtil.createInstance(5)
    
    self.myRandomFactory = MyRandomFactory.getInstance()
    }
    

    public init(_ layerInterface: AllBinaryLayer!) {
        super.init()
        self.initFields()
        self.primitiveLongUtil = PrimitiveLongUtil.createPowerOfTen(100000)
        self.layerInterface = layerInterface
        let CHAR_ARRAY: JArray<UInt16>! = CharArrayFactory.getInstance().getZeroCharArray()
        do {
            var index: Int32 = self.lastDamageString.length &- 1
            while (index >= 0) {
                defer { index &-= 1 }
            self.lastDamageString[index] = CHAR_ARRAY
            }
        }
    }
    

    open override func add(_ damage: Int32) {
        let index: Int32 = self.circularIndexUtil.getIndex()
        self.lastDamage[index] = damage
        self.lastDamageString[index] = self.primitiveLongUtil.getCharArray(self.lastDamage[index])
        self.lastDamageStringSizeArray[index] = self.primitiveLongUtil.getCurrentTotalDigits()
        self.circularIndexUtil.next()
    }
    

    open override func paint(_ graphics: Graphics!) {
        let viewPosition: ViewPositionBase! = self.layerInterface.getViewPosition()
        let x: Int32 = viewPosition.getX()
        let y: Int32 = viewPosition.getY()
        do {
            var index: Int32 = self.lastDamage.length &- 1
            while (index >= 0) {
                defer { index &-= 1 }
            if (self.lastDamage[index] != 0) {
                let delta: Int32 = 10 &* (index &+ 2)
                self.basicSetColorUtil.setBasicColorP(graphics, PtsDamageFloaters.basicColorArrayIndexer.get())
                graphics.drawChars(self.lastDamageString[index], 0, self.lastDamageStringSizeArray[index], x &- self.myRandomFactory.getNextInt(delta), y &- delta, 0)
                PtsDamageFloaters.basicColorArrayIndexer.next()
            }
            self.lastDamage[index] = 0
            }
        }
    }
}

