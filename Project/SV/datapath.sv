/*
 
 Conway's Game of Life modeled in SVerilog
 
 */

module datapath ( grid, grid_evolve );

   output logic [255:0] 	grid_evolve;
   input logic [255:0] 	grid;
   
   evolve3 e0_0 (grid_evolve[0], grid[1], grid[16], grid[17], grid[0]);
   evolve5 e0_1 (grid_evolve[1], grid[0], grid[2], grid[16], grid[17], grid[18], grid[1]);
   evolve5 e0_2 (grid_evolve[2], grid[1], grid[3], grid[17], grid[18], grid[19], grid[2]);
   evolve5 e0_3 (grid_evolve[3], grid[2], grid[4], grid[18], grid[19], grid[20], grid[3]);
   evolve5 e0_4 (grid_evolve[4], grid[3], grid[5], grid[19], grid[20], grid[21], grid[4]);
   evolve5 e0_5 (grid_evolve[5], grid[4], grid[6], grid[20], grid[21], grid[22], grid[5]);
   evolve5 e0_6 (grid_evolve[6], grid[5], grid[7], grid[21], grid[22], grid[23], grid[6]);
   evolve5 e0_7 (grid_evolve[7], grid[6], grid[8], grid[22], grid[23], grid[24], grid[7]);
   evolve5 e0_8 (grid_evolve[8], grid[7], grid[9], grid[23], grid[24], grid[25], grid[8]);
   evolve5 e0_9 (grid_evolve[9], grid[8], grid[10], grid[24], grid[25], grid[26], grid[9]);
   evolve5 e0_10 (grid_evolve[10], grid[9], grid[11], grid[25], grid[26], grid[27], grid[10]);
   evolve5 e0_11 (grid_evolve[11], grid[10], grid[12], grid[26], grid[27], grid[28], grid[11]);
   evolve5 e0_12 (grid_evolve[12], grid[11], grid[13], grid[27], grid[28], grid[29], grid[12]);
   evolve5 e0_13 (grid_evolve[13], grid[12], grid[14], grid[28], grid[29], grid[30], grid[13]);
   evolve5 e0_14 (grid_evolve[14], grid[13], grid[15], grid[29], grid[30], grid[31], grid[14]);
   evolve3 e0_15 (grid_evolve[15], grid[14], grid[30], grid[31], grid[15]);


   evolve5 e1_16 (grid_evolve[16], grid[0], grid[1], grid[17], grid[32], grid[33], grid[16]);
   evolve8 e1_17 (grid_evolve[17], grid[0], grid[1], grid[2], grid[16], grid[18], grid[32], grid[33], grid[34], grid[17]);
   evolve8 e1_18 (grid_evolve[18], grid[1], grid[2], grid[3], grid[17], grid[19], grid[33], grid[34], grid[35], grid[18]);
   evolve8 e1_19 (grid_evolve[19], grid[2], grid[3], grid[4], grid[18], grid[20], grid[34], grid[35], grid[36], grid[19]);
   evolve8 e1_20 (grid_evolve[20], grid[3], grid[4], grid[5], grid[19], grid[21], grid[35], grid[36], grid[37], grid[20]);
   evolve8 e1_21 (grid_evolve[21], grid[4], grid[5], grid[6], grid[20], grid[22], grid[36], grid[37], grid[38], grid[21]);
   evolve8 e1_22 (grid_evolve[22], grid[5], grid[6], grid[7], grid[21], grid[23], grid[37], grid[38], grid[39], grid[22]);
   evolve8 e1_23 (grid_evolve[23], grid[6], grid[7], grid[8], grid[22], grid[24], grid[38], grid[39], grid[40], grid[23]);
   evolve8 e1_24 (grid_evolve[24], grid[7], grid[8], grid[9], grid[23], grid[25], grid[39], grid[40], grid[41], grid[24]);
   evolve8 e1_25 (grid_evolve[25], grid[8], grid[9], grid[10], grid[24], grid[26], grid[40], grid[41], grid[42], grid[25]);
   evolve8 e1_26 (grid_evolve[26], grid[9], grid[10], grid[11], grid[25], grid[27], grid[41], grid[42], grid[43], grid[26]);
   evolve8 e1_27 (grid_evolve[27], grid[10], grid[11], grid[12], grid[26], grid[28], grid[42], grid[43], grid[44], grid[27]);
   evolve8 e1_28 (grid_evolve[28], grid[11], grid[12], grid[13], grid[27], grid[29], grid[43], grid[44], grid[45], grid[28]);
   evolve8 e1_29 (grid_evolve[29], grid[12], grid[13], grid[14], grid[28], grid[30], grid[44], grid[45], grid[46], grid[29]);
   evolve8 e1_30 (grid_evolve[30], grid[13], grid[14], grid[15], grid[29], grid[31], grid[45], grid[46], grid[47], grid[30]);
   evolve5 e1_31 (grid_evolve[31], grid[14], grid[15], grid[30], grid[46], grid[47], grid[31]);


   evolve5 e2_32 (grid_evolve[32], grid[16], grid[17], grid[33], grid[48], grid[49], grid[32]);
   evolve8 e2_33 (grid_evolve[33], grid[16], grid[17], grid[18], grid[32], grid[34], grid[48], grid[49], grid[50], grid[33]);
   evolve8 e2_34 (grid_evolve[34], grid[17], grid[18], grid[19], grid[33], grid[35], grid[49], grid[50], grid[51], grid[34]);
   evolve8 e2_35 (grid_evolve[35], grid[18], grid[19], grid[20], grid[34], grid[36], grid[50], grid[51], grid[52], grid[35]);
   evolve8 e2_36 (grid_evolve[36], grid[19], grid[20], grid[21], grid[35], grid[37], grid[51], grid[52], grid[53], grid[36]);
   evolve8 e2_37 (grid_evolve[37], grid[20], grid[21], grid[22], grid[36], grid[38], grid[52], grid[53], grid[54], grid[37]);
   evolve8 e2_38 (grid_evolve[38], grid[21], grid[22], grid[23], grid[37], grid[39], grid[53], grid[54], grid[55], grid[38]);
   evolve8 e2_39 (grid_evolve[39], grid[22], grid[23], grid[24], grid[38], grid[40], grid[54], grid[55], grid[56], grid[39]);
   evolve8 e2_40 (grid_evolve[40], grid[23], grid[24], grid[25], grid[39], grid[41], grid[55], grid[56], grid[57], grid[40]);
   evolve8 e2_41 (grid_evolve[41], grid[24], grid[25], grid[26], grid[40], grid[42], grid[56], grid[57], grid[58], grid[41]);
   evolve8 e2_42 (grid_evolve[42], grid[25], grid[26], grid[27], grid[41], grid[43], grid[57], grid[58], grid[59], grid[42]);
   evolve8 e2_43 (grid_evolve[43], grid[26], grid[27], grid[28], grid[42], grid[44], grid[58], grid[59], grid[60], grid[43]);
   evolve8 e2_44 (grid_evolve[44], grid[27], grid[28], grid[29], grid[43], grid[45], grid[59], grid[60], grid[61], grid[44]);
   evolve8 e2_45 (grid_evolve[45], grid[28], grid[29], grid[30], grid[44], grid[46], grid[60], grid[61], grid[62], grid[45]);
   evolve8 e2_46 (grid_evolve[46], grid[29], grid[30], grid[31], grid[45], grid[47], grid[61], grid[62], grid[63], grid[46]);
   evolve5 e2_47 (grid_evolve[47], grid[30], grid[31], grid[46], grid[62], grid[63], grid[47]);


   evolve5 e3_48 (grid_evolve[48], grid[32], grid[33], grid[49], grid[64], grid[65], grid[48]);
   evolve8 e3_49 (grid_evolve[49], grid[32], grid[33], grid[34], grid[48], grid[50], grid[64], grid[65], grid[66], grid[49]);
   evolve8 e3_50 (grid_evolve[50], grid[33], grid[34], grid[35], grid[49], grid[51], grid[65], grid[66], grid[67], grid[50]);
   evolve8 e3_51 (grid_evolve[51], grid[34], grid[35], grid[36], grid[50], grid[52], grid[66], grid[67], grid[68], grid[51]);
   evolve8 e3_52 (grid_evolve[52], grid[35], grid[36], grid[37], grid[51], grid[53], grid[67], grid[68], grid[69], grid[52]);
   evolve8 e3_53 (grid_evolve[53], grid[36], grid[37], grid[38], grid[52], grid[54], grid[68], grid[69], grid[70], grid[53]);
   evolve8 e3_54 (grid_evolve[54], grid[37], grid[38], grid[39], grid[53], grid[55], grid[69], grid[70], grid[71], grid[54]);
   evolve8 e3_55 (grid_evolve[55], grid[38], grid[39], grid[40], grid[54], grid[56], grid[70], grid[71], grid[72], grid[55]);
   evolve8 e3_56 (grid_evolve[56], grid[39], grid[40], grid[41], grid[55], grid[57], grid[71], grid[72], grid[73], grid[56]);
   evolve8 e3_57 (grid_evolve[57], grid[40], grid[41], grid[42], grid[56], grid[58], grid[72], grid[73], grid[74], grid[57]);
   evolve8 e3_58 (grid_evolve[58], grid[41], grid[42], grid[43], grid[57], grid[59], grid[73], grid[74], grid[75], grid[58]);
   evolve8 e3_59 (grid_evolve[59], grid[42], grid[43], grid[44], grid[58], grid[60], grid[74], grid[75], grid[76], grid[59]);
   evolve8 e3_60 (grid_evolve[60], grid[43], grid[44], grid[45], grid[59], grid[61], grid[75], grid[76], grid[77], grid[60]);
   evolve8 e3_61 (grid_evolve[61], grid[44], grid[45], grid[46], grid[60], grid[62], grid[76], grid[77], grid[78], grid[61]);
   evolve8 e3_62 (grid_evolve[62], grid[45], grid[46], grid[47], grid[61], grid[63], grid[77], grid[78], grid[79], grid[62]);
   evolve5 e3_63 (grid_evolve[63], grid[46], grid[47], grid[62], grid[78], grid[79], grid[63]);


   evolve5 e4_64 (grid_evolve[64], grid[48], grid[49], grid[65], grid[80], grid[81], grid[64]);
   evolve8 e4_65 (grid_evolve[65], grid[48], grid[49], grid[50], grid[64], grid[66], grid[80], grid[81], grid[82], grid[65]);
   evolve8 e4_66 (grid_evolve[66], grid[49], grid[50], grid[51], grid[65], grid[67], grid[81], grid[82], grid[83], grid[66]);
   evolve8 e4_67 (grid_evolve[67], grid[50], grid[51], grid[52], grid[66], grid[68], grid[82], grid[83], grid[84], grid[67]);
   evolve8 e4_68 (grid_evolve[68], grid[51], grid[52], grid[53], grid[67], grid[69], grid[83], grid[84], grid[85], grid[68]);
   evolve8 e4_69 (grid_evolve[69], grid[52], grid[53], grid[54], grid[68], grid[70], grid[84], grid[85], grid[86], grid[69]);
   evolve8 e4_70 (grid_evolve[70], grid[53], grid[54], grid[55], grid[69], grid[71], grid[85], grid[86], grid[87], grid[70]);
   evolve8 e4_71 (grid_evolve[71], grid[54], grid[55], grid[56], grid[70], grid[72], grid[86], grid[87], grid[88], grid[71]);
   evolve8 e4_72 (grid_evolve[72], grid[55], grid[56], grid[57], grid[71], grid[73], grid[87], grid[88], grid[89], grid[72]);
   evolve8 e4_73 (grid_evolve[73], grid[56], grid[57], grid[58], grid[72], grid[74], grid[88], grid[89], grid[90], grid[73]);
   evolve8 e4_74 (grid_evolve[74], grid[57], grid[58], grid[59], grid[73], grid[75], grid[89], grid[90], grid[91], grid[74]);
   evolve8 e4_75 (grid_evolve[75], grid[58], grid[59], grid[60], grid[74], grid[76], grid[90], grid[91], grid[92], grid[75]);
   evolve8 e4_76 (grid_evolve[76], grid[59], grid[60], grid[61], grid[75], grid[77], grid[91], grid[92], grid[93], grid[76]);
   evolve8 e4_77 (grid_evolve[77], grid[60], grid[61], grid[62], grid[76], grid[78], grid[92], grid[93], grid[94], grid[77]);
   evolve8 e4_78 (grid_evolve[78], grid[61], grid[62], grid[63], grid[77], grid[79], grid[93], grid[94], grid[95], grid[78]);
   evolve5 e4_79 (grid_evolve[79], grid[62], grid[63], grid[78], grid[94], grid[95], grid[79]);


   evolve5 e5_80 (grid_evolve[80], grid[64], grid[65], grid[81], grid[96], grid[97], grid[80]);
   evolve8 e5_81 (grid_evolve[81], grid[64], grid[65], grid[66], grid[80], grid[82], grid[96], grid[97], grid[98], grid[81]);
   evolve8 e5_82 (grid_evolve[82], grid[65], grid[66], grid[67], grid[81], grid[83], grid[97], grid[98], grid[99], grid[82]);
   evolve8 e5_83 (grid_evolve[83], grid[66], grid[67], grid[68], grid[82], grid[84], grid[98], grid[99], grid[100], grid[83]);
   evolve8 e5_84 (grid_evolve[84], grid[67], grid[68], grid[69], grid[83], grid[85], grid[99], grid[100], grid[101], grid[84]);
   evolve8 e5_85 (grid_evolve[85], grid[68], grid[69], grid[70], grid[84], grid[86], grid[100], grid[101], grid[102], grid[85]);
   evolve8 e5_86 (grid_evolve[86], grid[69], grid[70], grid[71], grid[85], grid[87], grid[101], grid[102], grid[103], grid[86]);
   evolve8 e5_87 (grid_evolve[87], grid[70], grid[71], grid[72], grid[86], grid[88], grid[102], grid[103], grid[104], grid[87]);
   evolve8 e5_88 (grid_evolve[88], grid[71], grid[72], grid[73], grid[87], grid[89], grid[103], grid[104], grid[105], grid[88]);
   evolve8 e5_89 (grid_evolve[89], grid[72], grid[73], grid[74], grid[88], grid[90], grid[104], grid[105], grid[106], grid[89]);
   evolve8 e5_90 (grid_evolve[90], grid[73], grid[74], grid[75], grid[89], grid[91], grid[105], grid[106], grid[107], grid[90]);
   evolve8 e5_91 (grid_evolve[91], grid[74], grid[75], grid[76], grid[90], grid[92], grid[106], grid[107], grid[108], grid[91]);
   evolve8 e5_92 (grid_evolve[92], grid[75], grid[76], grid[77], grid[91], grid[93], grid[107], grid[108], grid[109], grid[92]);
   evolve8 e5_93 (grid_evolve[93], grid[76], grid[77], grid[78], grid[92], grid[94], grid[108], grid[109], grid[110], grid[93]);
   evolve8 e5_94 (grid_evolve[94], grid[77], grid[78], grid[79], grid[93], grid[95], grid[109], grid[110], grid[111], grid[94]);
   evolve5 e5_95 (grid_evolve[95], grid[78], grid[79], grid[94], grid[110], grid[111], grid[95]);


   evolve5 e6_96 (grid_evolve[96], grid[80], grid[81], grid[97], grid[112], grid[113], grid[96]);
   evolve8 e6_97 (grid_evolve[97], grid[80], grid[81], grid[82], grid[96], grid[98], grid[112], grid[113], grid[114], grid[97]);
   evolve8 e6_98 (grid_evolve[98], grid[81], grid[82], grid[83], grid[97], grid[99], grid[113], grid[114], grid[115], grid[98]);
   evolve8 e6_99 (grid_evolve[99], grid[82], grid[83], grid[84], grid[98], grid[100], grid[114], grid[115], grid[116], grid[99]);
   evolve8 e6_100 (grid_evolve[100], grid[83], grid[84], grid[85], grid[99], grid[101], grid[115], grid[116], grid[117], grid[100]);
   evolve8 e6_101 (grid_evolve[101], grid[84], grid[85], grid[86], grid[100], grid[102], grid[116], grid[117], grid[118], grid[101]);
   evolve8 e6_102 (grid_evolve[102], grid[85], grid[86], grid[87], grid[101], grid[103], grid[117], grid[118], grid[119], grid[102]);
   evolve8 e6_103 (grid_evolve[103], grid[86], grid[87], grid[88], grid[102], grid[104], grid[118], grid[119], grid[120], grid[103]);
   evolve8 e6_104 (grid_evolve[104], grid[87], grid[88], grid[89], grid[103], grid[105], grid[119], grid[120], grid[121], grid[104]);
   evolve8 e6_105 (grid_evolve[105], grid[88], grid[89], grid[90], grid[104], grid[106], grid[120], grid[121], grid[122], grid[105]);
   evolve8 e6_106 (grid_evolve[106], grid[89], grid[90], grid[91], grid[105], grid[107], grid[121], grid[122], grid[123], grid[106]);
   evolve8 e6_107 (grid_evolve[107], grid[90], grid[91], grid[92], grid[106], grid[108], grid[122], grid[123], grid[124], grid[107]);
   evolve8 e6_108 (grid_evolve[108], grid[91], grid[92], grid[93], grid[107], grid[109], grid[123], grid[124], grid[125], grid[108]);
   evolve8 e6_109 (grid_evolve[109], grid[92], grid[93], grid[94], grid[108], grid[110], grid[124], grid[125], grid[126], grid[109]);
   evolve8 e6_110 (grid_evolve[110], grid[93], grid[94], grid[95], grid[109], grid[111], grid[125], grid[126], grid[127], grid[110]);
   evolve5 e6_111 (grid_evolve[111], grid[94], grid[95], grid[110], grid[126], grid[127], grid[111]);


