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
// package org.allbinary.game.ag.ai

import J2SEForSwiftLibrary
// import javax.microedition.lcdui.Canvas
// import org.allbinary.game.ai.BasicAI
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.java.bool.BooleanFactory
// import org.allbinary.logic.util.visitor.Visitor
// import org.allbinary.string.CommonStrings

open class ThrustAIVisitor: Visitor {
    public var logUtil: LogUtil! = nil
    fileprivate var TRUE: Bool! = nil

    // Each class has its own field initializers
    private func initFields() {
    self.logUtil = LogUtil.getInstance()
    self.TRUE = BooleanFactory.getInstance().TRUE
    }
    

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult open override func visit(_ anyType: JObject!) -> JObject! {
        do {
            let basicAI: BasicAI! = (anyType as! BasicAI)
            basicAI.processKeyAI(Canvas.UP)
        } /* catch (Exception e): a thrown Java exception stops the program */
        return self.TRUE
    }
}

