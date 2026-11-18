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
// package org.allbinary.game.displayable.canvas

import J2SEForSwiftLibrary
// import org.allbinary.game.score.displayable.HighScoreTextBox
// import org.allbinary.graphics.canvas.transition.progress.ProgressCanvas
// import org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.string.CommonStrings

open class SaveHighScoreRunnable: JObject, Runnable {
    fileprivate var progressCanvas: ProgressCanvas! = nil
    fileprivate var isLast: Bool = false
    fileprivate var textBox: HighScoreTextBox! = nil

    private func initFields() {
    self.progressCanvas = ProgressCanvasFactory.getInstance()
    
    
    }
    

    public init(_ isLast: Bool, _ textBox: HighScoreTextBox!) {
        super.init()
        self.initFields()
        self.isLast = isLast
        self.textBox = textBox
    }
    

    open func run() {
        let logUtil: LogUtil! = LogUtil.getInstance()
        do {
            if (self.isLast) {
                self.textBox.submit()
            } else {
                self.textBox.saveHighScore()
            }
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
}