evolve5 e7_112 (grid_evolve[112], grid[96], grid[97], grid[113], grid[128], grid[129], grid[112]);
evolve8 e7_113 (grid_evolve[113], grid[96], grid[97], grid[98], grid[112], grid[114], grid[128], grid[129], grid[130], grid[113]);
evolve8 e7_114 (grid_evolve[114], grid[97], grid[98], grid[99], grid[113], grid[115], grid[129], grid[130], grid[131], grid[114]);
evolve8 e7_115 (grid_evolve[115], grid[98], grid[99], grid[100], grid[114], grid[116], grid[130], grid[131], grid[132], grid[115]);
evolve8 e7_116 (grid_evolve[116], grid[99], grid[100], grid[101], grid[115], grid[117], grid[131], grid[132], grid[133], grid[116]);
evolve8 e7_117 (grid_evolve[117], grid[100], grid[101], grid[102], grid[116], grid[118], grid[132], grid[133], grid[134], grid[117]);
evolve8 e7_118 (grid_evolve[118], grid[101], grid[102], grid[103], grid[117], grid[119], grid[133], grid[134], grid[135], grid[118]);
evolve8 e7_119 (grid_evolve[119], grid[102], grid[103], grid[104], grid[118], grid[120], grid[134], grid[135], grid[136], grid[119]);
evolve8 e7_120 (grid_evolve[120], grid[103], grid[104], grid[105], grid[119], grid[121], grid[135], grid[136], grid[137], grid[120]);
evolve8 e7_121 (grid_evolve[121], grid[104], grid[105], grid[106], grid[120], grid[122], grid[136], grid[137], grid[138], grid[121]);
evolve8 e7_122 (grid_evolve[122], grid[105], grid[106], grid[107], grid[121], grid[123], grid[137], grid[138], grid[139], grid[122]);
evolve8 e7_123 (grid_evolve[123], grid[106], grid[107], grid[108], grid[122], grid[124], grid[138], grid[139], grid[140], grid[123]);
evolve8 e7_124 (grid_evolve[124], grid[107], grid[108], grid[109], grid[123], grid[125], grid[139], grid[140], grid[141], grid[124]);
evolve8 e7_125 (grid_evolve[125], grid[108], grid[109], grid[110], grid[124], grid[126], grid[140], grid[141], grid[142], grid[125]);
evolve8 e7_126 (grid_evolve[126], grid[109], grid[110], grid[111], grid[125], grid[127], grid[141], grid[142], grid[143], grid[126]);
evolve5 e7_127 (grid_evolve[127], grid[110], grid[111], grid[126], grid[142], grid[143], grid[127]);


