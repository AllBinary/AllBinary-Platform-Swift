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
// import java.io.ByteArrayOutputStream
// import java.io.DataOutputStream
// import org.allbinary.game.GameInfo
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.string.CommonSeps

open class HighScore: JObject {
    fileprivate var id: Int32 = 0
    fileprivate var name: String! = nil
    fileprivate var gameInfo: GameInfo! = nil
    fileprivate var score: Int64 = 0
    fileprivate var scoreString: String! = nil

    private func initFields() {
    
    
    
    
    
    }
    

    public init(_ id: Int32, _ name: String!, _ gameInfo: GameInfo!, _ score: Int64) {
        super.init()
        self.initFields()
        self.id = id
        self.name = name
        self.gameInfo = gameInfo
        self.score = score
        self.scoreString = jstr(self.score)
    }
    

    @discardableResult open func getId() -> Int32 {
        return self.id
    }
    

    @discardableResult open func getName() -> String! {
        return self.name
    }
    

    @discardableResult open func getScore() -> Int64 {
        return self.score
    }
    

    @discardableResult open func getAsBytes() -> JArray<Int8>! {
        let byteArrayOutputStream: ByteArrayOutputStream! = ByteArrayOutputStream()
        let outputStream: DataOutputStream! = DataOutputStream(byteArrayOutputStream)
        outputStream.writeUTF(self.getName())
        outputStream.writeLong(self.getScore())
        return byteArrayOutputStream.toByteArray()
    }
    

    @discardableResult open func getGameInfo() -> GameInfo! {
        return self.gameInfo
    }
    

    @discardableResult open func getScoreString() -> String! {
        return self.scoreString
    }
    

    open func setName(_ name: String!) {
        self.name = name
    }
    

    @discardableResult open override func toString() -> String! {
        let commonSeps: CommonSeps! = CommonSeps.getInstance()
        return StringMaker().append(self.name).append(commonSeps.COLON).appendlong(self.score).append(commonSeps.FORWARD_SLASH).append(self.scoreString).toString()
    }
}

