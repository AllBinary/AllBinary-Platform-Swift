// Generated Code Do Not Modify
// package org.allbinary.graphics.opengles

import J2SEForSwiftLibrary
// import javax.microedition.khronos.opengles.GL10
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.string.CommonStrings

open class OpenGLProcessor: JObject {
    public var logUtil: LogUtil! = nil
    public var commonStrings: CommonStrings! = nil

    private func initFields() {
    self.logUtil = LogUtil.getInstance()
    self.commonStrings = CommonStrings.getInstance()
    }

    public override init() {
        super.init()
        self.initFields()
    }
    

    open func process(_ gl: GL10!) {
    }
}