evolve5 e8_128 (grid_evolve[128], grid[112], grid[113], grid[129], grid[144], grid[145], grid[128]);
evolve8 e8_129 (grid_evolve[129], grid[112], grid[113], grid[114], grid[128], grid[130], grid[144], grid[145], grid[146], grid[129]);
evolve8 e8_130 (grid_evolve[130], grid[113], grid[114], grid[115], grid[129], grid[131], grid[145], grid[146], grid[147], grid[130]);
evolve8 e8_131 (grid_evolve[131], grid[114], grid[115], grid[116], grid[130], grid[132], grid[146], grid[147], grid[148], grid[131]);
evolve8 e8_132 (grid_evolve[132], grid[115], grid[116], grid[117], grid[131], grid[133], grid[147], grid[148], grid[149], grid[132]);
evolve8 e8_133 (grid_evolve[133], grid[116], grid[117], grid[118], grid[132], grid[134], grid[148], grid[149], grid[150], grid[133]);
evolve8 e8_134 (grid_evolve[134], grid[117], grid[118], grid[119], grid[133], grid[135], grid[149], grid[150], grid[151], grid[134]);
evolve8 e8_135 (grid_evolve[135], grid[118], grid[119], grid[120], grid[134], grid[136], grid[150], grid[151], grid[152], grid[135]);
evolve8 e8_136 (grid_evolve[136], grid[119], grid[120], grid[121], grid[135], grid[137], grid[151], grid[152], grid[153], grid[136]);
evolve8 e8_137 (grid_evolve[137], grid[120], grid[121], grid[122], grid[136], grid[138], grid[152], grid[153], grid[154], grid[137]);
evolve8 e8_138 (grid_evolve[138], grid[121], grid[122], grid[123], grid[137], grid[139], grid[153], grid[154], grid[155], grid[138]);
evolve8 e8_139 (grid_evolve[139], grid[122], grid[123], grid[124], grid[138], grid[140], grid[154], grid[155], grid[156], grid[139]);
evolve8 e8_140 (grid_evolve[140], grid[123], grid[124], grid[125], grid[139], grid[141], grid[155], grid[156], grid[157], grid[140]);
evolve8 e8_141 (grid_evolve[141], grid[124], grid[125], grid[126], grid[140], grid[142], grid[156], grid[157], grid[158], grid[141]);
evolve8 e8_142 (grid_evolve[142], grid[125], grid[126], grid[127], grid[141], grid[143], grid[157], grid[158], grid[159], grid[142]);
evolve5 e8_143 (grid_evolve[143], grid[126], grid[127], grid[142], grid[158], grid[159], grid[143]);


