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
// package org.allbinary.game.layer.resources

import J2SEForSwiftLibrary
// import org.allbinary.game.configuration.GameConfigurationCentral
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.string.CommonStrings

open class BasicGameResources: JObject {
    public static let stringBuffer: StringMaker! = StringMaker()
    public var logUtil: LogUtil! = nil
    public var RESOURCE: String! = nil
    public var RESOURCE_DESTROY: String! = nil

    private func initFields() {
    self.logUtil = LogUtil.getInstance()
    self.RESOURCE = StringUtil.getInstance().EMPTY_STRING
    self.RESOURCE_DESTROY = StringUtil.getInstance().EMPTY_STRING
    }
    

    public override init() {
        super.init()
        self.initFields()
    }
    

    open func `init`(_ ROOT: String!, _ SIZE: JArray<String?>!) {
        do {
            let scale: Int32 = GameConfigurationCentral.getInstance().SCALE.getValue().intValue()
            if (scale > 1 && scale &- 1 < SIZE.length) {
                self.append(ROOT, SIZE[scale &- 1])
            } else {
                jThrow(JException("Exception", StringMaker().append("Invalid Value: ").appendint(scale).toString()))
            }
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
    

    open func append(_ ROOT: String!, _ sizeString: String!) {
        let DESTROY: String! = "_destroy"
        let string: String! = self.getString()
        BasicGameResources.stringBuffer.delete(0, BasicGameResources.stringBuffer.length())
        BasicGameResources.stringBuffer.append(ROOT)
        BasicGameResources.stringBuffer.append(string)
        BasicGameResources.stringBuffer.append(sizeString)
        self.RESOURCE = BasicGameResources.stringBuffer.toString()
        BasicGameResources.stringBuffer.delete(0, BasicGameResources.stringBuffer.length())
        BasicGameResources.stringBuffer.append(ROOT)
        BasicGameResources.stringBuffer.append(DESTROY)
        BasicGameResources.stringBuffer.append(string)
        BasicGameResources.stringBuffer.append(sizeString)
        self.RESOURCE_DESTROY = BasicGameResources.stringBuffer.toString()
    }
    

    @discardableResult open func getString() -> String! {
        return GameGraphicsResourceUtil.getInstance().getName()
    }
}

