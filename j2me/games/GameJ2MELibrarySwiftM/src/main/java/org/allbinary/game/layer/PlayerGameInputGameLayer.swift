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
// import javax.microedition.lcdui.Graphics
// import org.allbinary.game.input.PlayerGameInput
// import org.allbinary.game.input.PlayerGameInputCompositeInterface
// import org.allbinary.graphics.PointFactory
// import org.allbinary.graphics.Rectangle
// import org.allbinary.graphics.displayable.CanvasStrings
// import org.allbinary.layer.AllBinaryLayerManager
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.util.BasicArrayListD
// import org.allbinary.view.StaticViewPosition

open class PlayerGameInputGameLayer: AllBinaryGameLayer, PlayerGameInputCompositeInterface {
    fileprivate var playerGameInput: PlayerGameInput! = nil

    // Each class has its own field initializers
    private func initFields() {
    
    }
    

    public init(_ playerInputId: Int32) {
        super.init(StringUtil.getInstance().EMPTY_STRING, Rectangle(PointFactory.getInstance().ZERO_ZERO, 0, 0), StaticViewPosition(0, 0, 0))
        self.initFields()
        self.playerGameInput = PlayerGameInput(self.getGameKeyEventList(), BasicArrayListD(), playerInputId)
        let canvasStrings: CanvasStrings! = CanvasStrings.getInstance()
        self.logUtil.putF("Danger Danger Danger: Should Not Be Called Except For Testing Input", self, canvasStrings.PAINT)
    }
    

    @discardableResult open func getPlayerGameInput() -> PlayerGameInput! {
        return self.playerGameInput
    }
    

    open func initInputProcessors() {
    }
    

    open override func processInput(_ myManager: AllBinaryLayerManager!) {
    }
    

    open override func paint(_ graphics: Graphics!) {
    }
}

