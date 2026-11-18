// Generated Code Do Not Modify
// package org.allbinary.game.configuration.feature

import J2SEForSwiftLibrary
// import javax.microedition.lcdui.Canvas
// import org.allbinary.game.commands.GameCommandsFactory

open class MultiPlayerGameFeatureFactory: JObject {
    fileprivate static let instance: MultiPlayerGameFeatureFactory! = MultiPlayerGameFeatureFactory()
    

    @discardableResult open class func getInstance() -> MultiPlayerGameFeatureFactory! {
        return MultiPlayerGameFeatureFactory.instance
    }
    

    public override init() {
        super.init()
    }
    

    open func addCommands(_ anyType: JObject!) {
        let gameCommandsFactory: GameCommandsFactory! = GameCommandsFactory.getInstance()
        let canvas: Canvas! = (anyType as! Canvas)
        canvas.addCommand(gameCommandsFactory.QUIT_COMMAND)
    }
}

