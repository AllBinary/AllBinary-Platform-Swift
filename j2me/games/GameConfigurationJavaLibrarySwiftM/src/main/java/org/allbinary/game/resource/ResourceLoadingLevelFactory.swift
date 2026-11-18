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
// package org.allbinary.game.resource

import J2SEForSwiftLibrary

open class ResourceLoadingLevelFactory: JObject {
    fileprivate static let instance: ResourceLoadingLevelFactory! = ResourceLoadingLevelFactory()
    public var LOAD_EARLY: ResourceLoadingLevel! = nil
    public var LOAD_TOUCH: ResourceLoadingLevel! = nil
    public var LOAD_GAME: ResourceLoadingLevel! = nil
    public var LEVEL: ResourceLoadingLevel! = nil
    public var MAX_LEVEL: ResourceLoadingLevel! = nil
    public var LOAD_ALL: ResourceLoadingLevel! = nil
    fileprivate var RESOURCE_LOADING_LEVEL_ARRAY: JArray<ResourceLoadingLevel?>! = nil

    private func initFields() {
    self.LOAD_EARLY = ResourceLoadingLevel("Load Early", Integer.MAX_VALUE)
    self.LOAD_TOUCH = ResourceLoadingLevel("Load Touch", Integer.MAX_VALUE &- 1)
    self.LOAD_GAME = ResourceLoadingLevel("Load Game", Integer.MAX_VALUE &- 2)
    self.LEVEL = ResourceLoadingLevel("Level", Integer.MAX_VALUE &- 99)
    self.MAX_LEVEL = ResourceLoadingLevel("Max Level", Integer.MAX_VALUE &- 100)
    self.LOAD_ALL = ResourceLoadingLevel("Load All", -1)
    self.RESOURCE_LOADING_LEVEL_ARRAY = JArray<ResourceLoadingLevel?>([self.LOAD_ALL, self.MAX_LEVEL, self.LEVEL, self.LOAD_GAME, self.LOAD_TOUCH, self.LOAD_EARLY])
    }

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult open class func getInstance() -> ResourceLoadingLevelFactory! {
        return ResourceLoadingLevelFactory.instance
    }
    

    @discardableResult open func getLevelString(_ level: Int32) -> String! {
        do {
            var index: Int32 = 0
            while (index < self.RESOURCE_LOADING_LEVEL_ARRAY.length) {
                defer { index &+= 1 }
            if (level == self.RESOURCE_LOADING_LEVEL_ARRAY[index]!.getLevel()) {
                return self.RESOURCE_LOADING_LEVEL_ARRAY[index]!.getName()
            }
            }
        }
        return jstr(level)
    }
}

