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
// package org.allbinary.media.audio

import J2SEForSwiftLibrary
// import javax.microedition.media.Player
// import org.allbinary.graphics.canvas.transition.progress.ProgressCanvas
// import org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.math.SmallIntegerSingletonFactory
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.string.CommonLabels
// import org.allbinary.string.CommonStrings

open class Sounds: JObject {
    public var logUtil: LogUtil! = nil
    fileprivate var commonStrings: CommonStrings! = nil
    fileprivate var soundStrings: SoundStrings! = nil
    fileprivate var soundsFactoryInterface: SoundsFactoryInterface! = nil

    private func initFields() {
    self.logUtil = LogUtil.getInstance()
    self.commonStrings = CommonStrings.getInstance()
    self.soundStrings = SoundStrings.getInstance()
    
    }
    

    public init(_ soundsFactoryInterface: SoundsFactoryInterface!) {
        super.init()
        self.initFields()
        self.soundsFactoryInterface = soundsFactoryInterface
    }
    

    open func `init`() {
        self.logUtil.putF(self.commonStrings.START, self, self.commonStrings.INIT)
        let commonLabels: CommonLabels! = CommonLabels.getInstance()
        let progressCanvas: ProgressCanvas! = ProgressCanvasFactory.getInstance()
        self.soundsFactoryInterface.`init`()
        let soundInterfaceArray: JArray<Sound?>! = self.soundsFactoryInterface.getSoundInterfaceArray()
        let smallIntegerSingletonFactory: SmallIntegerSingletonFactory! = SmallIntegerSingletonFactory.getInstance()
        var indexInteger: Int32! = nil
        var indexString: String! = nil
        let stringBuffer: StringMaker! = StringMaker()
        do {
            var i: Int32 = 0
            while (i < soundInterfaceArray.length) {
                defer { i &+= 1 }
            let soundInterface: Sound! = soundInterfaceArray[i]
            if (soundInterface != nil) {
                indexInteger = smallIntegerSingletonFactory.getAt(i)
                indexString = indexInteger.toString()
                stringBuffer.delete(0, stringBuffer.length())
                stringBuffer.append(commonLabels.INDEX_LABEL)
                stringBuffer.append(indexString)
                stringBuffer.append(self.soundStrings.SOUND)
                stringBuffer.append(JObject.className(soundInterface))
                self.logUtil.putF(stringBuffer.toString(), self, self.commonStrings.INIT)
                soundInterface.`init`()
                progressCanvas.addNormalPortion(100, StringMaker().append(self.soundStrings.INIT_SOUND).append(indexString).toString())
            }
            }
        }
        self.soundsFactoryInterface.setInitialized(true)
        self.logUtil.putF(self.commonStrings.END, self, self.commonStrings.INIT)
    }
    

    open func stopAll() {
        self.logUtil.putF(self.commonStrings.START, self, self.soundStrings.STOP_ALL)
        let soundInterfaceArray: JArray<Sound?>! = self.soundsFactoryInterface.getSoundInterfaceArray()
        let progressCanvas: ProgressCanvas! = ProgressCanvasFactory.getInstance()
        var player: Player! = nil
        do {
            var index: Int32 = 0
            while (index < soundInterfaceArray.length) {
                defer { index &+= 1 }
            if (soundInterfaceArray[index] != nil) {
                player = soundInterfaceArray[index]!.getPlayerP()
                if (player != nil) {
                    player.stop()
                    progressCanvas.addPortion(100, self.soundStrings.STOPPING_SOUND, index)
                }
            }
            }
        }
    }
    

    open func closeAll() {
        self.logUtil.putF(self.commonStrings.START, self, self.soundStrings.CLOSE_ALL)
        let soundInterfaceArray: JArray<Sound?>! = self.soundsFactoryInterface.getSoundInterfaceArray()
        let progressCanvas: ProgressCanvas! = ProgressCanvasFactory.getInstance()
        var player: Player! = nil
        do {
            var index: Int32 = 0
            while (index < soundInterfaceArray.length) {
                defer { index &+= 1 }
            if (soundInterfaceArray[index] != nil) {
                player = soundInterfaceArray[index]!.getPlayerP()
                if (player != nil) {
                    player.close()
                    progressCanvas.addPortion(100, self.soundStrings.CLOSING_SOUND, index)
                }
            }
            }
        }
    }
}

