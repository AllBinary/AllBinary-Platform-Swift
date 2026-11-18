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
// import org.allbinary.graphics.CellPosition
// import org.allbinary.graphics.CellPositionFactory
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.string.CommonStrings

open class BasicTouchButtonCellPositionFactory: JObject {
    public var logUtil: LogUtil! = nil
    fileprivate var commonStrings: CommonStrings! = nil
    public var TOP_RIGHT: CellPosition! = nil
    public var TOP_LEFT: CellPosition! = nil
    public var SECOND_FROM_TOP_LEFT: CellPosition! = nil
    public var SECOND_FROM_TOP_RIGHT: CellPosition! = nil
    public var TOP_SECOND_FROM_LEFT: CellPosition! = nil
    public var TOP_SECOND_FROM_RIGHT: CellPosition! = nil
    public var BOTTOM_RIGHT: CellPosition! = nil
    public var BOTTOM_SECOND_FROM_RIGHT: CellPosition! = nil
    public var SECOND_FROM_BOTTOM_RIGHT: CellPosition! = nil
    public var THIRD_FROM_BOTTOM_RIGHT: CellPosition! = nil
    public var FOURTH_FROM_BOTTOM_RIGHT: CellPosition! = nil
    public var SECOND_FROM_BOTTOM_SECOND_FROM_RIGHT: CellPosition! = nil
    public var SECOND_FROM_BOTTOM_THIRD_FROM_RIGHT: CellPosition! = nil
    public var SECOND_FROM_BOTTOM_FOURTH_FROM_RIGHT: CellPosition! = nil
    public var BOTTOM_THIRD_FROM_RIGHT: CellPosition! = nil
    public var BOTTOM_FOURTH_FROM_RIGHT: CellPosition! = nil
    public var BOTTOM_SECOND_FROM_LEFT: CellPosition! = nil
    public var SECOND_FROM_BOTTOM_LEFT: CellPosition! = nil
    public var THIRD_FROM_BOTTOM_LEFT: CellPosition! = nil
    public var BOTTOM_LEFT: CellPosition! = nil
    public var SECOND_FROM_BOTTOM_SECOND_FROM_LEFT: CellPosition! = nil

    private func initFields() {
    self.logUtil = LogUtil.getInstance()
    self.commonStrings = CommonStrings.getInstance()
    
    
    self.SECOND_FROM_TOP_LEFT = nil
    self.SECOND_FROM_TOP_RIGHT = nil
    self.TOP_SECOND_FROM_LEFT = nil
    self.TOP_SECOND_FROM_RIGHT = nil
    
    
    
    self.THIRD_FROM_BOTTOM_RIGHT = nil
    self.FOURTH_FROM_BOTTOM_RIGHT = nil
    
    self.SECOND_FROM_BOTTOM_THIRD_FROM_RIGHT = nil
    self.SECOND_FROM_BOTTOM_FOURTH_FROM_RIGHT = nil
    self.BOTTOM_THIRD_FROM_RIGHT = nil
    self.BOTTOM_FOURTH_FROM_RIGHT = nil
    
    
    self.THIRD_FROM_BOTTOM_LEFT = nil
    
    
    }
    

