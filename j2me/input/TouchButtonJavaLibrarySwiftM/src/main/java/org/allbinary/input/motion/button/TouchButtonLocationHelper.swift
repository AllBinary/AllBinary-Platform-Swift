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
// package org.allbinary.input.motion.button

import J2SEForSwiftLibrary
// import org.allbinary.graphics.displayable.DisplayInfoSingleton
// import org.allbinary.logic.string.StringMaker

open class TouchButtonLocationHelper: JObject {
    fileprivate var totalColumns: Int32 = 0
    fileprivate var totalRows: Int32 = 0
    fileprivate var columnsRemainder: Int32 = 0
    fileprivate var rowsRemainder: Int32 = 0
    fileprivate var columnsRemainderHalf: Int32 = 0
    fileprivate var rowsRemainderHalf: Int32 = 0

    private func initFields() {
    
    
    
    
    
    
    }
    

    public override init() {
        super.init()
        self.initFields()
        let buttonSize: Int32 = CommonButtons.getInstance().STANDARD_BUTTON_SIZE
        let displayInfo: DisplayInfoSingleton! = DisplayInfoSingleton.getInstance()
        self.totalColumns = JMath.round(Float(displayInfo.getLastWidth()) / Float(buttonSize))
        self.totalRows = JMath.round(Float(displayInfo.getLastHeight()) / Float(buttonSize))
        self.columnsRemainder = displayInfo.getLastWidth() % buttonSize
        self.columnsRemainderHalf = (self.columnsRemainder >> 1)
        self.rowsRemainder = displayInfo.getLastHeight() % buttonSize
        self.rowsRemainderHalf = (self.rowsRemainder >> 1)
    }
    

    @discardableResult open func getTotalColumns() -> Int32 {
        return self.totalColumns
    }
    

    @discardableResult open func getTotalRows() -> Int32 {
        return self.totalRows
    }
    

    @discardableResult open func getColumnsRemainder() -> Int32 {
        return self.columnsRemainder
    }
    

    @discardableResult open func getRowsRemainder() -> Int32 {
        return self.rowsRemainder
    }
    

    @discardableResult open func getColumnsRemainderHalf() -> Int32 {
        return self.columnsRemainderHalf
    }
    

    @discardableResult open func getRowsRemainderHalf() -> Int32 {
        return self.rowsRemainderHalf
    }
    

    @discardableResult open override func toString() -> String! {
        let stringBuffer: StringMaker! = StringMaker()
        stringBuffer.append("totalColumns: ")
        stringBuffer.appendint(self.totalColumns)
        stringBuffer.append(" totalRows: ")
        stringBuffer.appendint(self.totalRows)
        stringBuffer.append(" columnsRemainder: ")
        stringBuffer.appendint(self.columnsRemainder)
        stringBuffer.append(" rowsRemainder: ")
        stringBuffer.appendint(self.rowsRemainder)
        stringBuffer.append(" columnsRemainderHalf: ")
        stringBuffer.appendint(self.columnsRemainderHalf)
        stringBuffer.append(" rowsRemainderHalf: ")
        stringBuffer.appendint(self.rowsRemainderHalf)
        return stringBuffer.toString()
    }
}

