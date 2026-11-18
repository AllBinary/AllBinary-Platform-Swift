// Generated Code Do Not Modify
// package org.apache.xmlrpc

import J2SEForSwiftLibrary
// import java.io.IOException
// import java.net.MalformedURLException
// import java.net.URL
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListD
// import org.allbinary.init.crypt.jcehelper.CryptInterface
// import org.allbinary.logic.NullUtil

open class XmlRpcClient: JObject, XmlRpcHandler {
    fileprivate var url: URL! = nil

    private func initFields() {
    
    }
    

    public init(_ url: String!) {
        super.init()
        self.initFields()
        self.url = URL(url)
    }
    

    @discardableResult open func getURL() -> URL! {
        return self.url
    }
    

    open func setBasicAuthentication(_ user: String!, _ password: String!) {
    }
    

    @discardableResult open func execute(_ method: String!, _ params: BasicArrayList!) -> JObject! {
        return NullUtil.getInstance().NULL_OBJECT
    }
    

    @discardableResult open func executeWithCrypt(_ method: String!, _ params: BasicArrayList!, _ cryptInterface: CryptInterface!) -> JObject! {
        return NullUtil.getInstance().NULL_OBJECT
    }
}

