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
// package org.allbinary.graphics.form.item

import J2SEForSwiftLibrary
// import javax.microedition.lcdui.Command
// import javax.microedition.lcdui.ImageItem
// import org.allbinary.graphics.color.BasicColor
// import org.allbinary.graphics.displayable.DisplayInfoSingleton
// import org.allbinary.graphics.form.ScreenInfo
// import org.allbinary.logic.VectorUtil
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.logic.util.visitor.Visitor
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListD

open class CommandTextItemArrayFactory: JObject {
    fileprivate var list: BasicArrayList! = nil
    fileprivate var visitorInterface: Visitor! = nil

    private func initFields() {
    self.list = BasicArrayListD()
    
    }
    

    public init(_ visitorInterface: Visitor!) {
        super.init()
        self.initFields()
        self.visitorInterface = visitorInterface
    }
    

    @discardableResult public func getInstance(_ vector: JObject!, _ backgroundBasicColor: BasicColor!, _ foregroundBasicColor: BasicColor!) -> JArray<ABCustomItem?>! {
        let vectorUtil: VectorUtil! = VectorUtil.getInstance()
        let size: Int32 = vectorUtil.getSize(vector)
        self.list.clear()
        var textItem: CommandTextItem! = nil
        var priorityLimit: Int32 = 7
        let displayInfo: DisplayInfoSingleton! = DisplayInfoSingleton.getInstance()
        let isLargeEnoughDisplayForBigMenu: Bool = (displayInfo.isPortrait() && displayInfo.getLastHeight() >= ScreenInfo.getInstance().MEDIUM_WIDTH) || (!displayInfo.isPortrait() && displayInfo.getLastWidth() >= ScreenInfo.getInstance().MEDIUM_WIDTH)
        if (!isLargeEnoughDisplayForBigMenu && size > 3) {
            priorityLimit = 3
        }
        var command: Command! = nil
        do {
            var index: Int32 = 0
            while (index < size) {
                defer { index &+= 1 }
            command = (vectorUtil.elementAt(vector, index) as! Command)
            if (command.getPriority() < priorityLimit) {
                let aBoolean: Bool! = jUnboxValue(self.visitorInterface.visit(command), Bool.self)
                if (aBoolean.booleanValue()) {
                    textItem = CommandTextItem(command, ImageItem.LAYOUT_DEFAULT, StringUtil.getInstance().EMPTY_STRING, backgroundBasicColor, foregroundBasicColor)
                    self.list.add(textItem)
                }
            }
            }
        }
        let textItemArray: JArray<ABCustomItem?>! = JArray<ABCustomItem?>(self.list.size(), nil)
        let size2: Int32 = textItemArray.length
        do {
            var index: Int32 = 0
            while (index < size2) {
                defer { index &+= 1 }
            textItemArray[index] = (self.list.objectArray[index] as! ABCustomItem)
            }
        }
        return textItemArray
    }
}

