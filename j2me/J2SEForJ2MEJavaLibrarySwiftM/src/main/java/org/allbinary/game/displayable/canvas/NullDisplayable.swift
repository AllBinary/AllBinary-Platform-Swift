// Generated Code Do Not Modify
// package org.allbinary.game.displayable.canvas

import J2SEForSwiftLibrary
// import javax.microedition.lcdui.Canvas
// import javax.microedition.lcdui.Graphics
// import org.allbinary.canvas.BaseGameStatistics
// import org.allbinary.canvas.GameStatisticsFactory

//J2SEForJ2ME
open class NullDisplayable: Canvas {
    fileprivate static let SINGLETON: NullDisplayable! = NullDisplayable()
    fileprivate var baseGameStatistics: BaseGameStatistics! = nil

    // Each class has its own field initializers
    private func initFields() {
    self.baseGameStatistics = GameStatisticsFactory.getInstance()
    }
    

    @discardableResult open class func getInstance() -> NullDisplayable! {
        return NullDisplayable.SINGLETON
    }
    

    public override init() {
        super.init()
        self.initFields()
    }
    

    open override func paint(_ graphics: Graphics!) {
        self.baseGameStatistics.nextRefresh()
    }
}

