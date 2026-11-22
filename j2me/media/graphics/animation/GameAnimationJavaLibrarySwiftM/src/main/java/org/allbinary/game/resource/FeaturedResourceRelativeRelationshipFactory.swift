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
// import org.allbinary.graphics.PointFactory
// import org.allbinary.graphics.RelativeRelationship
// import org.allbinary.layer.AllBinaryLayer
// import org.allbinary.layer.relationship.RelativeLayerRelationship
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListD
// import org.allbinary.util.BasicArrayListUtil

open class FeaturedResourceRelativeRelationshipFactory: FeaturedResourceFactory {
    fileprivate static var INSTANCE: FeaturedResourceRelativeRelationshipFactory! = FeaturedResourceRelativeRelationshipFactory()
    fileprivate var basicArrayListUtil: BasicArrayListUtil! = nil

    // Each class has its own field initializers
    private func initFields() {
    self.basicArrayListUtil = BasicArrayListUtil.getInstance()
    }
    

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult open class func getInstance() -> FeaturedResourceRelativeRelationshipFactory! {
        return FeaturedResourceRelativeRelationshipFactory.INSTANCE
    }
    

    @discardableResult open func getRelativeRelationshipList(_ resource: String!, _ layer: AllBinaryLayer!) -> BasicArrayList! {
        let featureReleaseList: BasicArrayList! = self.getList()
        let size: Int32 = self.getList().size()
        do {
            var index: Int32 = 0
            while (index < size) {
                defer { index &+= 1 }
            let featureInterface: ResourceRelativeRelationshipFactoryInterface! = (featureReleaseList.objectArray[index] as Any as? ResourceRelativeRelationshipFactoryInterface)
            if (featureInterface.isFeature()) {
                let list: BasicArrayList! = featureInterface.getResourceRelativeRelationshipList(resource)
                if (list !== self.basicArrayListUtil.getImmutableInstance()) {
                    return self.duplicate(list, layer)
                }
            }
            }
        }
        jThrow(JException("Exception", StringMaker().append("Not available for current feature selection or Resource: ").append(resource).toString()))
    }
    

    @discardableResult fileprivate func duplicate(_ list: BasicArrayList!, _ layer: AllBinaryLayer!) -> BasicArrayList! {
        let pointFactory: PointFactory! = PointFactory.getInstance()
        let newList: BasicArrayList! = BasicArrayListD()
        let size: Int32 = list.size()
        do {
            var index: Int32 = 0
            while (index < size) {
                defer { index &+= 1 }
            let relativeRelationship: RelativeRelationship! = (list.objectArray[index] as! RelativeRelationship)
            newList.add(RelativeLayerRelationship(layer, pointFactory.createXY(relativeRelationship.getX(), relativeRelationship.getY()), BasicArrayListUtil.getInstance().getImmutableInstance()))
            }
        }
        return newList
    }
}

