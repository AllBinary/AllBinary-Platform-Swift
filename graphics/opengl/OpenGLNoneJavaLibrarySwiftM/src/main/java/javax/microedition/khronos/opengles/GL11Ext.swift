// Generated Code Do Not Modify
// package javax.microedition.khronos.opengles

import J2SEForSwiftLibrary
// import java.nio.Buffer
// import java.nio.FloatBuffer
// import java.nio.IntBuffer
// import java.nio.ShortBuffer

public protocol GL11Ext: AnyObject, GL {
    func glTexParameterfv(_ target: Int32, _ pname: Int32, _ param: JArray<Float>!, _ offset: Int32)
    func glCurrentPaletteMatrixOES(_ matrixpaletteindex: Int32)
    func glDrawTexfOES(_ x: Float, _ y: Float, _ z: Float, _ width: Float, _ height: Float)
    func glDrawTexfvOES(_ coords: JArray<Float>!, _ offset: Int32)
    func glDrawTexfvOES(_ coords: FloatBuffer!)
    func glDrawTexiOES(_ x: Int32, _ y: Int32, _ z: Int32, _ width: Int32, _ height: Int32)
    func glDrawTexivOES(_ coords: JArray<Int32>!, _ offset: Int32)
    func glDrawTexivOES(_ coords: IntBuffer!)
    func glDrawTexsOES(_ x: Int16, _ y: Int16, _ z: Int16, _ width: Int16, _ height: Int16)
    func glDrawTexsvOES(_ coords: JArray<Int16>!, _ offset: Int32)
    func glDrawTexsvOES(_ coords: ShortBuffer!)
    func glDrawTexxOES(_ x: Int32, _ y: Int32, _ z: Int32, _ width: Int32, _ height: Int32)
    func glDrawTexxvOES(_ coords: JArray<Int32>!, _ offset: Int32)
    func glDrawTexxvOES(_ coords: IntBuffer!)
    func glEnable(_ cap: Int32)
    func glEnableClientState(_ array: Int32)
    func glLoadPaletteFromModelViewMatrixOES()
    func glMatrixIndexPointerOES(_ size: Int32, _ type: Int32, _ stride: Int32, _ pointer: Buffer!)
    func glMatrixIndexPointerOES(_ size: Int32, _ type: Int32, _ stride: Int32, _ offset: Int32)
    func glWeightPointerOES(_ size: Int32, _ type: Int32, _ stride: Int32, _ pointer: Buffer!)
    func glWeightPointerOES(_ size: Int32, _ type: Int32, _ stride: Int32, _ offset: Int32)
}

public enum GL11ExtConstants {
    public static let GL_MATRIX_INDEX_ARRAY_BUFFER_BINDING_OES: Int32 = 35742
    public static let GL_MATRIX_INDEX_ARRAY_OES: Int32 = 34884
    public static let GL_MATRIX_INDEX_ARRAY_POINTER_OES: Int32 = 34889
    public static let GL_MATRIX_INDEX_ARRAY_SIZE_OES: Int32 = 34886
    public static let GL_MATRIX_INDEX_ARRAY_STRIDE_OES: Int32 = 34888
    public static let GL_MATRIX_INDEX_ARRAY_TYPE_OES: Int32 = 34887
    public static let GL_MATRIX_PALETTE_OES: Int32 = 34880
    public static let GL_MAX_PALETTE_MATRICES_OES: Int32 = 34882
    public static let GL_MAX_VERTEX_UNITS_OES: Int32 = 34468
    public static let GL_TEXTURE_CROP_RECT_OES: Int32 = 35741
    public static let GL_WEIGHT_ARRAY_BUFFER_BINDING_OES: Int32 = 34974
    public static let GL_WEIGHT_ARRAY_OES: Int32 = 34477
    public static let GL_WEIGHT_ARRAY_POINTER_OES: Int32 = 34476
    public static let GL_WEIGHT_ARRAY_SIZE_OES: Int32 = 34475
    public static let GL_WEIGHT_ARRAY_STRIDE_OES: Int32 = 34474
    public static let GL_WEIGHT_ARRAY_TYPE_OES: Int32 = 34473
}


