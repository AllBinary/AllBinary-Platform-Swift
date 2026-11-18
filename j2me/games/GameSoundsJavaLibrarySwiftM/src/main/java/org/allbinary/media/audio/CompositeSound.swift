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
// package org.allbinary.media.audio

import J2SEForSwiftLibrary

open class CompositeSound: Sound {
    

    public override init(_ resource: String!) {
        super.init(resource)
    }
    

    open override func `init`() {
        self.setPlayerP(PlayerComposite(AllBinaryMediaManager.createPlayer(self.getResource()), 570))
    }
}

