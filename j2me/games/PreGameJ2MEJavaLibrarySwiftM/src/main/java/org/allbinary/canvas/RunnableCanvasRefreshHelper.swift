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
// package org.allbinary.canvas

import J2SEForSwiftLibrary
// import org.allbinary.graphics.displayable.MyCanvas

open class RunnableCanvasRefreshHelper: Processor {
    fileprivate var runnableCanvas: MyCanvas! = nil

    // Each class has its own field initializers
    private func initFields() {
    
    }
    

    public init(_ runnableCanvas: MyCanvas!) {
        super.init()
        self.initFields()
        self.runnableCanvas = runnableCanvas
    }
    

    open override func process() {
        self.runnableCanvas.repaint()
    }
}

