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
// package org.allbinary.game.configuration.feature

import J2SEForSwiftLibrary

open class GameFeatureFactory: JObject {
    fileprivate static let instance: GameFeatureFactory! = GameFeatureFactory()
    public var SOUND: GameFeature! = nil
    public var MUSIC: GameFeature! = nil
    public var SCREEN_SHAKE: Feature! = nil
    public var POST_IMAGE_LOADING_MODIFICATION: Feature! = nil
    public var HEALTH_BARS: GameFeature! = nil
    public var DAMAGE_FLOATERS: GameFeature! = nil
    public var GAME_INPUT_LAYER_PROCESSOR: GameFeature! = nil
    public var ARTIFICIAL_INTELLEGENCE_PROCESSOR: GameFeature! = nil
    public var COLLIDABLE_INTERFACE_LAYER_PROCESSOR: GameFeature! = nil
    public var TICKABLE_LAYER_PROCESSOR: GameFeature! = nil
    public var CHEATING: GameFeature! = nil
    public var DROPPED_ITEMS: GameFeature! = nil
    public var DROPPED_ITEMS_FROM_DEATH: GameFeature! = nil
    public var TEST_DESTROYED_LAYER_PROCESSOR: GameFeature! = nil
    public var COLLISIONS_WITH_SOURCE: GameFeature! = nil
    public var COLLISIONS_FORCED_TWO_DIMENSIONAL: GameFeature! = nil

    private func initFields() {
    self.SOUND = GameFeature("Sound")
    self.MUSIC = GameFeature("Music")
    self.SCREEN_SHAKE = Feature("Screen Shake")
    self.POST_IMAGE_LOADING_MODIFICATION = Feature("Post Image Loading Modification (Scaling, Rotation, or Other)")
    self.HEALTH_BARS = GameFeature("Health Bars")
    self.DAMAGE_FLOATERS = GameFeature("Damage Floaters")
    self.GAME_INPUT_LAYER_PROCESSOR = GameFeature("Game Input Layer Processor")
    self.ARTIFICIAL_INTELLEGENCE_PROCESSOR = GameFeature("Artificial Intelligence Layer Processor")
    self.COLLIDABLE_INTERFACE_LAYER_PROCESSOR = GameFeature("Collidable Interface Layer Processor")
    self.TICKABLE_LAYER_PROCESSOR = GameFeature("Tickable Layer Processor")
    self.CHEATING = GameFeature("Cheating")
    self.DROPPED_ITEMS = GameFeature("Drops")
    self.DROPPED_ITEMS_FROM_DEATH = GameFeature("Drops from Dead")
    self.TEST_DESTROYED_LAYER_PROCESSOR = GameFeature("Destroyed Layer Processor")
    self.COLLISIONS_WITH_SOURCE = GameFeature("Allow Collisions With Source")
    self.COLLISIONS_FORCED_TWO_DIMENSIONAL = GameFeature("Collisions Forced Two Dimensional")
    }
    

    @discardableResult open class func getInstance() -> GameFeatureFactory! {
        return GameFeatureFactory.instance
    }
    

    public override init() {
        super.init()
        self.initFields()
    }
}

