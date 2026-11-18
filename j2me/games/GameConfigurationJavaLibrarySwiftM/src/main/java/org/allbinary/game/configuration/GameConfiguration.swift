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
// package org.allbinary.game.configuration

import J2SEForSwiftLibrary
// import org.allbinary.game.configuration.event.GameFeatureEvent
// import org.allbinary.game.configuration.event.GameFeatureEventHandler
// import org.allbinary.logic.java.bool.BooleanFactory
// import org.allbinary.logic.math.SmallIntegerSingletonFactory
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.string.StringUtil

open class GameConfiguration: JObject {
    fileprivate static let MIN_VALUE: Int32! = Integer.MIN_VALUE
    fileprivate var name: String! = nil
    fileprivate var defaultValue: Int32! = nil
    fileprivate var value: Int32! = nil
    fileprivate var minValue: Int32! = nil
    fileprivate var maxValue: Int32! = nil
    fileprivate var modifiable: Bool! = nil

    private func initFields() {
    self.name = StringUtil.getInstance().EMPTY_STRING
    self.defaultValue = SmallIntegerSingletonFactory.getInstance().getAt(0)
    self.value = GameConfiguration.MIN_VALUE
    self.minValue = self.defaultValue
    self.maxValue = self.defaultValue
    self.modifiable = BooleanFactory.getInstance().TRUE
    }
    

    public init(_ name: String!, _ defaultValue: Int32!, _ minValue: Int32!, _ maxValue: Int32!) {
        super.init()
        self.initFields()
        self.setName(name)
        self.setDefaultValue(defaultValue)
        self.value = self.getDefaultValue()
        self.setMinValue(minValue)
        self.setMaxValue(maxValue)
        GameConfigurationSingleton.getInstance().getHashtable().put(self.getName(), self)
    }
    

    open func setValue(_ value: Int32!) {
        if (self.value !== value) {
            let oldValue: Int32! = self.value
            self.value = value
            GameFeatureEventHandler.getInstance().fireEvent(GameFeatureEvent(self, StringMaker().append(self.name).append(" value: from: ").appendint(Int32(truncatingIfNeeded: oldValue.intValue())).append(" to ").appendint(Int32(truncatingIfNeeded: self.value.intValue())).toString()))
        }
    }
    

    @discardableResult open func getValue() -> Int32! {
        return self.value
    }
    

    open func setMaxValue(_ maxValue: Int32!) {
        self.maxValue = maxValue
    }
    

    @discardableResult open func getMaxValue() -> Int32! {
        return self.maxValue
    }
    

    open func setMinValue(_ minValue: Int32!) {
        self.minValue = minValue
    }
    

    @discardableResult open func getMinValue() -> Int32! {
        return self.minValue
    }
    

    open func setName(_ name: String!) {
        self.name = name
    }
    

    @discardableResult open func getName() -> String! {
        return self.name
    }
    

    open func setDefaultValue(_ defaultValue: Int32!) {
        self.defaultValue = defaultValue
    }
    

    @discardableResult open func getDefaultValue() -> Int32! {
        return self.defaultValue
    }
    

    open func setDefault() {
        self.setValue(self.getDefaultValue())
    }
    

    @discardableResult open override func toString() -> String! {
        let stringBuffer: StringMaker! = StringMaker()
        stringBuffer.append("Name: ")
        stringBuffer.append(self.name)
        stringBuffer.append(" Min: ")
        stringBuffer.appendint(Int32(truncatingIfNeeded: self.getMinValue().intValue()))
        stringBuffer.append(" Max: ")
        stringBuffer.appendint(Int32(truncatingIfNeeded: self.getMaxValue().intValue()))
        stringBuffer.append(" Value: ")
        stringBuffer.appendint(Int32(truncatingIfNeeded: self.getValue().intValue()))
        stringBuffer.append(" Default: ")
        stringBuffer.appendint(Int32(truncatingIfNeeded: self.getDefaultValue().intValue()))
        stringBuffer.append(" Modifiable: ")
        stringBuffer.appendboolean(self.isModifiable().booleanValue())
        return stringBuffer.toString()
    }
    

    open func setModifiable(_ modifiable: Bool!) {
        self.modifiable = modifiable
    }
    

    @discardableResult open func isModifiable() -> Bool! {
        return self.modifiable
    }
}

