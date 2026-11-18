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
// package org.allbinary.game.ai

import J2SEForSwiftLibrary
// import org.allbinary.ai.ArtificialIntelligence
// import org.allbinary.game.displayable.canvas.CanvasUtil
// import org.allbinary.game.input.GameInput
// import org.allbinary.game.input.GameKeyEventSourceInterface
// import org.allbinary.game.input.event.GameKeyEventFactory
// import org.allbinary.layer.AllBinaryLayer
// import org.allbinary.layer.AllBinaryLayerManager
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.math.SmallIntegerSingletonFactory
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.string.CommonSeps
// import org.allbinary.string.CommonStrings

open class BasicAI: ArtificialIntelligence, GameKeyEventSourceInterface {
    public static let AI_VISITOR: Int32! = SmallIntegerSingletonFactory.getInstance().getAt(2)
    public static let ID: Int32! = SmallIntegerSingletonFactory.getInstance().getAt(1)
    public var logUtil: LogUtil! = nil
    public var commonStrings: CommonStrings! = nil
    public var gameKeyEventFactory: GameKeyEventFactory! = nil
    fileprivate var ownerLayerInterface: AllBinaryLayer! = nil
    fileprivate var gameInput: GameInput! = nil
    fileprivate var lastKey: Int32 = 0

    // Each class has its own field initializers
    private func initFields() {
    self.logUtil = LogUtil.getInstance()
    self.commonStrings = CommonStrings.getInstance()
    self.gameKeyEventFactory = GameKeyEventFactory.getInstance()
    
    
    self.lastKey = -1
    }
    

    public init(_ ownerLayerInterface: AllBinaryLayer!, _ gameInput: GameInput!) {
        super.init()
        self.initFields()
        self.ownerLayerInterface = ownerLayerInterface
        self.gameInput = gameInput
    }
    

    open override func processAI(_ allBinaryLayerManager: AllBinaryLayerManager!) {
        jThrow(JException("Exception", self.commonStrings.NOT_IMPLEMENTED))
    }
    

    open func processKeyAI(_ key: Int32) {
        if (key != -1) {
            self.gameInput.add(self.gameKeyEventFactory.getInstanceForKey(self, key))
        }
    }
    

    open func setLastKey(_ lastKey: Int32) {
        self.lastKey = lastKey
    }
    

    @discardableResult open func getLastKey() -> Int32 {
        return self.lastKey
    }
    

    @discardableResult open func getOwnerLayerInterface() -> AllBinaryLayer! {
        return self.ownerLayerInterface
    }
    

    @discardableResult open func getGameInput() -> GameInput! {
        return self.gameInput
    }
    

    @discardableResult open func getName() -> String! {
        return JObject.className(self)
    }
    

    @discardableResult open override func toString() -> String! {
        let stringBuffer: StringMaker! = StringMaker()
        stringBuffer.append(CommonSeps.getInstance().NEW_LINE)
        stringBuffer.append(self.getName())
        stringBuffer.append(" LastKey: ")
        stringBuffer.append(CanvasUtil.getKeyName(self.getLastKey()))
        return stringBuffer.toString()
    }
    

    @discardableResult open func getSourceId() -> Int32 {
        return 1
    }
}

