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
// package org.allbinary.media.audio

import J2SEForSwiftLibrary
// import javax.microedition.media.Control
// import org.allbinary.logic.string.StringUtil

open class NoPlayer: BasicPlayer {
    public static let NO_PLAYER: NoPlayer! = NoPlayer()
    

    public override init() {
        super.init()
    }
    

    open override func close() {
    }
    

    @discardableResult open override func getContentType() -> String! {
        return StringUtil.getInstance().NULL_STRING
    }
    

    @discardableResult open override func getControl(_ controlType: String!) -> Control! {
        return NullControl()
    }
    

    @discardableResult open override func getControls() -> JArray<Control?>! {
        return JArray<Control?>(0, nil)
    }
}

