// Generated Code Do Not Modify
// package org.allbinary.business.advertisement

import J2SEForSwiftLibrary
// import org.allbinary.game.GameAdState
// import org.allbinary.logic.system.SoftwareInformation

open class GameAdStateFactory: JObject, GameAdStateFactoryInterface {
    fileprivate static let instance: GameAdStateFactory! = GameAdStateFactory()
    fileprivate var gameAdStateArray: JArray<GameAdState?>! = nil
    fileprivate var gameAdState: GameAdState! = nil

    private func initFields() {
    self.gameAdStateArray = JArray<GameAdState?>([GameAdState(AppNameLicensingAdConfiguration())])
    self.gameAdState = self.gameAdStateArray[0]
    }

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult open class func getInstance() -> GameAdStateFactory! {
        return GameAdStateFactory.instance
    }
    

    @discardableResult open func getCurrentInstance() -> GameAdState! {
        return self.gameAdState
    }
    

    @discardableResult open func getInstanceForApp(_ softwareInformation: SoftwareInformation!) -> GameAdStateBase! {
        self.gameAdState = self.gameAdStateArray[0]
        return self.gameAdStateArray[0]
    }
    

    @discardableResult open func isEnabled() -> Bool {
        return false
    }
}

