/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2025 AllBinary 
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
// import javax.microedition.lcdui.Command
// import javax.microedition.lcdui.CommandListener
// import org.allbinary.game.layer.AllBinaryGameLayerManager

open class NullAllBinaryGameCanvas: JObject, AllBinaryGameCanvasInterface {
    public static let NULL_ALLBINARY_GAME_CANVAS: NullAllBinaryGameCanvas! = NullAllBinaryGameCanvas()

    public override init() {
        super.init()
    }
    

    @discardableResult open func getLayerManager() -> AllBinaryGameLayerManager! {
        jThrow(JException("RuntimeException", ""))
    }
    

    open func addCommand(_ cmd: Command!) {
        jThrow(JException("RuntimeException", ""))
    }
    

    @discardableResult open func getHeight() -> Int32 {
        jThrow(JException("RuntimeException", ""))
    }
    

    @discardableResult open func getWidth() -> Int32 {
        jThrow(JException("RuntimeException", ""))
    }
    

    open func removeCommand(_ cmd: Command!) {
        jThrow(JException("RuntimeException", ""))
    }
    

    open func setCommandListener(_ l: CommandListener!) {
        jThrow(JException("RuntimeException", ""))
    }
}

