// Generated Code Do Not Modify
// package org.bouncycastle.jce.provider

import J2SEForSwiftLibrary
// import java.security.Provider

public final class BouncyCastleProvider: Provider {
    fileprivate static var info: String! = "BouncyCastle Security Provider v1.41"
    public static var PROVIDER_NAME: String! = "BC"
    

    public override init() {
        super.init(BouncyCastleProvider.PROVIDER_NAME, 1.41, BouncyCastleProvider.info)
    }
    

    public func setParameter(_ parameterName: String!, _ parameter: JObject!) {
    }
}

