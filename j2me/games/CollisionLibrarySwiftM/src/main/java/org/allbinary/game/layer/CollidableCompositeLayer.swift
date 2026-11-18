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
// package org.allbinary.game.layer

import J2SEForSwiftLibrary
// import org.allbinary.ai.ArtificialIntelligence
// import org.allbinary.ai.ArtificialIntelligenceInterface
// import org.allbinary.game.collision.CollidableBaseBehavior
// import org.allbinary.game.collision.CollidableBaseBehaviorFactory
// import org.allbinary.game.collision.CollidableInterfaceCompositeInterface
// import org.allbinary.game.collision.CollidableNeverCollideBehaviorFactory
// import org.allbinary.graphics.Rectangle
// import org.allbinary.graphics.RectangleFactory
// import org.allbinary.logic.communication.log.ForcedLogUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.string.CommonSeps
// import org.allbinary.view.ViewPositionBase
// import org.allbinary.logic.NullUtil

open class CollidableCompositeLayer: AllBinaryGameLayer, CollidableInterfaceCompositeInterface {
    fileprivate static var NULL_COLLIDABLE_COMPOSITE_LAYER: JObject! = NullUtil.getInstance().NULL_OBJECT
    fileprivate var collidableInferface: CollidableBaseBehavior! = nil

    // Each class has its own field initializers
    private func initFields() {
    self.collidableInferface = CollidableNeverCollideBehaviorFactory.getInstance().createBehavior()
    }
    

    @discardableResult open class func getNullInstance() -> CollidableCompositeLayer! {
        if (CollidableCompositeLayer.NULL_COLLIDABLE_COMPOSITE_LAYER === NullUtil.getInstance().NULL_OBJECT) {
            CollidableCompositeLayer.NULL_COLLIDABLE_COMPOSITE_LAYER = CollidableCompositeLayer(StringUtil.getInstance().EMPTY_STRING, RectangleFactory.SINGLETON, ViewPositionBase.NULL_VIEW_POSITION, CollidableNeverCollideBehaviorFactory.getInstance())
        }
        return (CollidableCompositeLayer.NULL_COLLIDABLE_COMPOSITE_LAYER as! CollidableCompositeLayer)
    }
    

    public init(_ name: String!, _ layerInfo: Rectangle!, _ viewPosition: ViewPositionBase!, _ collidableBaseBehaviorFactory: CollidableBaseBehaviorFactory!) {
        super.init(name, layerInfo, viewPosition)
        self.initFields()
        if (collidableBaseBehaviorFactory !== CollidableNeverCollideBehaviorFactory.getInstance()) {
            self.setCollidableInferface(collidableBaseBehaviorFactory.createBehavior())
        }
    }
    

    @discardableResult open func getArtificialIntelligenceInterface() -> ArtificialIntelligenceInterface! {
        ForcedLogUtil.log(self.commonStrings.NOT_IMPLEMENTED, self)
        return ArtificialIntelligence.getInstance()
    }
    

    @discardableResult open func getCollidableInferface() -> CollidableBaseBehavior! {
        return self.collidableInferface
    }
    

    open func setCollidableInferface(_ collidableInferface: CollidableBaseBehavior!) {
        self.collidableInferface = collidableInferface
    }
    

    @discardableResult open override func implmentsCollidableInterface() -> Bool {
        return true
    }
    

    open override func toStringAppend(_ stringBuffer: StringMaker!) {
        let commonSeps: CommonSeps! = CommonSeps.getInstance()
        super.toStringAppend(stringBuffer)
        stringBuffer.append(commonSeps.NEW_LINE)
        stringBuffer.append(self.getCollidableInferface().toString())
    }
    

    @discardableResult open override func toString() -> String! {
        let stringBuffer: StringMaker! = StringMaker()
        self.toStringAppend(stringBuffer)
        return stringBuffer.toString()
    }
}

