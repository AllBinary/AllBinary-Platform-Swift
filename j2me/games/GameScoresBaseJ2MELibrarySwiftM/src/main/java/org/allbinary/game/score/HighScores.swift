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
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.string.CommonLabels
// import org.allbinary.string.CommonSeps
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListD

open class HighScores: JObject, HighScoresInterface {
    fileprivate var orderedHighScoresList: BasicArrayList! = nil
    fileprivate var name: String! = nil
    fileprivate var heading: String! = nil
    fileprivate var columnOneHeading: String! = nil
    fileprivate var columnTwoHeading: String! = nil

    private func initFields() {
    self.orderedHighScoresList = BasicArrayListD()
    
    
    self.columnOneHeading = "Name"
    
    }
    

    public init(_ name: String!, _ heading: String!, _ columnTwoHeading: String!) {
        super.init()
        self.initFields()
        self.name = name
        self.heading = heading
        self.columnTwoHeading = columnTwoHeading
    }
    

    open func setList(_ orderedHighScoresList: BasicArrayList!) {
        self.orderedHighScoresList = orderedHighScoresList
    }
    

    @discardableResult open func getList() -> BasicArrayList! {
        return self.orderedHighScoresList
    }
    

    @discardableResult open func getName() -> String! {
        return self.name
    }
    

    @discardableResult open func getTotal() -> Int32 {
        return self.getList().size()
    }
    

    open func addHighScore(_ newHighScore: HighScore!) {
        self.orderedHighScoresList.add(newHighScore)
    }
    

    @discardableResult open func getHeading() -> String! {
        return self.heading
    }
    

    @discardableResult open func getColumnOneHeading() -> String! {
        return self.columnOneHeading
    }
    

    @discardableResult open func getColumnTwoHeading() -> String! {
        return self.columnTwoHeading
    }
    

    @discardableResult open func isBestScore(_ newHighScore: HighScore!) -> Bool {
        return false
    }
    

    @discardableResult open override func toString() -> String! {
        let stringBuffer: StringMaker! = StringMaker()
        stringBuffer.append("HighScores: ")
        stringBuffer.append(self.heading)
        stringBuffer.append(CommonSeps.getInstance().SPACE)
        stringBuffer.append(CommonLabels.getInstance().TOTAL_LABEL)
        stringBuffer.appendint(self.orderedHighScoresList.size())
        return stringBuffer.toString()
    }
}

