// Generated Code Do Not Modify
// package org.allbinary.logic.math.permutations

import J2SEForSwiftLibrary
// import org.allbinary.TsUtil
// import org.allbinary.logic.NullUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.util.visitor.Visitor
// import org.allbinary.string.CommonSeps

open class ObjectPermutationVisitor: Visitor {
    public var data: JArray<JObject?>! = nil
    fileprivate var stringBuilder: StringMaker! = nil

    // Each class has its own field initializers
    private func initFields() {
    
    self.stringBuilder = StringMaker()
    }
    

    public init(_ data: JArray<JObject?>!) {
        super.init()
        self.initFields()
        self.data = data
    }
    

    @discardableResult open override func visit(_ anyType: JObject!) -> JObject! {
        self.stringBuilder.delete(0, self.stringBuilder.length())
        self.print(self.data, self.stringBuilder)
        return NullUtil.getInstance().NULL_OBJECT
    }
    

    open func print(_ data: JArray<JObject?>!) {
        let stringBuilder: StringMaker! = StringMaker()
        self.print(data, stringBuilder)
    }
    

    open func print(_ data: JArray<JObject?>!, _ stringBuilder: StringMaker!) {
        let tsUtil: TsUtil! = TsUtil.getInstance()
        let size: Int32 = data.length
        do {
            var i: Int32 = 0
            while (i < size) {
                defer { i &+= 1 }
            stringBuilder.appendint(tsUtil.hashCode(data[i]))
            stringBuilder.append(CommonSeps.getInstance().SPACE)
            }
        }
        JSystem.println(jstr(stringBuilder.toString()))
    }
}

