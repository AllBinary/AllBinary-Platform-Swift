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
// package org.allbinary.game.layer.special

import J2SEForSwiftLibrary
// import org.allbinary.game.input.event.GameKeyEvent
// import org.allbinary.graphics.paint.PaintableInterface
// import org.allbinary.layer.AllBinaryLayerManager

public protocol SpecialGameInputInterface: AnyObject, PaintableInterface {
    func up()
    func down()
    func right()
    func left()
    func strafeLeft()
    func strafeRight()
    func fire(_ layerManager: AllBinaryLayerManager!, _ gameKeyEvent: GameKeyEvent!)
    func special1(_ layerManager: AllBinaryLayerManager!, _ gameKeyEvent: GameKeyEvent!)
    func special2(_ layerManager: AllBinaryLayerManager!, _ gameKeyEvent: GameKeyEvent!)
    func special3(_ layerManager: AllBinaryLayerManager!, _ gameKeyEvent: GameKeyEvent!)
    func special4(_ layerManager: AllBinaryLayerManager!, _ gameKeyEvent: GameKeyEvent!)
    func special5(_ layerManager: AllBinaryLayerManager!, _ gameKeyEvent: GameKeyEvent!)
}


