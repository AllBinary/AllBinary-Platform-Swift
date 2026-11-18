// Generated Code Do Not Modify
// package javax.microedition.khronos.opengles

import J2SEForSwiftLibrary
// import java.nio.Buffer
// import java.nio.FloatBuffer
// import java.nio.IntBuffer

public protocol GL10: AnyObject, GL {
    func glActiveTexture(_ texture: Int32)
    func glAlphaFunc(_ `func`: Int32, _ ref: Float)
    func glBindTexture(_ target: Int32, _ texture: Int32)
    func glBlendFunc(_ sfactor: Int32, _ dfactor: Int32)
    func glClear(_ mask: Int32)
    func glClearColor(_ red: Float, _ green: Float, _ blue: Float, _ alpha: Float)
    func glClearDepthf(_ depth: Float)
    func glClearStencil(_ s: Int32)
    func glClientActiveTexture(_ texture: Int32)
    func glColor4f(_ red: Float, _ green: Float, _ blue: Float, _ alpha: Float)
    func glColorMask(_ red: Bool, _ green: Bool, _ blue: Bool, _ alpha: Bool)
    func glColorPointer(_ size: Int32, _ type: Int32, _ stride: Int32, _ pointer: Buffer!)
    func glCompressedTexImage2D(_ target: Int32, _ level: Int32, _ internalformat: Int32, _ width: Int32, _ height: Int32, _ border: Int32, _ imageSize: Int32, _ data: Buffer!)
    func glCompressedTexSubImage2D(_ target: Int32, _ level: Int32, _ xoffset: Int32, _ yoffset: Int32, _ width: Int32, _ height: Int32, _ format: Int32, _ imageSize: Int32, _ data: Buffer!)
    func glCopyTexImage2D(_ target: Int32, _ level: Int32, _ internalformat: Int32, _ x: Int32, _ y: Int32, _ width: Int32, _ height: Int32, _ border: Int32)
    func glCopyTexSubImage2D(_ target: Int32, _ level: Int32, _ xoffset: Int32, _ yoffset: Int32, _ x: Int32, _ y: Int32, _ width: Int32, _ height: Int32)
    func glCullFace(_ mode: Int32)
    func glDeleteTextures(_ n: Int32, _ textures: JArray<Int32>!, _ offset: Int32)
    func glDeleteTextures(_ n: Int32, _ textures: IntBuffer!)
    func glDepthFunc(_ `func`: Int32)
    func glDepthMask(_ flag: Bool)
    func glDepthRangef(_ zNear: Float, _ zFar: Float)
    func glDisable(_ cap: Int32)
    func glDisableClientState(_ array: Int32)
    func glDrawArrays(_ mode: Int32, _ first: Int32, _ count: Int32)
    func glDrawElements(_ mode: Int32, _ count: Int32, _ type: Int32, _ indices: Buffer!)
    func glEnable(_ cap: Int32)
    func glEnableClientState(_ array: Int32)
    func glFinish()
    func glFlush()
    func glFogf(_ pname: Int32, _ param: Float)
    func glFogfv(_ pname: Int32, _ params: JArray<Float>!, _ offset: Int32)
    func glFogfv(_ pname: Int32, _ params: FloatBuffer!)
    func glFrontFace(_ mode: Int32)
    func glFrustumf(_ left: Float, _ right: Float, _ bottom: Float, _ top: Float, _ zNear: Float, _ zFar: Float)
    func glGenTextures(_ n: Int32, _ textures: JArray<Int32>!, _ offset: Int32)
    func glGenTextures(_ n: Int32, _ textures: IntBuffer!)
    @discardableResult func glGetError() -> Int32
    func glGetIntegerv(_ pname: Int32, _ params: JArray<Int32>!, _ offset: Int32)
    func glGetIntegerv(_ pname: Int32, _ params: IntBuffer!)
    @discardableResult func glGetString(_ name: Int32) -> String!
    func glHint(_ target: Int32, _ mode: Int32)
    func glLightModelf(_ pname: Int32, _ param: Float)
    func glLightModelfv(_ pname: Int32, _ params: JArray<Float>!, _ offset: Int32)
    func glLightModelfv(_ pname: Int32, _ params: FloatBuffer!)
    func glLightf(_ light: Int32, _ pname: Int32, _ param: Float)
    func glLightfv(_ light: Int32, _ pname: Int32, _ params: JArray<Float>!, _ offset: Int32)
    func glLightfv(_ light: Int32, _ pname: Int32, _ params: FloatBuffer!)
    func glLineWidth(_ width: Float)
    func glLoadIdentity()
    func glLoadMatrixf(_ m: JArray<Float>!, _ offset: Int32)
    func glLoadMatrixf(_ m: FloatBuffer!)
    func glLogicOp(_ opcode: Int32)
    func glMaterialf(_ face: Int32, _ pname: Int32, _ param: Float)
    func glMaterialfv(_ face: Int32, _ pname: Int32, _ params: JArray<Float>!, _ offset: Int32)
    func glMaterialfv(_ face: Int32, _ pname: Int32, _ params: FloatBuffer!)
    func glMatrixMode(_ mode: Int32)
    func glMultMatrixf(_ m: JArray<Float>!, _ offset: Int32)
    func glMultMatrixf(_ m: FloatBuffer!)
    func glMultiTexCoord4f(_ target: Int32, _ s: Float, _ t: Float, _ r: Float, _ q: Float)
    func glNormal3f(_ nx: Float, _ ny: Float, _ nz: Float)
    func glNormalPointer(_ type: Int32, _ stride: Int32, _ pointer: Buffer!)
    func glOrthof(_ left: Float, _ right: Float, _ bottom: Float, _ top: Float, _ zNear: Float, _ zFar: Float)
    func glPixelStorei(_ pname: Int32, _ param: Int32)
    func glPointSize(_ size: Float)
    func glPolygonOffset(_ factor: Float, _ units: Float)
    func glPopMatrix()
    func glPushMatrix()
    func glReadPixels(_ x: Int32, _ y: Int32, _ width: Int32, _ height: Int32, _ format: Int32, _ type: Int32, _ pixels: Buffer!)
    func glRotatef(_ angle: Float, _ x: Float, _ y: Float, _ z: Float)
    func glRotatex(_ angle: Int32, _ x: Int32, _ y: Int32, _ z: Int32)
    func glSampleCoverage(_ value: Float, _ invert: Bool)
    func glScalef(_ x: Float, _ y: Float, _ z: Float)
    func glScalex(_ x: Int32, _ y: Int32, _ z: Int32)
    func glScissor(_ x: Int32, _ y: Int32, _ width: Int32, _ height: Int32)
    func glShadeModel(_ mode: Int32)
    func glStencilFunc(_ `func`: Int32, _ ref: Int32, _ mask: Int32)
    func glStencilMask(_ mask: Int32)
    func glStencilOp(_ fail: Int32, _ zfail: Int32, _ zpass: Int32)
    func glTexCoordPointer(_ size: Int32, _ type: Int32, _ stride: Int32, _ pointer: Buffer!)
    func glTexEnvf(_ target: Int32, _ pname: Int32, _ param: Float)
    func glTexEnvfv(_ target: Int32, _ pname: Int32, _ params: JArray<Float>!, _ offset: Int32)
    func glTexEnvfv(_ target: Int32, _ pname: Int32, _ params: FloatBuffer!)
    func glTexImage2D(_ target: Int32, _ level: Int32, _ internalformat: Int32, _ width: Int32, _ height: Int32, _ border: Int32, _ format: Int32, _ type: Int32, _ pixels: Buffer!)
    func glTexParameterf(_ target: Int32, _ pname: Int32, _ param: Float)
    func glTexParameteri(_ target: Int32, _ pname: Int32, _ param: Int32)
    func glTexSubImage2D(_ target: Int32, _ level: Int32, _ xoffset: Int32, _ yoffset: Int32, _ width: Int32, _ height: Int32, _ format: Int32, _ type: Int32, _ pixels: Buffer!)
    func glTranslatef(_ x: Float, _ y: Float, _ z: Float)
    func glVertexPointer(_ size: Int32, _ type: Int32, _ stride: Int32, _ pointer: Buffer!)
    func glViewport(_ x: Int32, _ y: Int32, _ width: Int32, _ height: Int32)
    func glBegin(_ i: Int32)
    func glEnd()
    func glVertex3f(_ f: Float, _ f2: Float, _ f3: Float)
    func glPolygonMode(_ i: Int32, _ i1: Int32)
}

