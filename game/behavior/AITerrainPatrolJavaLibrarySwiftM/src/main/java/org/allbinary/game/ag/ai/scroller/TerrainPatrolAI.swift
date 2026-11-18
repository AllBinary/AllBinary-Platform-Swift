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
// package org.allbinary.game.ag.ai.scroller

import J2SEForSwiftLibrary
// import org.allbinary.game.input.GameInput
// import org.allbinary.game.terrain.BasicTerrainInfo
// import org.allbinary.game.terrain.TerrainEvent
// import org.allbinary.game.terrain.TerrainEventCircularStaticPool
// import org.allbinary.game.terrain.TerrainEventHandler
// import org.allbinary.game.terrain.TerrainEventListener
// import org.allbinary.layer.AllBinaryLayer
// import org.allbinary.math.Angle
// import org.allbinary.math.AngleFactory
// import org.allbinary.util.ABHashtable
// import org.allbinary.util.BasicArrayList

open class TerrainPatrolAI: PacePatrolAI {
    fileprivate var terrainEventListener: TerrainEventListener! = nil
    fileprivate var DOWN: Angle! = nil
    fileprivate var CLIFF: BasicTerrainInfo! = nil

    // Each class has its own field initializers
    private func initFields() {
    self.terrainEventListener = TerrainEventListener()
    self.DOWN = AngleFactory.getInstance().DOWN
    self.CLIFF = BasicTerrainInfo(self.DOWN)
    }
    

    public override init(_ hashtable: ABHashtable!, _ ownerLayerInterface: AllBinaryLayer!, _ gameInput: GameInput!) {
        super.init(hashtable, ownerLayerInterface, gameInput)
        self.initFields()
        TerrainEventHandler.getInstance(ownerLayerInterface).addListener(self.terrainEventListener)
        self.terrainEventListener.onTerrainEvent(TerrainEventCircularStaticPool.getInstance().getNext(self.CLIFF))
    }
    

    open override func update() {
        super.update()
        self.changeDirectionIfCliffReached()
    }
    

    fileprivate func changeDirectionIfCliffReached() {
        let list: BasicArrayList! = self.terrainEventListener.getList()
        let size: Int32 = list.size()
        do {
            var index: Int32 = 0
            while (index < size) {
                defer { index &+= 1 }
            let terrainEvent: TerrainEvent! = (list.removeAt(index) as! TerrainEvent)
            let basicTerrainInfo: BasicTerrainInfo! = terrainEvent.getBasicTerrainInfo()
            let angle: Angle! = basicTerrainInfo.getAngle()
            if (angle === self.DOWN) {
                self.nextDirection()
                if (!self.isFollowLimitedByTerrain) {
                    self.logUtil.putF("Following Limited", self, "onTerrainEvent")
                    self.isFollowLimitedByTerrain = true
                }
            }
            }
        }
    }
}

