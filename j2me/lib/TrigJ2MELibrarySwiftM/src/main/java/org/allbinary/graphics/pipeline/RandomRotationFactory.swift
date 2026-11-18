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
// package org.allbinary.graphics.pipeline

import J2SEForSwiftLibrary
// import org.allbinary.game.rand.MyRandomFactory
// import org.allbinary.math.AngleFactory
// import org.allbinary.util.BasicArrayList

open class RandomRotationFactory: JObject {
    fileprivate static let instance: RandomRotationFactory! = RandomRotationFactory()
    fileprivate var myRandomFactory: MyRandomFactory! = nil
    fileprivate var angleFactory: AngleFactory! = nil

    private func initFields() {
    self.myRandomFactory = MyRandomFactory.getInstance()
    self.angleFactory = AngleFactory.getInstance()
    }

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult open class func getInstance() -> RandomRotationFactory! {
        return RandomRotationFactory.instance
    }
    

    @discardableResult open func getInstanceList(_ vector: BasicArrayList!, _ howMuch: Int32) -> BasicArrayList! {
        let graphicsPipe: BasicGraphicsPipeline! = BasicGraphicsPipeline(vector)
        graphicsPipe.createMatrix()
        graphicsPipe.rotateToAngle(self.angleFactory.getAt(self.getNextRandomAngle(howMuch)))
        return graphicsPipe.getMatrix()
    }
    

    @discardableResult open func getNextRandomAngle(_ howMuch: Int32) -> Int32 {
        return self.myRandomFactory.getNextInt(howMuch &* 10)
    }
}

