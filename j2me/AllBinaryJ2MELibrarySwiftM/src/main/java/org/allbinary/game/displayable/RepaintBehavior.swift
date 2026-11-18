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
// package org.allbinary.game.displayable

import J2SEForSwiftLibrary
// import javax.microedition.lcdui.Canvas
// import org.allbinary.game.configuration.feature.Features
// import org.allbinary.graphics.displayable.DisplayInfoSingleton
// import org.allbinary.graphics.opengles.OpenGLFeatureFactory
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.string.CommonStrings
// import org.allbinary.thread.NullRunnable

open class RepaintBehavior: JObject {
    fileprivate static let instance: RepaintBehavior! = RepaintBehavior()
    public var logUtil: LogUtil! = nil
    fileprivate var NAME: String! = nil

    private func initFields() {
    self.logUtil = LogUtil.getInstance()
    self.NAME = "RepaintBehavior"
    }

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult open class func getInstance() -> RepaintBehavior! {
        return RepaintBehavior.instance
    }
    

    open func repaint(_ canvas: Canvas!) {
    }
    

    open func onChangeRepaint(_ canvas: Canvas!) {
        let features: Features! = Features.getInstance()
        let openGLFeatureFactory: OpenGLFeatureFactory! = OpenGLFeatureFactory.getInstance()
        if (features.isFeature(openGLFeatureFactory.OPENGL)) {
            DisplayInfoSingleton.getInstance().process()
        } else {
            let thread: Thread! = Thread(RepaintRunnable(canvas), self.NAME)
            thread.start()
        }
    }
}

