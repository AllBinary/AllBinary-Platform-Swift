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
// package org.allbinary.game.input

import J2SEForSwiftLibrary
// import org.allbinary.game.input.analog.AnalogLocationInputFactory
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.string.StringMaker

open class LocalPlayerInputIdFactory: JObject {
    fileprivate static let instance: LocalPlayerInputIdFactory! = LocalPlayerInputIdFactory()
    public var logUtil: LogUtil! = nil
    public var MAX_NUMBER_OF_PLAYERS: Int32 = 0
    fileprivate var MAX_FAST_DEVICEID: Int32 = 0
    fileprivate var deviceIdToplayerId: JArray<Int32>! = nil
    fileprivate var playerIdToDeviceId: JArray<Int32>! = nil
    fileprivate var playersInPlay: JArray<Bool>! = nil
    fileprivate var totalDevicesMapped: Int32 = 0

    private func initFields() {
    self.logUtil = LogUtil.getInstance()
    self.MAX_NUMBER_OF_PLAYERS = 6
    self.MAX_FAST_DEVICEID = 65
    self.deviceIdToplayerId = JArray<Int32>(self.MAX_FAST_DEVICEID, 0)
    self.playerIdToDeviceId = JArray<Int32>(self.MAX_NUMBER_OF_PLAYERS, 0)
    self.playersInPlay = JArray<Bool>(self.MAX_NUMBER_OF_PLAYERS, false)
    self.totalDevicesMapped = 0
    }
    

    public override init() {
        super.init()
        self.initFields()
        do {
            var index: Int32 = self.deviceIdToplayerId.length &- 1
            while (index >= 0) {
                defer { index &-= 1 }
            self.deviceIdToplayerId[index] = -1
            }
        }
    }
    

    @discardableResult open class func getInstance() -> LocalPlayerInputIdFactory! {
        return LocalPlayerInputIdFactory.instance
    }
    

    @discardableResult open func getDeviceId(_ playerInputId: Int32) -> Int32 {
        return self.playerIdToDeviceId[playerInputId]
    }
    

    @discardableResult open func getPlayerForDevice(_ deviceId: Int32) -> Int32 {
        var index: Int32 = 0
        if (deviceId < self.MAX_FAST_DEVICEID) {
            let playerInputId: Int32 = self.deviceIdToplayerId[deviceId]
            if (playerInputId != -1) {
                return playerInputId
            }
        } else {
            do {
                index = self.totalDevicesMapped &- 1
                while (index >= 0) {
                    defer { index &-= 1 }
                if (self.playerIdToDeviceId[index] == deviceId) {
                    return index
                }
                }
            }
        }
        index = self.totalDevicesMapped
        if (deviceId < self.MAX_FAST_DEVICEID) {
            self.deviceIdToplayerId[deviceId] = index
        } else {
            self.logUtil.putF(StringMaker().append("Added DeviceId: ").appendint(deviceId).append(" beyond fast Id list").toString(), self, "getPlayerForDevice")
        }
        self.playerIdToDeviceId[index] = deviceId
        AnalogLocationInputFactory.getInstance().addPlayer(self.totalDevicesMapped)
        self.totalDevicesMapped &+= 1
        self.logUtil.putF(StringMaker().append("Added DeviceId: ").appendint(deviceId).append(" at: ").appendint(index).append(" Total: ").appendint(self.totalDevicesMapped).toString(), self, "getPlayerForDevice")
        return index
    }
    

    @discardableResult open func getTotalDevicesInPlay() -> Int32 {
        var total: Int32 = 0
        do {
            var index: Int32 = self.totalDevicesMapped &- 1
            while (index >= 0) {
                defer { index &-= 1 }
            if (self.playersInPlay[index] == true) {
                total &+= 1
            }
            }
        }
        return total
    }
    

    @discardableResult open func isPlayerInPlay(_ playerInputId: Int32) -> Bool {
        return self.playersInPlay[playerInputId]
    }
    

    open func setPlayerInPlay(_ playerInputId: Int32) {
        self.logUtil.putF(StringMaker().append("Setting PlayerInPlay with playerInputId: ").appendint(playerInputId).toString(), self, "setPlayerInPlay")
        self.playersInPlay[playerInputId] = true
    }
    

    open func setPlayerOutOfPlay(_ playerInputId: Int32) {
        self.logUtil.putF(StringMaker().append("Setting PlayerOutOfPlay with playerInputId: ").appendint(playerInputId).toString(), self, "setPlayerOutOfPlay")
        self.playersInPlay[playerInputId] = false
    }
    

    @discardableResult open func getPlayersInPlay() -> JArray<Bool>! {
        return self.playersInPlay
    }
}

