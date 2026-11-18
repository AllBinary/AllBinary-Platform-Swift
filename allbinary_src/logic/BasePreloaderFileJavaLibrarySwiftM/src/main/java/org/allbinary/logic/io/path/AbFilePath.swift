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
// package org.allbinary.logic.io.path

import J2SEForSwiftLibrary
// import org.allbinary.logic.string.StringUtil

open class AbFilePath: AbPath {
    

    public init(_ aPath: String!) {
        super.init(StringUtil.getInstance().EMPTY_STRING, StringUtil.getInstance().EMPTY_STRING)
        let pathData: AbPathData! = AbPathData.getInstance()
        let abPathUtil: PathUtil! = PathUtil.getInstance()
        self.schema = self.getSchema(aPath)
        self.setName(pathData.getNameFromPath(aPath))
        self.setPath(abPathUtil.adjust(self.getPathFromPath(abPathUtil.removeNameFromPath(aPath).toString())))
    }
}