public enum GL10Constants {
    public static let GL_ADD: Int32 = 260
    public static let GL_ALIASED_LINE_WIDTH_RANGE: Int32 = 33902
    public static let GL_ALIASED_POINT_SIZE_RANGE: Int32 = 33901
    public static let GL_ALPHA: Int32 = 6406
    public static let GL_ALPHA_BITS: Int32 = 3413
    public static let GL_ALPHA_TEST: Int32 = 3008
    public static let GL_ALWAYS: Int32 = 519
    public static let GL_AMBIENT: Int32 = 4608
    public static let GL_AMBIENT_AND_DIFFUSE: Int32 = 5634
    public static let GL_AND: Int32 = 5377
    public static let GL_AND_INVERTED: Int32 = 5380
    public static let GL_AND_REVERSE: Int32 = 5378
    public static let GL_BACK: Int32 = 1029
    public static let GL_BLEND: Int32 = 3042
    public static let GL_BLUE_BITS: Int32 = 3412
    public static let GL_BYTE: Int32 = 5120
    public static let GL_CCW: Int32 = 2305
    public static let GL_CLAMP_TO_EDGE: Int32 = 33071
    public static let GL_CLEAR: Int32 = 5376
    public static let GL_COLOR_ARRAY: Int32 = 32886
    public static let GL_COLOR_BUFFER_BIT: Int32 = 16384
    public static let GL_COLOR_LOGIC_OP: Int32 = 3058
    public static let GL_COLOR_MATERIAL: Int32 = 2903
    public static let GL_COMPRESSED_TEXTURE_FORMATS: Int32 = 34467
    public static let GL_CONSTANT_ATTENUATION: Int32 = 4615
    public static let GL_COPY: Int32 = 5379
    public static let GL_COPY_INVERTED: Int32 = 5388
    public static let GL_CULL_FACE: Int32 = 2884
    public static let GL_CW: Int32 = 2304
    public static let GL_DECAL: Int32 = 8449
    public static let GL_DECR: Int32 = 7683
    public static let GL_DEPTH_BITS: Int32 = 3414
    public static let GL_DEPTH_BUFFER_BIT: Int32 = 256
    public static let GL_DEPTH_TEST: Int32 = 2929
    public static let GL_DIFFUSE: Int32 = 4609
    public static let GL_DITHER: Int32 = 3024
    public static let GL_DONT_CARE: Int32 = 4352
    public static let GL_DST_ALPHA: Int32 = 772
    public static let GL_DST_COLOR: Int32 = 774
    public static let GL_EMISSION: Int32 = 5632
    public static let GL_EQUAL: Int32 = 514
    public static let GL_EQUIV: Int32 = 5385
    public static let GL_EXP: Int32 = 2048
    public static let GL_EXP2: Int32 = 2049
    public static let GL_EXTENSIONS: Int32 = 7939
    public static let GL_FALSE: Int32 = 0
    public static let GL_FASTEST: Int32 = 4353
    public static let GL_FIXED: Int32 = 5132
    public static let GL_FLAT: Int32 = 7424
    public static let GL_FLOAT: Int32 = 5126
    public static let GL_FOG: Int32 = 2912
    public static let GL_FOG_COLOR: Int32 = 2918
    public static let GL_FOG_DENSITY: Int32 = 2914
    public static let GL_FOG_END: Int32 = 2916
    public static let GL_FOG_HINT: Int32 = 3156
    public static let GL_FOG_MODE: Int32 = 2917
    public static let GL_FOG_START: Int32 = 2915
    public static let GL_FRONT: Int32 = 1028
    public static let GL_FRONT_AND_BACK: Int32 = 1032
    public static let GL_GEQUAL: Int32 = 518
    public static let GL_GREATER: Int32 = 516
    public static let GL_GREEN_BITS: Int32 = 3411
    public static let GL_IMPLEMENTATION_COLOR_READ_FORMAT_OES: Int32 = 35739
    public static let GL_IMPLEMENTATION_COLOR_READ_TYPE_OES: Int32 = 35738
    public static let GL_INCR: Int32 = 7682
    public static let GL_INVALID_ENUM: Int32 = 1280
    public static let GL_INVALID_OPERATION: Int32 = 1282
    public static let GL_INVALID_VALUE: Int32 = 1281
    public static let GL_INVERT: Int32 = 5386
    public static let GL_KEEP: Int32 = 7680
    public static let GL_LEQUAL: Int32 = 515
    public static let GL_LESS: Int32 = 513
    public static let GL_LIGHT_MODEL_AMBIENT: Int32 = 2899
    public static let GL_LIGHT_MODEL_TWO_SIDE: Int32 = 2898
    public static let GL_LIGHT0: Int32 = 16384
    public static let GL_LIGHT1: Int32 = 16385
    public static let GL_LIGHT2: Int32 = 16386
    public static let GL_LIGHT3: Int32 = 16387
    public static let GL_LIGHT4: Int32 = 16388
    public static let GL_LIGHT5: Int32 = 16389
    public static let GL_LIGHT6: Int32 = 16390
    public static let GL_LIGHT7: Int32 = 16391
    public static let GL_LIGHTING: Int32 = 2896
    public static let GL_LINE_LOOP: Int32 = 2
    public static let GL_LINE_SMOOTH: Int32 = 2848
    public static let GL_LINE_SMOOTH_HINT: Int32 = 3154
    public static let GL_LINE_STRIP: Int32 = 3
    public static let GL_LINEAR: Int32 = 9729
    public static let GL_LINEAR_ATTENUATION: Int32 = 4616
    public static let GL_LINEAR_MIPMAP_LINEAR: Int32 = 9987
    public static let GL_LINEAR_MIPMAP_NEAREST: Int32 = 9985
    public static let GL_LINES: Int32 = 1
    public static let GL_LUMINANCE: Int32 = 6409
    public static let GL_LUMINANCE_ALPHA: Int32 = 6410
    public static let GL_MAX_ELEMENTS_INDICES: Int32 = 33001
    public static let GL_MAX_ELEMENTS_VERTICES: Int32 = 33000
    public static let GL_MAX_LIGHTS: Int32 = 3377
    public static let GL_MAX_MODELVIEW_STACK_DEPTH: Int32 = 3382
    public static let GL_MAX_PROJECTION_STACK_DEPTH: Int32 = 3384
    public static let GL_MAX_TEXTURE_SIZE: Int32 = 3379
    public static let GL_MAX_TEXTURE_STACK_DEPTH: Int32 = 3385
    public static let GL_MAX_TEXTURE_UNITS: Int32 = 34018
    public static let GL_MAX_VIEWPORT_DIMS: Int32 = 3386
    public static let GL_MODELVIEW: Int32 = 5888
    public static let GL_MODULATE: Int32 = 8448
    public static let GL_MULTISAMPLE: Int32 = 32925
    public static let GL_NAND: Int32 = 5390
    public static let GL_NEAREST: Int32 = 9728
    public static let GL_NEAREST_MIPMAP_LINEAR: Int32 = 9986
    public static let GL_NEAREST_MIPMAP_NEAREST: Int32 = 9984
    public static let GL_NEVER: Int32 = 512
    public static let GL_NICEST: Int32 = 4354
    public static let GL_NO_ERROR: Int32 = 0
    public static let GL_NOOP: Int32 = 5381
    public static let GL_NOR: Int32 = 5384
    public static let GL_NORMAL_ARRAY: Int32 = 32885
    public static let GL_NORMALIZE: Int32 = 2977
    public static let GL_NOTEQUAL: Int32 = 517
    public static let GL_NUM_COMPRESSED_TEXTURE_FORMATS: Int32 = 34466
    public static let GL_ONE: Int32 = 1
    public static let GL_ONE_MINUS_DST_ALPHA: Int32 = 773
    public static let GL_ONE_MINUS_DST_COLOR: Int32 = 775
    public static let GL_ONE_MINUS_SRC_ALPHA: Int32 = 771
    public static let GL_ONE_MINUS_SRC_COLOR: Int32 = 769
    public static let GL_OR: Int32 = 5383
    public static let GL_OR_INVERTED: Int32 = 5389
    public static let GL_OR_REVERSE: Int32 = 5387
    public static let GL_OUT_OF_MEMORY: Int32 = 1285
    public static let GL_PACK_ALIGNMENT: Int32 = 3333
    public static let GL_PALETTE4_R5_G6_B5_OES: Int32 = 35730
    public static let GL_PALETTE4_RGB5_A1_OES: Int32 = 35732
    public static let GL_PALETTE4_RGB8_OES: Int32 = 35728
    public static let GL_PALETTE4_RGBA4_OES: Int32 = 35731
    public static let GL_PALETTE4_RGBA8_OES: Int32 = 35729
    public static let GL_PALETTE8_R5_G6_B5_OES: Int32 = 35735
    public static let GL_PALETTE8_RGB5_A1_OES: Int32 = 35737
    public static let GL_PALETTE8_RGB8_OES: Int32 = 35733
    public static let GL_PALETTE8_RGBA4_OES: Int32 = 35736
    public static let GL_PALETTE8_RGBA8_OES: Int32 = 35734
    public static let GL_PERSPECTIVE_CORRECTION_HINT: Int32 = 3152
    public static let GL_POINT_SMOOTH: Int32 = 2832
    public static let GL_POINT_SMOOTH_HINT: Int32 = 3153
    public static let GL_POINTS: Int32 = 0
    public static let GL_POINT_FADE_THRESHOLD_SIZE: Int32 = 33064
    public static let GL_POINT_SIZE: Int32 = 2833
    public static let GL_POLYGON_OFFSET_FILL: Int32 = 32823
    public static let GL_POLYGON_SMOOTH_HINT: Int32 = 3155
    public static let GL_POSITION: Int32 = 4611
    public static let GL_PROJECTION: Int32 = 5889
    public static let GL_QUADRATIC_ATTENUATION: Int32 = 4617
    public static let GL_RED_BITS: Int32 = 3410
    public static let GL_RENDERER: Int32 = 7937
    public static let GL_REPEAT: Int32 = 10497
    public static let GL_REPLACE: Int32 = 7681
    public static let GL_RESCALE_NORMAL: Int32 = 32826
    public static let GL_RGB: Int32 = 6407
    public static let GL_RGBA: Int32 = 6408
    public static let GL_SAMPLE_ALPHA_TO_COVERAGE: Int32 = 32926
    public static let GL_SAMPLE_ALPHA_TO_ONE: Int32 = 32927
    public static let GL_SAMPLE_COVERAGE: Int32 = 32928
    public static let GL_SCISSOR_TEST: Int32 = 3089
    public static let GL_SET: Int32 = 5391
    public static let GL_SHININESS: Int32 = 5633
    public static let GL_SHORT: Int32 = 5122
    public static let GL_SMOOTH: Int32 = 7425
    public static let GL_SMOOTH_LINE_WIDTH_RANGE: Int32 = 2850
    public static let GL_SMOOTH_POINT_SIZE_RANGE: Int32 = 2834
    public static let GL_SPECULAR: Int32 = 4610
    public static let GL_SPOT_CUTOFF: Int32 = 4614
    public static let GL_SPOT_DIRECTION: Int32 = 4612
    public static let GL_SPOT_EXPONENT: Int32 = 4613
    public static let GL_SRC_ALPHA: Int32 = 770
    public static let GL_SRC_ALPHA_SATURATE: Int32 = 776
    public static let GL_SRC_COLOR: Int32 = 768
    public static let GL_STACK_OVERFLOW: Int32 = 1283
    public static let GL_STACK_UNDERFLOW: Int32 = 1284
    public static let GL_STENCIL_BITS: Int32 = 3415
    public static let GL_STENCIL_BUFFER_BIT: Int32 = 1024
    public static let GL_STENCIL_TEST: Int32 = 2960
    public static let GL_SUBPIXEL_BITS: Int32 = 3408
    public static let GL_TEXTURE: Int32 = 5890
    public static let GL_TEXTURE_2D: Int32 = 3553
    public static let GL_TEXTURE_COORD_ARRAY: Int32 = 32888
    public static let GL_TEXTURE_ENV: Int32 = 8960
    public static let GL_TEXTURE_ENV_COLOR: Int32 = 8705
    public static let GL_TEXTURE_ENV_MODE: Int32 = 8704
    public static let GL_TEXTURE_MAG_FILTER: Int32 = 10240
    public static let GL_TEXTURE_MIN_FILTER: Int32 = 10241
    public static let GL_TEXTURE_WRAP_S: Int32 = 10242
    public static let GL_TEXTURE_WRAP_T: Int32 = 10243
    public static let GL_TEXTURE0: Int32 = 33984
    public static let GL_TEXTURE1: Int32 = 33985
    public static let GL_TEXTURE2: Int32 = 33986
    public static let GL_TEXTURE3: Int32 = 33987
    public static let GL_TEXTURE4: Int32 = 33988
    public static let GL_TEXTURE5: Int32 = 33989
    public static let GL_TEXTURE6: Int32 = 33990
    public static let GL_TEXTURE7: Int32 = 33991
    public static let GL_TEXTURE8: Int32 = 33992
    public static let GL_TEXTURE9: Int32 = 33993
    public static let GL_TEXTURE10: Int32 = 33994
    public static let GL_TEXTURE11: Int32 = 33995
    public static let GL_TEXTURE12: Int32 = 33996
    public static let GL_TEXTURE13: Int32 = 33997
    public static let GL_TEXTURE14: Int32 = 33998
    public static let GL_TEXTURE15: Int32 = 33999
    public static let GL_TEXTURE16: Int32 = 34000
    public static let GL_TEXTURE17: Int32 = 34001
    public static let GL_TEXTURE18: Int32 = 34002
    public static let GL_TEXTURE19: Int32 = 34003
    public static let GL_TEXTURE20: Int32 = 34004
    public static let GL_TEXTURE21: Int32 = 34005
    public static let GL_TEXTURE22: Int32 = 34006
    public static let GL_TEXTURE23: Int32 = 34007
    public static let GL_TEXTURE24: Int32 = 34008
    public static let GL_TEXTURE25: Int32 = 34009
    public static let GL_TEXTURE26: Int32 = 34010
    public static let GL_TEXTURE27: Int32 = 34011
    public static let GL_TEXTURE28: Int32 = 34012
    public static let GL_TEXTURE29: Int32 = 34013
    public static let GL_TEXTURE30: Int32 = 34014
    public static let GL_TEXTURE31: Int32 = 34015
    public static let GL_TRIANGLE_FAN: Int32 = 6
    public static let GL_TRIANGLE_STRIP: Int32 = 5
    public static let GL_TRIANGLES: Int32 = 4
    public static let GL_TRUE: Int32 = 1
    public static let GL_UNPACK_ALIGNMENT: Int32 = 3317
    public static let GL_UNSIGNED_BYTE: Int32 = 5121
    public static let GL_UNSIGNED_SHORT: Int32 = 5123
    public static let GL_UNSIGNED_SHORT_4_4_4_4: Int32 = 32819
    public static let GL_UNSIGNED_SHORT_5_5_5_1: Int32 = 32820
    public static let GL_UNSIGNED_SHORT_5_6_5: Int32 = 33635
    public static let GL_VENDOR: Int32 = 7936
    public static let GL_VERSION: Int32 = 7938
    public static let GL_VERTEX_ARRAY: Int32 = 32884
    public static let GL_XOR: Int32 = 5382
    public static let GL_ZERO: Int32 = 0
}


