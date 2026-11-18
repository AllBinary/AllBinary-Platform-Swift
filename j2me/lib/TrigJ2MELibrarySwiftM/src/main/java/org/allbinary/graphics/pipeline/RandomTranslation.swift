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
// import org.allbinary.util.BasicArrayList

open class RandomTranslation: JObject {

    public override init() {
        super.init()
    }
    

    @discardableResult open class func getInstance(_ vector: BasicArrayList!, _ howMuch: Int32) -> BasicArrayList! {
        let myRandomFactory: MyRandomFactory! = MyRandomFactory.getInstance()
        let x: Int32 = -myRandomFactory.getNextInt(howMuch)
        let y: Int32 = myRandomFactory.getNextInt(howMuch)
        let graphicsPipe: BasicGraphicsPipeline! = BasicGraphicsPipeline(vector)
        graphicsPipe.createMatrix()
        graphicsPipe.translate(x, y)
        return graphicsPipe.getMatrix()
    }
}

