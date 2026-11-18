// Generated Code Do Not Modify
// package org.allbinary.graphics.form.item

import J2SEForSwiftLibrary
// import org.allbinary.graphics.color.BasicColor
// import org.allbinary.graphics.color.BasicColorFactory
// import org.allbinary.logic.string.StringUtil

open class ABCustomGaugeItem: ABCustomItem {
    public static let NULL_GAUGE_ITEM: ABCustomGaugeItem! = ABCustomGaugeItem(StringUtil.getInstance().EMPTY_STRING, 1, 0, BasicColorFactory.getInstance().BLACK, BasicColorFactory.getInstance().WHITE)
    

    public init(_ label: String!, _ maxValue: Int32, _ initialValue: Int32, _ backgroundBasicColor: BasicColor!, _ foregroundBasicColor: BasicColor!) {
        super.init(label, backgroundBasicColor, foregroundBasicColor)
    }
}

