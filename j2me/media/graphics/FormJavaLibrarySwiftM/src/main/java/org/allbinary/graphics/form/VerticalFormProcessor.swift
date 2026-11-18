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
// package org.allbinary.graphics.form

import J2SEForSwiftLibrary
// import org.allbinary.canvas.Processor

open class VerticalFormProcessor: Processor {
    fileprivate var scrollCurrentSelectionForm: ScrollCurrentSelectionForm! = nil

    // Each class has its own field initializers
    private func initFields() {
    
    }
    

    public init(_ scrollCurrentSelectionForm: ScrollCurrentSelectionForm!) {
        super.init()
        self.initFields()
        self.scrollCurrentSelectionForm = scrollCurrentSelectionForm
    }
    

    open override func process() {
        self.scrollCurrentSelectionForm.processVerticalForm()
        self.scrollCurrentSelectionForm.processor = Processor.getInstance()
    }
}

