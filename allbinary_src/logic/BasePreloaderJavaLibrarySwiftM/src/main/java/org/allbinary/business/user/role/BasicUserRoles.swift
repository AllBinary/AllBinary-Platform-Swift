/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2026 AllBinary 
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
// package org.allbinary.business.user.role

import J2SEForSwiftLibrary
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListD

open class BasicUserRoles: JObject {
    fileprivate static let instance: BasicUserRoles! = BasicUserRoles()
    public var roleVector: BasicArrayList! = nil

    private func initFields() {
    self.roleVector = BasicArrayListD()
    }

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult public static func getInstance() -> BasicUserRoles! {
        return BasicUserRoles.instance
    }
    

    @discardableResult open func getRole(_ role: String!) -> BasicUserRole! {
        let roleVector: BasicArrayList! = self.getAll()
        let size: Int32 = roleVector.size()
        do {
            var index: Int32 = 0
            while (index < size) {
                defer { index &+= 1 }
            let userRole: BasicUserRole! = (roleVector.get(index) as! BasicUserRole)
            if (JString.compareTo(role, userRole.toString()) == 0) {
                return userRole
            }
            }
        }
        jThrow(JException("Exception", "Unable to get role - Unknown Role"))
    }
    

    @discardableResult open func getAll() -> BasicArrayList! {
        return self.roleVector
    }
}

