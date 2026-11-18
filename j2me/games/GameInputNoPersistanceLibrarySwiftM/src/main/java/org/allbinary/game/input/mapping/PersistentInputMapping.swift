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
// package org.allbinary.game.input.mapping

import J2SEForSwiftLibrary
// import java.util.Enumeration
// import org.allbinary.game.configuration.persistance.GamePersistanceStrings
// import org.allbinary.game.input.Input
// import org.allbinary.game.input.InputPersistance
// import org.allbinary.game.input.mapping.event.InputMappingEvent
// import org.allbinary.game.input.mapping.event.InputMappingEventListenerInterface
// import org.allbinary.game.input.mapping.event.NullInputMappingEventListener
// import org.allbinary.logic.NullUtil
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.communication.log.PreLogUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.system.security.licensing.AbeClientInformationInterface
// import org.allbinary.string.CommonStrings
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.EnumerationUtil
// import org.allbinary.util.ABHashtable

//GameInputNoPersistanceLibrary
open class PersistentInputMapping: JObject {
    public static var instance: JObject! = NullUtil.getInstance().NULL_OBJECT
    public var logUtil: LogUtil! = nil
    public var commonStrings: CommonStrings! = nil
    fileprivate var enumerationUtil: EnumerationUtil! = nil
    fileprivate var inputMapping: InputToGameKeyMapping! = nil
    fileprivate var inputMappingEventListenerInterface: InputMappingEventListenerInterface! = nil
    fileprivate var inputPersistance: InputPersistance! = nil
    fileprivate var inputMappingEvent: InputMappingEvent! = nil

    private func initFields() {
    self.logUtil = LogUtil.getInstance()
    self.commonStrings = CommonStrings.getInstance()
    self.enumerationUtil = EnumerationUtil.getInstance()
    self.inputMapping = InputToGameKeyMapping()
    self.inputMappingEventListenerInterface = NullInputMappingEventListener.NULL_INPUT_MAPPING_EVENT_LISTENER
    
    self.inputMappingEvent = InputMappingEvent(self)
    }
    

    @discardableResult open class func getNullInstance() -> PersistentInputMapping! {
        if (PersistentInputMapping.instance === NullUtil.getInstance().NULL_OBJECT) {
            PersistentInputMapping.instance = PersistentInputMapping(GamePersistanceStrings.getInstance().SAVED_INPUT_CONFIGURATION_RECORD_ID)
        }
        return (PersistentInputMapping.instance as! PersistentInputMapping)
    }
    

    public init(_ name: String!) {
        super.init()
        self.initFields()
        self.inputPersistance = InputPersistance(name)
    }
    

    @discardableResult open func getTotalMapped() -> Int32 {
        return self.getInputMapping().getHashtable().size()
    }
    

    @discardableResult open func isDefaultNew() -> Bool {
        return false
    }
    

    @discardableResult open func getDefault() -> InputToGameKeyMapping! {
        return InputToGameKeyMapping.getNullInstance()
    }
    

    open func setDefault(_ abeClientInformation: AbeClientInformationInterface!) {
        self.getInputMapping().removeAll()
        self.getInputMapping().addMapping(self.getDefault())
        self.save(abeClientInformation)
    }
    

    open func update(_ abeClientInformation: AbeClientInformationInterface!) {
        self.inputPersistance.deleteAll(abeClientInformation)
        self.save(abeClientInformation)
    }
    

    open func save(_ abeClientInformation: AbeClientInformationInterface!) {
        self.inputPersistance.save(abeClientInformation, self.getInputMapping().getHashtable())
        self.inputMappingEvent.setInputToGameKeyMapping(self.getInputMapping())
        if (self.getInputMappingEventListenerInterface() != nil) {
            self.getInputMappingEventListenerInterface().onInputMappingEvent(self.inputMappingEvent)
        }
    }
    

    open func `init`(_ abeClientInformation: AbeClientInformationInterface!) {
        self.logUtil.putF(self.commonStrings.START, self, self.commonStrings.INIT)
        do {
            self.inputPersistance.loadAll(abeClientInformation)
        } /* catch (Exception e): a thrown Java exception stops the program */
        let list: BasicArrayList! = self.inputPersistance.getList()
        var totalMappedTo: Int32 = 0
        let size: Int32 = list.size()
        var hashtable: ABHashtable! = nil
        var enumeration: Enumeration! = nil
        var mappedToInput: Input! = nil
        var gameActionInput: Input! = nil
        do {
            var index: Int32 = 0
            while (index < size) {
                defer { index &+= 1 }
            hashtable = (list.objectArray[index] as! ABHashtable)
            enumeration = hashtable.keys()
            while (self.enumerationUtil.hasMoreElements(enumeration)) {
                mappedToInput = (self.enumerationUtil.nextElement(enumeration) as! Input)
                gameActionInput = (hashtable.get(mappedToInput) as! Input)
                totalMappedTo &+= 1
                self.getInputMapping().add(gameActionInput, mappedToInput)
            }
            }
        }
        let stringBuffer: StringMaker! = StringMaker()
        stringBuffer.append("End - Total Loaded Keys Mapped: ")
        stringBuffer.appendint(self.getTotalMapped())
        stringBuffer.append(" to: ")
        stringBuffer.appendint(totalMappedTo)
        self.logUtil.putF(stringBuffer.toString(), self, self.commonStrings.INIT)
    }
    

    open func setInputMappingEventListenerInterface(_ inputMappingEventListenerInterface: InputMappingEventListenerInterface!) {
        self.inputMappingEventListenerInterface = inputMappingEventListenerInterface
    }
    

    @discardableResult fileprivate func getInputMappingEventListenerInterface() -> InputMappingEventListenerInterface! {
        return self.inputMappingEventListenerInterface
    }
    

    @discardableResult open func getInputMapping() -> InputToGameKeyMapping! {
        return self.inputMapping
    }
    

    @discardableResult open func isDelete(_ input: Input!) -> Bool {
        jThrow(JException("Exception", self.commonStrings.NOT_IMPLEMENTED))
    }
    

    @discardableResult open func isSystemInput(_ input: Input!) -> Bool {
        jThrow(JException("Exception", self.commonStrings.NOT_IMPLEMENTED))
    }
}

