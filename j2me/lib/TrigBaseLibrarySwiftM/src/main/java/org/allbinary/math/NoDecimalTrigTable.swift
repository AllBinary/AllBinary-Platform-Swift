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
// package org.allbinary.math

import J2SEForSwiftLibrary
// import jsinterop.annotations.JsType
// import org.allbinary.logic.communication.log.PreLogUtil
// import org.allbinary.logic.math.MathUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.string.CommonLabels
// import org.allbinary.string.CommonSeps
// import jsinterop.annotations.JsMethod
// import jsinterop.annotations.JsConstructor
// import jsinterop.annotations.JsProperty

open class NoDecimalTrigTable: JObject {
    fileprivate static let instance: NoDecimalTrigTable! = NoDecimalTrigTable()
    fileprivate var mathUtil: MathUtil! = nil
    fileprivate var noDecimalSin: JArray<Int64>! = nil
    fileprivate var noDecimalCos: JArray<Int64>! = nil
    fileprivate var noDecimalTan: JArray<Int64>! = nil
    public var SCALE: Int32 = 0

    private func initFields() {
    self.mathUtil = MathUtil.getInstance()
    
    
    
    self.SCALE = 10000
    }
    

    @discardableResult open class func getInstance() -> NoDecimalTrigTable! {
        return NoDecimalTrigTable.instance
    }
    

