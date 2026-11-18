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
// package org.allbinary.game.displayable

import J2SEForSwiftLibrary
// import org.allbinary.graphics.displayable.event.DisplayChangeEventHandler
// import org.allbinary.graphics.displayable.event.DisplayChangeEventListener
// import org.allbinary.logic.util.event.handler.BasicEventHandler
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListD

open class GameLevelDisplayChangeEventListenersFactory: JObject {
    fileprivate static let instance: GameLevelDisplayChangeEventListenersFactory! = GameLevelDisplayChangeEventListenersFactory()
    fileprivate var list: BasicArrayList! = nil

    private func initFields() {
    self.list = BasicArrayListD()
    }

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult open class func getInstance() -> GameLevelDisplayChangeEventListenersFactory! {
        return GameLevelDisplayChangeEventListenersFactory.instance
    }
    

    public func add(_ displayChangeEventListener: DisplayChangeEventListener!) {
        self.list.add((displayChangeEventListener as? JObject))
        DisplayChangeEventHandler.getInstance().addListenerInterface(displayChangeEventListener)
    }
    

    public func clear() {
        let displayChangeEventHandler: BasicEventHandler! = DisplayChangeEventHandler.getInstance()
        var displayChangeEventListener: DisplayChangeEventListener! = nil
        do {
            var index: Int32 = self.list.size()
            while (jPreDecrement(&index) >= 0) {
            displayChangeEventListener = (self.list.objectArray[index] as! DisplayChangeEventListener)
            displayChangeEventHandler.removeListener(displayChangeEventListener)
            }
        }
        self.list.clear()
    }
}

