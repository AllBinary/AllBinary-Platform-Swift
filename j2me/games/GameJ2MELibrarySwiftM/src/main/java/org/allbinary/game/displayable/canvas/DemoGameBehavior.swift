/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2022 AllBinary 
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
// import org.allbinary.game.GameTypeFactory
// import org.allbinary.graphics.paint.NullPaintable
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.system.security.licensing.AbeClientInformationInterface
// import org.allbinary.string.CommonStrings

open class DemoGameBehavior: JObject {
    fileprivate static let instance: DemoGameBehavior! = DemoGameBehavior()
    public var logUtil: LogUtil! = nil

    private func initFields() {
    self.logUtil = LogUtil.getInstance()
    }

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult open class func getInstance() -> DemoGameBehavior! {
        return DemoGameBehavior.instance
    }
    

    open func `init`() {
    }
    

    open func pause(_ allBinaryGameCanvas: AllBinaryGameCanvas!) {
    }
    

    open func unPause(_ allBinaryGameCanvas: AllBinaryGameCanvas!) {
    }
    

    open func updateTouch(_ allBinaryGameCanvas: AllBinaryGameCanvas!) {
    }
    

    open func updateScreenButtonPaintable(_ allBinaryGameCanvas: AllBinaryGameCanvas!) {
        allBinaryGameCanvas.setTouchPaintableP(NullPaintable.getInstance())
    }
    

    open func setGameState(_ allBinaryGameCanvas: AllBinaryGameCanvas!) {
    }
    

    open func removeAllGameKeyInputListeners(_ allBinaryGameCanvas: AllBinaryGameCanvas!) {
    }
    

    open func updateEndGameProcessor(_ allBinaryGameCanvas: AllBinaryGameCanvas!) {
    }
    

    open func buildGame(_ allBinaryGameCanvas: AllBinaryGameCanvas!) {
    }
    

    open func run(_ allBinaryGameCanvas: AllBinaryGameCanvas!) {
        let commonStrings: CommonStrings! = CommonStrings.getInstance()
        self.logUtil.putF(GameTypeFactory.getInstance().BOT.toString(), self, commonStrings.RUN)
    }
    

    open func setHighScore(_ abeClientInformation: AbeClientInformationInterface!, _ allBinaryGameCanvas: AllBinaryGameCanvas!, _ name: String!, _ score: Int64, _ autoSubmit: Bool, _ isLast: Bool) {
    }
}

