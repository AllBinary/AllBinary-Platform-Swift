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
// package org.allbinary.game.init

import J2SEForSwiftLibrary
// import javax.microedition.lcdui.CommandListener
// import org.allbinary.game.resource.ResourceInitialization
// import org.allbinary.game.resource.ResourceLoadingLevelFactory
// import org.allbinary.graphics.PointFactory
// import org.allbinary.graphics.canvas.transition.progress.ProgressCanvas
// import org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory
// import org.allbinary.logic.math.SmallIntegerSingletonFactory
// import org.allbinary.logic.system.security.licensing.AbeClientInformationInterface
// import org.allbinary.math.AngleFactory
// import org.allbinary.string.CommonStrings

open class CommonGameInitialization: BaseGameInitialization {
    public var commonStrings: CommonStrings! = nil

    // Each class has its own field initializers
    private func initFields() {
    self.commonStrings = CommonStrings.getInstance()
    }
    

    public override init(_ resourceInitializationArray: JArray<ResourceInitialization?>!, _ portion: Int32) {
        super.init(resourceInitializationArray, portion)
        self.initFields()
    }
    

    open override func `init`(_ abeClientInformation: AbeClientInformationInterface!, _ commandListener: CommandListener!, _ level: Int32) {
        super.`init`(abeClientInformation, commandListener, level)
        let resourceLoadingLevelFactory: ResourceLoadingLevelFactory! = ResourceLoadingLevelFactory.getInstance()
        if (!self.isGameInitialized() && level == resourceLoadingLevelFactory.LOAD_ALL.getLevel()) {
            self.setGameInitialized(true)
            let progressCanvas: ProgressCanvas! = ProgressCanvasFactory.getInstance()
            SmallIntegerSingletonFactory.getInstance().`init`()
            progressCanvas.addNormalPortion(50, "Integers")
            PointFactory.getInstance().`init`()
            progressCanvas.addNormalPortion(50, "Points")
            AngleFactory.getInstance()
            progressCanvas.addNormalPortion(50, "Angles")
            self.initGame()
            self.resourceInitializationArray[self.GAME_RESOURCES].`init`()
        }
        super.resourceInitialization(level)
    }
    

    open func initGame() {
        jThrow(JException("Exception", self.commonStrings.NOT_IMPLEMENTED))
    }
}

