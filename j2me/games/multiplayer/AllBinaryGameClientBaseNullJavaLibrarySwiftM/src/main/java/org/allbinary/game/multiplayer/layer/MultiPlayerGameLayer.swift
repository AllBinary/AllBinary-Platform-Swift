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
// package org.allbinary.game.multiplayer.layer

import J2SEForSwiftLibrary
// import org.allbinary.game.identification.Group
// import org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer
// import org.allbinary.graphics.Rectangle
// import org.allbinary.view.ViewPositionBase

open class MultiPlayerGameLayer: CollidableDestroyableDamageableLayer, MultiPlayerGameLayerInterface {
    

    public init(_ remoteInfo: RemoteInfo!, _ groupInterface: JArray<Group?>!, _ name: String!, _ layerInfo: Rectangle!, _ viewPosition: ViewPositionBase!) {
        super.init(groupInterface, name, layerInfo, viewPosition)
    }
    

    @discardableResult open func getMultiplayerBehavior() -> MultiplayerBehavior! {
        return MultiplayerBehavior.NULL_MULTIPLAYER_BEHAVIOR
    }
    

    open func setPingInfo(_ show: Bool) {
    }
    

    open func setFiring(_ firing: Int16) {
    }
    

    @discardableResult open func getFiring() -> Int16 {
        return 0
    }
}

