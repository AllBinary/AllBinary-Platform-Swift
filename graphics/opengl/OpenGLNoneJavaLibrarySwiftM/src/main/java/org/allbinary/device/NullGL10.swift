/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2025 AllBinary 
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
// package org.allbinary.device

import J2SEForSwiftLibrary
// import javax.microedition.khronos.opengles.GL10
// import java.nio.Buffer
// import java.nio.FloatBuffer
// import java.nio.IntBuffer
// import org.allbinary.logic.string.StringUtil

open class NullGL10: JObject, GL10 {
    public static let NULL_GL10: NullGL10! = NullGL10()

    public override init() {
        super.init()
    }
    

    open func glActiveTexture(_ texture: Int32) {
        return
    }
    

    open func glAlphaFunc(_ `func`: Int32, _ ref: Float) {
        return
    }
    

    open func glBindTexture(_ target: Int32, _ texture: Int32) {
        return
    }
    

    open func glBlendFunc(_ sfactor: Int32, _ dfactor: Int32) {
        return
    }
    

    open func glClear(_ mask: Int32) {
        return
    }
    

    open func glClearColor(_ red: Float, _ green: Float, _ blue: Float, _ alpha: Float) {
        return
    }
    

    open func glClearDepthf(_ depth: Float) {
        return
    }
    

    open func glClearStencil(_ s: Int32) {
        return
    }
    

    open func glClientActiveTexture(_ texture: Int32) {
        return
    }
    

    open func glColor4f(_ red: Float, _ green: Float, _ blue: Float, _ alpha: Float) {
        return
    }
    

    open func glColorMask(_ red: Bool, _ green: Bool, _ blue: Bool, _ alpha: Bool) {
        return
    }
    

    open func glColorPointer(_ size: Int32, _ type: Int32, _ stride: Int32, _ pointer: Buffer!) {
        return
    }
    

    open func glCompressedTexImage2D(_ target: Int32, _ level: Int32, _ internalformat: Int32, _ width: Int32, _ height: Int32, _ border: Int32, _ imageSize: Int32, _ data: Buffer!) {
        return
    }
    

    open func glCompressedTexSubImage2D(_ target: Int32, _ level: Int32, _ xoffset: Int32, _ yoffset: Int32, _ width: Int32, _ height: Int32, _ format: Int32, _ imageSize: Int32, _ data: Buffer!) {
        return
    }
    

    open func glCopyTexImage2D(_ target: Int32, _ level: Int32, _ internalformat: Int32, _ x: Int32, _ y: Int32, _ width: Int32, _ height: Int32, _ border: Int32) {
        return
    }
    

    open func glCopyTexSubImage2D(_ target: Int32, _ level: Int32, _ xoffset: Int32, _ yoffset: Int32, _ x: Int32, _ y: Int32, _ width: Int32, _ height: Int32) {
        return
    }
    

    open func glCullFace(_ mode: Int32) {
        return
    }
    

    open func glDeleteTextures(_ n: Int32, _ textures: JArray<Int32>!, _ offset: Int32) {
        return
    }
    

    open func glDeleteTextures(_ n: Int32, _ textures: IntBuffer!) {
        return
    }
    

    open func glDepthFunc(_ `func`: Int32) {
        return
    }
    

    open func glDepthMask(_ flag: Bool) {
        return
    }
    

    open func glDepthRangef(_ zNear: Float, _ zFar: Float) {
        return
    }
    

    open func glDisable(_ cap: Int32) {
        return
    }
    

    open func glDisableClientState(_ array: Int32) {
        return
    }
    

    open func glDrawArrays(_ mode: Int32, _ first: Int32, _ count: Int32) {
        return
    }
    

    open func glDrawElements(_ mode: Int32, _ count: Int32, _ type: Int32, _ indices: Buffer!) {
        return
    }
    

    open func glEnable(_ cap: Int32) {
        return
    }
    

    open func glEnableClientState(_ array: Int32) {
        return
    }
    

    open func glFinish() {
        return
    }
    

    open func glFlush() {
        return
    }
    

    open func glFogf(_ pname: Int32, _ param: Float) {
        return
    }
    

    open func glFogfv(_ pname: Int32, _ params: JArray<Float>!, _ offset: Int32) {
        return
    }
    

    open func glFogfv(_ pname: Int32, _ params: FloatBuffer!) {
        return
    }
    

    open func glFrontFace(_ mode: Int32) {
        return
    }
    

    open func glFrustumf(_ left: Float, _ right: Float, _ bottom: Float, _ top: Float, _ zNear: Float, _ zFar: Float) {
        return
    }
    

    open func glGenTextures(_ n: Int32, _ textures: JArray<Int32>!, _ offset: Int32) {
        return
    }
    

    open func glGenTextures(_ n: Int32, _ textures: IntBuffer!) {
        return
    }
    

    @discardableResult open func glGetError() -> Int32 {
        return 0
    }
    

    open func glGetIntegerv(_ pname: Int32, _ params: JArray<Int32>!, _ offset: Int32) {
        return
    }
    

    open func glGetIntegerv(_ pname: Int32, _ params: IntBuffer!) {
        return
    }
    

    @discardableResult open func glGetString(_ name: Int32) -> String! {
        return StringUtil.getInstance().EMPTY_STRING
    }
    

    open func glHint(_ target: Int32, _ mode: Int32) {
        return
    }
    

    open func glLightModelf(_ pname: Int32, _ param: Float) {
        return
    }
    

    open func glLightModelfv(_ pname: Int32, _ params: JArray<Float>!, _ offset: Int32) {
        return
    }
    

    open func glLightModelfv(_ pname: Int32, _ params: FloatBuffer!) {
        return
    }
    

