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
// package org.allbinary.canvas

import J2SEForSwiftLibrary
// import org.allbinary.logic.string.StringMaker

//ActualPlatform
open class GameStatisticsFactory: BaseGameStatistics {
    fileprivate static let instance: GameStatisticsFactory! = GameStatisticsFactory()
    fileprivate var stringBuffer: StringMaker! = nil

    // Each class has its own field initializers
    private func initFields() {
    self.stringBuffer = StringMaker()
    }

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult open class func getInstance() -> GameStatisticsFactory! {
        return GameStatisticsFactory.instance
    }
    

    open override func add(_ string: String!) {
        if (self.stringBuffer.length() > 12000) {
            self.stringBuffer.delete(0, self.stringBuffer.length())
            self.stringBuffer.append("Old Stats Cleared")
        }
        self.stringBuffer.append(string)
    }
    

    @discardableResult open override func toString() -> String! {
        return StringMaker().append(super.toString()).append(self.stringBuffer.toString()).toString()
    }
}

