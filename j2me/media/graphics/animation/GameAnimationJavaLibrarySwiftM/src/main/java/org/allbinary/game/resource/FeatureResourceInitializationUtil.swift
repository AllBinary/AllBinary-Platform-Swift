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
// import org.allbinary.animation.FeaturedAnimationInterfaceFactoryInterfaceFactory
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.string.CommonStrings

open class FeatureResourceInitializationUtil: JObject {
    fileprivate static let instance: FeatureResourceInitializationUtil! = FeatureResourceInitializationUtil()
    public var logUtil: LogUtil! = nil

    private func initFields() {
    self.logUtil = LogUtil.getInstance()
    }

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult open class func getInstance() -> FeatureResourceInitializationUtil! {
        return FeatureResourceInitializationUtil.instance
    }
    

    open func `init`(_ level: Int32) {
        let commonStrings: CommonStrings! = CommonStrings.getInstance()
        self.logUtil.putF(commonStrings.START, self, commonStrings.INIT)
        let featuredResourceFactory: FeaturedResourceFactory! = FeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance()
        featuredResourceFactory.`init`(level)
        FeaturedResourceRelativeRelationshipFactory.getInstance().`init`(level)
    }
}

