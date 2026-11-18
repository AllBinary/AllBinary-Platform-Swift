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
// package org.allbinary.game.layer

import J2SEForSwiftLibrary
// import org.allbinary.game.GameInfo
// import org.allbinary.game.input.NullPlayerGameInputComposite
// import org.allbinary.game.input.PlayerGameInputCompositeInterface
// import org.allbinary.graphics.ItemColorFactory
// import org.allbinary.graphics.color.BasicColor
// import org.allbinary.graphics.color.BasicColorFactory
// import org.allbinary.layer.AllBinaryLayerManager
// import org.allbinary.layer.LayerProcessor
// import org.allbinary.logic.NullUtil
// import org.allbinary.logic.math.SmallIntegerSingletonFactory
// import org.allbinary.util.BasicArrayList

open class AllBinaryGameLayerManager: AllBinaryLayerManager {
    fileprivate static var NULL_ALLBINARY_LAYER_MANAGER: JObject! = NullUtil.getInstance().NULL_OBJECT
    public static let ID: Int32! = SmallIntegerSingletonFactory.getInstance().getAt(22)
    fileprivate var backgroundBasicColor: BasicColor! = nil
    fileprivate var foregroundBasicColor: BasicColor! = nil
    fileprivate var gameInfo: GameInfo! = nil
    fileprivate var playerGameInputCompositeInterface: PlayerGameInputCompositeInterface! = nil

    // Each class has its own field initializers
    private func initFields() {
    
    
    
    self.playerGameInputCompositeInterface = NullPlayerGameInputComposite.NULL_PLAYER_GAME_INPUT_COMPOSITE
    }
    

    @discardableResult open class func getNullInstance() -> AllBinaryGameLayerManager! {
        if (AllBinaryGameLayerManager.NULL_ALLBINARY_LAYER_MANAGER === NullUtil.getInstance().NULL_OBJECT) {
            AllBinaryGameLayerManager.NULL_ALLBINARY_LAYER_MANAGER = AllBinaryGameLayerManager(BasicColorFactory.getInstance().BLACK, BasicColorFactory.getInstance().WHITE, GameInfo.NONE)
        }
        return (AllBinaryGameLayerManager.NULL_ALLBINARY_LAYER_MANAGER as! AllBinaryGameLayerManager)
    }
    

    public init(_ backgroundBasicColor: BasicColor!, _ foregroundBasicColor: BasicColor!, _ gameInfo: GameInfo!) {
        super.init()
        self.initFields()
        self.backgroundBasicColor = backgroundBasicColor
        self.foregroundBasicColor = foregroundBasicColor
        let itemColorFactory: ItemColorFactory! = ItemColorFactory.getInstance()
        itemColorFactory.INVERT_PAINT = self.backgroundBasicColor.intValue()
        itemColorFactory.PAINT = self.foregroundBasicColor.intValue()
        self.gameInfo = gameInfo
    }
    

    @discardableResult open func getLayerManager() -> AllBinaryLayerManager! {
        return self
    }
    

    open func `init`() {
    }
    

    @discardableResult open func getBackgroundBasicColor() -> BasicColor! {
        return self.backgroundBasicColor
    }
    

    open func setBackgroundBasicColor(_ backgroundBasicColor: BasicColor!) {
        self.backgroundBasicColor = backgroundBasicColor
        ItemColorFactory.getInstance().INVERT_PAINT = self.backgroundBasicColor.intValue()
    }
    

    @discardableResult open func getForegroundBasicColor() -> BasicColor! {
        return self.foregroundBasicColor
    }
    

    open func setForegroundBasicColor(_ foregroundBasicColor: BasicColor!) {
        self.foregroundBasicColor = foregroundBasicColor
        ItemColorFactory.getInstance().PAINT = self.foregroundBasicColor.intValue()
    }
    

    @discardableResult open func getGameInfo() -> GameInfo! {
        return self.gameInfo
    }
    

    open func setGameInfo(_ gameInfo: GameInfo!) {
        self.gameInfo = gameInfo
    }
    

    open func setLayerProcessorList(_ list: BasicArrayList!) {
        let layerProcessorInterfaceArray: JArray<LayerProcessor?>! = JArray<LayerProcessor?>(list.size(), nil)
        let size: Int32 = layerProcessorInterfaceArray.length
        do {
            var index: Int32 = 0
            while (index < size) {
                defer { index &+= 1 }
            layerProcessorInterfaceArray[index] = (list.objectArray[index] as! LayerProcessor)
            }
        }
        self.setLayerProcessorArray(layerProcessorInterfaceArray)
    }
    

    open func setPlayerGameInputCompositeInterface(_ playerGameInputCompositeInterface: PlayerGameInputCompositeInterface!) {
        self.playerGameInputCompositeInterface = playerGameInputCompositeInterface
    }
    

    @discardableResult open func getPlayerGameInputCompositeInterface() -> PlayerGameInputCompositeInterface! {
        return self.playerGameInputCompositeInterface
    }
}

