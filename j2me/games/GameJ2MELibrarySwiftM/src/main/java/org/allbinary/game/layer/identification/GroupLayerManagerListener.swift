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
// package org.allbinary.game.layer.identification

import J2SEForSwiftLibrary
// import org.allbinary.game.identification.Group
// import org.allbinary.game.identification.GroupInterfaceCompositeInterface
// import org.allbinary.layer.AllBinaryLayer
// import org.allbinary.layer.event.LayerManagerEvent
// import org.allbinary.layer.event.LayerManagerEventHandler
// import org.allbinary.layer.event.LayerManagerEventListener
// import org.allbinary.logic.communication.log.ForcedLogUtil
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.util.event.AllBinaryEventObject
// import org.allbinary.logic.util.event.EventStrings
// import org.allbinary.string.CommonLabels
// import org.allbinary.string.CommonSeps
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListD

open class GroupLayerManagerListener: LayerManagerEventListener {
    fileprivate static var SINGLETON: GroupLayerManagerListener! = GroupLayerManagerListener()
    public var logUtil: LogUtil! = nil
    fileprivate var list: BasicArrayList! = nil

    // Each class has its own field initializers
    private func initFields() {
    self.logUtil = LogUtil.getInstance()
    self.list = BasicArrayListD()
    }
    

    @discardableResult open class func getInstance() -> GroupLayerManagerListener! {
        return GroupLayerManagerListener.SINGLETON
    }
    

    public override init() {
        super.init()
        self.initFields()
        LayerManagerEventHandler.getInstance().addListener(self)
    }
    

    open func clear() {
        var groupList: BasicArrayList! = nil
        let size: Int32 = self.list.size()
        do {
            var index: Int32 = size &- 1
            while (index >= 0) {
                defer { index &-= 1 }
            groupList = (self.list.objectArray[index] as! BasicArrayList)
            groupList.clear()
            }
        }
    }
    

    @discardableResult open func getGroupSizeFromInterface(_ groupInterfaceCompositeInterface: GroupInterfaceCompositeInterface!) -> Int32 {
        let groupInterfaceArray: JArray<Group?>! = groupInterfaceCompositeInterface.getGroupInterface()
        return self.getGroupSize(groupInterfaceArray[0])
    }
    

    @discardableResult open func getGroupSize(_ groupInterface: Group!) -> Int32 {
        let id: Int32 = Int32(truncatingIfNeeded: groupInterface.getGroupId())
        return self.getGroupSizeById(id)
    }
    

    @discardableResult open func getList(_ groupInterface: Group!) -> BasicArrayList! {
        let id: Int32 = Int32(truncatingIfNeeded: groupInterface.getGroupId())
        return self.getListById(id)
    }
    

    @discardableResult fileprivate func getListById(_ groupId: Int32) -> BasicArrayList! {
        let groupList: BasicArrayList! = (self.list.objectArray[groupId] as! BasicArrayList)
        return groupList
    }
    

    @discardableResult fileprivate func getGroupSizeById(_ groupId: Int32) -> Int32 {
        let groupList: BasicArrayList! = (self.list.objectArray[groupId] as! BasicArrayList)
        let size: Int32 = groupList.size()
        return size
    }
    

    @discardableResult open func areAllOtherGroupsEmpty(_ groupInterface: Group!) -> Bool {
        let id: Int32 = Int32(truncatingIfNeeded: groupInterface.getGroupId())
        let size: Int32 = self.list.size()
        do {
            var index: Int32 = size &- 1
            while (index >= 0) {
                defer { index &-= 1 }
            if (id != index) {
                let groupSize: Int32 = self.getGroupSizeById(index)
                if (groupSize != 0) {
                    self.logUtil.putF(StringMaker().append("Group Size: ").appendint(groupSize).toString(), self, "areAllOtherGroupsEmpty")
                    return false
                }
            }
            }
        }
        return true
    }
    