evolve5 e9_144 (grid_evolve[144], grid[128], grid[129], grid[145], grid[160], grid[161], grid[144]);
evolve8 e9_145 (grid_evolve[145], grid[128], grid[129], grid[130], grid[144], grid[146], grid[160], grid[161], grid[162], grid[145]);
evolve8 e9_146 (grid_evolve[146], grid[129], grid[130], grid[131], grid[145], grid[147], grid[161], grid[162], grid[163], grid[146]);
evolve8 e9_147 (grid_evolve[147], grid[130], grid[131], grid[132], grid[146], grid[148], grid[162], grid[163], grid[164], grid[147]);
evolve8 e9_148 (grid_evolve[148], grid[131], grid[132], grid[133], grid[147], grid[149], grid[163], grid[164], grid[165], grid[148]);
evolve8 e9_149 (grid_evolve[149], grid[132], grid[133], grid[134], grid[148], grid[150], grid[164], grid[165], grid[166], grid[149]);
evolve8 e9_150 (grid_evolve[150], grid[133], grid[134], grid[135], grid[149], grid[151], grid[165], grid[166], grid[167], grid[150]);
evolve8 e9_151 (grid_evolve[151], grid[134], grid[135], grid[136], grid[150], grid[152], grid[166], grid[167], grid[168], grid[151]);
evolve8 e9_152 (grid_evolve[152], grid[135], grid[136], grid[137], grid[151], grid[153], grid[167], grid[168], grid[169], grid[152]);
evolve8 e9_153 (grid_evolve[153], grid[136], grid[137], grid[138], grid[152], grid[154], grid[168], grid[169], grid[170], grid[153]);
evolve8 e9_154 (grid_evolve[154], grid[137], grid[138], grid[139], grid[153], grid[155], grid[169], grid[170], grid[171], grid[154]);
evolve8 e9_155 (grid_evolve[155], grid[138], grid[139], grid[140], grid[154], grid[156], grid[170], grid[171], grid[172], grid[155]);
evolve8 e9_156 (grid_evolve[156], grid[139], grid[140], grid[141], grid[155], grid[157], grid[171], grid[172], grid[173], grid[156]);
evolve8 e9_157 (grid_evolve[157], grid[140], grid[141], grid[142], grid[156], grid[158], grid[172], grid[173], grid[174], grid[157]);
evolve8 e9_158 (grid_evolve[158], grid[141], grid[142], grid[143], grid[157], grid[159], grid[173], grid[174], grid[175], grid[158]);
evolve5 e9_159 (grid_evolve[159], grid[142], grid[143], grid[158], grid[174], grid[175], grid[159]);


