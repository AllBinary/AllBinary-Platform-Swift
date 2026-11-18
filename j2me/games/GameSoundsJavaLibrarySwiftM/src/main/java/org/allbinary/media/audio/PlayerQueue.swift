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
// import org.allbinary.logic.communication.log.PreLogUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.string.CommonStrings
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListD

open class PlayerQueue: JObject {
    fileprivate static let TOTAL: String! = "Sounds In Queue: "
    fileprivate var commonStrings: CommonStrings! = nil
    fileprivate var list: BasicArrayList! = nil
    fileprivate var max: Int32 = 0

    private func initFields() {
    self.commonStrings = CommonStrings.getInstance()
    self.list = BasicArrayListD()
    
    }
    

    public init(_ max: Int32) {
        super.init()
        self.initFields()
        self.max = max
    }
    

    open func add(_ sound: Sound!) {
        do {
            if (!self.list.contains(sound)) {
                self.list.add(sound)
            }
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
    

    @discardableResult open func process() -> Bool {
        var sound: Sound! = NoSound.getInstance()
        do {
            var played: Bool = false
            if (self.list.size() > 0) {
                sound = (self.list.removeAt(0) as! Sound)
                if (sound != nil) {
                    sound.getPlayerP().start()
                }
                while (self.list.size() > self.max) {
                    self.list.removeAt(0)
                }
                played = true
            }
            return played
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
    

    open func clear() {
        self.list.clear()
    }
    

    @discardableResult open override func toString() -> String! {
        return StringMaker().append(PlayerQueue.TOTAL).appendint(self.list.size()).toString()
    }
}

