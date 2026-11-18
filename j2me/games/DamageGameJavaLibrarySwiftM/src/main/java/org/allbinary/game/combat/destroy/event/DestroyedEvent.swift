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
// package org.allbinary.game.combat.destroy.event

import J2SEForSwiftLibrary
// import org.allbinary.game.displayable.canvas.AllBinaryGameCanvas
// import org.allbinary.game.displayable.canvas.NullGameCanvas
// import org.allbinary.layer.AllBinaryLayer
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.logic.util.event.AllBinaryEventObject

open class DestroyedEvent: AllBinaryEventObject {
    fileprivate var allBinaryGameCanvas: AllBinaryGameCanvas! = nil
    fileprivate var allBinaryLayerInterface: AllBinaryLayer! = nil

    // Each class has its own field initializers
    private func initFields() {
    self.allBinaryGameCanvas = NullGameCanvas.getInstance()
    self.allBinaryLayerInterface = AllBinaryLayer.NULL_ALLBINARY_LAYER
    }
    

    public init(_ combatGameCanvas: AllBinaryGameCanvas!) {
        super.init(DestroyedEventHandler.getInstance())
        self.initFields()
        self.setAllBinaryGameCanvas(combatGameCanvas)
    }
    

    @discardableResult open func getAllBinaryGameCanvas() -> AllBinaryGameCanvas! {
        return self.allBinaryGameCanvas
    }
    

    @discardableResult open func getLayerInterface() -> AllBinaryLayer! {
        return self.allBinaryLayerInterface
    }
    

    fileprivate func setAllBinaryGameCanvas(_ allBinaryGameCanvas: AllBinaryGameCanvas!) {
        self.allBinaryGameCanvas = allBinaryGameCanvas
    }
    

    open func setLayerInterfaceForCircularStaticPool(_ allBinaryLayerInterface: AllBinaryLayer!) {
        self.allBinaryLayerInterface = allBinaryLayerInterface
    }
    

    @discardableResult open override func toString() -> String! {
        let stringBuffer: StringMaker! = StringMaker()
        stringBuffer.append("DestroyedEvent: \n")
        stringBuffer.append("AllBinaryLayerInterface: ")
        stringBuffer.append(self.allBinaryLayerInterface.toString())
        stringBuffer.append("\nAllBinaryGameCanvas: ")
        stringBuffer.append(StringUtil.getInstance().toString(self.getAllBinaryGameCanvas()))
        return stringBuffer.toString()
    }
}

