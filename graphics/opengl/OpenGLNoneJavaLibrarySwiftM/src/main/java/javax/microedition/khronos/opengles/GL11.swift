// Generated Code Do Not Modify
// package javax.microedition.khronos.opengles

import J2SEForSwiftLibrary
// import java.nio.Buffer
// import java.nio.FloatBuffer
// import java.nio.IntBuffer

public protocol GL11: AnyObject, GL10 {
    func glBindBuffer(_ target: Int32, _ buffer: Int32)
    func glBufferData(_ target: Int32, _ size: Int32, _ data: Buffer!, _ usage: Int32)
    func glBufferSubData(_ target: Int32, _ offset: Int32, _ size: Int32, _ data: Buffer!)
    func glClipPlanef(_ plane: Int32, _ equation: JArray<Float>!, _ offset: Int32)
    func glClipPlanef(_ plane: Int32, _ equation: FloatBuffer!)
    func glColor4ub(_ red: Int8, _ green: Int8, _ blue: Int8, _ alpha: Int8)
    func glColorPointer(_ size: Int32, _ type: Int32, _ stride: Int32, _ offset: Int32)
    func glDeleteBuffers(_ n: Int32, _ buffers: JArray<Int32>!, _ offset: Int32)
    func glDeleteBuffers(_ n: Int32, _ buffers: IntBuffer!)
    func glDrawElements(_ mode: Int32, _ count: Int32, _ type: Int32, _ offset: Int32)
    func glGenBuffers(_ n: Int32, _ buffers: JArray<Int32>!, _ offset: Int32)
    func glGenBuffers(_ n: Int32, _ buffers: IntBuffer!)
    func glGetBufferParameteriv(_ target: Int32, _ pname: Int32, _ params: JArray<Int32>!, _ offset: Int32)
    func glGetBufferParameteriv(_ target: Int32, _ pname: Int32, _ params: IntBuffer!)
    func glGetClipPlanef(_ pname: Int32, _ eqn: JArray<Float>!, _ offset: Int32)
    func glGetClipPlanef(_ pname: Int32, _ eqn: FloatBuffer!)
    func glGetFloatv(_ pname: Int32, _ params: JArray<Float>!, _ offset: Int32)
    func glGetFloatv(_ pname: Int32, _ params: FloatBuffer!)
    func glGetLightfv(_ light: Int32, _ pname: Int32, _ params: JArray<Float>!, _ offset: Int32)
    func glGetLightfv(_ light: Int32, _ pname: Int32, _ params: FloatBuffer!)
    func glGetMaterialfv(_ face: Int32, _ pname: Int32, _ params: JArray<Float>!, _ offset: Int32)
    func glGetMaterialfv(_ face: Int32, _ pname: Int32, _ params: FloatBuffer!)
    func glGetTexEnviv(_ env: Int32, _ pname: Int32, _ params: JArray<Int32>!, _ offset: Int32)
    func glGetTexEnviv(_ env: Int32, _ pname: Int32, _ params: IntBuffer!)
    func glGetTexParameterfv(_ target: Int32, _ pname: Int32, _ params: JArray<Float>!, _ offset: Int32)
    func glGetTexParameterfv(_ target: Int32, _ pname: Int32, _ params: FloatBuffer!)
    func glGetTexParameteriv(_ target: Int32, _ pname: Int32, _ params: JArray<Int32>!, _ offset: Int32)
    func glGetTexParameteriv(_ target: Int32, _ pname: Int32, _ params: IntBuffer!)
    @discardableResult func glIsBuffer(_ buffer: Int32) -> Bool
    @discardableResult func glIsEnabled(_ cap: Int32) -> Bool
    @discardableResult func glIsTexture(_ texture: Int32) -> Bool
    func glNormalPointer(_ type: Int32, _ stride: Int32, _ offset: Int32)
    func glPointParameterf(_ pname: Int32, _ param: Float)
    func glPointParameterfv(_ pname: Int32, _ params: JArray<Float>!, _ offset: Int32)
    func glPointParameterfv(_ pname: Int32, _ params: FloatBuffer!)
    func glTexCoordPointer(_ size: Int32, _ type: Int32, _ stride: Int32, _ offset: Int32)
    func glTexEnvi(_ target: Int32, _ pname: Int32, _ param: Int32)
    func glTexEnviv(_ target: Int32, _ pname: Int32, _ params: JArray<Int32>!, _ offset: Int32)
    func glTexEnviv(_ target: Int32, _ pname: Int32, _ params: IntBuffer!)
    func glTexParameterfv(_ target: Int32, _ pname: Int32, _ params: JArray<Float>!, _ offset: Int32)
    func glTexParameterfv(_ target: Int32, _ pname: Int32, _ params: FloatBuffer!)
    func glTexParameteriv(_ target: Int32, _ pname: Int32, _ params: JArray<Int32>!, _ offset: Int32)
    func glTexParameteriv(_ target: Int32, _ pname: Int32, _ params: IntBuffer!)
    func glVertexPointer(_ size: Int32, _ type: Int32, _ stride: Int32, _ offset: Int32)
}

