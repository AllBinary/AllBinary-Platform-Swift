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
// import javax.microedition.lcdui.Command
// import org.allbinary.J2MEUtil
// import org.allbinary.logic.communication.log.LogUtil

open class HighScoreCommandsBaseFactory: JObject {
    public var logUtil: LogUtil! = nil
    public var HIGH_SCORE_COMMANDS: JArray<Command?>! = nil

    private func initFields() {
    self.logUtil = LogUtil.getInstance()
    
    }
    

    public init(_ HIGH_SCORE_COMMANDS: JArray<Command?>!) {
        super.init()
        self.initFields()
        self.HIGH_SCORE_COMMANDS = HIGH_SCORE_COMMANDS
    }
    

    @discardableResult open func isHighScoreCommand(_ command: Command!) -> Bool {
        do {
            var index: Int32 = self.HIGH_SCORE_COMMANDS.length &- 1
            while (index >= 0) {
                defer { index &-= 1 }
            if (command === self.HIGH_SCORE_COMMANDS[index]) {
                return true
            }
            }
        }
        return false
    }
    

    @discardableResult open func getIndex(_ command: Command!) -> Int32 {
        do {
            var index: Int32 = self.HIGH_SCORE_COMMANDS.length &- 1
            while (index >= 0) {
                defer { index &-= 1 }
            if (command === self.HIGH_SCORE_COMMANDS[index]) {
                return index
            }
            }
        }
        jThrow(JException("Exception", "No Such Command"))
    }
}