    public override init() {
        super.init()
        self.initFields()
        let TOTAL_ANGLE: Int32 = Int32(truncatingIfNeeded: AngleFactory.getInstance().TOTAL_ANGLE)
        let MAX_VALUE: Int64 = (Int64(truncatingIfNeeded: Integer.MAX_VALUE))
        self.noDecimalSin = JArray<Int64>(TOTAL_ANGLE, 0)
        self.noDecimalCos = JArray<Int64>(TOTAL_ANGLE, 0)
        self.noDecimalTan = JArray<Int64>(TOTAL_ANGLE &+ 1, 0)
        self.noDecimalSin[0] = 0
        self.noDecimalSin[1] = 174
        self.noDecimalSin[2] = 348
        self.noDecimalSin[3] = 523
        self.noDecimalSin[4] = 697
        self.noDecimalSin[5] = 871
        self.noDecimalSin[6] = 1045
        self.noDecimalSin[7] = 1218
        self.noDecimalSin[8] = 1391
        self.noDecimalSin[9] = 1564
        self.noDecimalSin[10] = 1736
        self.noDecimalSin[11] = 1908
        self.noDecimalSin[12] = 2079
        self.noDecimalSin[13] = 2249
        self.noDecimalSin[14] = 2419
        self.noDecimalSin[15] = 2588
        self.noDecimalSin[16] = 2756
        self.noDecimalSin[17] = 2923
        self.noDecimalSin[18] = 3090
        self.noDecimalSin[19] = 3255
        self.noDecimalSin[20] = 3420
        self.noDecimalSin[21] = 3583
        self.noDecimalSin[22] = 3746
        self.noDecimalSin[23] = 3907
        self.noDecimalSin[24] = 4067
        self.noDecimalSin[25] = 4226
        self.noDecimalSin[26] = 4383
        self.noDecimalSin[27] = 4539
        self.noDecimalSin[28] = 4694
        self.noDecimalSin[29] = 4848
        self.noDecimalSin[30] = 4999
        self.noDecimalSin[31] = 5150
        self.noDecimalSin[32] = 5299
        self.noDecimalSin[33] = 5446
        self.noDecimalSin[34] = 5591
        self.noDecimalSin[35] = 5735
        self.noDecimalSin[36] = 5877
        self.noDecimalSin[37] = 6018
        self.noDecimalSin[38] = 6156
        self.noDecimalSin[39] = 6293
        self.noDecimalSin[40] = 6427
        self.noDecimalSin[41] = 6560
        self.noDecimalSin[42] = 6691
        self.noDecimalSin[43] = 6819
        self.noDecimalSin[44] = 6946
        self.noDecimalSin[45] = 7071
        self.noDecimalSin[46] = 7193
        self.noDecimalSin[47] = 7313
        self.noDecimalSin[48] = 7431
        self.noDecimalSin[49] = 7547
        self.noDecimalSin[50] = 7660
        self.noDecimalSin[51] = 7771
        self.noDecimalSin[52] = 7880
        self.noDecimalSin[53] = 7986
        self.noDecimalSin[54] = 8090
        self.noDecimalSin[55] = 8191
        self.noDecimalSin[56] = 8290
        self.noDecimalSin[57] = 8386
        self.noDecimalSin[58] = 8480
        self.noDecimalSin[59] = 8571
        self.noDecimalSin[60] = 8660
        self.noDecimalSin[61] = 8746
        self.noDecimalSin[62] = 8829
        self.noDecimalSin[63] = 8910
        self.noDecimalSin[64] = 8987
        self.noDecimalSin[65] = 9063
        self.noDecimalSin[66] = 9135
        self.noDecimalSin[67] = 9205
        self.noDecimalSin[68] = 9271
        self.noDecimalSin[69] = 9335
        self.noDecimalSin[70] = 9396
        self.noDecimalSin[71] = 9455
        self.noDecimalSin[72] = 9510
        self.noDecimalSin[73] = 9563
        self.noDecimalSin[74] = 9612
        self.noDecimalSin[75] = 9659
        self.noDecimalSin[76] = 9702
        self.noDecimalSin[77] = 9743
        self.noDecimalSin[78] = 9781
        self.noDecimalSin[79] = 9816
        self.noDecimalSin[80] = 9848
        self.noDecimalSin[81] = 9876
        self.noDecimalSin[82] = 9902
        self.noDecimalSin[83] = 9925
        self.noDecimalSin[84] = 9945
        self.noDecimalSin[85] = 9961
        self.noDecimalSin[86] = 9975
        self.noDecimalSin[87] = 9986
        self.noDecimalSin[88] = 9993
        self.noDecimalSin[89] = 9998
        self.noDecimalSin[90] = 10000
        self.noDecimalSin[91] = 9998
        self.noDecimalSin[92] = 9993
        self.noDecimalSin[93] = 9986
        self.noDecimalSin[94] = 9975
        self.noDecimalSin[95] = 9961
        self.noDecimalSin[96] = 9945
        self.noDecimalSin[97] = 9925
        self.noDecimalSin[98] = 9902
        self.noDecimalSin[99] = 9876
        self.noDecimalSin[100] = 9848
        self.noDecimalSin[101] = 9816
        self.noDecimalSin[102] = 9781
        self.noDecimalSin[103] = 9743
        self.noDecimalSin[104] = 9702
        self.noDecimalSin[105] = 9659
        self.noDecimalSin[106] = 9612
        self.noDecimalSin[107] = 9563
        self.noDecimalSin[108] = 9510
        self.noDecimalSin[109] = 9455
        self.noDecimalSin[110] = 9396
        self.noDecimalSin[111] = 9335
        self.noDecimalSin[112] = 9271
        self.noDecimalSin[113] = 9205
        self.noDecimalSin[114] = 9135
        self.noDecimalSin[115] = 9063
        self.noDecimalSin[116] = 8987
        self.noDecimalSin[117] = 8910
        self.noDecimalSin[118] = 8829
        self.noDecimalSin[119] = 8746
        self.noDecimalSin[120] = 8660
        self.noDecimalSin[121] = 8571
        self.noDecimalSin[122] = 8480
        self.noDecimalSin[123] = 8386
        self.noDecimalSin[124] = 8290
        self.noDecimalSin[125] = 8191
        self.noDecimalSin[126] = 8090
        self.noDecimalSin[127] = 7986
        self.noDecimalSin[128] = 7880
        self.noDecimalSin[129] = 7771
        self.noDecimalSin[130] = 7660
        self.noDecimalSin[131] = 7547
        self.noDecimalSin[132] = 7431
        self.noDecimalSin[133] = 7313
        self.noDecimalSin[134] = 7193
        self.noDecimalSin[135] = 7071
        self.noDecimalSin[136] = 6946
        self.noDecimalSin[137] = 6819
        self.noDecimalSin[138] = 6691
        self.noDecimalSin[139] = 6560
        self.noDecimalSin[140] = 6427
        self.noDecimalSin[141] = 6293
        self.noDecimalSin[142] = 6156
        self.noDecimalSin[143] = 6018
        self.noDecimalSin[144] = 5877
        self.noDecimalSin[145] = 5735
        self.noDecimalSin[146] = 5591
        self.noDecimalSin[147] = 5446
        self.noDecimalSin[148] = 5299
        self.noDecimalSin[149] = 5150
        self.noDecimalSin[150] = 4999
        self.noDecimalSin[151] = 4848
        self.noDecimalSin[152] = 4694
        self.noDecimalSin[153] = 4539
        self.noDecimalSin[154] = 4383
        self.noDecimalSin[155] = 4226
        self.noDecimalSin[156] = 4067
        self.noDecimalSin[157] = 3907
        self.noDecimalSin[158] = 3746
        self.noDecimalSin[159] = 3583
        self.noDecimalSin[160] = 3420
        self.noDecimalSin[161] = 3255
        self.noDecimalSin[162] = 3090
        self.noDecimalSin[163] = 2923
        self.noDecimalSin[164] = 2756
        self.noDecimalSin[165] = 2588
        self.noDecimalSin[166] = 2419
        self.noDecimalSin[167] = 2249
        self.noDecimalSin[168] = 2079
        self.noDecimalSin[169] = 1908
        self.noDecimalSin[170] = 1736
        self.noDecimalSin[171] = 1564
        self.noDecimalSin[172] = 1391
        self.noDecimalSin[173] = 1218
        self.noDecimalSin[174] = 1045
        self.noDecimalSin[175] = 871
        self.noDecimalSin[176] = 697
        self.noDecimalSin[177] = 523
        self.noDecimalSin[178] = 348
        self.noDecimalSin[179] = 174
        self.noDecimalSin[180] = 0
        self.noDecimalSin[181] = Int64(truncatingIfNeeded: -174)
        self.noDecimalSin[182] = Int64(truncatingIfNeeded: -348)
        self.noDecimalSin[183] = Int64(truncatingIfNeeded: -523)
        self.noDecimalSin[184] = Int64(truncatingIfNeeded: -697)
        self.noDecimalSin[185] = Int64(truncatingIfNeeded: -871)
        self.noDecimalSin[186] = Int64(truncatingIfNeeded: -1045)
        self.noDecimalSin[187] = Int64(truncatingIfNeeded: -1218)
        self.noDecimalSin[188] = Int64(truncatingIfNeeded: -1391)
        self.noDecimalSin[189] = Int64(truncatingIfNeeded: -1564)
        self.noDecimalSin[190] = Int64(truncatingIfNeeded: -1736)
        self.noDecimalSin[191] = Int64(truncatingIfNeeded: -1908)
        self.noDecimalSin[192] = Int64(truncatingIfNeeded: -2079)
        self.noDecimalSin[193] = Int64(truncatingIfNeeded: -2249)
        self.noDecimalSin[194] = Int64(truncatingIfNeeded: -2419)
        self.noDecimalSin[195] = Int64(truncatingIfNeeded: -2588)
        self.noDecimalSin[196] = Int64(truncatingIfNeeded: -2756)
        self.noDecimalSin[197] = Int64(truncatingIfNeeded: -2923)
        self.noDecimalSin[198] = Int64(truncatingIfNeeded: -3090)
        self.noDecimalSin[199] = Int64(truncatingIfNeeded: -3255)
        self.noDecimalSin[200] = Int64(truncatingIfNeeded: -3420)
        self.noDecimalSin[201] = Int64(truncatingIfNeeded: -3583)
        self.noDecimalSin[202] = Int64(truncatingIfNeeded: -3746)
        self.noDecimalSin[203] = Int64(truncatingIfNeeded: -3907)
        self.noDecimalSin[204] = Int64(truncatingIfNeeded: -4067)
        self.noDecimalSin[205] = Int64(truncatingIfNeeded: -4226)
        self.noDecimalSin[206] = Int64(truncatingIfNeeded: -4383)
        self.noDecimalSin[207] = Int64(truncatingIfNeeded: -4539)
        self.noDecimalSin[208] = Int64(truncatingIfNeeded: -4694)
        self.noDecimalSin[209] = Int64(truncatingIfNeeded: -4848)
        self.noDecimalSin[210] = Int64(truncatingIfNeeded: -5000)
        self.noDecimalSin[211] = Int64(truncatingIfNeeded: -5150)
        self.noDecimalSin[212] = Int64(truncatingIfNeeded: -5299)
        self.noDecimalSin[213] = Int64(truncatingIfNeeded: -5446)
        self.noDecimalSin[214] = Int64(truncatingIfNeeded: -5591)
        self.noDecimalSin[215] = Int64(truncatingIfNeeded: -5735)
        self.noDecimalSin[216] = Int64(truncatingIfNeeded: -5877)
        self.noDecimalSin[217] = Int64(truncatingIfNeeded: -6018)
        self.noDecimalSin[218] = Int64(truncatingIfNeeded: -6156)
        self.noDecimalSin[219] = Int64(truncatingIfNeeded: -6293)
        self.noDecimalSin[220] = Int64(truncatingIfNeeded: -6427)
        self.noDecimalSin[221] = Int64(truncatingIfNeeded: -6560)
        self.noDecimalSin[222] = Int64(truncatingIfNeeded: -6691)
        self.noDecimalSin[223] = Int64(truncatingIfNeeded: -6819)
        self.noDecimalSin[224] = Int64(truncatingIfNeeded: -6946)
        self.noDecimalSin[225] = Int64(truncatingIfNeeded: -7071)
        self.noDecimalSin[226] = Int64(truncatingIfNeeded: -7193)
        self.noDecimalSin[227] = Int64(truncatingIfNeeded: -7313)
        self.noDecimalSin[228] = Int64(truncatingIfNeeded: -7431)
        self.noDecimalSin[229] = Int64(truncatingIfNeeded: -7547)
        self.noDecimalSin[230] = Int64(truncatingIfNeeded: -7660)
        self.noDecimalSin[231] = Int64(truncatingIfNeeded: -7771)
        self.noDecimalSin[232] = Int64(truncatingIfNeeded: -7880)
        self.noDecimalSin[233] = Int64(truncatingIfNeeded: -7986)
        self.noDecimalSin[234] = Int64(truncatingIfNeeded: -8090)
        self.noDecimalSin[235] = Int64(truncatingIfNeeded: -8191)
        self.noDecimalSin[236] = Int64(truncatingIfNeeded: -8290)
        self.noDecimalSin[237] = Int64(truncatingIfNeeded: -8386)
        self.noDecimalSin[238] = Int64(truncatingIfNeeded: -8480)
        self.noDecimalSin[239] = Int64(truncatingIfNeeded: -8571)
        self.noDecimalSin[240] = Int64(truncatingIfNeeded: -8660)
        self.noDecimalSin[241] = Int64(truncatingIfNeeded: -8746)
        self.noDecimalSin[242] = Int64(truncatingIfNeeded: -8829)
        self.noDecimalSin[243] = Int64(truncatingIfNeeded: -8910)
        self.noDecimalSin[244] = Int64(truncatingIfNeeded: -8987)
        self.noDecimalSin[245] = Int64(truncatingIfNeeded: -9063)
        self.noDecimalSin[246] = Int64(truncatingIfNeeded: -9135)
        self.noDecimalSin[247] = Int64(truncatingIfNeeded: -9205)
        self.noDecimalSin[248] = Int64(truncatingIfNeeded: -9271)
        self.noDecimalSin[249] = Int64(truncatingIfNeeded: -9335)
        self.noDecimalSin[250] = Int64(truncatingIfNeeded: -9396)
        self.noDecimalSin[251] = Int64(truncatingIfNeeded: -9455)
        self.noDecimalSin[252] = Int64(truncatingIfNeeded: -9510)
        self.noDecimalSin[253] = Int64(truncatingIfNeeded: -9563)
        self.noDecimalSin[254] = Int64(truncatingIfNeeded: -9612)
        self.noDecimalSin[255] = Int64(truncatingIfNeeded: -9659)
        self.noDecimalSin[256] = Int64(truncatingIfNeeded: -9702)
        self.noDecimalSin[257] = Int64(truncatingIfNeeded: -9743)
        self.noDecimalSin[258] = Int64(truncatingIfNeeded: -9781)
        self.noDecimalSin[259] = Int64(truncatingIfNeeded: -9816)
        self.noDecimalSin[260] = Int64(truncatingIfNeeded: -9848)
        self.noDecimalSin[261] = Int64(truncatingIfNeeded: -9876)
        self.noDecimalSin[262] = Int64(truncatingIfNeeded: -9902)
        self.noDecimalSin[263] = Int64(truncatingIfNeeded: -9925)
        self.noDecimalSin[264] = Int64(truncatingIfNeeded: -9945)
        self.noDecimalSin[265] = Int64(truncatingIfNeeded: -9961)
        self.noDecimalSin[266] = Int64(truncatingIfNeeded: -9975)
        self.noDecimalSin[267] = Int64(truncatingIfNeeded: -9986)
        self.noDecimalSin[268] = Int64(truncatingIfNeeded: -9993)
        self.noDecimalSin[269] = Int64(truncatingIfNeeded: -9998)
        self.noDecimalSin[270] = Int64(truncatingIfNeeded: -10000)
        self.noDecimalSin[271] = Int64(truncatingIfNeeded: -9998)
        self.noDecimalSin[272] = Int64(truncatingIfNeeded: -9993)
        self.noDecimalSin[273] = Int64(truncatingIfNeeded: -9986)
        self.noDecimalSin[274] = Int64(truncatingIfNeeded: -9975)
        self.noDecimalSin[275] = Int64(truncatingIfNeeded: -9961)
        self.noDecimalSin[276] = Int64(truncatingIfNeeded: -9945)
        self.noDecimalSin[277] = Int64(truncatingIfNeeded: -9925)
        self.noDecimalSin[278] = Int64(truncatingIfNeeded: -9902)
        self.noDecimalSin[279] = Int64(truncatingIfNeeded: -9876)
        self.noDecimalSin[280] = Int64(truncatingIfNeeded: -9848)
        self.noDecimalSin[281] = Int64(truncatingIfNeeded: -9816)
        self.noDecimalSin[282] = Int64(truncatingIfNeeded: -9781)
        self.noDecimalSin[283] = Int64(truncatingIfNeeded: -9743)
        self.noDecimalSin[284] = Int64(truncatingIfNeeded: -9702)
        self.noDecimalSin[285] = Int64(truncatingIfNeeded: -9659)
        self.noDecimalSin[286] = Int64(truncatingIfNeeded: -9612)
        self.noDecimalSin[287] = Int64(truncatingIfNeeded: -9563)
        self.noDecimalSin[288] = Int64(truncatingIfNeeded: -9510)
        self.noDecimalSin[289] = Int64(truncatingIfNeeded: -9455)
        self.noDecimalSin[290] = Int64(truncatingIfNeeded: -9396)
        self.noDecimalSin[291] = Int64(truncatingIfNeeded: -9335)
        self.noDecimalSin[292] = Int64(truncatingIfNeeded: -9271)
        self.noDecimalSin[293] = Int64(truncatingIfNeeded: -9205)
        self.noDecimalSin[294] = Int64(truncatingIfNeeded: -9135)
        self.noDecimalSin[295] = Int64(truncatingIfNeeded: -9063)
        self.noDecimalSin[296] = Int64(truncatingIfNeeded: -8987)
        self.noDecimalSin[297] = Int64(truncatingIfNeeded: -8910)
        self.noDecimalSin[298] = Int64(truncatingIfNeeded: -8829)
        self.noDecimalSin[299] = Int64(truncatingIfNeeded: -8746)
        self.noDecimalSin[300] = Int64(truncatingIfNeeded: -8660)
        self.noDecimalSin[301] = Int64(truncatingIfNeeded: -8571)
        self.noDecimalSin[302] = Int64(truncatingIfNeeded: -8480)
        self.noDecimalSin[303] = Int64(truncatingIfNeeded: -8386)
        self.noDecimalSin[304] = Int64(truncatingIfNeeded: -8290)
        self.noDecimalSin[305] = Int64(truncatingIfNeeded: -8191)
        self.noDecimalSin[306] = Int64(truncatingIfNeeded: -8090)
        self.noDecimalSin[307] = Int64(truncatingIfNeeded: -7986)
        self.noDecimalSin[308] = Int64(truncatingIfNeeded: -7880)
        self.noDecimalSin[309] = Int64(truncatingIfNeeded: -7771)
        self.noDecimalSin[310] = Int64(truncatingIfNeeded: -7660)
        self.noDecimalSin[311] = Int64(truncatingIfNeeded: -7547)
        self.noDecimalSin[312] = Int64(truncatingIfNeeded: -7431)
        self.noDecimalSin[313] = Int64(truncatingIfNeeded: -7313)
        self.noDecimalSin[314] = Int64(truncatingIfNeeded: -7193)
        self.noDecimalSin[315] = Int64(truncatingIfNeeded: -7071)
        self.noDecimalSin[316] = Int64(truncatingIfNeeded: -6946)
        self.noDecimalSin[317] = Int64(truncatingIfNeeded: -6819)
        self.noDecimalSin[318] = Int64(truncatingIfNeeded: -6691)
        self.noDecimalSin[319] = Int64(truncatingIfNeeded: -6560)
        self.noDecimalSin[320] = Int64(truncatingIfNeeded: -6427)
        self.noDecimalSin[321] = Int64(truncatingIfNeeded: -6293)
        self.noDecimalSin[322] = Int64(truncatingIfNeeded: -6156)
        self.noDecimalSin[323] = Int64(truncatingIfNeeded: -6018)
        self.noDecimalSin[324] = Int64(truncatingIfNeeded: -5877)
        self.noDecimalSin[325] = Int64(truncatingIfNeeded: -5735)
        self.noDecimalSin[326] = Int64(truncatingIfNeeded: -5591)
        self.noDecimalSin[327] = Int64(truncatingIfNeeded: -5446)
        self.noDecimalSin[328] = Int64(truncatingIfNeeded: -5299)
        self.noDecimalSin[329] = Int64(truncatingIfNeeded: -5150)
        self.noDecimalSin[330] = Int64(truncatingIfNeeded: -5000)
        self.noDecimalSin[331] = Int64(truncatingIfNeeded: -4848)
        self.noDecimalSin[332] = Int64(truncatingIfNeeded: -4694)
        self.noDecimalSin[333] = Int64(truncatingIfNeeded: -4539)
        self.noDecimalSin[334] = Int64(truncatingIfNeeded: -4383)
        self.noDecimalSin[335] = Int64(truncatingIfNeeded: -4226)
        self.noDecimalSin[336] = Int64(truncatingIfNeeded: -4067)
        self.noDecimalSin[337] = Int64(truncatingIfNeeded: -3907)
        self.noDecimalSin[338] = Int64(truncatingIfNeeded: -3746)
        self.noDecimalSin[339] = Int64(truncatingIfNeeded: -3583)
        self.noDecimalSin[340] = Int64(truncatingIfNeeded: -3420)
        self.noDecimalSin[341] = Int64(truncatingIfNeeded: -3255)
        self.noDecimalSin[342] = Int64(truncatingIfNeeded: -3090)
        self.noDecimalSin[343] = Int64(truncatingIfNeeded: -2923)
        self.noDecimalSin[344] = Int64(truncatingIfNeeded: -2756)
        self.noDecimalSin[345] = Int64(truncatingIfNeeded: -2588)
        self.noDecimalSin[346] = Int64(truncatingIfNeeded: -2419)
        self.noDecimalSin[347] = Int64(truncatingIfNeeded: -2249)
        self.noDecimalSin[348] = Int64(truncatingIfNeeded: -2079)
        self.noDecimalSin[349] = Int64(truncatingIfNeeded: -1908)
        self.noDecimalSin[350] = Int64(truncatingIfNeeded: -1736)
        self.noDecimalSin[351] = Int64(truncatingIfNeeded: -1564)
        self.noDecimalSin[352] = Int64(truncatingIfNeeded: -1391)
        self.noDecimalSin[353] = Int64(truncatingIfNeeded: -1218)
        self.noDecimalSin[354] = Int64(truncatingIfNeeded: -1045)
        self.noDecimalSin[355] = Int64(truncatingIfNeeded: -871)
        self.noDecimalSin[356] = Int64(truncatingIfNeeded: -697)
        self.noDecimalSin[357] = Int64(truncatingIfNeeded: -523)
        self.noDecimalSin[358] = Int64(truncatingIfNeeded: -348)
        self.noDecimalSin[359] = Int64(truncatingIfNeeded: -174)
        self.noDecimalCos[0] = 10000
        self.noDecimalCos[1] = 9998
        self.noDecimalCos[2] = 9993
        self.noDecimalCos[3] = 9986
        self.noDecimalCos[4] = 9975
        self.noDecimalCos[5] = 9961
        self.noDecimalCos[6] = 9945
        self.noDecimalCos[7] = 9925
        self.noDecimalCos[8] = 9902
        self.noDecimalCos[9] = 9876
        self.noDecimalCos[10] = 9848
        self.noDecimalCos[11] = 9816
        self.noDecimalCos[12] = 9781
        self.noDecimalCos[13] = 9743
        self.noDecimalCos[14] = 9702
        self.noDecimalCos[15] = 9659
        self.noDecimalCos[16] = 9612
        self.noDecimalCos[17] = 9563
        self.noDecimalCos[18] = 9510
        self.noDecimalCos[19] = 9455
        self.noDecimalCos[20] = 9396
        self.noDecimalCos[21] = 9335
        self.noDecimalCos[22] = 9271
        self.noDecimalCos[23] = 9205
        self.noDecimalCos[24] = 9135
        self.noDecimalCos[25] = 9063
        self.noDecimalCos[26] = 8987
        self.noDecimalCos[27] = 8910
        self.noDecimalCos[28] = 8829
        self.noDecimalCos[29] = 8746
        self.noDecimalCos[30] = 8660
        self.noDecimalCos[31] = 8571
        self.noDecimalCos[32] = 8480
        self.noDecimalCos[33] = 8386
        self.noDecimalCos[34] = 8290
        self.noDecimalCos[35] = 8191
        self.noDecimalCos[36] = 8090
        self.noDecimalCos[37] = 7986
        self.noDecimalCos[38] = 7880
        self.noDecimalCos[39] = 7771
        self.noDecimalCos[40] = 7660
        self.noDecimalCos[41] = 7547
        self.noDecimalCos[42] = 7431
        self.noDecimalCos[43] = 7313
        self.noDecimalCos[44] = 7193
        self.noDecimalCos[45] = 7071
        self.noDecimalCos[46] = 6946
        self.noDecimalCos[47] = 6819
        self.noDecimalCos[48] = 6691
        self.noDecimalCos[49] = 6560
        self.noDecimalCos[50] = 6427
        self.noDecimalCos[51] = 6293
        self.noDecimalCos[52] = 6156
        self.noDecimalCos[53] = 6018
        self.noDecimalCos[54] = 5877
        self.noDecimalCos[55] = 5735
        self.noDecimalCos[56] = 5591
        self.noDecimalCos[57] = 5446
        self.noDecimalCos[58] = 5299
        self.noDecimalCos[59] = 5150
        self.noDecimalCos[60] = 5000
        self.noDecimalCos[61] = 4848
        self.noDecimalCos[62] = 4694
        self.noDecimalCos[63] = 4539
        self.noDecimalCos[64] = 4383
        self.noDecimalCos[65] = 4226
        self.noDecimalCos[66] = 4067
        self.noDecimalCos[67] = 3907
        self.noDecimalCos[68] = 3746
        self.noDecimalCos[69] = 3583
        self.noDecimalCos[70] = 3420
        self.noDecimalCos[71] = 3255
        self.noDecimalCos[72] = 3090
        self.noDecimalCos[73] = 2923
        self.noDecimalCos[74] = 2756
        self.noDecimalCos[75] = 2588
        self.noDecimalCos[76] = 2419
        self.noDecimalCos[77] = 2249
        self.noDecimalCos[78] = 2079
        self.noDecimalCos[79] = 1908
        self.noDecimalCos[80] = 1736
        self.noDecimalCos[81] = 1564
        self.noDecimalCos[82] = 1391
        self.noDecimalCos[83] = 1218
        self.noDecimalCos[84] = 1045
        self.noDecimalCos[85] = 871
        self.noDecimalCos[86] = 697
        self.noDecimalCos[87] = 523
        self.noDecimalCos[88] = 348
        self.noDecimalCos[89] = 174
        self.noDecimalCos[90] = 0
        self.noDecimalCos[91] = Int64(truncatingIfNeeded: -174)
        self.noDecimalCos[92] = Int64(truncatingIfNeeded: -348)
        self.noDecimalCos[93] = Int64(truncatingIfNeeded: -523)
        self.noDecimalCos[94] = Int64(truncatingIfNeeded: -697)
        self.noDecimalCos[95] = Int64(truncatingIfNeeded: -871)
        self.noDecimalCos[96] = Int64(truncatingIfNeeded: -1045)
        self.noDecimalCos[97] = Int64(truncatingIfNeeded: -1218)
        self.noDecimalCos[98] = Int64(truncatingIfNeeded: -1391)
        self.noDecimalCos[99] = Int64(truncatingIfNeeded: -1564)
        self.noDecimalCos[100] = Int64(truncatingIfNeeded: -1736)
        self.noDecimalCos[101] = Int64(truncatingIfNeeded: -1908)
        self.noDecimalCos[102] = Int64(truncatingIfNeeded: -2079)
        self.noDecimalCos[103] = Int64(truncatingIfNeeded: -2249)
        self.noDecimalCos[104] = Int64(truncatingIfNeeded: -2419)
        self.noDecimalCos[105] = Int64(truncatingIfNeeded: -2588)
        self.noDecimalCos[106] = Int64(truncatingIfNeeded: -2756)
        self.noDecimalCos[107] = Int64(truncatingIfNeeded: -2923)
        self.noDecimalCos[108] = Int64(truncatingIfNeeded: -3090)
        self.noDecimalCos[109] = Int64(truncatingIfNeeded: -3255)
        self.noDecimalCos[110] = Int64(truncatingIfNeeded: -3420)
        self.noDecimalCos[111] = Int64(truncatingIfNeeded: -3583)
        self.noDecimalCos[112] = Int64(truncatingIfNeeded: -3746)
        self.noDecimalCos[113] = Int64(truncatingIfNeeded: -3907)
        self.noDecimalCos[114] = Int64(truncatingIfNeeded: -4067)
        self.noDecimalCos[115] = Int64(truncatingIfNeeded: -4226)
        self.noDecimalCos[116] = Int64(truncatingIfNeeded: -4383)
        self.noDecimalCos[117] = Int64(truncatingIfNeeded: -4539)
        self.noDecimalCos[118] = Int64(truncatingIfNeeded: -4694)
        self.noDecimalCos[119] = Int64(truncatingIfNeeded: -4848)
        self.noDecimalCos[120] = Int64(truncatingIfNeeded: -4999)
        self.noDecimalCos[121] = Int64(truncatingIfNeeded: -5150)
        self.noDecimalCos[122] = Int64(truncatingIfNeeded: -5299)
        self.noDecimalCos[123] = Int64(truncatingIfNeeded: -5446)
        self.noDecimalCos[124] = Int64(truncatingIfNeeded: -5591)
        self.noDecimalCos[125] = Int64(truncatingIfNeeded: -5735)
        self.noDecimalCos[126] = Int64(truncatingIfNeeded: -5877)
        self.noDecimalCos[127] = Int64(truncatingIfNeeded: -6018)
        self.noDecimalCos[128] = Int64(truncatingIfNeeded: -6156)
        self.noDecimalCos[129] = Int64(truncatingIfNeeded: -6293)
        self.noDecimalCos[130] = Int64(truncatingIfNeeded: -6427)
        self.noDecimalCos[131] = Int64(truncatingIfNeeded: -6560)
        self.noDecimalCos[132] = Int64(truncatingIfNeeded: -6691)
        self.noDecimalCos[133] = Int64(truncatingIfNeeded: -6819)
        self.noDecimalCos[134] = Int64(truncatingIfNeeded: -6946)
        self.noDecimalCos[135] = Int64(truncatingIfNeeded: -7071)
        self.noDecimalCos[136] = Int64(truncatingIfNeeded: -7193)
        self.noDecimalCos[137] = Int64(truncatingIfNeeded: -7313)
        self.noDecimalCos[138] = Int64(truncatingIfNeeded: -7431)
        self.noDecimalCos[139] = Int64(truncatingIfNeeded: -7547)
        self.noDecimalCos[140] = Int64(truncatingIfNeeded: -7660)
        self.noDecimalCos[141] = Int64(truncatingIfNeeded: -7771)
        self.noDecimalCos[142] = Int64(truncatingIfNeeded: -7880)
        self.noDecimalCos[143] = Int64(truncatingIfNeeded: -7986)
        self.noDecimalCos[144] = Int64(truncatingIfNeeded: -8090)
        self.noDecimalCos[145] = Int64(truncatingIfNeeded: -8191)
        self.noDecimalCos[146] = Int64(truncatingIfNeeded: -8290)
        self.noDecimalCos[147] = Int64(truncatingIfNeeded: -8386)
        self.noDecimalCos[148] = Int64(truncatingIfNeeded: -8480)
        self.noDecimalCos[149] = Int64(truncatingIfNeeded: -8571)
        self.noDecimalCos[150] = Int64(truncatingIfNeeded: -8660)
        self.noDecimalCos[151] = Int64(truncatingIfNeeded: -8746)
        self.noDecimalCos[152] = Int64(truncatingIfNeeded: -8829)
        self.noDecimalCos[153] = Int64(truncatingIfNeeded: -8910)
        self.noDecimalCos[154] = Int64(truncatingIfNeeded: -8987)
        self.noDecimalCos[155] = Int64(truncatingIfNeeded: -9063)
        self.noDecimalCos[156] = Int64(truncatingIfNeeded: -9135)
        self.noDecimalCos[157] = Int64(truncatingIfNeeded: -9205)
        self.noDecimalCos[158] = Int64(truncatingIfNeeded: -9271)
        self.noDecimalCos[159] = Int64(truncatingIfNeeded: -9335)
        self.noDecimalCos[160] = Int64(truncatingIfNeeded: -9396)
        self.noDecimalCos[161] = Int64(truncatingIfNeeded: -9455)
        self.noDecimalCos[162] = Int64(truncatingIfNeeded: -9510)
        self.noDecimalCos[163] = Int64(truncatingIfNeeded: -9563)
        self.noDecimalCos[164] = Int64(truncatingIfNeeded: -9612)
        self.noDecimalCos[165] = Int64(truncatingIfNeeded: -9659)
        self.noDecimalCos[166] = Int64(truncatingIfNeeded: -9702)
        self.noDecimalCos[167] = Int64(truncatingIfNeeded: -9743)
        self.noDecimalCos[168] = Int64(truncatingIfNeeded: -9781)
        self.noDecimalCos[169] = Int64(truncatingIfNeeded: -9816)
        self.noDecimalCos[170] = Int64(truncatingIfNeeded: -9848)
        self.noDecimalCos[171] = Int64(truncatingIfNeeded: -9876)
        self.noDecimalCos[172] = Int64(truncatingIfNeeded: -9902)
        self.noDecimalCos[173] = Int64(truncatingIfNeeded: -9925)
        self.noDecimalCos[174] = Int64(truncatingIfNeeded: -9945)
        self.noDecimalCos[175] = Int64(truncatingIfNeeded: -9961)
        self.noDecimalCos[176] = Int64(truncatingIfNeeded: -9975)
        self.noDecimalCos[177] = Int64(truncatingIfNeeded: -9986)
        self.noDecimalCos[178] = Int64(truncatingIfNeeded: -9993)
        self.noDecimalCos[179] = Int64(truncatingIfNeeded: -9998)
        self.noDecimalCos[180] = Int64(truncatingIfNeeded: -10000)
        self.noDecimalCos[181] = Int64(truncatingIfNeeded: -9998)
        self.noDecimalCos[182] = Int64(truncatingIfNeeded: -9993)
        self.noDecimalCos[183] = Int64(truncatingIfNeeded: -9986)
        self.noDecimalCos[184] = Int64(truncatingIfNeeded: -9975)
        self.noDecimalCos[185] = Int64(truncatingIfNeeded: -9961)
        self.noDecimalCos[186] = Int64(truncatingIfNeeded: -9945)
        self.noDecimalCos[187] = Int64(truncatingIfNeeded: -9925)
        self.noDecimalCos[188] = Int64(truncatingIfNeeded: -9902)
        self.noDecimalCos[189] = Int64(truncatingIfNeeded: -9876)
        self.noDecimalCos[190] = Int64(truncatingIfNeeded: -9848)
        self.noDecimalCos[191] = Int64(truncatingIfNeeded: -9816)
        self.noDecimalCos[192] = Int64(truncatingIfNeeded: -9781)
        self.noDecimalCos[193] = Int64(truncatingIfNeeded: -9743)
        self.noDecimalCos[194] = Int64(truncatingIfNeeded: -9702)
        self.noDecimalCos[195] = Int64(truncatingIfNeeded: -9659)
        self.noDecimalCos[196] = Int64(truncatingIfNeeded: -9612)
        self.noDecimalCos[197] = Int64(truncatingIfNeeded: -9563)
        self.noDecimalCos[198] = Int64(truncatingIfNeeded: -9510)
        self.noDecimalCos[199] = Int64(truncatingIfNeeded: -9455)
        self.noDecimalCos[200] = Int64(truncatingIfNeeded: -9396)
        self.noDecimalCos[201] = Int64(truncatingIfNeeded: -9335)
        self.noDecimalCos[202] = Int64(truncatingIfNeeded: -9271)
        self.noDecimalCos[203] = Int64(truncatingIfNeeded: -9205)
        self.noDecimalCos[204] = Int64(truncatingIfNeeded: -9135)
        self.noDecimalCos[205] = Int64(truncatingIfNeeded: -9063)
        self.noDecimalCos[206] = Int64(truncatingIfNeeded: -8987)
        self.noDecimalCos[207] = Int64(truncatingIfNeeded: -8910)
        self.noDecimalCos[208] = Int64(truncatingIfNeeded: -8829)
        self.noDecimalCos[209] = Int64(truncatingIfNeeded: -8746)
        self.noDecimalCos[210] = Int64(truncatingIfNeeded: -8660)
        self.noDecimalCos[211] = Int64(truncatingIfNeeded: -8571)
        self.noDecimalCos[212] = Int64(truncatingIfNeeded: -8480)
        self.noDecimalCos[213] = Int64(truncatingIfNeeded: -8386)
        self.noDecimalCos[214] = Int64(truncatingIfNeeded: -8290)
        self.noDecimalCos[215] = Int64(truncatingIfNeeded: -8191)
        self.noDecimalCos[216] = Int64(truncatingIfNeeded: -8090)
        self.noDecimalCos[217] = Int64(truncatingIfNeeded: -7986)
        self.noDecimalCos[218] = Int64(truncatingIfNeeded: -7880)
        self.noDecimalCos[219] = Int64(truncatingIfNeeded: -7771)
        self.noDecimalCos[220] = Int64(truncatingIfNeeded: -7660)
        self.noDecimalCos[221] = Int64(truncatingIfNeeded: -7547)
        self.noDecimalCos[222] = Int64(truncatingIfNeeded: -7431)
        self.noDecimalCos[223] = Int64(truncatingIfNeeded: -7313)
        self.noDecimalCos[224] = Int64(truncatingIfNeeded: -7193)
        self.noDecimalCos[225] = Int64(truncatingIfNeeded: -7071)
        self.noDecimalCos[226] = Int64(truncatingIfNeeded: -6946)
        self.noDecimalCos[227] = Int64(truncatingIfNeeded: -6819)
        self.noDecimalCos[228] = Int64(truncatingIfNeeded: -6691)
        self.noDecimalCos[229] = Int64(truncatingIfNeeded: -6560)
        self.noDecimalCos[230] = Int64(truncatingIfNeeded: -6427)
        self.noDecimalCos[231] = Int64(truncatingIfNeeded: -6293)
        self.noDecimalCos[232] = Int64(truncatingIfNeeded: -6156)
        self.noDecimalCos[233] = Int64(truncatingIfNeeded: -6018)
        self.noDecimalCos[234] = Int64(truncatingIfNeeded: -5877)
        self.noDecimalCos[235] = Int64(truncatingIfNeeded: -5735)
        self.noDecimalCos[236] = Int64(truncatingIfNeeded: -5591)
        self.noDecimalCos[237] = Int64(truncatingIfNeeded: -5446)
        self.noDecimalCos[238] = Int64(truncatingIfNeeded: -5299)
        self.noDecimalCos[239] = Int64(truncatingIfNeeded: -5150)
        self.noDecimalCos[240] = Int64(truncatingIfNeeded: -5000)
        self.noDecimalCos[241] = Int64(truncatingIfNeeded: -4848)
        self.noDecimalCos[242] = Int64(truncatingIfNeeded: -4694)
        self.noDecimalCos[243] = Int64(truncatingIfNeeded: -4539)
        self.noDecimalCos[244] = Int64(truncatingIfNeeded: -4383)
        self.noDecimalCos[245] = Int64(truncatingIfNeeded: -4226)
        self.noDecimalCos[246] = Int64(truncatingIfNeeded: -4067)
        self.noDecimalCos[247] = Int64(truncatingIfNeeded: -3907)
        self.noDecimalCos[248] = Int64(truncatingIfNeeded: -3746)
        self.noDecimalCos[249] = Int64(truncatingIfNeeded: -3583)
        self.noDecimalCos[250] = Int64(truncatingIfNeeded: -3420)
        self.noDecimalCos[251] = Int64(truncatingIfNeeded: -3255)
        self.noDecimalCos[252] = Int64(truncatingIfNeeded: -3090)
        self.noDecimalCos[253] = Int64(truncatingIfNeeded: -2923)
        self.noDecimalCos[254] = Int64(truncatingIfNeeded: -2756)
        self.noDecimalCos[255] = Int64(truncatingIfNeeded: -2588)
        self.noDecimalCos[256] = Int64(truncatingIfNeeded: -2419)
        self.noDecimalCos[257] = Int64(truncatingIfNeeded: -2249)
        self.noDecimalCos[258] = Int64(truncatingIfNeeded: -2079)
        self.noDecimalCos[259] = Int64(truncatingIfNeeded: -1908)
        self.noDecimalCos[260] = Int64(truncatingIfNeeded: -1736)
        self.noDecimalCos[261] = Int64(truncatingIfNeeded: -1564)
        self.noDecimalCos[262] = Int64(truncatingIfNeeded: -1391)
        self.noDecimalCos[263] = Int64(truncatingIfNeeded: -1218)
        self.noDecimalCos[264] = Int64(truncatingIfNeeded: -1045)
        self.noDecimalCos[265] = Int64(truncatingIfNeeded: -871)
        self.noDecimalCos[266] = Int64(truncatingIfNeeded: -697)
        self.noDecimalCos[267] = Int64(truncatingIfNeeded: -523)
        self.noDecimalCos[268] = Int64(truncatingIfNeeded: -348)
        self.noDecimalCos[269] = Int64(truncatingIfNeeded: -174)
        self.noDecimalCos[270] = 0
        self.noDecimalCos[271] = 174
        self.noDecimalCos[272] = 348
        self.noDecimalCos[273] = 523
        self.noDecimalCos[274] = 697
        self.noDecimalCos[275] = 871
        self.noDecimalCos[276] = 1045
        self.noDecimalCos[277] = 1218
        self.noDecimalCos[278] = 1391
        self.noDecimalCos[279] = 1564
        self.noDecimalCos[280] = 1736
        self.noDecimalCos[281] = 1908
        self.noDecimalCos[282] = 2079
        self.noDecimalCos[283] = 2249
        self.noDecimalCos[284] = 2419
        self.noDecimalCos[285] = 2588
        self.noDecimalCos[286] = 2756
        self.noDecimalCos[287] = 2923
        self.noDecimalCos[288] = 3090
        self.noDecimalCos[289] = 3255
        self.noDecimalCos[290] = 3420
        self.noDecimalCos[291] = 3583
        self.noDecimalCos[292] = 3746
        self.noDecimalCos[293] = 3907
        self.noDecimalCos[294] = 4067
        self.noDecimalCos[295] = 4226
        self.noDecimalCos[296] = 4383
        self.noDecimalCos[297] = 4539
        self.noDecimalCos[298] = 4694
        self.noDecimalCos[299] = 4848
        self.noDecimalCos[300] = 5000
        self.noDecimalCos[301] = 5150
        self.noDecimalCos[302] = 5299
        self.noDecimalCos[303] = 5446
        self.noDecimalCos[304] = 5591
        self.noDecimalCos[305] = 5735
        self.noDecimalCos[306] = 5877
        self.noDecimalCos[307] = 6018
        self.noDecimalCos[308] = 6156
        self.noDecimalCos[309] = 6293
        self.noDecimalCos[310] = 6427
        self.noDecimalCos[311] = 6560
        self.noDecimalCos[312] = 6691
        self.noDecimalCos[313] = 6819
        self.noDecimalCos[314] = 6946
        self.noDecimalCos[315] = 7071
        self.noDecimalCos[316] = 7193
        self.noDecimalCos[317] = 7313
        self.noDecimalCos[318] = 7431
        self.noDecimalCos[319] = 7547
        self.noDecimalCos[320] = 7660
        self.noDecimalCos[321] = 7771
        self.noDecimalCos[322] = 7880
        self.noDecimalCos[323] = 7986
        self.noDecimalCos[324] = 8090
        self.noDecimalCos[325] = 8191
        self.noDecimalCos[326] = 8290
        self.noDecimalCos[327] = 8386
        self.noDecimalCos[328] = 8480
        self.noDecimalCos[329] = 8571
        self.noDecimalCos[330] = 8660
        self.noDecimalCos[331] = 8746
        self.noDecimalCos[332] = 8829
        self.noDecimalCos[333] = 8910
        self.noDecimalCos[334] = 8987
        self.noDecimalCos[335] = 9063
        self.noDecimalCos[336] = 9135
        self.noDecimalCos[337] = 9205
        self.noDecimalCos[338] = 9271
        self.noDecimalCos[339] = 9335
        self.noDecimalCos[340] = 9396
        self.noDecimalCos[341] = 9455
        self.noDecimalCos[342] = 9510
        self.noDecimalCos[343] = 9563
        self.noDecimalCos[344] = 9612
        self.noDecimalCos[345] = 9659
        self.noDecimalCos[346] = 9702
        self.noDecimalCos[347] = 9743
        self.noDecimalCos[348] = 9781
        self.noDecimalCos[349] = 9816
        self.noDecimalCos[350] = 9848
        self.noDecimalCos[351] = 9876
        self.noDecimalCos[352] = 9902
        self.noDecimalCos[353] = 9925
        self.noDecimalCos[354] = 9945
        self.noDecimalCos[355] = 9961
        self.noDecimalCos[356] = 9975
        self.noDecimalCos[357] = 9986
        self.noDecimalCos[358] = 9993
        self.noDecimalCos[359] = 9998
        self.noDecimalTan[0] = 0
        self.noDecimalTan[1] = 174
        self.noDecimalTan[2] = 349
        self.noDecimalTan[3] = 524
        self.noDecimalTan[4] = 699
        self.noDecimalTan[5] = 874
        self.noDecimalTan[6] = 1051
        self.noDecimalTan[7] = 1227
        self.noDecimalTan[8] = 1405
        self.noDecimalTan[9] = 1583
        self.noDecimalTan[10] = 1763
        self.noDecimalTan[11] = 1943
        self.noDecimalTan[12] = 2125
        self.noDecimalTan[13] = 2308
        self.noDecimalTan[14] = 2493
        self.noDecimalTan[15] = 2679
        self.noDecimalTan[16] = 2867
        self.noDecimalTan[17] = 3057
        self.noDecimalTan[18] = 3249
        self.noDecimalTan[19] = 3443
        self.noDecimalTan[20] = 3639
        self.noDecimalTan[21] = 3838
        self.noDecimalTan[22] = 4040
        self.noDecimalTan[23] = 4244
        self.noDecimalTan[24] = 4452
        self.noDecimalTan[25] = 4663
        self.noDecimalTan[26] = 4877
        self.noDecimalTan[27] = 5095
        self.noDecimalTan[28] = 5317
        self.noDecimalTan[29] = 5543
        self.noDecimalTan[30] = 5773
        self.noDecimalTan[31] = 6008
        self.noDecimalTan[32] = 6248
        self.noDecimalTan[33] = 6494
        self.noDecimalTan[34] = 6745
        self.noDecimalTan[35] = 7002
        self.noDecimalTan[36] = 7265
        self.noDecimalTan[37] = 7535
        self.noDecimalTan[38] = 7812
        self.noDecimalTan[39] = 8097
        self.noDecimalTan[40] = 8390
        self.noDecimalTan[41] = 8692
        self.noDecimalTan[42] = 9004
        self.noDecimalTan[43] = 9325
        self.noDecimalTan[44] = 9656
        self.noDecimalTan[45] = 9999
        self.noDecimalTan[46] = 10355
        self.noDecimalTan[47] = 10723
        self.noDecimalTan[48] = 11106
        self.noDecimalTan[49] = 11503
        self.noDecimalTan[50] = 11917
        self.noDecimalTan[51] = 12348
        self.noDecimalTan[52] = 12799
        self.noDecimalTan[53] = 13270
        self.noDecimalTan[54] = 13763
        self.noDecimalTan[55] = 14281
        self.noDecimalTan[56] = 14825
        self.noDecimalTan[57] = 15398
        self.noDecimalTan[58] = 16003
        self.noDecimalTan[59] = 16642
        self.noDecimalTan[60] = 17320
        self.noDecimalTan[61] = 18040
        self.noDecimalTan[62] = 18807
        self.noDecimalTan[63] = 19626
        self.noDecimalTan[64] = 20503
        self.noDecimalTan[65] = 21445
        self.noDecimalTan[66] = 22460
        self.noDecimalTan[67] = 23558
        self.noDecimalTan[68] = 24750
        self.noDecimalTan[69] = 26050
        self.noDecimalTan[70] = 27474
        self.noDecimalTan[71] = 29042
        self.noDecimalTan[72] = 30776
        self.noDecimalTan[73] = 32708
        self.noDecimalTan[74] = 34874
        self.noDecimalTan[75] = 37320
        self.noDecimalTan[76] = 40107
        self.noDecimalTan[77] = 43314
        self.noDecimalTan[78] = 47046
        self.noDecimalTan[79] = 51445
        self.noDecimalTan[80] = 56712
        self.noDecimalTan[81] = 63137
        self.noDecimalTan[82] = 71153
        self.noDecimalTan[83] = 81443
        self.noDecimalTan[84] = 95143
        self.noDecimalTan[85] = 114300
        self.noDecimalTan[86] = 143006
        self.noDecimalTan[87] = 190811
        self.noDecimalTan[88] = 286362
        self.noDecimalTan[89] = 572899
        self.noDecimalTan[90] = MAX_VALUE
        self.noDecimalTan[91] = Int64(truncatingIfNeeded: -572899)
        self.noDecimalTan[92] = Int64(truncatingIfNeeded: -286362)
        self.noDecimalTan[93] = Int64(truncatingIfNeeded: -190811)
        self.noDecimalTan[94] = Int64(truncatingIfNeeded: -143006)
        self.noDecimalTan[95] = Int64(truncatingIfNeeded: -114300)
        self.noDecimalTan[96] = Int64(truncatingIfNeeded: -95143)
        self.noDecimalTan[97] = Int64(truncatingIfNeeded: -81443)
        self.noDecimalTan[98] = Int64(truncatingIfNeeded: -71153)
        self.noDecimalTan[99] = Int64(truncatingIfNeeded: -63137)
        self.noDecimalTan[100] = Int64(truncatingIfNeeded: -56712)
        self.noDecimalTan[101] = Int64(truncatingIfNeeded: -51445)
        self.noDecimalTan[102] = Int64(truncatingIfNeeded: -47046)
        self.noDecimalTan[103] = Int64(truncatingIfNeeded: -43314)
        self.noDecimalTan[104] = Int64(truncatingIfNeeded: -40107)
        self.noDecimalTan[105] = Int64(truncatingIfNeeded: -37320)
        self.noDecimalTan[106] = Int64(truncatingIfNeeded: -34874)
        self.noDecimalTan[107] = Int64(truncatingIfNeeded: -32708)
        self.noDecimalTan[108] = Int64(truncatingIfNeeded: -30776)
        self.noDecimalTan[109] = Int64(truncatingIfNeeded: -29042)
        self.noDecimalTan[110] = Int64(truncatingIfNeeded: -27474)
        self.noDecimalTan[111] = Int64(truncatingIfNeeded: -26050)
        self.noDecimalTan[112] = Int64(truncatingIfNeeded: -24750)
        self.noDecimalTan[113] = Int64(truncatingIfNeeded: -23558)
        self.noDecimalTan[114] = Int64(truncatingIfNeeded: -22460)
        self.noDecimalTan[115] = Int64(truncatingIfNeeded: -21445)
        self.noDecimalTan[116] = Int64(truncatingIfNeeded: -20503)
        self.noDecimalTan[117] = Int64(truncatingIfNeeded: -19626)
        self.noDecimalTan[118] = Int64(truncatingIfNeeded: -18807)
        self.noDecimalTan[119] = Int64(truncatingIfNeeded: -18040)
        self.noDecimalTan[120] = Int64(truncatingIfNeeded: -17320)
        self.noDecimalTan[121] = Int64(truncatingIfNeeded: -16642)
        self.noDecimalTan[122] = Int64(truncatingIfNeeded: -16003)
        self.noDecimalTan[123] = Int64(truncatingIfNeeded: -15398)
        self.noDecimalTan[124] = Int64(truncatingIfNeeded: -14825)
        self.noDecimalTan[125] = Int64(truncatingIfNeeded: -14281)
        self.noDecimalTan[126] = Int64(truncatingIfNeeded: -13763)
        self.noDecimalTan[127] = Int64(truncatingIfNeeded: -13270)
        self.noDecimalTan[128] = Int64(truncatingIfNeeded: -12799)
        self.noDecimalTan[129] = Int64(truncatingIfNeeded: -12348)
        self.noDecimalTan[130] = Int64(truncatingIfNeeded: -11917)
        self.noDecimalTan[131] = Int64(truncatingIfNeeded: -11503)
        self.noDecimalTan[132] = Int64(truncatingIfNeeded: -11106)
        self.noDecimalTan[133] = Int64(truncatingIfNeeded: -10723)
        self.noDecimalTan[134] = Int64(truncatingIfNeeded: -10355)
        self.noDecimalTan[135] = Int64(truncatingIfNeeded: -10000)
        self.noDecimalTan[136] = Int64(truncatingIfNeeded: -9656)
        self.noDecimalTan[137] = Int64(truncatingIfNeeded: -9325)
        self.noDecimalTan[138] = Int64(truncatingIfNeeded: -9004)
        self.noDecimalTan[139] = Int64(truncatingIfNeeded: -8692)
        self.noDecimalTan[140] = Int64(truncatingIfNeeded: -8390)
        self.noDecimalTan[141] = Int64(truncatingIfNeeded: -8097)
        self.noDecimalTan[142] = Int64(truncatingIfNeeded: -7812)
        self.noDecimalTan[143] = Int64(truncatingIfNeeded: -7535)
        self.noDecimalTan[144] = Int64(truncatingIfNeeded: -7265)
        self.noDecimalTan[145] = Int64(truncatingIfNeeded: -7002)
        self.noDecimalTan[146] = Int64(truncatingIfNeeded: -6745)
        self.noDecimalTan[147] = Int64(truncatingIfNeeded: -6494)
        self.noDecimalTan[148] = Int64(truncatingIfNeeded: -6248)
        self.noDecimalTan[149] = Int64(truncatingIfNeeded: -6008)
        self.noDecimalTan[150] = Int64(truncatingIfNeeded: -5773)
        self.noDecimalTan[151] = Int64(truncatingIfNeeded: -5543)
        self.noDecimalTan[152] = Int64(truncatingIfNeeded: -5317)
        self.noDecimalTan[153] = Int64(truncatingIfNeeded: -5095)
        self.noDecimalTan[154] = Int64(truncatingIfNeeded: -4877)
        self.noDecimalTan[155] = Int64(truncatingIfNeeded: -4663)
        self.noDecimalTan[156] = Int64(truncatingIfNeeded: -4452)
        self.noDecimalTan[157] = Int64(truncatingIfNeeded: -4244)
        self.noDecimalTan[158] = Int64(truncatingIfNeeded: -4040)
        self.noDecimalTan[159] = Int64(truncatingIfNeeded: -3838)
        self.noDecimalTan[160] = Int64(truncatingIfNeeded: -3639)
        self.noDecimalTan[161] = Int64(truncatingIfNeeded: -3443)
        self.noDecimalTan[162] = Int64(truncatingIfNeeded: -3249)
        self.noDecimalTan[163] = Int64(truncatingIfNeeded: -3057)
        self.noDecimalTan[164] = Int64(truncatingIfNeeded: -2867)
        self.noDecimalTan[165] = Int64(truncatingIfNeeded: -2679)
        self.noDecimalTan[166] = Int64(truncatingIfNeeded: -2493)
        self.noDecimalTan[167] = Int64(truncatingIfNeeded: -2308)
        self.noDecimalTan[168] = Int64(truncatingIfNeeded: -2125)
        self.noDecimalTan[169] = Int64(truncatingIfNeeded: -1943)
        self.noDecimalTan[170] = Int64(truncatingIfNeeded: -1763)
        self.noDecimalTan[171] = Int64(truncatingIfNeeded: -1583)
        self.noDecimalTan[172] = Int64(truncatingIfNeeded: -1405)
        self.noDecimalTan[173] = Int64(truncatingIfNeeded: -1227)
        self.noDecimalTan[174] = Int64(truncatingIfNeeded: -1051)
        self.noDecimalTan[175] = Int64(truncatingIfNeeded: -874)
        self.noDecimalTan[176] = Int64(truncatingIfNeeded: -699)
        self.noDecimalTan[177] = Int64(truncatingIfNeeded: -524)
        self.noDecimalTan[178] = Int64(truncatingIfNeeded: -349)
        self.noDecimalTan[179] = Int64(truncatingIfNeeded: -174)
        self.noDecimalTan[180] = 0
        self.noDecimalTan[181] = 174
        self.noDecimalTan[182] = 349
        self.noDecimalTan[183] = 524
        self.noDecimalTan[184] = 699
        self.noDecimalTan[185] = 874
        self.noDecimalTan[186] = 1051
        self.noDecimalTan[187] = 1227
        self.noDecimalTan[188] = 1405
        self.noDecimalTan[189] = 1583
        self.noDecimalTan[190] = 1763
        self.noDecimalTan[191] = 1943
        self.noDecimalTan[192] = 2125
        self.noDecimalTan[193] = 2308
        self.noDecimalTan[194] = 2493
        self.noDecimalTan[195] = 2679
        self.noDecimalTan[196] = 2867
        self.noDecimalTan[197] = 3057
        self.noDecimalTan[198] = 3249
        self.noDecimalTan[199] = 3443
        self.noDecimalTan[200] = 3639
        self.noDecimalTan[201] = 3838
        self.noDecimalTan[202] = 4040
        self.noDecimalTan[203] = 4244
        self.noDecimalTan[204] = 4452
        self.noDecimalTan[205] = 4663
        self.noDecimalTan[206] = 4877
        self.noDecimalTan[207] = 5095
        self.noDecimalTan[208] = 5317
        self.noDecimalTan[209] = 5543
        self.noDecimalTan[210] = 5773
        self.noDecimalTan[211] = 6008
        self.noDecimalTan[212] = 6248
        self.noDecimalTan[213] = 6494
        self.noDecimalTan[214] = 6745
        self.noDecimalTan[215] = 7002
        self.noDecimalTan[216] = 7265
        self.noDecimalTan[217] = 7535
        self.noDecimalTan[218] = 7812
        self.noDecimalTan[219] = 8097
        self.noDecimalTan[220] = 8390
        self.noDecimalTan[221] = 8692
        self.noDecimalTan[222] = 9004
        self.noDecimalTan[223] = 9325
        self.noDecimalTan[224] = 9656
        self.noDecimalTan[225] = 9999
        self.noDecimalTan[226] = 10355
        self.noDecimalTan[227] = 10723
        self.noDecimalTan[228] = 11106
        self.noDecimalTan[229] = 11503
        self.noDecimalTan[230] = 11917
        self.noDecimalTan[231] = 12348
        self.noDecimalTan[232] = 12799
        self.noDecimalTan[233] = 13270
        self.noDecimalTan[234] = 13763
        self.noDecimalTan[235] = 14281
        self.noDecimalTan[236] = 14825
        self.noDecimalTan[237] = 15398
        self.noDecimalTan[238] = 16003
        self.noDecimalTan[239] = 16642
        self.noDecimalTan[240] = 17320
        self.noDecimalTan[241] = 18040
        self.noDecimalTan[242] = 18807
        self.noDecimalTan[243] = 19626
        self.noDecimalTan[244] = 20503
        self.noDecimalTan[245] = 21445
        self.noDecimalTan[246] = 22460
        self.noDecimalTan[247] = 23558
        self.noDecimalTan[248] = 24750
        self.noDecimalTan[249] = 26050
        self.noDecimalTan[250] = 27474
        self.noDecimalTan[251] = 29042
        self.noDecimalTan[252] = 30776
        self.noDecimalTan[253] = 32708
        self.noDecimalTan[254] = 34874
        self.noDecimalTan[255] = 37320
        self.noDecimalTan[256] = 40107
        self.noDecimalTan[257] = 43314
        self.noDecimalTan[258] = 47046
        self.noDecimalTan[259] = 51445
        self.noDecimalTan[260] = 56712
        self.noDecimalTan[261] = 63137
        self.noDecimalTan[262] = 71153
        self.noDecimalTan[263] = 81443
        self.noDecimalTan[264] = 95143
        self.noDecimalTan[265] = 114300
        self.noDecimalTan[266] = 143006
        self.noDecimalTan[267] = 190811
        self.noDecimalTan[268] = 286362
        self.noDecimalTan[269] = 572899
        self.noDecimalTan[270] = MAX_VALUE
        self.noDecimalTan[271] = Int64(truncatingIfNeeded: -572899)
        self.noDecimalTan[272] = Int64(truncatingIfNeeded: -286362)
        self.noDecimalTan[273] = Int64(truncatingIfNeeded: -190811)
        self.noDecimalTan[274] = Int64(truncatingIfNeeded: -143006)
        self.noDecimalTan[275] = Int64(truncatingIfNeeded: -114300)
        self.noDecimalTan[276] = Int64(truncatingIfNeeded: -95143)
        self.noDecimalTan[277] = Int64(truncatingIfNeeded: -81443)
        self.noDecimalTan[278] = Int64(truncatingIfNeeded: -71153)
        self.noDecimalTan[279] = Int64(truncatingIfNeeded: -63137)
        self.noDecimalTan[280] = Int64(truncatingIfNeeded: -56712)
        self.noDecimalTan[281] = Int64(truncatingIfNeeded: -51445)
        self.noDecimalTan[282] = Int64(truncatingIfNeeded: -47046)
        self.noDecimalTan[283] = Int64(truncatingIfNeeded: -43314)
        self.noDecimalTan[284] = Int64(truncatingIfNeeded: -40107)
        self.noDecimalTan[285] = Int64(truncatingIfNeeded: -37320)
        self.noDecimalTan[286] = Int64(truncatingIfNeeded: -34874)
        self.noDecimalTan[287] = Int64(truncatingIfNeeded: -32708)
        self.noDecimalTan[288] = Int64(truncatingIfNeeded: -30776)
        self.noDecimalTan[289] = Int64(truncatingIfNeeded: -29042)
        self.noDecimalTan[290] = Int64(truncatingIfNeeded: -27474)
        self.noDecimalTan[291] = Int64(truncatingIfNeeded: -26050)
        self.noDecimalTan[292] = Int64(truncatingIfNeeded: -24750)
        self.noDecimalTan[293] = Int64(truncatingIfNeeded: -23558)
        self.noDecimalTan[294] = Int64(truncatingIfNeeded: -22460)
        self.noDecimalTan[295] = Int64(truncatingIfNeeded: -21445)
        self.noDecimalTan[296] = Int64(truncatingIfNeeded: -20503)
        self.noDecimalTan[297] = Int64(truncatingIfNeeded: -19626)
        self.noDecimalTan[298] = Int64(truncatingIfNeeded: -18807)
        self.noDecimalTan[299] = Int64(truncatingIfNeeded: -18040)
        self.noDecimalTan[300] = Int64(truncatingIfNeeded: -17320)
        self.noDecimalTan[301] = Int64(truncatingIfNeeded: -16642)
        self.noDecimalTan[302] = Int64(truncatingIfNeeded: -16003)
        self.noDecimalTan[303] = Int64(truncatingIfNeeded: -15398)
        self.noDecimalTan[304] = Int64(truncatingIfNeeded: -14825)
        self.noDecimalTan[305] = Int64(truncatingIfNeeded: -14281)
        self.noDecimalTan[306] = Int64(truncatingIfNeeded: -13763)
        self.noDecimalTan[307] = Int64(truncatingIfNeeded: -13270)
        self.noDecimalTan[308] = Int64(truncatingIfNeeded: -12799)
        self.noDecimalTan[309] = Int64(truncatingIfNeeded: -12348)
        self.noDecimalTan[310] = Int64(truncatingIfNeeded: -11917)
        self.noDecimalTan[311] = Int64(truncatingIfNeeded: -11503)
        self.noDecimalTan[312] = Int64(truncatingIfNeeded: -11106)
        self.noDecimalTan[313] = Int64(truncatingIfNeeded: -10723)
        self.noDecimalTan[314] = Int64(truncatingIfNeeded: -10355)
        self.noDecimalTan[315] = Int64(truncatingIfNeeded: -10000)
        self.noDecimalTan[316] = Int64(truncatingIfNeeded: -9656)
        self.noDecimalTan[317] = Int64(truncatingIfNeeded: -9325)
        self.noDecimalTan[318] = Int64(truncatingIfNeeded: -9004)
        self.noDecimalTan[319] = Int64(truncatingIfNeeded: -8692)
        self.noDecimalTan[320] = Int64(truncatingIfNeeded: -8390)
        self.noDecimalTan[321] = Int64(truncatingIfNeeded: -8097)
        self.noDecimalTan[322] = Int64(truncatingIfNeeded: -7812)
        self.noDecimalTan[323] = Int64(truncatingIfNeeded: -7535)
        self.noDecimalTan[324] = Int64(truncatingIfNeeded: -7265)
        self.noDecimalTan[325] = Int64(truncatingIfNeeded: -7002)
        self.noDecimalTan[326] = Int64(truncatingIfNeeded: -6745)
        self.noDecimalTan[327] = Int64(truncatingIfNeeded: -6494)
        self.noDecimalTan[328] = Int64(truncatingIfNeeded: -6248)
        self.noDecimalTan[329] = Int64(truncatingIfNeeded: -6008)
        self.noDecimalTan[330] = Int64(truncatingIfNeeded: -5773)
        self.noDecimalTan[331] = Int64(truncatingIfNeeded: -5543)
        self.noDecimalTan[332] = Int64(truncatingIfNeeded: -5317)
        self.noDecimalTan[333] = Int64(truncatingIfNeeded: -5095)
        self.noDecimalTan[334] = Int64(truncatingIfNeeded: -4877)
        self.noDecimalTan[335] = Int64(truncatingIfNeeded: -4663)
        self.noDecimalTan[336] = Int64(truncatingIfNeeded: -4452)
        self.noDecimalTan[337] = Int64(truncatingIfNeeded: -4244)
        self.noDecimalTan[338] = Int64(truncatingIfNeeded: -4040)
        self.noDecimalTan[339] = Int64(truncatingIfNeeded: -3838)
        self.noDecimalTan[340] = Int64(truncatingIfNeeded: -3639)
        self.noDecimalTan[341] = Int64(truncatingIfNeeded: -3443)
        self.noDecimalTan[342] = Int64(truncatingIfNeeded: -3249)
        self.noDecimalTan[343] = Int64(truncatingIfNeeded: -3057)
        self.noDecimalTan[344] = Int64(truncatingIfNeeded: -2867)
        self.noDecimalTan[345] = Int64(truncatingIfNeeded: -2679)
        self.noDecimalTan[346] = Int64(truncatingIfNeeded: -2493)
        self.noDecimalTan[347] = Int64(truncatingIfNeeded: -2308)
        self.noDecimalTan[348] = Int64(truncatingIfNeeded: -2125)
        self.noDecimalTan[349] = Int64(truncatingIfNeeded: -1943)
        self.noDecimalTan[350] = Int64(truncatingIfNeeded: -1763)
        self.noDecimalTan[351] = Int64(truncatingIfNeeded: -1583)
        self.noDecimalTan[352] = Int64(truncatingIfNeeded: -1405)
        self.noDecimalTan[353] = Int64(truncatingIfNeeded: -1227)
        self.noDecimalTan[354] = Int64(truncatingIfNeeded: -1051)
        self.noDecimalTan[355] = Int64(truncatingIfNeeded: -874)
        self.noDecimalTan[356] = Int64(truncatingIfNeeded: -699)
        self.noDecimalTan[357] = Int64(truncatingIfNeeded: -524)
        self.noDecimalTan[358] = Int64(truncatingIfNeeded: -349)
        self.noDecimalTan[359] = Int64(truncatingIfNeeded: -174)
        self.noDecimalTan[0] = Int64(truncatingIfNeeded: -174)
    }
    

