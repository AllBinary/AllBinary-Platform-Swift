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
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.string.CommonStrings

open class CellPositionFactory: JObject {
    fileprivate static var SINGLETON: CellPositionFactory! = CellPositionFactory()
    public var logUtil: LogUtil! = nil
    public var NONE: CellPosition! = nil
    fileprivate var cellPositionArray: JArray<JArray<CellPosition?>?>! = nil
    fileprivate var columns: Int32 = 0
    fileprivate var rows: Int32 = 0

    private func initFields() {
    self.logUtil = LogUtil.getInstance()
    self.NONE = CellPosition(-1, -1, -1, -1)
    self.cellPositionArray = JArray<JArray<CellPosition?>?>(0, factory: { JArray<CellPosition?>(0, nil) })
    self.columns = 0
    self.rows = 0
    }
    

    @discardableResult open class func getInstance() -> CellPositionFactory! {
        return CellPositionFactory.SINGLETON
    }
    

    public override init() {
        super.init()
        self.initFields()
    }
    

    open func `init`(_ columns: Int32, _ rows: Int32) {
        let commonStrings: CommonStrings! = CommonStrings.getInstance()
        let stringBuffer: StringMaker! = StringMaker()
        stringBuffer.append("Init: columns: ")
        stringBuffer.appendint(columns)
        stringBuffer.append(" rows: ")
        stringBuffer.appendint(rows)
        self.logUtil.putF(stringBuffer.toString(), self, commonStrings.INIT)
        self.cellPositionArray = JArray<JArray<CellPosition?>?>(columns, factory: { JArray<CellPosition?>(rows, nil) })
        self.columns = columns
        self.rows = rows
        do {
            var column: Int32 = 0
            while (column < columns) {
                defer { column &+= 1 }
            do {
                var row: Int32 = 0
                while (row < rows) {
                    defer { row &+= 1 }
                self.createInstance(column, row)
                }
            }
            }
        }
    }
    

    @discardableResult open func getInstanceColRow(_ i_column: Int32, _ i_row: Int32) -> CellPosition! {
        do {
            return self.cellPositionArray[i_column]![i_row]
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
    

    @discardableResult open func createInstance(_ i_column: Int32, _ i_row: Int32) -> CellPosition! {
        var cellPositionCanBeNull: CellPosition! = self.cellPositionArray[i_column]![i_row]
        if (cellPositionCanBeNull == nil) {
            cellPositionCanBeNull = CellPosition(i_column, i_row, self.columns, self.rows)
            self.cellPositionArray[i_column]![i_row] = cellPositionCanBeNull
        }
        return cellPositionCanBeNull
    }
    

    @discardableResult open func getColumns() -> Int32 {
        return self.columns
    }
    

    @discardableResult open func getRows() -> Int32 {
        return self.rows
    }
}

