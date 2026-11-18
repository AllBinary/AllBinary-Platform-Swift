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
// package org.allbinary.game.input

import J2SEForSwiftLibrary
// import org.allbinary.game.configuration.feature.Features
// import org.allbinary.game.configuration.feature.InputFeatureFactory
// import org.allbinary.game.input.event.GameKeyEvent
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.string.CommonStrings
// import org.allbinary.util.BasicArrayList

open class GameInput: JObject {
    public var logUtil: LogUtil! = nil
    public var commonStrings: CommonStrings! = nil
    fileprivate var gameKeyEventList: BasicArrayList! = nil
    fileprivate var removalGameKeyEventList: BasicArrayList! = nil
    public var isRemoveDuplicateKeyPresses: Bool = false

    private func initFields() {
    self.logUtil = LogUtil.getInstance()
    self.commonStrings = CommonStrings.getInstance()
    
    
    
    }
    

    public init(_ gameKeyEventList: BasicArrayList!, _ removalGameKeyEventList: BasicArrayList!) {
        super.init()
        self.initFields()
        self.gameKeyEventList = gameKeyEventList
        self.removalGameKeyEventList = removalGameKeyEventList
        self.isRemoveDuplicateKeyPresses = Features.getInstance().isFeature(InputFeatureFactory.getInstance().REMOVE_DUPLICATE_KEY_PRESSES)
    }
    

    open func add(_ gameKeyEvent: GameKeyEvent!) {
        if (self.isRemoveDuplicateKeyPresses && self.gameKeyEventList.contains(gameKeyEvent)) {
            return
        }
        if (gameKeyEvent != nil) {
            self.gameKeyEventList.add(gameKeyEvent)
        } else {
            self.logUtil.putF("Danger Passed Null GameKeyEvent", self, self.commonStrings.ADD)
        }
    }
    

    open func addForRemoval(_ gameKeyEvent: GameKeyEvent!) {
        self.removalGameKeyEventList.add(gameKeyEvent)
    }
    

    @discardableResult open func isForRemoval(_ gameKeyEvent: GameKeyEvent!) -> Bool {
        return self.removalGameKeyEventList.contains(gameKeyEvent)
    }
    

    open func clear() {
        self.gameKeyEventList.clear()
    }
    

    open func removeNonAIInputGameKeyEvents() {
        let list: BasicArrayList! = self.gameKeyEventList
        var gameKeyEvent: GameKeyEvent! = nil
        do {
            var index: Int32 = list.size()
            while (jPreDecrement(&index) >= 0) {
            gameKeyEvent = (list.objectArray[index] as! GameKeyEvent)
            if (gameKeyEvent.getSourceId() != 1) {
                list.removeAt(index)
            }
            }
        }
    }
    

    open func update() {
        let removeList: BasicArrayList! = self.removalGameKeyEventList
        let list: BasicArrayList! = self.gameKeyEventList
        let size: Int32 = removeList.size()
        do {
            var index: Int32 = 0
            while (index < size) {
                defer { index &+= 1 }
            let anyType: JObject! = removeList.objectArray[index]
            do {
                var index2: Int32 = list.size()
                while (jPreDecrement(&index2) >= 0) {
                if (list.objectArray[index2] === anyType) {
                    list.removeAt(index2)
                }
                }
            }
            }
        }
        removeList.clear()
    }
    

    @discardableResult open func getRemovalGameKeyEventList() -> BasicArrayList! {
        return self.removalGameKeyEventList
    }
    

    @discardableResult open func getGameKeyEventList() -> BasicArrayList! {
        return self.gameKeyEventList
    }
}