    @discardableResult open func sin(_ angle: Int32) -> Int64 {
        return self.noDecimalSin[angle]
    }
    

    @discardableResult open func cos(_ angle: Int32) -> Int64 {
        return self.noDecimalCos[angle]
    }
    

    @discardableResult open func tan(_ angle: Int32) -> Int64 {
        return self.noDecimalTan[angle]
    }
    

    @discardableResult open func antiTan(_ dx: Int32, _ dy: Int32) -> Int16 {
        let MAX_VALUE: Int64 = (Int64(truncatingIfNeeded: Integer.MAX_VALUE))
        let MIN_VALUE: Int64 = (Int64(truncatingIfNeeded: Integer.MIN_VALUE))
        var ratio: Int64 = (MAX_VALUE &- 1)
        if (dy != 0) {
            let dxl: Int64 = (Int64(truncatingIfNeeded: dx))
            ratio = Int64(truncatingIfNeeded: self.SCALE) &* dxl / Int64(truncatingIfNeeded: dy)
            if (dx <= 0 && dy < 0) {
                ratio = self.mathUtil.abslong(ratio)
            }
        }
        if ((dx >= 0 && dy < 0)) {
            do {
                var index: Int32 = 180
                while (index > 90) {
                    defer { index &-= 1 }
                if (ratio <= self.noDecimalTan[index]) {
                    if (ratio > self.noDecimalTan[index &- 1]) {
                        return (Int16(truncatingIfNeeded: index))
                    } else if (self.noDecimalTan[index &- 1] == MAX_VALUE && ratio > MIN_VALUE) {
                        return (Int16(truncatingIfNeeded: index))
                    }
                }
                }
            }
        } else if ((dx < 0 && dy <= 0)) {
            do {
                var index: Int32 = 270
                while (index > 180) {
                    defer { index &-= 1 }
                if (ratio < self.noDecimalTan[index] && ratio >= self.noDecimalTan[index &- 1]) {
                    return (Int16(truncatingIfNeeded: index))
                }
                }
            }
        } else if ((dx < 0 && dy > 0)) {
            do {
                var index: Int32 = (self.noDecimalTan.length &- 1)
                while (index > 270) {
                    defer { index &-= 1 }
                if (ratio < self.noDecimalTan[index]) {
                    if (ratio >= self.noDecimalTan[index &- 1]) {
                        return (Int16(truncatingIfNeeded: index))
                    } else if (self.noDecimalTan[index &- 1] == MAX_VALUE && ratio >= MIN_VALUE) {
                        return (Int16(truncatingIfNeeded: index))
                    }
                }
                }
            }
        } else if ((dx >= 0 && dy >= 0)) {
            do {
                var index: Int32 = 90
                while (index > 0) {
                    defer { index &-= 1 }
                if (ratio < self.noDecimalTan[index] && ratio >= self.noDecimalTan[index &- 1]) {
                    return (Int16(truncatingIfNeeded: index))
                }
                }
            }
        }
        let stringBuffer: StringMaker! = StringMaker()
        stringBuffer.append("Invalid Ratio: ")
        stringBuffer.appendlong(ratio)
        stringBuffer.append(CommonSeps.getInstance().SPACE)
        stringBuffer.append(PositionStrings.getInstance().DX_LABEL)
        stringBuffer.appendint(dx)
        stringBuffer.append(CommonSeps.getInstance().SPACE)
        stringBuffer.append(PositionStrings.getInstance().DX_LABEL)
        stringBuffer.appendint(dy)
        jThrow(JException("Exception", stringBuffer.toString()))
    }
    