    open func glLightf(_ light: Int32, _ pname: Int32, _ param: Float) {
        return
    }
    

    open func glLightfv(_ light: Int32, _ pname: Int32, _ params: JArray<Float>!, _ offset: Int32) {
        return
    }
    

    open func glLightfv(_ light: Int32, _ pname: Int32, _ params: FloatBuffer!) {
        return
    }
    

    open func glLineWidth(_ width: Float) {
        return
    }
    

    open func glLoadIdentity() {
        return
    }
    

    open func glLoadMatrixf(_ m: JArray<Float>!, _ offset: Int32) {
        return
    }
    

    open func glLoadMatrixf(_ m: FloatBuffer!) {
        return
    }
    

    open func glLogicOp(_ opcode: Int32) {
        return
    }
    

    open func glMaterialf(_ face: Int32, _ pname: Int32, _ param: Float) {
        return
    }
    

    open func glMaterialfv(_ face: Int32, _ pname: Int32, _ params: JArray<Float>!, _ offset: Int32) {
        return
    }
    

    open func glMaterialfv(_ face: Int32, _ pname: Int32, _ params: FloatBuffer!) {
        return
    }
    

    open func glMatrixMode(_ mode: Int32) {
        return
    }
    

    open func glMultMatrixf(_ m: JArray<Float>!, _ offset: Int32) {
        return
    }
    

    open func glMultMatrixf(_ m: FloatBuffer!) {
        return
    }
    

    open func glMultiTexCoord4f(_ target: Int32, _ s: Float, _ t: Float, _ r: Float, _ q: Float) {
        return
    }
    

    open func glNormal3f(_ nx: Float, _ ny: Float, _ nz: Float) {
        return
    }
    

    open func glNormalPointer(_ type: Int32, _ stride: Int32, _ pointer: Buffer!) {
        return
    }
    

    open func glOrthof(_ left: Float, _ right: Float, _ bottom: Float, _ top: Float, _ zNear: Float, _ zFar: Float) {
        return
    }
    

    open func glPixelStorei(_ pname: Int32, _ param: Int32) {
        return
    }
    

    open func glPointSize(_ size: Float) {
        return
    }
    

    open func glPolygonOffset(_ factor: Float, _ units: Float) {
        return
    }
    

    open func glPopMatrix() {
        return
    }
    

    open func glPushMatrix() {
        return
    }
    

    open func glReadPixels(_ x: Int32, _ y: Int32, _ width: Int32, _ height: Int32, _ format: Int32, _ type: Int32, _ pixels: Buffer!) {
        return
    }
    

    open func glRotatef(_ angle: Float, _ x: Float, _ y: Float, _ z: Float) {
        return
    }
    

    open func glRotatex(_ angle: Int32, _ x: Int32, _ y: Int32, _ z: Int32) {
        return
    }
    

    open func glSampleCoverage(_ value: Float, _ invert: Bool) {
        return
    }
    

    open func glScalef(_ x: Float, _ y: Float, _ z: Float) {
        return
    }
    

    open func glScalex(_ x: Int32, _ y: Int32, _ z: Int32) {
        return
    }
    

    open func glScissor(_ x: Int32, _ y: Int32, _ width: Int32, _ height: Int32) {
        return
    }
    

    open func glShadeModel(_ mode: Int32) {
        return
    }
    

    open func glStencilFunc(_ `func`: Int32, _ ref: Int32, _ mask: Int32) {
        return
    }
    

    open func glStencilMask(_ mask: Int32) {
        return
    }
    

    open func glStencilOp(_ fail: Int32, _ zfail: Int32, _ zpass: Int32) {
        return
    }
    

    open func glTexCoordPointer(_ size: Int32, _ type: Int32, _ stride: Int32, _ pointer: Buffer!) {
        return
    }
    

    open func glTexEnvf(_ target: Int32, _ pname: Int32, _ param: Float) {
        return
    }
    

    open func glTexEnvfv(_ target: Int32, _ pname: Int32, _ params: JArray<Float>!, _ offset: Int32) {
        return
    }
    

    open func glTexEnvfv(_ target: Int32, _ pname: Int32, _ params: FloatBuffer!) {
        return
    }
    

    open func glTexImage2D(_ target: Int32, _ level: Int32, _ internalformat: Int32, _ width: Int32, _ height: Int32, _ border: Int32, _ format: Int32, _ type: Int32, _ pixels: Buffer!) {
        return
    }
    

    open func glTexParameterf(_ target: Int32, _ pname: Int32, _ param: Float) {
        return
    }
    

    open func glTexParameteri(_ target: Int32, _ pname: Int32, _ param: Int32) {
        return
    }
    

    open func glTexSubImage2D(_ target: Int32, _ level: Int32, _ xoffset: Int32, _ yoffset: Int32, _ width: Int32, _ height: Int32, _ format: Int32, _ type: Int32, _ pixels: Buffer!) {
        return
    }
    

    open func glTranslatef(_ x: Float, _ y: Float, _ z: Float) {
        return
    }
    

    open func glVertexPointer(_ size: Int32, _ type: Int32, _ stride: Int32, _ pointer: Buffer!) {
        return
    }
    

    open func glViewport(_ x: Int32, _ y: Int32, _ width: Int32, _ height: Int32) {
        return
    }
    

    open func glBegin(_ i: Int32) {
        return
    }
    

    open func glEnd() {
        return
    }
    

    open func glVertex3f(_ f: Float, _ f2: Float, _ f3: Float) {
        return
    }
    

    open func glPolygonMode(_ i: Int32, _ i1: Int32) {
        return
    }
}

