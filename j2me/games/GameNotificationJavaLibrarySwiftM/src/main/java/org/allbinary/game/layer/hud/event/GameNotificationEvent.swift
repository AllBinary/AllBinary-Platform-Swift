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
// package org.allbinary.game.layer.hud.event

import J2SEForSwiftLibrary
// import org.allbinary.graphics.color.BasicColor
// import org.allbinary.graphics.color.BasicColorFactory
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.logic.util.event.AllBinaryEventObject

open class GameNotificationEvent: AllBinaryEventObject {
    fileprivate var string: String! = nil
    fileprivate var seconds: Int32! = nil
    fileprivate var basicColor: BasicColor! = nil
    fileprivate var removeable: Bool! = nil

    // Each class has its own field initializers
    private func initFields() {
    self.string = StringUtil.getInstance().EMPTY_STRING
    
    self.basicColor = BasicColorFactory.getInstance().BLACK
    
    }
    

    public init(_ anyType: JObject!, _ string: String!, _ seconds: Int32!, _ basicColor: BasicColor!, _ permanent: Bool!) {
        super.init(anyType)
        self.initFields()
        self.setString(string)
        self.seconds = seconds
        self.setBasicColorP(basicColor)
        self.removeable = permanent
    }
    

    @discardableResult open func getString() -> String! {
        return self.string
    }
    

    @discardableResult open func getSeconds() -> Int32! {
        return self.seconds
    }
    

    @discardableResult open func getBasicColorP() -> BasicColor! {
        return self.basicColor
    }
    

    @discardableResult open func getPermanent() -> Bool! {
        return self.removeable
    }
    

    open func setString(_ string: String!) {
        self.string = string
    }
    

    open func setBasicColorP(_ basicColor: BasicColor!) {
        self.basicColor = basicColor
    }
}

