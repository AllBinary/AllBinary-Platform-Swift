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
// package org.allbinary.game.layer.resources

import J2SEForSwiftLibrary
// import org.allbinary.animation.resource.BaseResourceAnimationInterfaceFactoryInterfaceFactory
// import org.allbinary.image.ImageCache
// import org.allbinary.logic.communication.log.LogUtil

open class OnDemandResources: JObject {
    public static let NULL_ON_DEMAND_RESOURCES: OnDemandResources! = OnDemandResources()
    public var logUtil: LogUtil! = nil

    private func initFields() {
    self.logUtil = LogUtil.getInstance()
    }
    

    public override init() {
        super.init()
        self.initFields()
    }
    

    open func waitFor() {
    }
    

    open func `init`() {
    }
    

    @discardableResult open func initAt(_ imageCache: ImageCache!, _ resourceAnimationInterfaceFactoryInterfaceFactory: BaseResourceAnimationInterfaceFactoryInterfaceFactory!, _ portion: Int32, _ loadingString: String!, _ index: Int32) -> Int32 {
        return 0
    }
}

