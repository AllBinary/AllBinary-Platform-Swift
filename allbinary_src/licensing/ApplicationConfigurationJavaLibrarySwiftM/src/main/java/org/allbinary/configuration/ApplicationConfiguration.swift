// Generated Code Do Not Modify
// package org.allbinary.configuration

import J2SEForSwiftLibrary
// import java.io.Closeable
// import java.io.InputStream
// import java.io.OutputStream
// import org.allbinary.game.configuration.feature.Feature
// import org.allbinary.game.configuration.feature.Features
// import org.allbinary.game.configuration.feature.MainFeatureFactory
// import org.allbinary.logic.NullUtil
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.io.AbDataInputStream
// import org.allbinary.logic.io.AbDataOutputStream
// import org.allbinary.logic.io.FileStreamFactory
// import org.allbinary.logic.io.NullCloseable
// import org.allbinary.logic.io.StreamUtil
// import org.allbinary.logic.io.file.FileFactory
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.string.CommonStrings

open class ApplicationConfiguration: JObject {
    fileprivate static var instance: JObject! = NullUtil.getInstance().NULL_OBJECT
    public var logUtil: LogUtil! = nil
    fileprivate var fullscreen: Bool = false
    fileprivate var showTitleBar: Bool = false
    fileprivate var progressBarView: Bool = false
    fileprivate var FILE: String! = nil

    private func initFields() {
    self.logUtil = LogUtil.getInstance()
    self.fullscreen = true
    self.showTitleBar = false
    self.progressBarView = false
    self.FILE = "ReloadConfiguration.dat"
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
            if (FileFactory.getInstance().isFile(self.FILE)) {
                self.read()
            } else {
                self.write()
            }
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
    

    fileprivate func read() {
        let fileInputStreamFactory: FileStreamFactory! = FileStreamFactory.getInstance()
        let fileInputStream: InputStream! = fileInputStreamFactory.getFileInputStreamInstance(StringUtil.getInstance().EMPTY_STRING, self.FILE)
        let dataInputStream: AbDataInputStream! = AbDataInputStream(fileInputStream)
        let fullScreen: Int32 = dataInputStream.readInt()
        if (fullScreen == 0) {
            self.setFullscreen(false)
        } else if (fullScreen == 1) {
            self.setFullscreen(true)
        } else {
            jThrow(JException("Exception", "Invalid FullScreen ActivityConfiguration"))
        }
        let progressBarView: Int32 = dataInputStream.readInt()
        if (progressBarView == 0) {
            self.setProgressBarView(false)
        } else if (progressBarView == 1) {
            self.setProgressBarView(true)
        } else {
            jThrow(JException("Exception", "Invalid ProgressBarView ActivityConfiguration"))
        }
        let showTitleBar: Int32 = dataInputStream.readInt()
        if (showTitleBar == 0) {
            self.setShowTitleBar(false)
        } else if (showTitleBar == 1) {
            self.setShowTitleBar(true)
        } else {
            jThrow(JException("Exception", "Invalid ShowTitleBar ActivityConfiguration"))
        }
        self.logUtil.putF(jstr("Read Configuration: ") + jstr(self.toString()), self, "read")
    }
    

    open func write() {
        var closeable: Closeable! = NullCloseable.NULL_CLOSEABLE
        do {
            defer {
            StreamUtil.getInstance().close(closeable)
            }
            self.logUtil.putF(jstr("Write Configuration: ") + jstr(self.toString()), self, "write")
            let fileInputStreamFactory: FileStreamFactory! = FileStreamFactory.getInstance()
            let fileOutputStream: OutputStream! = fileInputStreamFactory.getFileOutputStreamInstance(StringUtil.getInstance().EMPTY_STRING, self.FILE)
            let dataOutputStream: AbDataOutputStream! = AbDataOutputStream(fileOutputStream)
            closeable = dataOutputStream
            if (self.isFullscreen()) {
                dataOutputStream.writeInt(1)
            } else {
                dataOutputStream.writeInt(0)
            }
            if (self.isProgressBarView()) {
                dataOutputStream.writeInt(1)
            } else {
                dataOutputStream.writeInt(0)
            }
            if (self.isShowTitleBar()) {
                dataOutputStream.writeInt(1)
            } else {
                dataOutputStream.writeInt(0)
            }
            dataOutputStream.flush()
        } /* catch (Exception e): a thrown Java exception stops the program */
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

