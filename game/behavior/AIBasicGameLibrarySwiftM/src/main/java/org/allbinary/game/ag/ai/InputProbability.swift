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
// import org.allbinary.logic.StdUtil
// import org.allbinary.logic.math.SmallIntegerSingletonFactory
// import org.allbinary.time.TimeDelayHelper
// import org.allbinary.util.ABHashtable

open class InputProbability: JObject {
    public static var INPUT_PROBABILITY: Int32! = SmallIntegerSingletonFactory.getInstance().getAt(0)
    fileprivate var likelyhoodIntegerArray: JArray<JArray<Int32?>?>! = nil
    fileprivate var repeatLikelyhoodIntegerArray: JArray<Int32?>! = nil
    fileprivate var max: Int32 = 0
    fileprivate var timeDelayHelper: TimeDelayHelper! = nil

    private func initFields() {
    
    
    
    
    }
    

    public init(_ likelyhoodIntegerArray: JArray<JArray<Int32?>?>!, _ repeatLikelyhoodIntegerArray: JArray<Int32?>!, _ max: Int32, _ timeDelayHelper: TimeDelayHelper!) {
        super.init()
        self.initFields()
        self.likelyhoodIntegerArray = likelyhoodIntegerArray
        self.repeatLikelyhoodIntegerArray = repeatLikelyhoodIntegerArray
        self.max = max
        self.timeDelayHelper = timeDelayHelper
    }
    

    @discardableResult open func getLikelyhoodIntegerArray() -> JArray<JArray<Int32?>?>! {
        return self.likelyhoodIntegerArray
    }
    

    @discardableResult open func getRepeatLikelyhoodIntegerArray() -> JArray<Int32?>! {
        return self.repeatLikelyhoodIntegerArray
    }
    

    @discardableResult open func getMax() -> Int32 {
        return self.max
    }
    

    @discardableResult open func getTimeDelayHelper() -> TimeDelayHelper! {
        return self.timeDelayHelper
    }
    

    @discardableResult open func toHashtable() -> ABHashtable! {
        let hashtable: ABHashtable! = StdUtil.getInstance().createHashtable()
        hashtable.put(jBoxValue(InputProbability.INPUT_PROBABILITY), self)
        return hashtable
    }
}

