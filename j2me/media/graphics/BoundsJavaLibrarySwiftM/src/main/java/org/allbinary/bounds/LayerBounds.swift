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
// package org.allbinary.bounds

import J2SEForSwiftLibrary
// import org.allbinary.bounds.event.BoundsChangeEvent
// import org.allbinary.bounds.event.BoundsChangeEventListener
// import org.allbinary.graphics.Rectangle
// import org.allbinary.logic.communication.log.ForcedLogUtil
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.util.event.AllBinaryEventObject
// import org.allbinary.logic.util.event.EventStrings

open class LayerBounds: JObject, BoundsChangeEventListener {
    public var logUtil: LogUtil! = nil
    public var rectangle: Rectangle! = nil

    private func initFields() {
    self.logUtil = LogUtil.getInstance()
    
    }
    

    public init(_ rectangle: Rectangle!) {
        super.init()
        self.initFields()
        self.rectangle = rectangle
    }
    

    @discardableResult open func getRectangleP() -> Rectangle! {
        return self.rectangle
    }
    

    open func visit(_ boundsVisitorInterface: BoundsVisitorInterface!) {
    }
    

    open func onEvent(_ eventObject: AllBinaryEventObject!) {
        ForcedLogUtil.log(EventStrings.getInstance().PERFORMANCE_MESSAGE, self)
    }
    

    open func onBoundsChangeEvent(_ boundsChangeEvent: BoundsChangeEvent!) {
        self.rectangle = boundsChangeEvent.getRectangle()
    }
}

