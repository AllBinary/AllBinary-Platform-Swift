// Generated Code Do Not Modify
// package org.allbinary.configuration

import J2SEForSwiftLibrary
// import org.allbinary.game.configuration.feature.Feature
// import org.allbinary.game.configuration.feature.Features
// import org.allbinary.game.configuration.feature.MainFeatureFactory
// import org.allbinary.logic.NullUtil
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.string.CommonStrings

open class ApplicationConfiguration: JObject {
    fileprivate static var instance: JObject! = NullUtil.getInstance().NULL_OBJECT
    public var logUtil: LogUtil! = nil
    fileprivate var fullscreen: Bool = false
    fileprivate var showTitleBar: Bool = false
    fileprivate var progressBarView: Bool = false

    private func initFields() {
    self.logUtil = LogUtil.getInstance()
    self.fullscreen = true
    self.showTitleBar = false
    self.progressBarView = false
    }
    

    @discardableResult open class func getInstance() -> ApplicationConfiguration! {
        if (ApplicationConfiguration.instance === NullUtil.getInstance().NULL_OBJECT) {
            ApplicationConfiguration.instance = ApplicationConfiguration()
        }
        return (ApplicationConfiguration.instance as! ApplicationConfiguration)
    }
    

    public override init() {
        super.init()
        self.initFields()
        do {
            self.read()
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
    

    fileprivate func read() {
        self.setFullscreen(true)
        self.setProgressBarView(false)
        self.setShowTitleBar(false)
        self.logUtil.putF(jstr("Read Configuration: ") + jstr(self.toString()), self, "read")
    }
    

    open func write() {
    }
    

    open func update(_ gameFeature: Feature!) {
        if (gameFeature === MainFeatureFactory.getInstance().FULL_SCREEN) {
            let features: Features! = Features.getInstance()
            if (features.isFeature(gameFeature)) {
                if (!self.isFullscreen()) {
                    self.setFullscreen(true)
                    self.write()
                }
            } else {
                if (self.isFullscreen()) {
                    self.setFullscreen(false)
                    self.write()
                }
            }
        }
    }
    

    open func setFullscreen(_ fullscreen: Bool) {
        self.fullscreen = fullscreen
    }
    

    @discardableResult open func isFullscreen() -> Bool {
        return self.fullscreen
    }
    

    open func setShowTitleBar(_ showTitleBar: Bool) {
        self.showTitleBar = showTitleBar
    }
    

    @discardableResult open func isShowTitleBar() -> Bool {
        return self.showTitleBar
    }
    

    open func setProgressBarView(_ progressBarView: Bool) {
        self.progressBarView = progressBarView
    }
    

    @discardableResult open func isProgressBarView() -> Bool {
        return self.progressBarView
    }
    

    @discardableResult open override func toString() -> String! {
        let stringBuffer: StringMaker! = StringMaker()
        stringBuffer.append("isFullscreen: ")
        stringBuffer.appendboolean(self.isFullscreen())
        stringBuffer.append(" isProgressBarView: ")
        stringBuffer.appendboolean(self.isProgressBarView())
        stringBuffer.append(" isShowTitleBar: ")
        stringBuffer.appendboolean(self.isShowTitleBar())
        return stringBuffer.toString()
    }
}

