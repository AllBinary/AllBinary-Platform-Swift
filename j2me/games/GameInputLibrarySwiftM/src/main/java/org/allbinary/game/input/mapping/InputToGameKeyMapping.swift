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
// package org.allbinary.game.input.mapping

import J2SEForSwiftLibrary
// import javax.microedition.lcdui.Canvas
// import org.allbinary.game.input.GameKey
// import org.allbinary.game.input.GameKeyFactory
// import org.allbinary.game.input.Input
// import org.allbinary.game.input.InputFactory
// import org.allbinary.logic.NullUtil
// import org.allbinary.logic.communication.log.PreLogUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.string.CommonLabels
// import org.allbinary.string.CommonSeps
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListD

open class InputToGameKeyMapping: InputMapping {
    fileprivate static var instance: JObject! = NullUtil.getInstance().NULL_OBJECT
    fileprivate var gameKeyFactory: GameKeyFactory! = nil
    fileprivate var mappedGameKeys: JArray<GameKey?>! = nil
    fileprivate var platformToGameKeyMapping: JArray<GameKey?>! = nil
    public var negativePlatformToGameKeyMapping: JArray<GameKey?>! = nil

    // Each class has its own field initializers
    private func initFields() {
    self.gameKeyFactory = GameKeyFactory.getInstance()
    self.mappedGameKeys = JArray<GameKey?>([self.gameKeyFactory.UP, self.gameKeyFactory.DOWN, self.gameKeyFactory.LEFT, self.gameKeyFactory.RIGHT])
    self.platformToGameKeyMapping = JArray<GameKey?>(InputFactory.getInstance().MAX, nil)
    self.negativePlatformToGameKeyMapping = JArray<GameKey?>(0, nil)
    }
    

    @discardableResult open class func getNullInstance() -> InputToGameKeyMapping! {
        if (InputToGameKeyMapping.instance === NullUtil.getInstance().NULL_OBJECT) {
            InputToGameKeyMapping.instance = InputToGameKeyMapping()
        }
        return (InputToGameKeyMapping.instance as! InputToGameKeyMapping)
    }
    

    public override init() {
        super.init()
        self.initFields()
        self.logUtil.putF(self.commonStrings.START, self, self.commonStrings.CONSTRUCTOR)
        self.clear()
    }
    

    fileprivate func clear() {
        do {
            var index: Int32 = self.platformToGameKeyMapping.length &- 1
            while (index >= 0) {
                defer { index &-= 1 }
            self.platformToGameKeyMapping[index] = self.gameKeyFactory.NONE
            }
        }
    }
    

    open override func removeAll() {
        super.removeAll()
        self.clear()
    }
    

    open override func addMapping(_ inputToGameKeyMapping: InputToGameKeyMapping!) {
        do {
            var index: Int32 = inputToGameKeyMapping.getMaxMappable() &- 1
            while (index >= 0) {
                defer { index &-= 1 }
            let input: Input! = inputToGameKeyMapping.getInstance(index)
            if (input !== self.gameKeyFactory.NONE) {
                self.addAll(input, inputToGameKeyMapping.getMappedInput(input))
            }
            }
        }
    }
    

    fileprivate func addAll(_ input: Input!, _ list: BasicArrayList!) {
        do {
            var index: Int32 = list.size() &- 1
            while (index >= 0) {
                defer { index &-= 1 }
            let mappedToInput: Input! = (list.objectArray[index] as! Input)
            self.add(input, mappedToInput)
            }
        }
    }
    

    open override func add(_ input: Input!, _ mappedToInput: Input!) {
        super.add(input, mappedToInput)
        self.set(input, mappedToInput)
    }
    

    open override func remove(_ input: Input!, _ mappedToInput: Input!) {
        self.logUtil.putF(StringMaker().append(CommonLabels.getInstance().START_LABEL).append(StringUtil.getInstance().toString(input)).append(" == ").append(StringUtil.getInstance().toString(mappedToInput)).toString(), self, "InputToGameKeyMapping::remove")
        super.remove(input, mappedToInput)
        self.set(input, self.gameKeyFactory.NONE)
    }
    

