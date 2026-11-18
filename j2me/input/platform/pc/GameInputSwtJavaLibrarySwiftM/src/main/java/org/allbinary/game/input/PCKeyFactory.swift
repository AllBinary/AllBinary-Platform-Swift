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
// package org.allbinary.game.input

import J2SEForSwiftLibrary
// import org.allbinary.math.PositionStrings
// import org.allbinary.string.CommonPhoneStrings
// import org.allbinary.string.CommonSeps

open class PCKeyFactory: JObject {
    fileprivate static let SINGLETON: PCKeyFactory! = PCKeyFactory()
    public var UNKNOWN: PCGameKey! = nil
    public var ENTER: PCGameKey! = nil
    public var _A: PCGameKey! = nil
    public var _B: PCGameKey! = nil
    public var _C: PCGameKey! = nil
    public var _D: PCGameKey! = nil
    public var _E: PCGameKey! = nil
    public var _F: PCGameKey! = nil
    public var _G: PCGameKey! = nil
    public var _H: PCGameKey! = nil
    public var _I: PCGameKey! = nil
    public var _J: PCGameKey! = nil
    public var _K: PCGameKey! = nil
    public var _L: PCGameKey! = nil
    public var _M: PCGameKey! = nil
    public var _N: PCGameKey! = nil
    public var _O: PCGameKey! = nil
    public var _P: PCGameKey! = nil
    public var _Q: PCGameKey! = nil
    public var _R: PCGameKey! = nil
    public var _S: PCGameKey! = nil
    public var _T: PCGameKey! = nil
    public var _U: PCGameKey! = nil
    public var _V: PCGameKey! = nil
    public var _W: PCGameKey! = nil
    public var _X: PCGameKey! = nil
    public var _Y: PCGameKey! = nil
    public var _Z: PCGameKey! = nil
    public var a: PCGameKey! = nil
    public var b: PCGameKey! = nil
    public var c: PCGameKey! = nil
    public var d: PCGameKey! = nil
    public var e: PCGameKey! = nil
    public var f: PCGameKey! = nil
    public var g: PCGameKey! = nil
    public var h: PCGameKey! = nil
    public var i: PCGameKey! = nil
    public var j: PCGameKey! = nil
    public var k: PCGameKey! = nil
    public var l: PCGameKey! = nil
    public var m: PCGameKey! = nil
    public var n: PCGameKey! = nil
    public var o: PCGameKey! = nil
    public var p: PCGameKey! = nil
    public var q: PCGameKey! = nil
    public var r: PCGameKey! = nil
    public var s: PCGameKey! = nil
    public var t: PCGameKey! = nil
    public var u: PCGameKey! = nil
    public var v: PCGameKey! = nil
    public var w: PCGameKey! = nil
    public var x: PCGameKey! = nil
    public var y: PCGameKey! = nil
    public var z: PCGameKey! = nil
    public var ZERO: PCGameKey! = nil
    public var ONE: PCGameKey! = nil
    public var TWO: PCGameKey! = nil
    public var THREE: PCGameKey! = nil
    public var FOUR: PCGameKey! = nil
    public var FIVE: PCGameKey! = nil
    public var SIX: PCGameKey! = nil
    public var SEVEN: PCGameKey! = nil
    public var EIGHT: PCGameKey! = nil
    public var NINE: PCGameKey! = nil
    public var DPAD_UP: PCGameKey! = nil
    public var DPAD_DOWN: PCGameKey! = nil
    public var DPAD_LEFT: PCGameKey! = nil
    public var DPAD_RIGHT: PCGameKey! = nil
    public var DPAD_UP2: PCGameKey! = nil
    public var DPAD_DOWN2: PCGameKey! = nil
    public var DPAD_LEFT2: PCGameKey! = nil
    public var DPAD_RIGHT2: PCGameKey! = nil
    public var COMMA: PCGameKey! = nil
    public var SPACE: PCGameKey! = nil
    public var DEL: PCGameKey! = nil
    public var STAR: PCGameKey! = nil
    public var QUESTION: PCGameKey! = nil
    public var PERIOD: PCGameKey! = nil
    public var ESCAPE: PCGameKey! = nil
    public var BACK_SPACE: PCGameKey! = nil

