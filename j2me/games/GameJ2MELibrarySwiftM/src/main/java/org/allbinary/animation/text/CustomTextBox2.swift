/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2022 AllBinary 
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
// package org.allbinary.animation.text

import J2SEForSwiftLibrary
// import javax.microedition.lcdui.CommandListener
// import javax.microedition.lcdui.Font
// import org.allbinary.graphics.color.BasicColor
// import org.allbinary.graphics.form.item.CustomTextBox

open class CustomTextBox2: CustomTextBox {
    

    public override init(_ cmdListener: CommandListener!, _ label: String!, _ text: String!, _ maxSize: Int32, _ constraints: Int32, _ font: Font!, _ backgroundBasicColor: BasicColor!, _ foregroundBasicColor: BasicColor!) {
        super.init(cmdListener, label, text, maxSize, constraints, font, backgroundBasicColor, foregroundBasicColor)
        self.getTextFieldItem().setFocus(true)
    }
}

