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
// package org.allbinary.layer

import J2SEForSwiftLibrary
// import javax.microedition.lcdui.Graphics
// import org.allbinary.game.identification.BasicGroupFactory
// import org.allbinary.game.identification.Group
// import org.allbinary.graphics.GPoint
// import org.allbinary.graphics.Rectangle
// import org.allbinary.graphics.RectangleFactory
// import org.allbinary.graphics.opengles.OpenGLFeatureUtil
// import org.allbinary.TsUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.math.PositionStrings
// import org.allbinary.string.CommonLabels
// import org.allbinary.string.CommonSeps
// import org.allbinary.view.ViewPositionBase
// import org.allbinary.view.event.ViewPositionEvent

open class AllBinaryLayer: Layer, LayerInterface {
    public static let NULL_ALLBINARY_LAYER: AllBinaryLayer! = AllBinaryLayer(StringUtil.getInstance().EMPTY_STRING, RectangleFactory.SINGLETON, ViewPositionBase.NULL_VIEW_POSITION)
    fileprivate static let TYPE: String! = "Type: "
    public var viewPositionEvent: ViewPositionEvent! = nil
    fileprivate var halfWidth: Int32 = 0
    fileprivate var halfHeight: Int32 = 0
    fileprivate var name: String! = nil
    fileprivate var viewPosition: ViewPositionBase! = nil

    // Each class has its own field initializers
    private func initFields() {
    self.viewPositionEvent = ViewPositionEvent(self)
    self.halfWidth = 0
    self.halfHeight = 0
    
    self.viewPosition = ViewPositionBase.NULL_VIEW_POSITION
    }
    

    public init(_ name: String!, _ rectangle: Rectangle!, _ viewPosition: ViewPositionBase!) {
        super.init(rectangle.getWidth(), rectangle.getHeight())
        self.initFields()
        let localName: String! = nil
        localName = StringMaker().append(name).append(CommonSeps.getInstance().COLON).append(Integer.toHexString(TsUtil.getInstance().hashCode(self))).toString()
        self.name = localName
        let point: GPoint! = rectangle.getPoint()
        self.setPosition(point.getX(), point.getY(), point.getZ())
        self.setHalfWidth((self.getWidth() >> 1))
        self.setHalfHeight((self.getHeight() >> 1))
        self.viewPosition = viewPosition
        self.viewPosition.setAllbinaryLayer(self)
    }
    

    open override func setPosition(_ x: Int32, _ y: Int32, _ z: Int32) {
        super.setPosition(x, y, z)
    }
    

    open override func moveDXYZ(_ dx: Int32, _ dy: Int32, _ dz: Int32) {
        super.moveDXYZ(dx, dy, dz)
    }
    

    @discardableResult open override func getXP() -> Int32 {
        return super.getXP()
    }
    

    @discardableResult open override func getYP() -> Int32 {
        return super.getYP()
    }
    

    @discardableResult open override func getZP() -> Int32 {
        return super.getZP()
    }
    

    @discardableResult open override func getWidth() -> Int32 {
        return super.getWidth()
    }
    

    @discardableResult open override func getHeight() -> Int32 {
        return super.getHeight()
    }
    

    open override func setVisible(_ visible: Bool) {
        super.setVisible(visible)
    }
    

    @discardableResult open override func isVisible() -> Bool {
        return super.isVisible()
    }
    

    open override func paint(_ graphics: Graphics!) {
        super.paint(graphics)
    }
    

    open func onChangeEvent(_ layerManagerEvent: ViewPositionEvent!) {
    }
    

    open func paintThreed(_ graphics: Graphics!) {
    }
    

    @discardableResult open func getX2() -> Int32 {
        return self.getXP() &+ self.getWidth()
    }
    

    @discardableResult open func getY2() -> Int32 {
        return self.getYP() &+ self.getHeight()
    }
    

    @discardableResult open func getZ2() -> Int32 {
        return Int32(truncatingIfNeeded: (Int64(truncatingIfNeeded: self.getZP()) &+ self.getDepth()))
    }
    

    @discardableResult open func getName() -> String! {
        return self.name
    }
    

    open func setHalfWidth(_ halfWidth: Int32) {
        self.halfWidth = halfWidth
    }
    

    @discardableResult open func getHalfWidth() -> Int32 {
        return self.halfWidth
    }
    

    open func setHalfHeight(_ halfHeight: Int32) {
        self.halfHeight = halfHeight
    }
    

    @discardableResult open func getHalfHeight() -> Int32 {
        return self.halfHeight
    }
    

    @discardableResult open func getHalfDepth() -> Int32 {
        return Int32(truncatingIfNeeded: self.getDepth()) / 2
    }
    

    @discardableResult open func getViewPosition() -> ViewPositionBase! {
        return self.viewPosition
    }
    

    open func setViewPosition(_ viewPosition: ViewPositionBase!) {
        self.viewPosition = viewPosition
    }
    

    @discardableResult open func getGroupInterface() -> JArray<Group?>! {
        return BasicGroupFactory.getInstance().NONE_ARRAY
    }
    

    @discardableResult open func implmentsTickableInterface() -> Bool {
        return false
    }
    

    @discardableResult open func implmentsGameInputInterface() -> Bool {
        return false
    }
    

    @discardableResult open func implmentsArtificialIntelligenceCompositeInterface() -> Bool {
        return false
    }
    

    @discardableResult open func implmentsCollidableInterface() -> Bool {
        return false
    }
    

    @discardableResult open func implementsThreedInterface() -> Bool {
        return OpenGLFeatureUtil.getInstance().isAnyThreed()
    }
    

    @discardableResult open func getType() -> Int32 {
        return -1
    }
    

    @discardableResult open func getMultiPlayerType() -> Int32 {
        return -1
    }
    

    open override func toStringAppend(_ stringBuffer: StringMaker!) {
        let commonSeps: CommonSeps! = CommonSeps.getInstance()
        let positionStrings: PositionStrings! = PositionStrings.getInstance()
        let commonLabels: CommonLabels! = CommonLabels.getInstance()
        stringBuffer.append(self.getName())
        stringBuffer.append(commonSeps.COLON)
        stringBuffer.append(AllBinaryLayer.TYPE)
        stringBuffer.appendint(self.getType())
        stringBuffer.append(commonSeps.SPACE)
        stringBuffer.append(positionStrings.X_LABEL)
        stringBuffer.appendint(self.getXP())
        stringBuffer.append(commonSeps.SPACE)
        stringBuffer.append(positionStrings.Y_LABEL)
        stringBuffer.appendint(self.getYP())
        stringBuffer.append(commonSeps.SPACE)
        stringBuffer.append(positionStrings.Z_LABEL)
        stringBuffer.appendint(self.getZP())
        stringBuffer.append(commonSeps.SPACE)
        stringBuffer.append(commonLabels.WIDTH_LABEL)
        stringBuffer.appendint(self.getWidth())
        stringBuffer.append(commonSeps.SPACE)
        stringBuffer.append(commonLabels.HEIGHT_LABEL)
        stringBuffer.appendint(self.getHeight())
    }
    

    @discardableResult open override func toString() -> String! {
        let stringBuffer: StringMaker! = StringMaker()
        self.toStringAppend(stringBuffer)
        return stringBuffer.toString()
    }
}

