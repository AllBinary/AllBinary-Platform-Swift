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
// import org.allbinary.graphics.color.BasicColor
// import org.allbinary.graphics.color.BasicColorSetUtil
// import org.allbinary.graphics.paint.Paintable
// import org.allbinary.util.BasicArrayList

open class TouchButtonsPaintable: Paintable {
    public var foregroundBasicColor: BasicColor! = nil
    public var foregroundColor: Int32 = 0
    public var basicSetColorUtil: BasicColorSetUtil! = nil
    fileprivate var touchButtonFactory: TouchButtonFactory! = nil

    // Each class has its own field initializers
    private func initFields() {
    
    
    self.basicSetColorUtil = BasicColorSetUtil.getInstance()
    self.touchButtonFactory = TouchButtonFactory.getInstance()
    }
    

    public init(_ basicColor: BasicColor!) {
        super.init()
        self.initFields()
        self.foregroundBasicColor = basicColor
        self.foregroundColor = basicColor.intValue()
    }
    

    open override func paint(_ graphics: Graphics!) {
        let list: BasicArrayList! = self.touchButtonFactory.getList()
        self.basicSetColorUtil.setBasicColorP3(graphics, self.foregroundBasicColor, self.foregroundColor)
        var touchButton: TouchButton! = nil
        do {
            var index: Int32 = list.size()
            while (jPreDecrement(&index) >= 0) {
            touchButton = (list.objectArray[index] as! TouchButton)
            touchButton.paint(graphics)
            }
        }
        do {
            var index: Int32 = list.size()
            while (jPreDecrement(&index) >= 0) {
            touchButton = (list.objectArray[index] as! TouchButton)
            touchButton.paintHint(graphics)
            }
        }
    }
}

