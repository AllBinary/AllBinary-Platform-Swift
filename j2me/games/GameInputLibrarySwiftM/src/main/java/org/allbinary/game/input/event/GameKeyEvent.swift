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
// package org.allbinary.game.input.event

import J2SEForSwiftLibrary
// import org.allbinary.logic.NullUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.util.event.AllBinaryEventObject

open class GameKeyEvent: AllBinaryEventObject {
    public static let NONE: GameKeyEvent! = GameKeyEvent(NullUtil.getInstance().NULL_OBJECT, -1, -1, -1, -1, false)
    fileprivate var sourceId: Int32 = 0
    fileprivate var repeated: Bool = false
    fileprivate var key: Int32 = 0
    fileprivate var gameActionKey: Int32 = 0
    fileprivate var originalKey: Int32 = 0

    // Each class has its own field initializers
    private func initFields() {
    
    self.repeated = false
    
    self.gameActionKey = 0
    self.originalKey = 0
    }
    

    @discardableResult open class func createEvent(_ anyType: JObject!, _ sourceId: Int32, _ key: Int32) -> GameKeyEvent! {
        return GameKeyEvent(anyType, sourceId, 0, 0, key, false)
    }
    

    public init(_ anyType: JObject!, _ sourceId: Int32, _ originalKey: Int32, _ gameActionKey: Int32, _ key: Int32, _ repeated: Bool) {
        super.init(anyType)
        self.initFields()
        self.sourceId = sourceId
        self.setOriginalKey(originalKey)
        self.key = key
        self.setGameActionKey(gameActionKey)
        self.setRepeatEvents(repeated)
    }
    

    open func `init`(_ anyType: JObject!) {
        self.setSource(anyType)
    }
    

    fileprivate func setRepeatEvents(_ repeated: Bool) {
        self.repeated = repeated
    }
    

    @discardableResult open func hasRepeatEvents() -> Bool {
        return self.repeated
    }
    

    @discardableResult open func getKey() -> Int32 {
        return self.key
    }
    

    @discardableResult open override func toString() -> String! {
        let stringBuffer: StringMaker! = StringMaker()
        stringBuffer.append("\nKey: ")
        stringBuffer.appendint(self.getKey())
        return stringBuffer.toString()
    }
    

    @discardableResult open func getOriginalKey() -> Int32 {
        return self.originalKey
    }
    

    open func setOriginalKey(_ originalKey: Int32) {
        self.originalKey = originalKey
    }
    

    @discardableResult open func getGameActionKey() -> Int32 {
        return self.gameActionKey
    }
    

    open func setGameActionKey(_ gameActionKey: Int32) {
        self.gameActionKey = gameActionKey
    }
    

    @discardableResult open func getSourceId() -> Int32 {
        return self.sourceId
    }
}

