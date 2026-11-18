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
// package org.allbinary.graphics.draw

import J2SEForSwiftLibrary
// import javax.microedition.lcdui.Font
// import javax.microedition.lcdui.Graphics
// import org.allbinary.AndroidUtil
// import org.allbinary.J2MEUtil
// import org.allbinary.graphics.Anchor
// import org.allbinary.graphics.opengles.OpenGLFeatureUtil
// import org.allbinary.logic.NullUtil
// import org.allbinary.logic.communication.log.PreLogUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.string.StringUtil

open class DrawStringUtil: JObject {
    fileprivate static let instance: DrawStringUtil! = DrawStringUtil()
    fileprivate var EMPTY_STRING: String! = nil
    fileprivate var anchor: Int32 = 0

    private func initFields() {
    self.EMPTY_STRING = StringUtil.getInstance().EMPTY_STRING
    self.anchor = Anchor.TOP_LEFT
    }

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult open class func getInstance() -> DrawStringUtil! {
        return DrawStringUtil.instance
    }
    

    open func drawCenterString(_ graphics: Graphics!, _ string: String!, _ offset: Int32, _ length: Int32, _ x: Int32, _ y: Int32) {
        let width: Int32 = (graphics.getFont().substringWidth(string, offset, length) >> 1)
        do {
            graphics.drawSubstring(string, offset, length, x &- width, y, self.anchor)
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
    

    open func drawCenterStrings(_ graphics: Graphics!, _ stringArray: JArray<String?>!, _ maxWidth: Int32, _ charHeight: Int32, _ x: Int32, _ y: Int32) {
        var extraLines: Int32 = 0
        do {
            var index: Int32 = 0
            while (index < stringArray.length) {
                defer { index &+= 1 }
            let string: String! = stringArray[index]
            if (string != self.EMPTY_STRING) {
                let width: Int32 = graphics.getFont().stringWidth(string)
                var minTotalLines: Int32 = 1
                if (width > maxWidth) {
                    minTotalLines = (width / maxWidth) &+ 1
                }
                let linePortion: Int32 = JString.length(string) / minTotalLines
                var offset: Int32 = 0
                var currentLength: Int32 = linePortion
                let size: Int32 = JString.length(string)
                while (offset < size) {
                    if (offset &+ currentLength > size) {
                        currentLength = size &- offset
                    }
                    if (offset &+ currentLength != size) {
                        while (currentLength > 0 && stringArray[index]!.charAt(offset &+ currentLength) != UInt16((" " as Unicode.Scalar).value)) {
                            currentLength &-= 1
                        }
                        if (currentLength <= 4) {
                            currentLength = linePortion
                        }
                    }
                    self.drawCenterString(graphics, string, offset, currentLength, x, y &+ ((index &+ jPostIncrement(&extraLines)) &* charHeight))
                    offset = offset &+ currentLength
                    currentLength = linePortion
                }
                extraLines &-= 1
            }
            }
        }
    }
}