evolve5 e10_160 (grid_evolve[160], grid[144], grid[145], grid[161], grid[176], grid[177], grid[160]);
evolve8 e10_161 (grid_evolve[161], grid[144], grid[145], grid[146], grid[160], grid[162], grid[176], grid[177], grid[178], grid[161]);
evolve8 e10_162 (grid_evolve[162], grid[145], grid[146], grid[147], grid[161], grid[163], grid[177], grid[178], grid[179], grid[162]);
evolve8 e10_163 (grid_evolve[163], grid[146], grid[147], grid[148], grid[162], grid[164], grid[178], grid[179], grid[180], grid[163]);
evolve8 e10_164 (grid_evolve[164], grid[147], grid[148], grid[149], grid[163], grid[165], grid[179], grid[180], grid[181], grid[164]);
evolve8 e10_165 (grid_evolve[165], grid[148], grid[149], grid[150], grid[164], grid[166], grid[180], grid[181], grid[182], grid[165]);
evolve8 e10_166 (grid_evolve[166], grid[149], grid[150], grid[151], grid[165], grid[167], grid[181], grid[182], grid[183], grid[166]);
evolve8 e10_167 (grid_evolve[167], grid[150], grid[151], grid[152], grid[166], grid[168], grid[182], grid[183], grid[184], grid[167]);
evolve8 e10_168 (grid_evolve[168], grid[151], grid[152], grid[153], grid[167], grid[169], grid[183], grid[184], grid[185], grid[168]);
evolve8 e10_169 (grid_evolve[169], grid[152], grid[153], grid[154], grid[168], grid[170], grid[184], grid[185], grid[186], grid[169]);
evolve8 e10_170 (grid_evolve[170], grid[153], grid[154], grid[155], grid[169], grid[171], grid[185], grid[186], grid[187], grid[170]);
evolve8 e10_171 (grid_evolve[171], grid[154], grid[155], grid[156], grid[170], grid[172], grid[186], grid[187], grid[188], grid[171]);
evolve8 e10_172 (grid_evolve[172], grid[155], grid[156], grid[157], grid[171], grid[173], grid[187], grid[188], grid[189], grid[172]);
evolve8 e10_173 (grid_evolve[173], grid[156], grid[157], grid[158], grid[172], grid[174], grid[188], grid[189], grid[190], grid[173]);
evolve8 e10_174 (grid_evolve[174], grid[157], grid[158], grid[159], grid[173], grid[175], grid[189], grid[190], grid[191], grid[174]);
evolve5 e10_175 (grid_evolve[175], grid[158], grid[159], grid[174], grid[190], grid[191], grid[175]);