    fileprivate func set(_ input: Input!, _ mappedToInput: Input!) {
        let id: Int32 = mappedToInput.getId()
        if (id >= 0 && id < self.platformToGameKeyMapping.length) {
            self.platformToGameKeyMapping[id] = (input as! GameKey)
        }
    }
    

    @discardableResult open func getMaxMappable() -> Int32 {
        return self.platformToGameKeyMapping.length
    }
    

    @discardableResult open func getReverseInstance(_ id: Int32) -> BasicArrayList! {
        let list: BasicArrayList! = BasicArrayListD()
        let inputFactory: InputFactory! = InputFactory.getInstance()
        do {
            var index: Int32 = 0
            while (index < self.platformToGameKeyMapping.length) {
                defer { index &+= 1 }
            if (self.platformToGameKeyMapping[index]!.getId() == id) {
                let input: Input! = inputFactory.getInstanceById(index)
                if (input != nil) {
                    list.add(input)
                }
            }
            }
        }
        return list
    }
    

    fileprivate func initGameKey(_ canvas: Canvas!, _ gameKey: GameKey!) {
        let key: Int32 = canvas.getKeyCode(gameKey.getId())
        if (key < 0 && -key < self.negativePlatformToGameKeyMapping.length) {
            self.negativePlatformToGameKeyMapping[-key] = gameKey
        } else if (key > 0) {
            if (self.platformToGameKeyMapping[key] === self.gameKeyFactory.NONE) {
                self.platformToGameKeyMapping[key] = gameKey
            }
        } else {
            PreLogUtil.putOE(StringMaker().append(gameKey.toString()).append(CommonSeps.getInstance().COLON_SEP).appendint(key).toString(), self, self.commonStrings.INIT, JException("Exception", ""))
        }
    }
    

    @discardableResult fileprivate func getSmallestCanvasGameKeyCode(_ canvas: Canvas!) -> Int32 {
        var nextKey: Int32 = 0
        var smallestKey: Int32 = 0
        do {
            var index: Int32 = self.mappedGameKeys.length
            while (jPreDecrement(&index) >= 0) {
            nextKey = canvas.getKeyCode(self.mappedGameKeys[index]!.getId())
            if (nextKey < smallestKey) {
                smallestKey = nextKey
            }
            }
        }
        return smallestKey
    }
    

    open func `init`(_ canvas: Canvas!) {
        do {
            var negativePlatformToGameKeyMapping: JArray<GameKey?>! = JArray<GameKey?>(0, nil)
            var smallestKey: Int32 = self.getSmallestCanvasGameKeyCode(canvas)
            if (smallestKey < 0) {
                smallestKey &-= 1
                if (smallestKey < -256) {
                    smallestKey = -256
                }
                negativePlatformToGameKeyMapping = JArray<GameKey?>(-smallestKey, nil)
                do {
                    var index: Int32 = negativePlatformToGameKeyMapping.length
                    while (jPreDecrement(&index) >= 0) {
                    negativePlatformToGameKeyMapping[index] = self.gameKeyFactory.NONE
                    }
                }
                self.negativePlatformToGameKeyMapping = negativePlatformToGameKeyMapping
            }
            do {
                var index: Int32 = self.mappedGameKeys.length
                while (jPreDecrement(&index) >= 0) {
                self.initGameKey(canvas, self.mappedGameKeys[index])
                }
            }
        } /* catch (Throwable t): a thrown Java exception stops the program */
    }
    

    @discardableResult open func getInstanceForCanvas(_ canvas: Canvas!, _ id: Int32) -> GameKey! {
        if (id >= 0 && id < self.platformToGameKeyMapping.length) {
            return self.platformToGameKeyMapping[id]
        } else if (id < 0 && -id < self.negativePlatformToGameKeyMapping.length) {
            return self.negativePlatformToGameKeyMapping[-id]
        } else {
            return self.gameKeyFactory.NONE
        }
    }
    

    @discardableResult open func getInstance(_ id: Int32) -> GameKey! {
        if (id >= 0 && id < self.platformToGameKeyMapping.length) {
            return self.platformToGameKeyMapping[id]
        } else if (id < 0 && -id < self.negativePlatformToGameKeyMapping.length) {
            return self.negativePlatformToGameKeyMapping[-id]
        } else {
            return self.gameKeyFactory.NONE
        }
    }
}