public enum GL11Constants {
    public static let GL_ACTIVE_TEXTURE: Int32 = 34016
    public static let GL_ADD_SIGNED: Int32 = 34164
    public static let GL_ALPHA_SCALE: Int32 = 3356
    public static let GL_ALPHA_TEST_FUNC: Int32 = 3009
    public static let GL_ALPHA_TEST_REF: Int32 = 3010
    public static let GL_ARRAY_BUFFER: Int32 = 34962
    public static let GL_ARRAY_BUFFER_BINDING: Int32 = 34964
    public static let GL_BLEND_DST: Int32 = 3040
    public static let GL_BLEND_SRC: Int32 = 3041
    public static let GL_BUFFER_ACCESS: Int32 = 35003
    public static let GL_BUFFER_SIZE: Int32 = 34660
    public static let GL_BUFFER_USAGE: Int32 = 34661
    public static let GL_CLIENT_ACTIVE_TEXTURE: Int32 = 34017
    public static let GL_CLIP_PLANE0: Int32 = 12288
    public static let GL_CLIP_PLANE1: Int32 = 12289
    public static let GL_CLIP_PLANE2: Int32 = 12290
    public static let GL_CLIP_PLANE3: Int32 = 12291
    public static let GL_CLIP_PLANE4: Int32 = 12292
    public static let GL_CLIP_PLANE5: Int32 = 12293
    public static let GL_COLOR_ARRAY_BUFFER_BINDING: Int32 = 34968
    public static let GL_COLOR_ARRAY_POINTER: Int32 = 32912
    public static let GL_COLOR_ARRAY_SIZE: Int32 = 32897
    public static let GL_COLOR_ARRAY_STRIDE: Int32 = 32899
    public static let GL_COLOR_ARRAY_TYPE: Int32 = 32898
    public static let GL_COLOR_CLEAR_VALUE: Int32 = 3106
    public static let GL_COLOR_WRITEMASK: Int32 = 3107
    public static let GL_COMBINE: Int32 = 34160
    public static let GL_COMBINE_ALPHA: Int32 = 34162
    public static let GL_COMBINE_RGB: Int32 = 34161
    public static let GL_CONSTANT: Int32 = 34166
    public static let GL_COORD_REPLACE_OES: Int32 = 34914
    public static let GL_CULL_FACE_MODE: Int32 = 2885
    public static let GL_CURRENT_COLOR: Int32 = 2816
    public static let GL_CURRENT_NORMAL: Int32 = 2818
    public static let GL_CURRENT_TEXTURE_COORDS: Int32 = 2819
    public static let GL_DEPTH_CLEAR_VALUE: Int32 = 2931
    public static let GL_DEPTH_FUNC: Int32 = 2932
    public static let GL_DEPTH_RANGE: Int32 = 2928
    public static let GL_DEPTH_WRITEMASK: Int32 = 2930
    public static let GL_DOT3_RGB: Int32 = 34478
    public static let GL_DOT3_RGBA: Int32 = 34479
    public static let GL_DYNAMIC_DRAW: Int32 = 35048
    public static let GL_ELEMENT_ARRAY_BUFFER: Int32 = 34963
    public static let GL_ELEMENT_ARRAY_BUFFER_BINDING: Int32 = 34965
    public static let GL_FRONT_FACE: Int32 = 2886
    public static let GL_GENERATE_MIPMAP: Int32 = 33169
    public static let GL_GENERATE_MIPMAP_HINT: Int32 = 33170
    public static let GL_INTERPOLATE: Int32 = 34165
    public static let GL_LINE_WIDTH: Int32 = 2849
    public static let GL_LOGIC_OP_MODE: Int32 = 3056
    public static let GL_MATRIX_MODE: Int32 = 2976
    public static let GL_MAX_CLIP_PLANES: Int32 = 3378
    public static let GL_MODELVIEW_MATRIX: Int32 = 2982
    public static let GL_MODELVIEW_MATRIX_FLOAT_AS_INT_BITS_OES: Int32 = 35213
    public static let GL_MODELVIEW_STACK_DEPTH: Int32 = 2979
    public static let GL_NORMAL_ARRAY_BUFFER_BINDING: Int32 = 34967
    public static let GL_NORMAL_ARRAY_POINTER: Int32 = 32911
    public static let GL_NORMAL_ARRAY_STRIDE: Int32 = 32895
    public static let GL_NORMAL_ARRAY_TYPE: Int32 = 32894
    public static let GL_OPERAND0_ALPHA: Int32 = 34200
    public static let GL_OPERAND0_RGB: Int32 = 34192
    public static let GL_OPERAND1_ALPHA: Int32 = 34201
    public static let GL_OPERAND1_RGB: Int32 = 34193
    public static let GL_OPERAND2_ALPHA: Int32 = 34202
    public static let GL_OPERAND2_RGB: Int32 = 34194
    public static let GL_POINT_DISTANCE_ATTENUATION: Int32 = 33065
    public static let GL_POINT_FADE_THRESHOLD_SIZE: Int32 = 33064
    public static let GL_POINT_SIZE: Int32 = 2833
    public static let GL_POINT_SIZE_ARRAY_BUFFER_BINDING_OES: Int32 = 35743
    public static let GL_POINT_SIZE_ARRAY_OES: Int32 = 35740
    public static let GL_POINT_SIZE_ARRAY_POINTER_OES: Int32 = 35212
    public static let GL_POINT_SIZE_ARRAY_STRIDE_OES: Int32 = 35211
    public static let GL_POINT_SIZE_ARRAY_TYPE_OES: Int32 = 35210
    public static let GL_POINT_SIZE_MAX: Int32 = 33063
    public static let GL_POINT_SIZE_MIN: Int32 = 33062
    public static let GL_POINT_SPRITE_OES: Int32 = 34913
    public static let GL_POLYGON_OFFSET_FACTOR: Int32 = 32824
    public static let GL_POLYGON_OFFSET_UNITS: Int32 = 10752
    public static let GL_PREVIOUS: Int32 = 34168
    public static let GL_PRIMARY_COLOR: Int32 = 34167
    public static let GL_PROJECTION_MATRIX: Int32 = 2983
    public static let GL_PROJECTION_MATRIX_FLOAT_AS_INT_BITS_OES: Int32 = 35214
    public static let GL_PROJECTION_STACK_DEPTH: Int32 = 2980
    public static let GL_RGB_SCALE: Int32 = 34163
    public static let GL_SAMPLE_BUFFERS: Int32 = 32936
    public static let GL_SAMPLE_COVERAGE_INVERT: Int32 = 32939
    public static let GL_SAMPLE_COVERAGE_VALUE: Int32 = 32938
    public static let GL_SAMPLES: Int32 = 32937
    public static let GL_SCISSOR_BOX: Int32 = 3088
    public static let GL_SHADE_MODEL: Int32 = 2900
    public static let GL_SRC0_ALPHA: Int32 = 34184
    public static let GL_SRC0_RGB: Int32 = 34176
    public static let GL_SRC1_ALPHA: Int32 = 34185
    public static let GL_SRC1_RGB: Int32 = 34177
    public static let GL_SRC2_ALPHA: Int32 = 34186
    public static let GL_SRC2_RGB: Int32 = 34178
    public static let GL_STATIC_DRAW: Int32 = 35044
    public static let GL_STENCIL_CLEAR_VALUE: Int32 = 2961
    public static let GL_STENCIL_FAIL: Int32 = 2964
    public static let GL_STENCIL_FUNC: Int32 = 2962
    public static let GL_STENCIL_PASS_DEPTH_FAIL: Int32 = 2965
    public static let GL_STENCIL_PASS_DEPTH_PASS: Int32 = 2966
    public static let GL_STENCIL_REF: Int32 = 2967
    public static let GL_STENCIL_VALUE_MASK: Int32 = 2963
    public static let GL_STENCIL_WRITEMASK: Int32 = 2968
    public static let GL_SUBTRACT: Int32 = 34023
    public static let GL_TEXTURE_BINDING_2D: Int32 = 32873
    public static let GL_TEXTURE_COORD_ARRAY_BUFFER_BINDING: Int32 = 34970
    public static let GL_TEXTURE_COORD_ARRAY_POINTER: Int32 = 32914
    public static let GL_TEXTURE_COORD_ARRAY_SIZE: Int32 = 32904
    public static let GL_TEXTURE_COORD_ARRAY_STRIDE: Int32 = 32906
    public static let GL_TEXTURE_COORD_ARRAY_TYPE: Int32 = 32905
    public static let GL_TEXTURE_MATRIX: Int32 = 2984
    public static let GL_TEXTURE_MATRIX_FLOAT_AS_INT_BITS_OES: Int32 = 35215
    public static let GL_TEXTURE_STACK_DEPTH: Int32 = 2981
    public static let GL_VERTEX_ARRAY_BUFFER_BINDING: Int32 = 34966
    public static let GL_VERTEX_ARRAY_POINTER: Int32 = 32910
    public static let GL_VERTEX_ARRAY_SIZE: Int32 = 32890
    public static let GL_VERTEX_ARRAY_STRIDE: Int32 = 32892
    public static let GL_VERTEX_ARRAY_TYPE: Int32 = 32891
    public static let GL_VIEWPORT: Int32 = 2978
    public static let GL_WRITE_ONLY: Int32 = 35001
}