evolve5 e11_176 (grid_evolve[176], grid[160], grid[161], grid[177], grid[192], grid[193], grid[176]);
evolve8 e11_177 (grid_evolve[177], grid[160], grid[161], grid[162], grid[176], grid[178], grid[192], grid[193], grid[194], grid[177]);
evolve8 e11_178 (grid_evolve[178], grid[161], grid[162], grid[163], grid[177], grid[179], grid[193], grid[194], grid[195], grid[178]);
evolve8 e11_179 (grid_evolve[179], grid[162], grid[163], grid[164], grid[178], grid[180], grid[194], grid[195], grid[196], grid[179]);
evolve8 e11_180 (grid_evolve[180], grid[163], grid[164], grid[165], grid[179], grid[181], grid[195], grid[196], grid[197], grid[180]);
evolve8 e11_181 (grid_evolve[181], grid[164], grid[165], grid[166], grid[180], grid[182], grid[196], grid[197], grid[198], grid[181]);
evolve8 e11_182 (grid_evolve[182], grid[165], grid[166], grid[167], grid[181], grid[183], grid[197], grid[198], grid[199], grid[182]);
evolve8 e11_183 (grid_evolve[183], grid[166], grid[167], grid[168], grid[182], grid[184], grid[198], grid[199], grid[200], grid[183]);
evolve8 e11_184 (grid_evolve[184], grid[167], grid[168], grid[169], grid[183], grid[185], grid[199], grid[200], grid[201], grid[184]);
evolve8 e11_185 (grid_evolve[185], grid[168], grid[169], grid[170], grid[184], grid[186], grid[200], grid[201], grid[202], grid[185]);
evolve8 e11_186 (grid_evolve[186], grid[169], grid[170], grid[171], grid[185], grid[187], grid[201], grid[202], grid[203], grid[186]);
evolve8 e11_187 (grid_evolve[187], grid[170], grid[171], grid[172], grid[186], grid[188], grid[202], grid[203], grid[204], grid[187]);
evolve8 e11_188 (grid_evolve[188], grid[171], grid[172], grid[173], grid[187], grid[189], grid[203], grid[204], grid[205], grid[188]);
evolve8 e11_189 (grid_evolve[189], grid[172], grid[173], grid[174], grid[188], grid[190], grid[204], grid[205], grid[206], grid[189]);
evolve8 e11_190 (grid_evolve[190], grid[173], grid[174], grid[175], grid[189], grid[191], grid[205], grid[206], grid[207], grid[190]);
evolve5 e11_191 (grid_evolve[191], grid[174], grid[175], grid[190], grid[206], grid[207], grid[191]);


evolve5 e12_192 (grid_evolve[192], grid[176], grid[177], grid[193], grid[208], grid[209], grid[192]);
evolve8 e12_193 (grid_evolve[193], grid[176], grid[177], grid[178], grid[192], grid[194], grid[208], grid[209], grid[210], grid[193]);
evolve8 e12_194 (grid_evolve[194], grid[177], grid[178], grid[179], grid[193], grid[195], grid[209], grid[210], grid[211], grid[194]);
evolve8 e12_195 (grid_evolve[195], grid[178], grid[179], grid[180], grid[194], grid[196], grid[210], grid[211], grid[212], grid[195]);
evolve8 e12_196 (grid_evolve[196], grid[179], grid[180], grid[181], grid[195], grid[197], grid[211], grid[212], grid[213], grid[196]);
evolve8 e12_197 (grid_evolve[197], grid[180], grid[181], grid[182], grid[196], grid[198], grid[212], grid[213], grid[214], grid[197]);
evolve8 e12_198 (grid_evolve[198], grid[181], grid[182], grid[183], grid[197], grid[199], grid[213], grid[214], grid[215], grid[198]);
evolve8 e12_199 (grid_evolve[199], grid[182], grid[183], grid[184], grid[198], grid[200], grid[214], grid[215], grid[216], grid[199]);
evolve8 e12_200 (grid_evolve[200], grid[183], grid[184], grid[185], grid[199], grid[201], grid[215], grid[216], grid[217], grid[200]);
evolve8 e12_201 (grid_evolve[201], grid[184], grid[185], grid[186], grid[200], grid[202], grid[216], grid[217], grid[218], grid[201]);
evolve8 e12_202 (grid_evolve[202], grid[185], grid[186], grid[187], grid[201], grid[203], grid[217], grid[218], grid[219], grid[202]);
evolve8 e12_203 (grid_evolve[203], grid[186], grid[187], grid[188], grid[202], grid[204], grid[218], grid[219], grid[220], grid[203]);
evolve8 e12_204 (grid_evolve[204], grid[187], grid[188], grid[189], grid[203], grid[205], grid[219], grid[220], grid[221], grid[204]);
evolve8 e12_205 (grid_evolve[205], grid[188], grid[189], grid[190], grid[204], grid[206], grid[220], grid[221], grid[222], grid[205]);
evolve8 e12_206 (grid_evolve[206], grid[189], grid[190], grid[191], grid[205], grid[207], grid[221], grid[222], grid[223], grid[206]);
evolve5 e12_207 (grid_evolve[207], grid[190], grid[191], grid[206], grid[222], grid[223], grid[207]);