    @discardableResult open func antiTanDebug(_ screenX: Int32, _ screenY: Int32, _ targetX: Int32, _ targetY: Int32) -> Int16 {
        let METHOD_NAME: String! = "antiTanDebug"
        let TARGET_ANGLE: String! = " Targeting angle: "
        let stringMaker: StringMaker! = StringMaker()
        PreLogUtil.put(stringMaker.append("screenX: ").appendint(screenX).append(" screenY: ").appendint(screenY).append(" targetX: ").appendint(targetX).append(" targetY: ").appendint(targetY).toString(), self, METHOD_NAME)
        let targetX2: Int32 = -targetX
        let targetY2: Int32 = -targetY
        let screenX2: Int32 = -screenX
        let screenY2: Int32 = -screenY
        let dx: JArray<Int32>! = JArray<Int32>(4, 0)
        dx[0] = (screenX &- targetX)
        dx[1] = (screenX &- targetX2)
        dx[2] = (screenX2 &- targetX)
        dx[3] = (screenX2 &- targetX2)
        let dy: JArray<Int32>! = JArray<Int32>(4, 0)
        dy[0] = (screenY &- targetY)
        dy[1] = (screenY &- targetY2)
        dy[2] = (screenY2 &- targetY)
        dy[3] = (screenY2 &- targetY2)
        var angleOfTarget: Int16 = 0
        let angleFactory: AngleFactory! = AngleFactory.getInstance()
        var angle: Angle! = nil
        do {
            var index: Int32 = 0
            while (index < dx.length) {
                defer { index &+= 1 }
            do {
                var index2: Int32 = 0
                while (index2 < dy.length) {
                    defer { index2 &+= 1 }
                angleOfTarget = self.antiTan(dx[index], dy[index2])
                angle = angleFactory.getAt(Int32(truncatingIfNeeded: angleOfTarget))
                stringMaker.delete(0, stringMaker.length())
                PreLogUtil.put(stringMaker.append(CommonLabels.getInstance().INDEX_LABEL).appendint(index).append(" index2: ").appendint(index2).append(PositionStrings.getInstance().DX_LABEL).appendint(dx[index]).append(PositionStrings.getInstance().DY_LABEL).appendint(dy[index2]).append(TARGET_ANGLE).appendshort(angleOfTarget).append(CommonSeps.getInstance().EQUALS).appendshort(angle.getValue()).toString(), self, METHOD_NAME)
                }
            }
            }
        }
        angleOfTarget = self.antiTan(dx[0], dy[0])
        return angleOfTarget
    }
}

