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
// package org.allbinary.game.ag.layer.hud.basic.score

import J2SEForSwiftLibrary
// import javax.microedition.lcdui.Font
// import javax.microedition.lcdui.Graphics
// import org.allbinary.game.ag.layer.hud.basic.NumberStringHud
// import org.allbinary.graphics.color.BasicColor
// import org.allbinary.graphics.color.BasicColorFactory

open class ScoreHudWidget: NumberStringHud {
    

    @discardableResult open class func getInstance(_ maxscore: Int32, _ location: Int32, _ direction: Int32) -> ScoreHudWidget! {
        return ScoreHudWidget(maxscore, location, direction, 2, BasicColorFactory.getInstance().GREY)
    }
    

    public init(_ maxscore: Int32, _ location: Int32, _ direction: Int32, _ bufferZone: Int32, _ basicColor: BasicColor!) {
        super.init("Pts ", maxscore, location, direction, bufferZone, basicColor)
        self.updateMaxHeight = 14
    }
    

    open override func updateMeasurement(_ graphics: Graphics!) {
        let font: Font! = graphics.getFont()
        self.updateMaxWidth = font.getSize() &* 5
        super.updateMeasurement(graphics)
    }
}

