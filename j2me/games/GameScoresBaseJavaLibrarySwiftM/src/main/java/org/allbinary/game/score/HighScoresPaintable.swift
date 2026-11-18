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
// import javax.microedition.lcdui.Font
// import javax.microedition.lcdui.Graphics
// import org.allbinary.graphics.Anchor
// import org.allbinary.graphics.color.BasicColor
// import org.allbinary.graphics.color.BasicColorFactory
// import org.allbinary.graphics.color.ColorChangeEvent
// import org.allbinary.graphics.color.ColorChangeListener
// import org.allbinary.graphics.displayable.DisplayInfoSingleton
// import org.allbinary.graphics.font.MyFontProcessor
// import org.allbinary.graphics.font.UpdateMyFontInterface
// import org.allbinary.graphics.font.UpdateMyFontProcessor
// import org.allbinary.graphics.paint.Paintable
// import org.allbinary.logic.util.event.AllBinaryEventObject
// import org.allbinary.util.BasicArrayList

open class HighScoresPaintable: Paintable, ColorChangeListener, UpdateMyFontInterface {
    fileprivate var displayInfoSingleton: DisplayInfoSingleton! = nil
    fileprivate var myFontProcessor: MyFontProcessor! = nil
    fileprivate var basicColor: BasicColor! = nil
    fileprivate var highScores: HighScores! = nil
    fileprivate var anchor: Int32 = 0
    fileprivate var charHeight: Int32 = 0

    // Each class has its own field initializers
    private func initFields() {
    self.displayInfoSingleton = DisplayInfoSingleton.getInstance()
    self.myFontProcessor = UpdateMyFontProcessor(self)
    self.basicColor = BasicColorFactory.getInstance().WHITE
    self.highScores = NullHighScoresSingletonFactory.getInstance()
    self.anchor = Anchor.TOP_LEFT
    self.charHeight = 0
    }
    

    public override init() {
        super.init()
        self.initFields()
    }
    

    open func updateMeasurement(_ graphics: Graphics!) {
        let font: Font! = graphics.getFont()
        self.charHeight = font.getHeight()
        self.myFontProcessor = MyFontProcessor.getInstance()
    }
    

    open func onEvent(_ eventObject: AllBinaryEventObject!) {
        let colorChangeEvent: ColorChangeEvent! = (eventObject as! ColorChangeEvent)
        self.basicColor = colorChangeEvent.getBasicColorP()
    }
    

    open override func paint(_ graphics: Graphics!) {
        self.myFontProcessor.process(graphics)
        let width: Int32 = self.displayInfoSingleton.getLastWidth()
        let height: Int32 = self.displayInfoSingleton.getLastHeight()
        graphics.setColor(self.getBasicColorP().intValue())
        let heading: String! = self.highScores.getHeading()
        let topScoresWidth: Int32 = (graphics.getFont().stringWidth(heading) >> 1)
        let charHeight: Int32 = self.charHeight
        graphics.drawString(heading, (width >> 1) &- topScoresWidth, charHeight, self.anchor)
        graphics.drawString(self.highScores.getColumnOneHeading(), 10, charHeight &* 3, self.anchor)
        let columnTwoHeading: String! = self.highScores.getColumnTwoHeading()
        let columnTwoHeadingWidth: Int32 = graphics.getFont().stringWidth(columnTwoHeading)
        graphics.drawString(columnTwoHeading, width &- 10 &- columnTwoHeadingWidth, charHeight &* 3, self.anchor)
        var index: Int32 = 4
        var largestSecondColumnWidth: Int32 = columnTwoHeadingWidth
        let list: BasicArrayList! = self.highScores.getList()
        let size: Int32 = list.size()
        var vectorIndex: Int32 = 0
        var highScore: HighScore! = nil
        while (vectorIndex < size && charHeight &* index < height &- (charHeight &* 2)) {
            highScore = (list.objectArray[vectorIndex] as! HighScore)
            let nextScoreWidth: Int32 = graphics.getFont().stringWidth(highScore.getScoreString())
            if (nextScoreWidth > largestSecondColumnWidth) {
                largestSecondColumnWidth = nextScoreWidth
            }
            vectorIndex &+= 1
        }
        vectorIndex = 0
        while (vectorIndex < size && charHeight &* index < height &- (charHeight &* 2)) {
            highScore = (list.objectArray[vectorIndex] as! HighScore)
            graphics.drawString(highScore.getName(), 10, charHeight &* index, self.anchor)
            graphics.drawString(highScore.getScoreString(), width &- 10 &- largestSecondColumnWidth, charHeight &* index, self.anchor)
            index &+= 1
            vectorIndex &+= 1
        }
    }
    

    open override func setBasicColorP(_ basicColor: BasicColor!) {
        self.basicColor = basicColor
    }
    

    @discardableResult open func getBasicColorP() -> BasicColor! {
        return self.basicColor
    }
    

    open func setHighScores(_ highScores: HighScores!) {
        self.highScores = highScores
    }
}