evolve5 e13_208 (grid_evolve[208], grid[192], grid[193], grid[209], grid[224], grid[225], grid[208]);
evolve8 e13_209 (grid_evolve[209], grid[192], grid[193], grid[194], grid[208], grid[210], grid[224], grid[225], grid[226], grid[209]);
evolve8 e13_210 (grid_evolve[210], grid[193], grid[194], grid[195], grid[209], grid[211], grid[225], grid[226], grid[227], grid[210]);
evolve8 e13_211 (grid_evolve[211], grid[194], grid[195], grid[196], grid[210], grid[212], grid[226], grid[227], grid[228], grid[211]);
evolve8 e13_212 (grid_evolve[212], grid[195], grid[196], grid[197], grid[211], grid[213], grid[227], grid[228], grid[229], grid[212]);
evolve8 e13_213 (grid_evolve[213], grid[196], grid[197], grid[198], grid[212], grid[214], grid[228], grid[229], grid[230], grid[213]);
evolve8 e13_214 (grid_evolve[214], grid[197], grid[198], grid[199], grid[213], grid[215], grid[229], grid[230], grid[231], grid[214]);
evolve8 e13_215 (grid_evolve[215], grid[198], grid[199], grid[200], grid[214], grid[216], grid[230], grid[231], grid[232], grid[215]);
evolve8 e13_216 (grid_evolve[216], grid[199], grid[200], grid[201], grid[215], grid[217], grid[231], grid[232], grid[233], grid[216]);
evolve8 e13_217 (grid_evolve[217], grid[200], grid[201], grid[202], grid[216], grid[218], grid[232], grid[233], grid[234], grid[217]);
evolve8 e13_218 (grid_evolve[218], grid[201], grid[202], grid[203], grid[217], grid[219], grid[233], grid[234], grid[235], grid[218]);
evolve8 e13_219 (grid_evolve[219], grid[202], grid[203], grid[204], grid[218], grid[220], grid[234], grid[235], grid[236], grid[219]);
evolve8 e13_220 (grid_evolve[220], grid[203], grid[204], grid[205], grid[219], grid[221], grid[235], grid[236], grid[237], grid[220]);
evolve8 e13_221 (grid_evolve[221], grid[204], grid[205], grid[206], grid[220], grid[222], grid[236], grid[237], grid[238], grid[221]);
evolve8 e13_222 (grid_evolve[222], grid[205], grid[206], grid[207], grid[221], grid[223], grid[237], grid[238], grid[239], grid[222]);
evolve5 e13_223 (grid_evolve[223], grid[206], grid[207], grid[222], grid[238], grid[239], grid[223]);


evolve5 e14_224 (grid_evolve[224], grid[208], grid[209], grid[225], grid[240], grid[241], grid[224]);
evolve8 e14_225 (grid_evolve[225], grid[208], grid[209], grid[210], grid[224], grid[226], grid[240], grid[241], grid[242], grid[225]);
evolve8 e14_226 (grid_evolve[226], grid[209], grid[210], grid[211], grid[225], grid[227], grid[241], grid[242], grid[243], grid[226]);
evolve8 e14_227 (grid_evolve[227], grid[210], grid[211], grid[212], grid[226], grid[228], grid[242], grid[243], grid[244], grid[227]);
evolve8 e14_228 (grid_evolve[228], grid[211], grid[212], grid[213], grid[227], grid[229], grid[243], grid[244], grid[245], grid[228]);
evolve8 e14_229 (grid_evolve[229], grid[212], grid[213], grid[214], grid[228], grid[230], grid[244], grid[245], grid[246], grid[229]);
evolve8 e14_230 (grid_evolve[230], grid[213], grid[214], grid[215], grid[229], grid[231], grid[245], grid[246], grid[247], grid[230]);
evolve8 e14_231 (grid_evolve[231], grid[214], grid[215], grid[216], grid[230], grid[232], grid[246], grid[247], grid[248], grid[231]);
evolve8 e14_232 (grid_evolve[232], grid[215], grid[216], grid[217], grid[231], grid[233], grid[247], grid[248], grid[249], grid[232]);
evolve8 e14_233 (grid_evolve[233], grid[216], grid[217], grid[218], grid[232], grid[234], grid[248], grid[249], grid[250], grid[233]);
evolve8 e14_234 (grid_evolve[234], grid[217], grid[218], grid[219], grid[233], grid[235], grid[249], grid[250], grid[251], grid[234]);
evolve8 e14_235 (grid_evolve[235], grid[218], grid[219], grid[220], grid[234], grid[236], grid[250], grid[251], grid[252], grid[235]);
evolve8 e14_236 (grid_evolve[236], grid[219], grid[220], grid[221], grid[235], grid[237], grid[251], grid[252], grid[253], grid[236]);
evolve8 e14_237 (grid_evolve[237], grid[220], grid[221], grid[222], grid[236], grid[238], grid[252], grid[253], grid[254], grid[237]);
evolve8 e14_238 (grid_evolve[238], grid[221], grid[222], grid[223], grid[237], grid[239], grid[253], grid[254], grid[255], grid[238]);
evolve5 e14_239 (grid_evolve[239], grid[222], grid[223], grid[238], grid[254], grid[255], grid[239]);