    public override init() {
        super.init()
        self.initFields()
        self.logUtil.putF(self.commonStrings.START, self, self.commonStrings.CONSTRUCTOR)
        let touchButtonLocationHelper: TouchButtonLocationHelper! = TouchButtonLocationHelper()
        let cellPositionFactory: CellPositionFactory! = CellPositionFactory.getInstance()
        cellPositionFactory.`init`(touchButtonLocationHelper.getTotalColumns(), touchButtonLocationHelper.getTotalRows())
        self.TOP_LEFT = cellPositionFactory.getInstanceColRow(0, 0)
        self.TOP_RIGHT = cellPositionFactory.getInstanceColRow(touchButtonLocationHelper.getTotalColumns() &- 1, 0)
        self.BOTTOM_LEFT = cellPositionFactory.getInstanceColRow(0, touchButtonLocationHelper.getTotalRows() &- 1)
        self.BOTTOM_RIGHT = cellPositionFactory.getInstanceColRow(touchButtonLocationHelper.getTotalColumns() &- 1, touchButtonLocationHelper.getTotalRows() &- 1)
        self.BOTTOM_SECOND_FROM_RIGHT = cellPositionFactory.getInstanceColRow(touchButtonLocationHelper.getTotalColumns() &- 2, touchButtonLocationHelper.getTotalRows() &- 1)
        self.SECOND_FROM_BOTTOM_RIGHT = cellPositionFactory.getInstanceColRow(touchButtonLocationHelper.getTotalColumns() &- 1, touchButtonLocationHelper.getTotalRows() &- 2)
        self.SECOND_FROM_BOTTOM_SECOND_FROM_RIGHT = cellPositionFactory.getInstanceColRow(touchButtonLocationHelper.getTotalColumns() &- 2, touchButtonLocationHelper.getTotalRows() &- 2)
        self.BOTTOM_SECOND_FROM_LEFT = cellPositionFactory.getInstanceColRow(1, touchButtonLocationHelper.getTotalRows() &- 1)
        self.SECOND_FROM_BOTTOM_LEFT = cellPositionFactory.getInstanceColRow(0, touchButtonLocationHelper.getTotalRows() &- 2)
        self.SECOND_FROM_BOTTOM_SECOND_FROM_LEFT = cellPositionFactory.getInstanceColRow(1, touchButtonLocationHelper.getTotalRows() &- 2)
        if (touchButtonLocationHelper.getTotalRows() > 2) {
            self.SECOND_FROM_TOP_LEFT = cellPositionFactory.getInstanceColRow(0, 1)
            self.SECOND_FROM_TOP_RIGHT = cellPositionFactory.getInstanceColRow(touchButtonLocationHelper.getTotalColumns() &- 1, 1)
        } else {
            self.SECOND_FROM_TOP_LEFT = cellPositionFactory.NONE
            self.SECOND_FROM_TOP_RIGHT = cellPositionFactory.NONE
        }
        if (touchButtonLocationHelper.getTotalRows() >= 4) {
            self.THIRD_FROM_BOTTOM_RIGHT = cellPositionFactory.getInstanceColRow(touchButtonLocationHelper.getTotalColumns() &- 1, touchButtonLocationHelper.getTotalRows() &- 3)
            self.FOURTH_FROM_BOTTOM_RIGHT = cellPositionFactory.getInstanceColRow(touchButtonLocationHelper.getTotalColumns() &- 1, touchButtonLocationHelper.getTotalRows() &- 4)
            self.THIRD_FROM_BOTTOM_LEFT = cellPositionFactory.getInstanceColRow(0, touchButtonLocationHelper.getTotalRows() &- 3)
        } else {
            self.THIRD_FROM_BOTTOM_RIGHT = cellPositionFactory.NONE
            self.FOURTH_FROM_BOTTOM_RIGHT = cellPositionFactory.NONE
            self.THIRD_FROM_BOTTOM_LEFT = cellPositionFactory.NONE
        }
        if (touchButtonLocationHelper.getTotalColumns() >= 4) {
            self.SECOND_FROM_BOTTOM_THIRD_FROM_RIGHT = cellPositionFactory.getInstanceColRow(touchButtonLocationHelper.getTotalColumns() &- 3, touchButtonLocationHelper.getTotalRows() &- 2)
            self.SECOND_FROM_BOTTOM_FOURTH_FROM_RIGHT = cellPositionFactory.getInstanceColRow(touchButtonLocationHelper.getTotalColumns() &- 4, touchButtonLocationHelper.getTotalRows() &- 2)
            self.BOTTOM_THIRD_FROM_RIGHT = cellPositionFactory.getInstanceColRow(touchButtonLocationHelper.getTotalColumns() &- 3, touchButtonLocationHelper.getTotalRows() &- 1)
            self.BOTTOM_FOURTH_FROM_RIGHT = cellPositionFactory.getInstanceColRow(touchButtonLocationHelper.getTotalColumns() &- 4, touchButtonLocationHelper.getTotalRows() &- 1)
            self.TOP_SECOND_FROM_LEFT = cellPositionFactory.getInstanceColRow(1, 0)
            self.TOP_SECOND_FROM_RIGHT = cellPositionFactory.getInstanceColRow(touchButtonLocationHelper.getTotalColumns() &- 2, 0)
        } else {
            self.SECOND_FROM_BOTTOM_THIRD_FROM_RIGHT = cellPositionFactory.NONE
            self.SECOND_FROM_BOTTOM_FOURTH_FROM_RIGHT = cellPositionFactory.NONE
            self.BOTTOM_THIRD_FROM_RIGHT = cellPositionFactory.NONE
            self.BOTTOM_FOURTH_FROM_RIGHT = cellPositionFactory.NONE
            self.TOP_SECOND_FROM_LEFT = cellPositionFactory.NONE
            self.TOP_SECOND_FROM_RIGHT = cellPositionFactory.NONE
        }
    }
}