    @discardableResult fileprivate func isIdInList(_ id: Int32, _ excludeGroupList: BasicArrayList!) -> Bool {
        let size: Int32 = excludeGroupList.size()
        var groupInterfaceArray: JArray<Group?>! = nil
        var groupInterface: Group! = nil
        var groupId: Int32 = 0
        do {
            var index: Int32 = size &- 1
            while (index >= 0) {
                defer { index &-= 1 }
            groupInterfaceArray = (excludeGroupList.objectArray[index] as! JArray<Group?>)
            let size2: Int32 = groupInterfaceArray.length
            do {
                var index2: Int32 = 0
                while (index2 < size2) {
                    defer { index2 &+= 1 }
                groupInterface = groupInterfaceArray[index2]
                groupId = Int32(truncatingIfNeeded: groupInterface.getGroupId())
                if (groupId == id) {
                    return true
                }
                }
            }
            }
        }
        return false
    }
    

    @discardableResult open func areAllOtherGroupsLessThan(_ excludeGroupList: BasicArrayList!, _ maxSize: Int32) -> Bool {
        let size: Int32 = self.list.size()
        do {
            var index: Int32 = size &- 1
            while (index >= 0) {
                defer { index &-= 1 }
            if (!self.isIdInList(index, excludeGroupList)) {
                let groupSize: Int32 = self.getGroupSizeById(index)
                if (groupSize >= maxSize) {
                    return false
                }
            }
            }
        }
        return true
    }
    

    open func `init`(_ total: Int32) {
        while (self.list.size() <= total &+ 1) {
            self.list.add(BasicArrayListD())
        }
    }
    

    open override func onEvent(_ eventObject: AllBinaryEventObject!) {
        ForcedLogUtil.log(EventStrings.getInstance().PERFORMANCE_MESSAGE, self)
    }
    

    open override func onCreateLayerManagerEvent(_ layerManagerEvent: LayerManagerEvent!) {
        let layerInterface: AllBinaryLayer! = layerManagerEvent.getLayerInterface()
        let groupInterfaceArray: JArray<Group?>! = layerInterface.getGroupInterface()
        let size: Int32 = groupInterfaceArray.length
        var id: Int32 = 0
        var groupList: BasicArrayList! = nil
        do {
            var index: Int32 = 0
            while (index < size) {
                defer { index &+= 1 }
            id = Int32(truncatingIfNeeded: groupInterfaceArray[index]!.getGroupId())
            groupList = (self.list.objectArray[id] as! BasicArrayList)
            if (groupList == nil) {
                self.logUtil.putF(StringMaker().append("id: ").appendint(id).toString(), self, "onCreateLayerManagerEvent")
            }
            if (!groupList.contains(layerInterface)) {
                groupList.add(layerInterface)
            } else {
            }
            }
        }
    }
    

    open override func onDeleteLayerManagerEvent(_ layerManagerEvent: LayerManagerEvent!) {
        let layerInterface: AllBinaryLayer! = layerManagerEvent.getLayerInterface()
        let groupInterfaceArray: JArray<Group?>! = layerInterface.getGroupInterface()
        let size: Int32 = groupInterfaceArray.length
        var id: Int32 = 0
        var groupList: BasicArrayList! = nil
        do {
            var index: Int32 = 0
            while (index < size) {
                defer { index &+= 1 }
            id = Int32(truncatingIfNeeded: groupInterfaceArray[index]!.getGroupId())
            groupList = (self.list.objectArray[id] as! BasicArrayList)
            groupList.remove(layerInterface)
            }
        }
    }
    

    open func log() {
        let stringBuffer: StringMaker! = StringMaker()
        let GROUP: String! = "Group: "
        let SPACE: String! = CommonSeps.getInstance().SPACE
        let TOTAL_LABEL: String! = CommonLabels.getInstance().TOTAL_LABEL
        let size: Int32 = self.list.size()
        do {
            var index: Int32 = size &- 1
            while (index >= 0) {
                defer { index &-= 1 }
            let groupList: BasicArrayList! = (self.list.objectArray[index] as! BasicArrayList)
            stringBuffer.append(GROUP)
            stringBuffer.appendint(index)
            stringBuffer.append(SPACE)
            stringBuffer.append(TOTAL_LABEL)
            stringBuffer.appendint(groupList.size())
            stringBuffer.append(SPACE)
            }
        }
        self.logUtil.putF(stringBuffer.toString(), self, "log")
    }
}

