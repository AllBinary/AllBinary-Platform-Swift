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
    fileprivate var keyEventWrapper: ABKeyEventWrapper! = nil
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
    self.keyEventWrapper = ABKeyEventWrapper.getInstance()
    self.UNKNOWN = PCGameKey(self.keyEventWrapper.VK_UNDEFINED, "UNKNOWN")
    self.ENTER = PCGameKey(5, "Enter")
    self._A = PCGameKey(self.keyEventWrapper.VK_A, "A")
    self._B = PCGameKey(self.keyEventWrapper.VK_B, "B")
    self._C = PCGameKey(self.keyEventWrapper.VK_C, "C")
    self._D = PCGameKey(self.keyEventWrapper.VK_D, "D")
    self._E = PCGameKey(self.keyEventWrapper.VK_E, "E")
    self._F = PCGameKey(self.keyEventWrapper.VK_F, "F")
    self._G = PCGameKey(self.keyEventWrapper.VK_G, "G")
    self._H = PCGameKey(self.keyEventWrapper.VK_H, "H")
    self._I = PCGameKey(self.keyEventWrapper.VK_I, "I")
    self._J = PCGameKey(self.keyEventWrapper.VK_J, "J")
    self._K = PCGameKey(self.keyEventWrapper.VK_K, "K")
    self._L = PCGameKey(self.keyEventWrapper.VK_L, "L")
    self._M = PCGameKey(self.keyEventWrapper.VK_M, "M")
    self._N = PCGameKey(self.keyEventWrapper.VK_N, "N")
    self._O = PCGameKey(self.keyEventWrapper.VK_O, "O")
    self._P = PCGameKey(self.keyEventWrapper.VK_P, "P")
    self._Q = PCGameKey(self.keyEventWrapper.VK_Q, "Q")
    self._R = PCGameKey(self.keyEventWrapper.VK_R, "R")
    self._S = PCGameKey(self.keyEventWrapper.VK_S, "S")
    self._T = PCGameKey(self.keyEventWrapper.VK_T, "T")
    self._U = PCGameKey(self.keyEventWrapper.VK_U, "U")
    self._V = PCGameKey(self.keyEventWrapper.VK_V, "V")
    self._W = PCGameKey(self.keyEventWrapper.VK_W, "W")
    self._X = PCGameKey(self.keyEventWrapper.VK_X, "X")
    self._Y = PCGameKey(self.keyEventWrapper.VK_Y, "Y")
    self._Z = PCGameKey(self.keyEventWrapper.VK_Z, "Z")
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
    self.ZERO = PCGameKey(self.keyEventWrapper.VK_0, CommonPhoneStrings.getInstance().ZERO)
    self.ONE = PCGameKey(self.keyEventWrapper.VK_1, CommonPhoneStrings.getInstance().ONE)
    self.TWO = PCGameKey(self.keyEventWrapper.VK_2, CommonPhoneStrings.getInstance().TWO)
    self.THREE = PCGameKey(self.keyEventWrapper.VK_3, CommonPhoneStrings.getInstance().THREE)
    self.FOUR = PCGameKey(self.keyEventWrapper.VK_4, CommonPhoneStrings.getInstance().FOUR)
    self.FIVE = PCGameKey(self.keyEventWrapper.VK_5, CommonPhoneStrings.getInstance().FIVE)
    self.SIX = PCGameKey(self.keyEventWrapper.VK_6, CommonPhoneStrings.getInstance().SIX)
    self.SEVEN = PCGameKey(self.keyEventWrapper.VK_7, CommonPhoneStrings.getInstance().SEVEN)
    self.EIGHT = PCGameKey(self.keyEventWrapper.VK_8, CommonPhoneStrings.getInstance().EIGHT)
    self.NINE = PCGameKey(self.keyEventWrapper.VK_9, CommonPhoneStrings.getInstance().NINE)
    self.DPAD_UP = PCGameKey(self.keyEventWrapper.VK_UP, CommonPhoneStrings.getInstance().UP)
    self.DPAD_DOWN = PCGameKey(self.keyEventWrapper.VK_DOWN, CommonPhoneStrings.getInstance().DOWN)
    self.DPAD_LEFT = PCGameKey(self.keyEventWrapper.VK_LEFT, CommonPhoneStrings.getInstance().LEFT)
    self.DPAD_RIGHT = PCGameKey(self.keyEventWrapper.VK_RIGHT, CommonPhoneStrings.getInstance().RIGHT)
    self.DPAD_UP2 = self.DPAD_UP
    self.DPAD_DOWN2 = self.DPAD_DOWN
    self.DPAD_LEFT2 = self.DPAD_LEFT
    self.DPAD_RIGHT2 = self.DPAD_RIGHT
    self.COMMA = PCGameKey(self.keyEventWrapper.VK_COMMA, "COMMA")
    self.SPACE = PCGameKey(self.keyEventWrapper.VK_SPACE, "SPACE")
    self.DEL = PCGameKey(self.keyEventWrapper.VK_DELETE, "DEL")
    self.STAR = PCGameKey(42, CommonPhoneStrings.getInstance().STAR)
    self.QUESTION = PCGameKey(47, "?")
    self.PERIOD = PCGameKey(self.keyEventWrapper.VK_PERIOD, CommonSeps.getInstance().PERIOD)
    self.ESCAPE = PCGameKey(self.keyEventWrapper.VK_ESCAPE, "Esc")
    self.BACK_SPACE = PCGameKey(self.keyEventWrapper.VK_BACK_SPACE, "Backspace")
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

