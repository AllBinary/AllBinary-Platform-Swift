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
// package org.allbinary.business.advertisement

import J2SEForSwiftLibrary
// import org.allbinary.game.rand.MyRandomFactory
// import org.allbinary.logic.system.security.licensing.LockedUtil
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListD

open class Advertisements: JObject {
    fileprivate var bannerList: BasicArrayList! = nil
    fileprivate var pageList: BasicArrayList! = nil
    fileprivate var myRandomFactory: MyRandomFactory! = nil

    private func initFields() {
    self.bannerList = BasicArrayListD()
    self.pageList = BasicArrayListD()
    self.myRandomFactory = MyRandomFactory.getInstance()
    }

    public override init() {
        super.init()
        self.initFields()
    }
    

    open func addPage(_ advertisementProcessorInterface: AdvertisementProcessorInterface!) {
        if (!self.pageList.contains(advertisementProcessorInterface)) {
            self.pageList.add(advertisementProcessorInterface)
        }
    }
    

    open func startRandomPage() {
        let size: Int32 = self.pageList.size()
        if (size > 0) {
            let random: Int32 = self.myRandomFactory.getAbsoluteNextInt(size)
            let advertisementProcessorInterface: AdvertisementProcessorInterface! = (self.pageList.objectArray[random] as! AdvertisementProcessorInterface)
            advertisementProcessorInterface.start()
        }
    }
    

    open func processRandomPage() {
        if (LockedUtil.getInstance().isLocked()) {
            let size: Int32 = self.pageList.size()
            if (size > 0) {
                let random: Int32 = self.myRandomFactory.getAbsoluteNextInt(size)
                let advertisementProcessorInterface: AdvertisementProcessorInterface! = (self.pageList.objectArray[random] as! AdvertisementProcessorInterface)
                advertisementProcessorInterface.process()
            }
        }
    }
    

    open func stopAllPage() {
        do {
            var index: Int32 = self.pageList.size()
            while (jPreDecrement(&index) >= 0) {
            let advertisementProcessorInterface: AdvertisementProcessorInterface! = (self.pageList.objectArray[index] as! AdvertisementProcessorInterface)
            advertisementProcessorInterface.stop()
            }
        }
    }
    

    open func addBanner(_ advertisementProcessorInterface: AdvertisementProcessorInterface!) {
        if (!self.bannerList.contains(advertisementProcessorInterface)) {
            self.bannerList.add(advertisementProcessorInterface)
        }
    }
    

    open func startAll() {
        do {
            var index: Int32 = self.bannerList.size()
            while (jPreDecrement(&index) >= 0) {
            let advertisementProcessorInterface: AdvertisementProcessorInterface! = (self.bannerList.objectArray[index] as! AdvertisementProcessorInterface)
            advertisementProcessorInterface.start()
            }
        }
    }
    

    open func stopAllBanner() {
        do {
            var index: Int32 = self.bannerList.size()
            while (jPreDecrement(&index) >= 0) {
            let advertisementProcessorInterface: AdvertisementProcessorInterface! = (self.bannerList.objectArray[index] as! AdvertisementProcessorInterface)
            advertisementProcessorInterface.stop()
            }
        }
    }
    

    @discardableResult open func getBanner(_ index: Int32) -> AdvertisementProcessorInterface! {
        let advertisementProcessorInterface: AdvertisementProcessorInterface! = (self.bannerList.objectArray[index] as! AdvertisementProcessorInterface)
        return advertisementProcessorInterface
    }
    

    open func stopAll() {
        self.stopAllBanner()
        self.stopAllPage()
    }
}