    private func initFields() {
    self.UNKNOWN = PCGameKey(254, "UNKNOWN")
    self.ENTER = PCGameKey(13, "Enter")
    self._A = PCGameKey(65, "A")
    self._B = PCGameKey(66, "B")
    self._C = PCGameKey(67, "C")
    self._D = PCGameKey(68, "D")
    self._E = PCGameKey(69, "E")
    self._F = PCGameKey(70, "F")
    self._G = PCGameKey(71, "G")
    self._H = PCGameKey(72, "H")
    self._I = PCGameKey(73, "I")
    self._J = PCGameKey(74, "J")
    self._K = PCGameKey(75, "K")
    self._L = PCGameKey(76, "L")
    self._M = PCGameKey(77, "M")
    self._N = PCGameKey(78, "N")
    self._O = PCGameKey(79, "O")
    self._P = PCGameKey(80, "P")
    self._Q = PCGameKey(81, "Q")
    self._R = PCGameKey(82, "R")
    self._S = PCGameKey(83, "S")
    self._T = PCGameKey(84, "T")
    self._U = PCGameKey(85, "U")
    self._V = PCGameKey(86, "V")
    self._W = PCGameKey(87, "W")
    self._X = PCGameKey(88, "X")
    self._Y = PCGameKey(89, "Y")
    self._Z = PCGameKey(90, "Z")
    self.a = PCGameKey(97, "a")
    self.b = PCGameKey(98, "b")
    self.c = PCGameKey(99, "c")
    self.d = PCGameKey(100, "d")
    self.e = PCGameKey(101, "e")
    self.f = PCGameKey(102, "f")
    self.g = PCGameKey(103, "g")
    self.h = PCGameKey(104, "h")
    self.i = PCGameKey(105, "i")
    self.j = PCGameKey(106, "j")
    self.k = PCGameKey(107, "k")
    self.l = PCGameKey(108, "l")
    self.m = PCGameKey(109, "m")
    self.n = PCGameKey(110, "n")
    self.o = PCGameKey(111, "o")
    self.p = PCGameKey(112, "p")
    self.q = PCGameKey(113, "q")
    self.r = PCGameKey(114, "r")
    self.s = PCGameKey(115, "s")
    self.t = PCGameKey(116, "t")
    self.u = PCGameKey(117, "u")
    self.v = PCGameKey(118, "v")
    self.w = PCGameKey(119, "w")
    self.x = PCGameKey(120, PositionStrings.getInstance().X)
    self.y = PCGameKey(121, PositionStrings.getInstance().Y)
    self.z = PCGameKey(122, "z")
    self.ZERO = PCGameKey(48, CommonPhoneStrings.getInstance().ZERO)
    self.ONE = PCGameKey(49, CommonPhoneStrings.getInstance().ONE)
    self.TWO = PCGameKey(50, CommonPhoneStrings.getInstance().TWO)
    self.THREE = PCGameKey(51, CommonPhoneStrings.getInstance().THREE)
    self.FOUR = PCGameKey(52, CommonPhoneStrings.getInstance().FOUR)
    self.FIVE = PCGameKey(53, CommonPhoneStrings.getInstance().FIVE)
    self.SIX = PCGameKey(54, CommonPhoneStrings.getInstance().SIX)
    self.SEVEN = PCGameKey(55, CommonPhoneStrings.getInstance().SEVEN)
    self.EIGHT = PCGameKey(56, CommonPhoneStrings.getInstance().EIGHT)
    self.NINE = PCGameKey(57, CommonPhoneStrings.getInstance().NINE)
    self.DPAD_UP = PCGameKey(38, CommonPhoneStrings.getInstance().UP)
    self.DPAD_DOWN = PCGameKey(40, CommonPhoneStrings.getInstance().DOWN)
    self.DPAD_LEFT = PCGameKey(37, CommonPhoneStrings.getInstance().LEFT)
    self.DPAD_RIGHT = PCGameKey(39, CommonPhoneStrings.getInstance().RIGHT)
    self.DPAD_UP2 = self.DPAD_UP
    self.DPAD_DOWN2 = self.DPAD_DOWN
    self.DPAD_LEFT2 = self.DPAD_LEFT
    self.DPAD_RIGHT2 = self.DPAD_RIGHT
    self.COMMA = PCGameKey(44, "COMMA")
    self.SPACE = PCGameKey(32, "SPACE")
    self.DEL = PCGameKey(46, "DEL")
    self.STAR = PCGameKey(42, CommonPhoneStrings.getInstance().STAR)
    self.QUESTION = PCGameKey(47, "?")
    self.PERIOD = PCGameKey(46, CommonSeps.getInstance().PERIOD)
    self.ESCAPE = PCGameKey(27, "Esc")
    self.BACK_SPACE = PCGameKey(8, "Backspace")
    }

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult open class func getInstance() -> PCKeyFactory! {
        return PCKeyFactory.SINGLETON
    }
    

    @discardableResult open func isSubmission(_ input: Input!) -> Bool {
        if (input === self.ENTER) {
            return true
        }
        return false
    }
    

    @discardableResult open func isDelete(_ input: Input!) -> Bool {
        if (input === self.DEL) {
            return true
        }
        return false
    }
    

    @discardableResult open func isBackSpace(_ input: Input!) -> Bool {
        if (input === self.BACK_SPACE) {
            return true
        }
        return false
    }
    

    @discardableResult open func isUp(_ input: Input!) -> Bool {
        if (input === self.DPAD_UP || input === self.DPAD_UP2) {
            return true
        }
        return false
    }
    

    @discardableResult open func isDown(_ input: Input!) -> Bool {
        if (input === self.DPAD_DOWN || input === self.DPAD_DOWN2) {
            return true
        }
        return false
    }
    

    @discardableResult open func isLeft(_ input: Input!) -> Bool {
        if (input === self.DPAD_LEFT || input === self.DPAD_LEFT2) {
            return true
        }
        return false
    }
    

    @discardableResult open func isRight(_ input: Input!) -> Bool {
        if (input === self.DPAD_RIGHT || input === self.DPAD_RIGHT2) {
            return true
        }
        return false
    }
    

    @discardableResult open func isEnter(_ input: Input!) -> Bool {
        if (input === self.ENTER) {
            return true
        }
        return false
    }
}

