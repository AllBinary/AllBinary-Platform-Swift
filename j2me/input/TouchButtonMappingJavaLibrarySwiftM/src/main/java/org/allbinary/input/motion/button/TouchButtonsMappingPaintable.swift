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
// import javax.microedition.lcdui.Graphics
// import org.allbinary.graphics.CellPositionFactory
// import org.allbinary.graphics.color.BasicColor
// import org.allbinary.graphics.paint.Paintable
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.string.CommonStrings

open class TouchButtonsMappingPaintable: Paintable {
    public var logUtil: LogUtil! = nil
    public var foregroundColor: Int32 = 0
    fileprivate var paintableTable: JArray<JArray<Paintable?>?>! = nil
    fileprivate var touchButtonLocationHelper: TouchButtonLocationHelper! = nil

    // Each class has its own field initializers
    private func initFields() {
    self.logUtil = LogUtil.getInstance()
    
    self.paintableTable = JArray<JArray<Paintable?>?>(0, factory: { JArray<Paintable?>(0, nil) })
    self.touchButtonLocationHelper = TouchButtonLocationHelper()
    }
    

    public init(_ basicColor: BasicColor!) {
        super.init()
        self.initFields()
        self.foregroundColor = basicColor.intValue()
        self.`init`()
    }
    

    fileprivate func `init`() {
        do {
            self.paintableTable = self.createPaintableTable()
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
    

    @discardableResult fileprivate func createPaintableTable() -> JArray<JArray<Paintable?>?>! {
        let totalColumns: Int32 = self.touchButtonLocationHelper.getTotalColumns()
        let totalRows: Int32 = self.touchButtonLocationHelper.getTotalRows()
        let paintableTable: JArray<JArray<Paintable?>?>! = JArray<JArray<Paintable?>?>(totalColumns, factory: { JArray<Paintable?>(totalRows, nil) })
        let cellPositionFactory: CellPositionFactory! = CellPositionFactory.getInstance()
        let commonButtons: CommonButtons! = CommonButtons.getInstance()
        do {
            var index: Int32 = totalColumns &- 1
            while (index >= 0) {
                defer { index &-= 1 }
            do {
                var rowIndex: Int32 = totalRows &- 1
                while (rowIndex >= 0) {
                    defer { rowIndex &-= 1 }
                self.paintableTable[index]![rowIndex] = TouchButton.createButton(BasicTouchInputFactory.getInstance().NONE, TouchButtonBlankResource.getInstance(), commonButtons.NORMAL_BUTTON, cellPositionFactory.getInstanceColRow(index, rowIndex), self.touchButtonLocationHelper.getColumnsRemainderHalf(), self.touchButtonLocationHelper.getRowsRemainderHalf())
                }
            }
            }
        }
        return paintableTable
    }
    

    open override func paint(_ graphics: Graphics!) {
        let totalColumns: Int32 = self.touchButtonLocationHelper.getTotalColumns()
        let totalRows: Int32 = self.touchButtonLocationHelper.getTotalRows()
        do {
            var index: Int32 = totalColumns &- 1
            while (index >= 0) {
                defer { index &-= 1 }
            do {
                var rowIndex: Int32 = totalRows &- 1
                while (rowIndex >= 0) {
                    defer { rowIndex &-= 1 }
                self.paintableTable[index]![rowIndex]!.paint(graphics)
                }
            }
            }
        }
    }
}

