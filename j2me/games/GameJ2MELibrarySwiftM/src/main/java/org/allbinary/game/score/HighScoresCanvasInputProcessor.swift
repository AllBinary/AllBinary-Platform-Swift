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
// package org.allbinary.game.score

import J2SEForSwiftLibrary
// import javax.microedition.lcdui.Graphics
// import org.allbinary.game.input.PlayerGameInput
// import org.allbinary.game.input.event.GameKeyEvent
// import org.allbinary.game.score.displayable.HighScoresCanvas
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListD

open class HighScoresCanvasInputProcessor: PlayerGameInput {
    fileprivate var highScoresCanvas: HighScoresCanvas! = nil

    // Each class has its own field initializers
    private func initFields() {
    
    }
    

    public init(_ highScoresCanvas: HighScoresCanvas!) {
        super.init(BasicArrayListD(), BasicArrayListD(), -1)
        self.initFields()
        self.highScoresCanvas = highScoresCanvas
    }
    

    open func `open`() {
    }
    

    open func close() {
    }
    

    open override func onPressGameKeyEvent(_ gameKeyEvent: GameKeyEvent!) {
        super.onPressGameKeyEvent(gameKeyEvent)
        self.update()
    }
    

    open override func onDownGameKeyEvent(_ gameKeyEvent: GameKeyEvent!) {
        super.onDownGameKeyEvent(gameKeyEvent)
        self.update()
    }
    

    open override func onUpGameKeyEvent(_ gameKeyEvent: GameKeyEvent!) {
        super.onUpGameKeyEvent(gameKeyEvent)
        self.update()
    }
    

    open func paint(_ graphics: Graphics!) {
    }
    

    @discardableResult open func getHighScoresCanvas() -> HighScoresCanvas! {
        return self.highScoresCanvas
    }
}

