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
// package org.allbinary.graphics

import J2SEForSwiftLibrary
// import org.allbinary.graph.V
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.string.CommonSeps

open class CellPosition: V {
    fileprivate var id: Int32 = 0
    fileprivate var column: Int32 = 0
    fileprivate var row: Int32 = 0

    // Each class has its own field initializers
    private func initFields() {
    
    
    
    }
    

    public init(_ column: Int32, _ row: Int32, _ columns: Int32, _ rows: Int32) {
        super.init()
        self.initFields()
        self.column = column
        self.row = row
        self.id = (row &* columns) &+ column
    }
    

    @discardableResult open func getColumn() -> Int32 {
        return self.column
    }
    

    @discardableResult open func getRow() -> Int32 {
        return self.row
    }
    

    @discardableResult open override func toString() -> String! {
        return CellPosition.toStringColRow(self.getColumn(), self.getRow())
    }
    

    @discardableResult open class func toStringCellPosition(_ basicGeographicMapCellPosition: CellPosition!) -> String! {
        return CellPosition.toStringColRow(basicGeographicMapCellPosition.getColumn(), basicGeographicMapCellPosition.getRow())
    }
    

    @discardableResult open class func toStringColRow(_ i_column: Int32, _ i_row: Int32) -> String! {
        let stringBuffer: StringMaker! = StringMaker()
        let commonSeps: CommonSeps! = CommonSeps.getInstance()
        stringBuffer.append(commonSeps.PARENTHESIS_OPEN)
        stringBuffer.appendint(i_column)
        stringBuffer.append(commonSeps.COMMA)
        stringBuffer.appendint(i_row)
        stringBuffer.append(commonSeps.PARENTHESIS_CLOSE)
        return stringBuffer.toString()
    }
    

    @discardableResult open override func getId() -> Int32 {
        return self.id
    }
}