evolve3 e15_240 (grid_evolve[240], grid[224], grid[225], grid[241], grid[240]);
evolve5 e15_241 (grid_evolve[241], grid[224], grid[225], grid[226], grid[240], grid[242], grid[241]);
evolve5 e15_242 (grid_evolve[242], grid[225], grid[226], grid[227], grid[241], grid[243], grid[242]);
evolve5 e15_243 (grid_evolve[243], grid[226], grid[227], grid[228], grid[242], grid[244], grid[243]);
evolve5 e15_244 (grid_evolve[244], grid[227], grid[228], grid[229], grid[243], grid[245], grid[244]);
evolve5 e15_245 (grid_evolve[245], grid[228], grid[229], grid[230], grid[244], grid[246], grid[245]);
evolve5 e15_246 (grid_evolve[246], grid[229], grid[230], grid[231], grid[245], grid[247], grid[246]);
evolve5 e15_247 (grid_evolve[247], grid[230], grid[231], grid[232], grid[246], grid[248], grid[247]);
evolve5 e15_248 (grid_evolve[248], grid[231], grid[232], grid[233], grid[247], grid[249], grid[248]);
evolve5 e15_249 (grid_evolve[249], grid[232], grid[233], grid[234], grid[248], grid[250], grid[249]);
evolve5 e15_250 (grid_evolve[250], grid[233], grid[234], grid[235], grid[249], grid[251], grid[250]);
evolve5 e15_251 (grid_evolve[251], grid[234], grid[235], grid[236], grid[250], grid[252], grid[251]);
evolve5 e15_252 (grid_evolve[252], grid[235], grid[236], grid[237], grid[251], grid[253], grid[252]);
evolve5 e15_253 (grid_evolve[253], grid[236], grid[237], grid[238], grid[252], grid[254], grid[253]);
evolve5 e15_254 (grid_evolve[254], grid[237], grid[238], grid[239], grid[253], grid[255], grid[254]);
evolve3 e15_255 (grid_evolve[255], grid[238], grid[239], grid[254], grid[255]);




 
endmodule // top


module evolve3 (next_state, vector1, vector2, vector3, current_state);
	
   input logic  vector1;
   input logic  vector2;
   input logic  vector3;
   input logic  current_state;
   output logic next_state;
   
   logic [3:0] 	sum;
   
   assign sum = vector1 + vector2 + vector3;
   rules r1 (sum, current_state, next_state);
   
endmodule // evolve3

module evolve5 (next_state, vector1, vector2, vector3, 
		vector4, vector5, current_state);
   
   input logic   vector1;
   input logic 	 vector2;
   input logic 	 vector3;
   input logic 	 vector4;
   input logic 	 vector5;
   input logic 	 current_state;
   output logic  next_state;
   
   logic [3:0] 	 sum;
   
   assign sum = vector1 + vector2 + vector3 + vector4 + vector5;
   rules r1 (sum, current_state, next_state);
   
endmodule // evolve5


module evolve8 (next_state, vector1, vector2, vector3, 
		vector4, vector5, vector6, 
		vector7, vector8, current_state);
   
   input logic 	vector1;
   input logic 	vector2;
   input logic 	vector3;
   input logic 	vector4;
   input logic 	vector5;
	
   input logic 	vector6;
   input logic 	vector7;
   input logic 	vector8;
   input logic 	current_state;
   output logic next_state;
   
   logic [3:0] 	sum;
   
   assign sum = vector1 + vector2 + vector3 + vector4 + 
		vector5 + vector6 + vector7 + vector8;
   rules r1 (sum, current_state, next_state);
   
endmodule // evolve8


module rules (pop_count, current_state, next_state);
   
   input logic [3:0] pop_count;
   input logic 	     current_state;
   output logic      next_state;
   
   assign next_state = (pop_count == 2 & current_state) | pop_count == 3;
   
endmodule // rules

module New_Datapath (grid, reset, clk, q);
input logic [255:0] grid;
input logic reset;
input logic clk;
output logic [255:0] q;
logic [255:0] grid_evolve;
logic [255:0] y;

FSM sw(clk, reset, en);
mux2 #(256) m1(.d1(grid), .d0(q), .s(reset), .y(y));
datapath dp(.grid(y), .grid_evolve(grid_evolve));
flopenr #(256)f1 (.clk(clk), .reset(reset), .en(en), .grid(grid), .d(grid_evolve), .q(q));



endmodule


