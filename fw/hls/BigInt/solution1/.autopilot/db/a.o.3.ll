; ModuleID = '/home/linux/Documents/DLA/fw/hls/BigInt/solution1/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@zero = internal constant [256 x i8] zeroinitializer ; [#uses=4 type=[256 x i8]*]
@one = internal constant [256 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01" ; [#uses=3 type=[256 x i8]*]
@bigint_math_str = internal unnamed_addr constant [12 x i8] c"bigint_math\00" ; [#uses=1 type=[12 x i8]*]
@RAM_1P_str = internal unnamed_addr constant [7 x i8] c"RAM_1P\00" ; [#uses=65 type=[7 x i8]*]
@p_str2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=15 type=[1 x i8]*]
@p_str13 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=56 type=[1 x i8]*]
@p_str12 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=14 type=[1 x i8]*]
@p_str11 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=14 type=[1 x i8]*]
@p_str10 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=371 type=[1 x i8]*]
@p_str1 = private unnamed_addr constant [11 x i8] c"PERIPH_BUS\00", align 1 ; [#uses=5 type=[11 x i8]*]
@p_str = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1 ; [#uses=5 type=[10 x i8]*]

; [#uses=1]
declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

; [#uses=1]
declare i16 @llvm.part.select.i16(i16, i32, i32) nounwind readnone

; [#uses=121]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=30]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=46]
define internal fastcc void @bigint_math_bigint_zero([256 x i8]* nocapture %in) {
  %empty = call i32 (...)* @_ssdm_op_SpecMemCore([256 x i8]* %in, [1 x i8]* @p_str10, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str10, i32 -1, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10) ; [#uses=0 type=i32]
  call void @llvm.dbg.value(metadata !{[256 x i8]* %in}, i64 0, metadata !35), !dbg !47 ; [debug line = 6:32] [debug variable = in]
  br label %1, !dbg !48                           ; [debug line = 8:6]

; <label>:1                                       ; preds = %2, %0
  %i = phi i9 [ 0, %0 ], [ %i_1, %2 ]             ; [#uses=3 type=i9]
  %exitcond = icmp eq i9 %i, -256, !dbg !48       ; [#uses=1 type=i1] [debug line = 8:6]
  %empty_7 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 256, i64 256, i64 256) ; [#uses=0 type=i32]
  %i_1 = add i9 %i, 1, !dbg !51                   ; [#uses=1 type=i9] [debug line = 8:22]
  br i1 %exitcond, label %3, label %2, !dbg !48   ; [debug line = 8:6]

; <label>:2                                       ; preds = %1
  %tmp = zext i9 %i to i64, !dbg !52              ; [#uses=1 type=i64] [debug line = 10:3]
  %in_addr = getelementptr [256 x i8]* %in, i64 0, i64 %tmp, !dbg !52 ; [#uses=1 type=i8*] [debug line = 10:3]
  store i8 0, i8* %in_addr, align 1, !dbg !52     ; [debug line = 10:3]
  call void @llvm.dbg.value(metadata !{i9 %i_1}, i64 0, metadata !54), !dbg !51 ; [debug line = 8:22] [debug variable = i]
  br label %1, !dbg !51                           ; [debug line = 8:22]

; <label>:3                                       ; preds = %1
  ret void, !dbg !56                              ; [debug line = 13:1]
}

; [#uses=2]
define internal fastcc void @bigint_math_bigint_sub([256 x i8]* nocapture %out, [256 x i8]* nocapture %a, [256 x i8]* nocapture %b) {
  %empty = call i32 (...)* @_ssdm_op_SpecMemCore([256 x i8]* %b, [1 x i8]* @p_str10, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str10, i32 -1, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10) ; [#uses=0 type=i32]
  %empty_8 = call i32 (...)* @_ssdm_op_SpecMemCore([256 x i8]* %a, [1 x i8]* @p_str13, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str13, i32 -1, [1 x i8]* @p_str13, [1 x i8]* @p_str13, [1 x i8]* @p_str13, [1 x i8]* @p_str13, [1 x i8]* @p_str13) ; [#uses=0 type=i32]
  %empty_9 = call i32 (...)* @_ssdm_op_SpecMemCore([256 x i8]* %out, [1 x i8]* @p_str10, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str10, i32 -1, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10) ; [#uses=0 type=i32]
  %tempA = alloca [256 x i8], align 16            ; [#uses=8 type=[256 x i8]*]
  %tempB = alloca [256 x i8], align 16            ; [#uses=5 type=[256 x i8]*]
  call void @llvm.dbg.value(metadata !{[256 x i8]* %tempB}, i64 0, metadata !57), !dbg !66 ; [debug line = 41:32@239:2] [debug variable = to]
  %carry = alloca [256 x i8], align 16            ; [#uses=4 type=[256 x i8]*]
  call void @llvm.dbg.value(metadata !{[256 x i8]* %out}, i64 0, metadata !67), !dbg !68 ; [debug line = 222:31] [debug variable = out]
  call void @llvm.dbg.value(metadata !{[256 x i8]* %a}, i64 0, metadata !69), !dbg !70 ; [debug line = 222:55] [debug variable = a]
  call void @llvm.dbg.value(metadata !{[256 x i8]* %b}, i64 0, metadata !71), !dbg !72 ; [debug line = 222:77] [debug variable = b]
  call void @llvm.dbg.declare(metadata !{[256 x i8]* %tempA}, metadata !73), !dbg !74 ; [debug line = 228:16] [debug variable = tempA]
  call void @llvm.dbg.declare(metadata !{[256 x i8]* %tempB}, metadata !75), !dbg !76 ; [debug line = 229:16] [debug variable = tempB]
  call void @llvm.dbg.declare(metadata !{[256 x i8]* %carry}, metadata !77), !dbg !78 ; [debug line = 231:16] [debug variable = carry]
  call fastcc void @bigint_math_bigint_zero([256 x i8]* %tempA), !dbg !79 ; [debug line = 233:2]
  call fastcc void @bigint_math_bigint_zero([256 x i8]* %tempB), !dbg !80 ; [debug line = 234:2]
  call fastcc void @bigint_math_bigint_zero([256 x i8]* %carry), !dbg !81 ; [debug line = 236:2]
  call void @llvm.dbg.value(metadata !{[256 x i8]* %tempA}, i64 0, metadata !82), !dbg !84 ; [debug line = 41:32@238:2] [debug variable = to]
  call void @llvm.dbg.value(metadata !{[256 x i8]* %a}, i64 0, metadata !85), !dbg !86 ; [debug line = 41:55@238:2] [debug variable = from]
  %empty_10 = call i32 (...)* @_ssdm_op_SpecMemCore([256 x i8]* %carry, [1 x i8]* @p_str10, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str10, i32 -1, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10) ; [#uses=0 type=i32]
  %empty_11 = call i32 (...)* @_ssdm_op_SpecMemCore([256 x i8]* %tempB, [1 x i8]* @p_str10, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str10, i32 -1, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10) ; [#uses=0 type=i32]
  %empty_12 = call i32 (...)* @_ssdm_op_SpecMemCore([256 x i8]* %tempA, [1 x i8]* @p_str10, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str10, i32 -1, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10) ; [#uses=0 type=i32]
  br label %1, !dbg !87                           ; [debug line = 44:6@238:2]

; <label>:1                                       ; preds = %2, %0
  %i_i = phi i9 [ 0, %0 ], [ %i_3, %2 ]           ; [#uses=3 type=i9]
  %exitcond_i = icmp eq i9 %i_i, -256, !dbg !87   ; [#uses=1 type=i1] [debug line = 44:6@238:2]
  %empty_13 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 256, i64 256, i64 256) ; [#uses=0 type=i32]
  %i_3 = add i9 %i_i, 1, !dbg !90                 ; [#uses=1 type=i9] [debug line = 44:22@238:2]
  br i1 %exitcond_i, label %bigint_copy.exit, label %2, !dbg !87 ; [debug line = 44:6@238:2]

; <label>:2                                       ; preds = %1
  %tmp_i = zext i9 %i_i to i64, !dbg !91          ; [#uses=2 type=i64] [debug line = 45:3@238:2]
  %a_addr = getelementptr [256 x i8]* %a, i64 0, i64 %tmp_i, !dbg !91 ; [#uses=1 type=i8*] [debug line = 45:3@238:2]
  %a_load = load i8* %a_addr, align 1, !dbg !91   ; [#uses=1 type=i8] [debug line = 45:3@238:2]
  %tempA_addr = getelementptr [256 x i8]* %tempA, i64 0, i64 %tmp_i, !dbg !91 ; [#uses=1 type=i8*] [debug line = 45:3@238:2]
  store i8 %a_load, i8* %tempA_addr, align 1, !dbg !91 ; [debug line = 45:3@238:2]
  call void @llvm.dbg.value(metadata !{i9 %i_3}, i64 0, metadata !93), !dbg !90 ; [debug line = 44:22@238:2] [debug variable = i]
  br label %1, !dbg !90                           ; [debug line = 44:22@238:2]

bigint_copy.exit:                                 ; preds = %3, %1
  %i_i4 = phi i9 [ %i_4, %3 ], [ 0, %1 ]          ; [#uses=3 type=i9]
  %exitcond_i5 = icmp eq i9 %i_i4, -256, !dbg !94 ; [#uses=1 type=i1] [debug line = 44:6@239:2]
  %empty_14 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 256, i64 256, i64 256) ; [#uses=0 type=i32]
  %i_4 = add i9 %i_i4, 1, !dbg !95                ; [#uses=1 type=i9] [debug line = 44:22@239:2]
  br i1 %exitcond_i5, label %bigint_copy.exit11, label %3, !dbg !94 ; [debug line = 44:6@239:2]

; <label>:3                                       ; preds = %bigint_copy.exit
  %tmp_i6 = zext i9 %i_i4 to i64, !dbg !96        ; [#uses=2 type=i64] [debug line = 45:3@239:2]
  %b_addr = getelementptr [256 x i8]* %b, i64 0, i64 %tmp_i6, !dbg !96 ; [#uses=1 type=i8*] [debug line = 45:3@239:2]
  %b_load = load i8* %b_addr, align 1, !dbg !96   ; [#uses=1 type=i8] [debug line = 45:3@239:2]
  %tempB_addr_1 = getelementptr [256 x i8]* %tempB, i64 0, i64 %tmp_i6, !dbg !96 ; [#uses=1 type=i8*] [debug line = 45:3@239:2]
  store i8 %b_load, i8* %tempB_addr_1, align 1, !dbg !96 ; [debug line = 45:3@239:2]
  call void @llvm.dbg.value(metadata !{i9 %i_4}, i64 0, metadata !97), !dbg !95 ; [debug line = 44:22@239:2] [debug variable = i]
  br label %bigint_copy.exit, !dbg !95            ; [debug line = 44:22@239:2]

bigint_copy.exit11:                               ; preds = %bigint_copy.exit
  call fastcc void @bigint_math_bigint_zero([256 x i8]* %out), !dbg !98 ; [debug line = 241:2]
  %tmp = call fastcc i2 @bigint_math_bigint_compare([256 x i8]* %tempA, [256 x i8]* %tempB), !dbg !99 ; [#uses=1 type=i2] [debug line = 243:5]
  %tmp_2 = icmp eq i2 %tmp, -1, !dbg !99          ; [#uses=1 type=i1] [debug line = 243:5]
  br i1 %tmp_2, label %.loopexit, label %.preheader1, !dbg !99 ; [debug line = 243:5]

.preheader1:                                      ; preds = %._crit_edge, %bigint_copy.exit11
  %indvars_iv = phi i9 [ %indvars_iv_next, %._crit_edge ], [ 254, %bigint_copy.exit11 ] ; [#uses=2 type=i9]
  %i = phi i9 [ %i_2, %._crit_edge ], [ 255, %bigint_copy.exit11 ] ; [#uses=4 type=i9]
  %i_cast = sext i9 %i to i32, !dbg !100          ; [#uses=2 type=i32] [debug line = 247:6]
  %tmp_3 = call i1 @_ssdm_op_BitSelect.i1.i9.i32(i9 %i, i32 8), !dbg !100 ; [#uses=1 type=i1] [debug line = 247:6]
  %empty_15 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 256, i64 256, i64 256) ; [#uses=0 type=i32]
  br i1 %tmp_3, label %.loopexit, label %4, !dbg !100 ; [debug line = 247:6]

; <label>:4                                       ; preds = %.preheader1
  %tmp_4 = zext i32 %i_cast to i64, !dbg !102     ; [#uses=5 type=i64] [debug line = 248:3]
  %tempA_addr_1 = getelementptr inbounds [256 x i8]* %tempA, i64 0, i64 %tmp_4, !dbg !102 ; [#uses=2 type=i8*] [debug line = 248:3]
  %tempA_load = load i8* %tempA_addr_1, align 1, !dbg !102 ; [#uses=1 type=i8] [debug line = 248:3]
  %tempB_addr = getelementptr inbounds [256 x i8]* %tempB, i64 0, i64 %tmp_4, !dbg !102 ; [#uses=1 type=i8*] [debug line = 248:3]
  %tempB_load = load i8* %tempB_addr, align 1, !dbg !102 ; [#uses=2 type=i8] [debug line = 248:3]
  %tmp_5 = icmp ult i8 %tempA_load, %tempB_load, !dbg !102 ; [#uses=1 type=i1] [debug line = 248:3]
  br i1 %tmp_5, label %5, label %._crit_edge, !dbg !102 ; [debug line = 248:3]

; <label>:5                                       ; preds = %4
  %tmp_6 = add i9 %i, -1, !dbg !104               ; [#uses=1 type=i9] [debug line = 249:4]
  %tmp_7 = sext i9 %tmp_6 to i64, !dbg !104       ; [#uses=1 type=i64] [debug line = 249:4]
  %tempA_addr_2 = getelementptr inbounds [256 x i8]* %tempA, i64 0, i64 %tmp_7, !dbg !104 ; [#uses=3 type=i8*] [debug line = 249:4]
  %tempA_load_1 = load i8* %tempA_addr_2, align 1, !dbg !104 ; [#uses=2 type=i8] [debug line = 249:4]
  %tmp_8 = icmp eq i8 %tempA_load_1, 0, !dbg !104 ; [#uses=1 type=i1] [debug line = 249:4]
  br i1 %tmp_8, label %.preheader, label %10, !dbg !104 ; [debug line = 249:4]

.preheader:                                       ; preds = %.preheader, %5
  %j_2 = phi i32 [ %j, %.preheader ], [ %i_cast, %5 ] ; [#uses=2 type=i32]
  %j = add nsw i32 %j_2, -1, !dbg !106            ; [#uses=2 type=i32] [debug line = 250:5]
  call void @llvm.dbg.value(metadata !{i32 %j}, i64 0, metadata !108), !dbg !106 ; [debug line = 250:5] [debug variable = j]
  %tmp_1 = sext i32 %j to i64, !dbg !109          ; [#uses=1 type=i64] [debug line = 251:5]
  %tempA_addr_3 = getelementptr inbounds [256 x i8]* %tempA, i64 0, i64 %tmp_1, !dbg !109 ; [#uses=2 type=i8*] [debug line = 251:5]
  %tempA_load_2 = load i8* %tempA_addr_3, align 1, !dbg !109 ; [#uses=2 type=i8] [debug line = 251:5]
  %tmp_10 = icmp eq i8 %tempA_load_2, 0, !dbg !109 ; [#uses=1 type=i1] [debug line = 251:5]
  br i1 %tmp_10, label %.preheader, label %6, !dbg !109 ; [debug line = 251:5]

; <label>:6                                       ; preds = %.preheader
  %tmp_11 = add i8 %tempA_load_2, -1, !dbg !110   ; [#uses=1 type=i8] [debug line = 258:5]
  store i8 %tmp_11, i8* %tempA_addr_3, align 1, !dbg !110 ; [debug line = 258:5]
  call void @llvm.dbg.value(metadata !{i32 %j_2}, i64 0, metadata !108), !dbg !111 ; [debug line = 259:5] [debug variable = j]
  br label %7, !dbg !112                          ; [debug line = 260:5]

; <label>:7                                       ; preds = %8, %6
  %j_1 = phi i32 [ %j_2, %6 ], [ %j_3, %8 ]       ; [#uses=3 type=i32]
  %indvars_iv_cast = sext i9 %indvars_iv to i32, !dbg !100 ; [#uses=1 type=i32] [debug line = 247:6]
  %exitcond = icmp eq i32 %j_1, %indvars_iv_cast, !dbg !112 ; [#uses=1 type=i1] [debug line = 260:5]
  br i1 %exitcond, label %9, label %8, !dbg !112  ; [debug line = 260:5]

; <label>:8                                       ; preds = %7
  %tmp_13 = sext i32 %j_1 to i64, !dbg !113       ; [#uses=1 type=i64] [debug line = 261:6]
  %tempA_addr_4 = getelementptr inbounds [256 x i8]* %tempA, i64 0, i64 %tmp_13, !dbg !113 ; [#uses=1 type=i8*] [debug line = 261:6]
  store i8 -1, i8* %tempA_addr_4, align 1, !dbg !113 ; [debug line = 261:6]
  %j_3 = add nsw i32 %j_1, 1, !dbg !115           ; [#uses=1 type=i32] [debug line = 262:6]
  call void @llvm.dbg.value(metadata !{i32 %j_3}, i64 0, metadata !108), !dbg !115 ; [debug line = 262:6] [debug variable = j]
  br label %7, !dbg !116                          ; [debug line = 263:5]

; <label>:9                                       ; preds = %7
  store i8 -1, i8* %tempA_addr_2, align 1, !dbg !117 ; [debug line = 265:5]
  %carry_addr_1 = getelementptr inbounds [256 x i8]* %carry, i64 0, i64 %tmp_4, !dbg !118 ; [#uses=2 type=i8*] [debug line = 266:5]
  %carry_load_1 = load i8* %carry_addr_1, align 1, !dbg !118 ; [#uses=1 type=i8] [debug line = 266:5]
  %tmp_12 = add i8 %carry_load_1, 1, !dbg !118    ; [#uses=1 type=i8] [debug line = 266:5]
  store i8 %tmp_12, i8* %carry_addr_1, align 1, !dbg !118 ; [debug line = 266:5]
  br label %11, !dbg !119                         ; [debug line = 268:4]

; <label>:10                                      ; preds = %5
  %tmp_9 = add i8 %tempA_load_1, -1, !dbg !120    ; [#uses=1 type=i8] [debug line = 269:5]
  store i8 %tmp_9, i8* %tempA_addr_2, align 1, !dbg !120 ; [debug line = 269:5]
  %carry_addr = getelementptr inbounds [256 x i8]* %carry, i64 0, i64 %tmp_4, !dbg !122 ; [#uses=2 type=i8*] [debug line = 270:5]
  %carry_load = load i8* %carry_addr, align 1, !dbg !122 ; [#uses=1 type=i8] [debug line = 270:5]
  %tmp_s = add i8 %carry_load, 1, !dbg !122       ; [#uses=1 type=i8] [debug line = 270:5]
  store i8 %tmp_s, i8* %carry_addr, align 1, !dbg !122 ; [debug line = 270:5]
  br label %11

; <label>:11                                      ; preds = %10, %9
  br label %._crit_edge, !dbg !123                ; [debug line = 272:3]

._crit_edge:                                      ; preds = %11, %4
  %tempA_load_3 = load i8* %tempA_addr_1, align 1, !dbg !124 ; [#uses=1 type=i8] [debug line = 274:3]
  %tmp_14 = sub i8 %tempA_load_3, %tempB_load, !dbg !124 ; [#uses=1 type=i8] [debug line = 274:3]
  %out_addr = getelementptr [256 x i8]* %out, i64 0, i64 %tmp_4, !dbg !124 ; [#uses=1 type=i8*] [debug line = 274:3]
  store i8 %tmp_14, i8* %out_addr, align 1, !dbg !124 ; [debug line = 274:3]
  %i_2 = add i9 %i, -1, !dbg !125                 ; [#uses=1 type=i9] [debug line = 247:26]
  call void @llvm.dbg.value(metadata !{i9 %i_2}, i64 0, metadata !126), !dbg !125 ; [debug line = 247:26] [debug variable = i]
  %indvars_iv_next = add i9 %indvars_iv, -1, !dbg !125 ; [#uses=1 type=i9] [debug line = 247:26]
  br label %.preheader1, !dbg !125                ; [debug line = 247:26]

.loopexit:                                        ; preds = %.preheader1, %bigint_copy.exit11
  ret void, !dbg !127                             ; [debug line = 277:1]
}

; [#uses=3]
define internal fastcc void @bigint_math_bigint_rightshift([256 x i8]* nocapture %out, [256 x i8]* nocapture %a) {
  %empty = call i32 (...)* @_ssdm_op_SpecMemCore([256 x i8]* %a, [1 x i8]* @p_str10, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str10, i32 -1, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10) ; [#uses=0 type=i32]
  %empty_16 = call i32 (...)* @_ssdm_op_SpecMemCore([256 x i8]* %out, [1 x i8]* @p_str10, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str10, i32 -1, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10) ; [#uses=0 type=i32]
  call void @llvm.dbg.value(metadata !{[256 x i8]* %out}, i64 0, metadata !128), !dbg !132 ; [debug line = 139:38] [debug variable = out]
  call void @llvm.dbg.value(metadata !{[256 x i8]* %a}, i64 0, metadata !133), !dbg !134 ; [debug line = 139:62] [debug variable = a]
  call void @llvm.dbg.value(metadata !{[256 x i8]* %out}, i64 0, metadata !135), !dbg !138 ; [debug line = 6:32@155:2] [debug variable = in]
  br label %1, !dbg !139                          ; [debug line = 8:6@155:2]

; <label>:1                                       ; preds = %2, %0
  %i_i = phi i9 [ 0, %0 ], [ %i_5, %2 ]           ; [#uses=3 type=i9]
  %exitcond_i = icmp eq i9 %i_i, -256, !dbg !139  ; [#uses=1 type=i1] [debug line = 8:6@155:2]
  %empty_17 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 256, i64 256, i64 256) ; [#uses=0 type=i32]
  %i_5 = add i9 %i_i, 1, !dbg !140                ; [#uses=1 type=i9] [debug line = 8:22@155:2]
  br i1 %exitcond_i, label %bigint_zero.exit, label %2, !dbg !139 ; [debug line = 8:6@155:2]

; <label>:2                                       ; preds = %1
  %tmp_i = zext i9 %i_i to i64, !dbg !141         ; [#uses=1 type=i64] [debug line = 10:3@155:2]
  %out_addr_2 = getelementptr [256 x i8]* %out, i64 0, i64 %tmp_i, !dbg !141 ; [#uses=1 type=i8*] [debug line = 10:3@155:2]
  store i8 0, i8* %out_addr_2, align 1, !dbg !141 ; [debug line = 10:3@155:2]
  call void @llvm.dbg.value(metadata !{i9 %i_5}, i64 0, metadata !142), !dbg !140 ; [debug line = 8:22@155:2] [debug variable = i]
  br label %1, !dbg !140                          ; [debug line = 8:22@155:2]

bigint_zero.exit:                                 ; preds = %9, %1
  %i = phi i9 [ %i_3, %9 ], [ 0, %1 ]             ; [#uses=3 type=i9]
  %k = phi i32 [ %p_k_1, %9 ], [ 0, %1 ]          ; [#uses=1 type=i32]
  %exitcond = icmp eq i9 %i, -256, !dbg !143      ; [#uses=1 type=i1] [debug line = 157:6]
  %empty_18 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 256, i64 256, i64 256) ; [#uses=0 type=i32]
  %i_3 = add i9 %i, 1, !dbg !145                  ; [#uses=1 type=i9] [debug line = 157:22]
  br i1 %exitcond, label %.loopexit, label %3, !dbg !143 ; [debug line = 157:6]

; <label>:3                                       ; preds = %bigint_zero.exit
  %tmp = zext i9 %i to i64, !dbg !146             ; [#uses=1 type=i64] [debug line = 160:4]
  %a_addr = getelementptr [256 x i8]* %a, i64 0, i64 %tmp, !dbg !146 ; [#uses=1 type=i8*] [debug line = 160:4]
  br label %4, !dbg !150                          ; [debug line = 159:7]

; <label>:4                                       ; preds = %8, %3
  %j = phi i4 [ 7, %3 ], [ %j_4, %8 ]             ; [#uses=3 type=i4]
  %k_1 = phi i32 [ %k, %3 ], [ %k_2, %8 ]         ; [#uses=5 type=i32]
  %outputBit = phi i32 [ 6, %3 ], [ %outputBit_2, %8 ] ; [#uses=4 type=i32]
  %j_cast = sext i4 %j to i8, !dbg !150           ; [#uses=2 type=i8] [debug line = 159:7]
  %tmp_4 = call i1 @_ssdm_op_BitSelect.i1.i4.i32(i4 %j, i32 3), !dbg !150 ; [#uses=1 type=i1] [debug line = 159:7]
  %empty_19 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) ; [#uses=0 type=i32]
  br i1 %tmp_4, label %9, label %5, !dbg !150     ; [debug line = 159:7]

; <label>:5                                       ; preds = %4
  %a_load = load i8* %a_addr, align 1, !dbg !146  ; [#uses=1 type=i8] [debug line = 160:4]
  %tmp_15 = shl i8 1, %j_cast, !dbg !146          ; [#uses=1 type=i8] [debug line = 160:4]
  %tmp_16 = and i8 %tmp_15, %a_load, !dbg !146    ; [#uses=1 type=i8] [debug line = 160:4]
  %b = lshr i8 %tmp_16, %j_cast, !dbg !146        ; [#uses=2 type=i8] [debug line = 160:4]
  call void @llvm.dbg.value(metadata !{i8 %b}, i64 0, metadata !151), !dbg !146 ; [debug line = 160:4] [debug variable = b]
  %tmp_17 = icmp eq i32 %outputBit, -1, !dbg !152 ; [#uses=1 type=i1] [debug line = 163:4]
  br i1 %tmp_17, label %6, label %7, !dbg !152    ; [debug line = 163:4]

; <label>:6                                       ; preds = %5
  %k_4 = add nsw i32 1, %k_1, !dbg !153           ; [#uses=2 type=i32] [debug line = 164:5]
  call void @llvm.dbg.value(metadata !{i32 %k_4}, i64 0, metadata !155), !dbg !153 ; [debug line = 164:5] [debug variable = k]
  %tmp_5 = shl i8 %b, 7, !dbg !156                ; [#uses=1 type=i8] [debug line = 166:5]
  %tmp_18 = sext i32 %k_4 to i64, !dbg !156       ; [#uses=1 type=i64] [debug line = 166:5]
  %out_addr = getelementptr [256 x i8]* %out, i64 0, i64 %tmp_18, !dbg !156 ; [#uses=2 type=i8*] [debug line = 166:5]
  %out_load = load i8* %out_addr, align 1, !dbg !156 ; [#uses=1 type=i8] [debug line = 166:5]
  %tmp_19 = add i8 %out_load, %tmp_5, !dbg !156   ; [#uses=1 type=i8] [debug line = 166:5]
  store i8 %tmp_19, i8* %out_addr, align 1, !dbg !156 ; [debug line = 166:5]
  br label %8, !dbg !157                          ; [debug line = 167:4]

; <label>:7                                       ; preds = %5
  %tmp_6 = trunc i32 %outputBit to i8, !dbg !150  ; [#uses=1 type=i8] [debug line = 159:7]
  %tmp_20 = shl i8 %b, %tmp_6, !dbg !158          ; [#uses=1 type=i8] [debug line = 168:5]
  %tmp_21 = sext i32 %k_1 to i64, !dbg !158       ; [#uses=1 type=i64] [debug line = 168:5]
  %out_addr_1 = getelementptr [256 x i8]* %out, i64 0, i64 %tmp_21, !dbg !158 ; [#uses=2 type=i8*] [debug line = 168:5]
  %out_load_1 = load i8* %out_addr_1, align 1, !dbg !158 ; [#uses=1 type=i8] [debug line = 168:5]
  %tmp_22 = add i8 %tmp_20, %out_load_1, !dbg !158 ; [#uses=1 type=i8] [debug line = 168:5]
  store i8 %tmp_22, i8* %out_addr_1, align 1, !dbg !158 ; [debug line = 168:5]
  br label %8

; <label>:8                                       ; preds = %7, %6
  %k_2 = phi i32 [ %k_4, %6 ], [ %k_1, %7 ]       ; [#uses=1 type=i32]
  %outputBit_1 = phi i32 [ 7, %6 ], [ %outputBit, %7 ] ; [#uses=1 type=i32]
  %outputBit_2 = add nsw i32 %outputBit_1, -1, !dbg !160 ; [#uses=1 type=i32] [debug line = 171:4]
  call void @llvm.dbg.value(metadata !{i32 %outputBit_2}, i64 0, metadata !161), !dbg !160 ; [debug line = 171:4] [debug variable = outputBit]
  %j_4 = add i4 %j, -1, !dbg !162                 ; [#uses=1 type=i4] [debug line = 159:22]
  call void @llvm.dbg.value(metadata !{i4 %j_4}, i64 0, metadata !163), !dbg !162 ; [debug line = 159:22] [debug variable = j]
  br label %4, !dbg !162                          ; [debug line = 159:22]

; <label>:9                                       ; preds = %4
  %tmp_s = icmp eq i32 %outputBit, 0, !dbg !164   ; [#uses=1 type=i1] [debug line = 175:3]
  %k_3 = add nsw i32 %k_1, 1, !dbg !165           ; [#uses=1 type=i32] [debug line = 176:4]
  call void @llvm.dbg.value(metadata !{i32 %k_3}, i64 0, metadata !155), !dbg !165 ; [debug line = 176:4] [debug variable = k]
  %p_k_1 = select i1 %tmp_s, i32 %k_3, i32 %k_1, !dbg !164 ; [#uses=1 type=i32] [debug line = 175:3]
  call void @llvm.dbg.value(metadata !{i9 %i_3}, i64 0, metadata !167), !dbg !145 ; [debug line = 157:22] [debug variable = i]
  br label %bigint_zero.exit, !dbg !145           ; [debug line = 157:22]

.loopexit:                                        ; preds = %bigint_zero.exit
  ret void, !dbg !168                             ; [debug line = 180:1]
}

; [#uses=1]
define internal fastcc void @bigint_math_bigint_mul.1([256 x i8]* nocapture %out, [256 x i8]* nocapture %a) {
  %empty = call i32 (...)* @_ssdm_op_SpecMemCore([256 x i8]* %a, [1 x i8]* @p_str10, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str10, i32 -1, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10) ; [#uses=0 type=i32]
  %empty_20 = call i32 (...)* @_ssdm_op_SpecMemCore([256 x i8]* %out, [1 x i8]* @p_str10, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str10, i32 -1, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10) ; [#uses=0 type=i32]
  %sum = alloca [256 x i8], align 16              ; [#uses=8 type=[256 x i8]*]
  %tempA = alloca [256 x i8], align 16            ; [#uses=4 type=[256 x i8]*]
  %tempB = alloca [256 x i8], align 16            ; [#uses=4 type=[256 x i8]*]
  call void @llvm.dbg.value(metadata !{[256 x i8]* %tempB}, i64 0, metadata !169), !dbg !173 ; [debug line = 41:32@303:2] [debug variable = to]
  call void @llvm.dbg.value(metadata !{[256 x i8]* %out}, i64 0, metadata !174), !dbg !175 ; [debug line = 280:31] [debug variable = out]
  call void @llvm.dbg.value(metadata !{[256 x i8]* %a}, i64 0, metadata !176), !dbg !177 ; [debug line = 280:55] [debug variable = a]
  call void @llvm.dbg.value(metadata !{[256 x i8]* %a}, i64 0, metadata !178), !dbg !179 ; [debug line = 280:77] [debug variable = b]
  call void @llvm.dbg.declare(metadata !{[256 x i8]* %sum}, metadata !180), !dbg !181 ; [debug line = 287:16] [debug variable = sum]
  call void @llvm.dbg.declare(metadata !{[256 x i8]* %tempA}, metadata !182), !dbg !183 ; [debug line = 289:16] [debug variable = tempA]
  call void @llvm.dbg.declare(metadata !{[256 x i8]* %tempB}, metadata !184), !dbg !185 ; [debug line = 290:16] [debug variable = tempB]
  call fastcc void @bigint_math_bigint_zero([256 x i8]* %tempA), !dbg !186 ; [debug line = 299:2]
  call fastcc void @bigint_math_bigint_zero([256 x i8]* %tempB), !dbg !187 ; [debug line = 300:2]
  call void @llvm.dbg.value(metadata !{[256 x i8]* %tempA}, i64 0, metadata !188), !dbg !190 ; [debug line = 41:32@302:2] [debug variable = to]
  call void @llvm.dbg.value(metadata !{[256 x i8]* %a}, i64 0, metadata !191), !dbg !192 ; [debug line = 41:55@302:2] [debug variable = from]
  %empty_21 = call i32 (...)* @_ssdm_op_SpecMemCore([256 x i8]* %sum, [1 x i8]* @p_str10, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str10, i32 -1, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10) ; [#uses=0 type=i32]
  %empty_22 = call i32 (...)* @_ssdm_op_SpecMemCore([256 x i8]* %tempB, [1 x i8]* @p_str10, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str10, i32 -1, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10) ; [#uses=0 type=i32]
  %empty_23 = call i32 (...)* @_ssdm_op_SpecMemCore([256 x i8]* %tempA, [1 x i8]* @p_str10, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str10, i32 -1, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10) ; [#uses=0 type=i32]
  br label %1, !dbg !193                          ; [debug line = 44:6@302:2]

; <label>:1                                       ; preds = %2, %0
  %i_i = phi i9 [ 0, %0 ], [ %i_6, %2 ]           ; [#uses=3 type=i9]
  %exitcond_i = icmp eq i9 %i_i, -256, !dbg !193  ; [#uses=1 type=i1] [debug line = 44:6@302:2]
  %empty_24 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 256, i64 256, i64 256) ; [#uses=0 type=i32]
  %i_6 = add i9 %i_i, 1, !dbg !194                ; [#uses=1 type=i9] [debug line = 44:22@302:2]
  br i1 %exitcond_i, label %bigint_copy.exit, label %2, !dbg !193 ; [debug line = 44:6@302:2]

; <label>:2                                       ; preds = %1
  %tmp_i = zext i9 %i_i to i64, !dbg !195         ; [#uses=2 type=i64] [debug line = 45:3@302:2]
  %b_addr = getelementptr [256 x i8]* %a, i64 0, i64 %tmp_i, !dbg !195 ; [#uses=1 type=i8*] [debug line = 45:3@302:2]
  %b_load = load i8* %b_addr, align 1, !dbg !195  ; [#uses=1 type=i8] [debug line = 45:3@302:2]
  %tempA_addr = getelementptr [256 x i8]* %tempA, i64 0, i64 %tmp_i, !dbg !195 ; [#uses=1 type=i8*] [debug line = 45:3@302:2]
  store i8 %b_load, i8* %tempA_addr, align 1, !dbg !195 ; [debug line = 45:3@302:2]
  call void @llvm.dbg.value(metadata !{i9 %i_6}, i64 0, metadata !196), !dbg !194 ; [debug line = 44:22@302:2] [debug variable = i]
  br label %1, !dbg !194                          ; [debug line = 44:22@302:2]

bigint_copy.exit:                                 ; preds = %3, %1
  %i_i1 = phi i9 [ %i_7, %3 ], [ 0, %1 ]          ; [#uses=3 type=i9]
  %exitcond_i2 = icmp eq i9 %i_i1, -256, !dbg !197 ; [#uses=1 type=i1] [debug line = 44:6@303:2]
  %empty_25 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 256, i64 256, i64 256) ; [#uses=0 type=i32]
  %i_7 = add i9 %i_i1, 1, !dbg !198               ; [#uses=1 type=i9] [debug line = 44:22@303:2]
  br i1 %exitcond_i2, label %bigint_copy.exit8, label %3, !dbg !197 ; [debug line = 44:6@303:2]

; <label>:3                                       ; preds = %bigint_copy.exit
  %tmp_i3 = zext i9 %i_i1 to i64, !dbg !199       ; [#uses=2 type=i64] [debug line = 45:3@303:2]
  %b_addr_1 = getelementptr [256 x i8]* %a, i64 0, i64 %tmp_i3, !dbg !199 ; [#uses=1 type=i8*] [debug line = 45:3@303:2]
  %b_load_1 = load i8* %b_addr_1, align 1, !dbg !199 ; [#uses=1 type=i8] [debug line = 45:3@303:2]
  %tempB_addr_2 = getelementptr [256 x i8]* %tempB, i64 0, i64 %tmp_i3, !dbg !199 ; [#uses=1 type=i8*] [debug line = 45:3@303:2]
  store i8 %b_load_1, i8* %tempB_addr_2, align 1, !dbg !199 ; [debug line = 45:3@303:2]
  call void @llvm.dbg.value(metadata !{i9 %i_7}, i64 0, metadata !200), !dbg !198 ; [debug line = 44:22@303:2] [debug variable = i]
  br label %bigint_copy.exit, !dbg !198           ; [debug line = 44:22@303:2]

bigint_copy.exit8:                                ; preds = %bigint_copy.exit
  call fastcc void @bigint_math_bigint_zero([256 x i8]* %out), !dbg !201 ; [debug line = 305:2]
  call fastcc void @bigint_math_bigint_zero([256 x i8]* %sum), !dbg !202 ; [debug line = 306:2]
  br label %4, !dbg !203                          ; [debug line = 309:6]

; <label>:4                                       ; preds = %11, %bigint_copy.exit8
  %i = phi i9 [ 0, %bigint_copy.exit8 ], [ %i_4, %11 ] ; [#uses=3 type=i9]
  %exitcond1 = icmp eq i9 %i, -256, !dbg !203     ; [#uses=1 type=i1] [debug line = 309:6]
  %empty_26 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 256, i64 256, i64 256) ; [#uses=0 type=i32]
  %i_4 = add i9 %i, 1, !dbg !205                  ; [#uses=1 type=i9] [debug line = 309:22]
  br i1 %exitcond1, label %12, label %5, !dbg !203 ; [debug line = 309:6]

; <label>:5                                       ; preds = %4
  %k = sub i9 255, %i, !dbg !206                  ; [#uses=2 type=i9] [debug line = 312:7]
  call void @llvm.dbg.value(metadata !{i9 %k}, i64 0, metadata !209), !dbg !206 ; [debug line = 312:7] [debug variable = k]
  %tmp = zext i9 %k to i64, !dbg !210             ; [#uses=1 type=i64] [debug line = 315:4]
  %tempB_addr = getelementptr inbounds [256 x i8]* %tempB, i64 0, i64 %tmp, !dbg !210 ; [#uses=1 type=i8*] [debug line = 315:4]
  %tempB_load = load i8* %tempB_addr, align 1, !dbg !210 ; [#uses=2 type=i8] [debug line = 315:4]
  %tmp_cast = zext i8 %tempB_load to i16, !dbg !206 ; [#uses=1 type=i16] [debug line = 312:7]
  br label %6, !dbg !206                          ; [debug line = 312:7]

; <label>:6                                       ; preds = %._crit_edge, %5
  %j = phi i9 [ 0, %5 ], [ %j_5, %._crit_edge ]   ; [#uses=3 type=i9]
  %k5 = phi i9 [ %k, %5 ], [ %k_5, %._crit_edge ] ; [#uses=5 type=i9]
  %exitcond = icmp eq i9 %j, -256, !dbg !206      ; [#uses=1 type=i1] [debug line = 312:7]
  %empty_27 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 256, i64 256, i64 256) ; [#uses=0 type=i32]
  %j_5 = add i9 %j, 1, !dbg !212                  ; [#uses=1 type=i9] [debug line = 312:40]
  br i1 %exitcond, label %11, label %7, !dbg !206 ; [debug line = 312:7]

; <label>:7                                       ; preds = %6
  %tmp_s = sub i9 255, %j, !dbg !210              ; [#uses=1 type=i9] [debug line = 315:4]
  %tmp_23 = zext i9 %tmp_s to i64, !dbg !210      ; [#uses=1 type=i64] [debug line = 315:4]
  %tempA_addr_5 = getelementptr inbounds [256 x i8]* %tempA, i64 0, i64 %tmp_23, !dbg !210 ; [#uses=1 type=i8*] [debug line = 315:4]
  %tempA_load = load i8* %tempA_addr_5, align 1, !dbg !210 ; [#uses=2 type=i8] [debug line = 315:4]
  %prod = mul i8 %tempB_load, %tempA_load, !dbg !210 ; [#uses=3 type=i8] [debug line = 315:4]
  call void @llvm.dbg.value(metadata !{i8 %prod}, i64 0, metadata !213), !dbg !210 ; [debug line = 315:4] [debug variable = prod]
  %tmp_31_cast = zext i8 %tempA_load to i16, !dbg !214 ; [#uses=1 type=i16] [debug line = 316:4]
  %tmp_24 = mul i16 %tmp_cast, %tmp_31_cast, !dbg !214 ; [#uses=1 type=i16] [debug line = 316:4]
  %carry = call i8 @_ssdm_op_PartSelect.i8.i16.i32.i32(i16 %tmp_24, i32 8, i32 15), !dbg !214 ; [#uses=3 type=i8] [debug line = 316:4]
  call void @llvm.dbg.value(metadata !{i8 %carry}, i64 0, metadata !215), !dbg !214 ; [debug line = 316:4] [debug variable = carry]
  %tmp_25 = or i8 %carry, %prod, !dbg !216        ; [#uses=1 type=i8] [debug line = 318:4]
  %tmp_26 = icmp eq i8 %tmp_25, 0, !dbg !216      ; [#uses=1 type=i1] [debug line = 318:4]
  br i1 %tmp_26, label %._crit_edge, label %8, !dbg !216 ; [debug line = 318:4]

; <label>:8                                       ; preds = %7
  %tmp_27 = sext i9 %k5 to i64, !dbg !217         ; [#uses=1 type=i64] [debug line = 320:5]
  %sum_addr = getelementptr inbounds [256 x i8]* %sum, i64 0, i64 %tmp_27, !dbg !217 ; [#uses=2 type=i8*] [debug line = 320:5]
  %sum_load = load i8* %sum_addr, align 1, !dbg !217 ; [#uses=2 type=i8] [debug line = 320:5]
  %tmp_37_cast = zext i8 %sum_load to i9, !dbg !217 ; [#uses=1 type=i9] [debug line = 320:5]
  %tmp_38_cast = zext i8 %prod to i9, !dbg !217   ; [#uses=1 type=i9] [debug line = 320:5]
  %tmp_28 = add i9 %tmp_37_cast, %tmp_38_cast, !dbg !217 ; [#uses=1 type=i9] [debug line = 320:5]
  %tmp_7 = call i1 @_ssdm_op_BitSelect.i1.i9.i32(i9 %tmp_28, i32 8), !dbg !217 ; [#uses=1 type=i1] [debug line = 320:5]
  br i1 %tmp_7, label %9, label %._crit_edge2, !dbg !217 ; [debug line = 320:5]

; <label>:9                                       ; preds = %8
  %tmp_29 = add i9 -1, %k5, !dbg !219             ; [#uses=1 type=i9] [debug line = 321:6]
  %tmp_30 = sext i9 %tmp_29 to i64, !dbg !219     ; [#uses=1 type=i64] [debug line = 321:6]
  %sum_addr_1 = getelementptr inbounds [256 x i8]* %sum, i64 0, i64 %tmp_30, !dbg !219 ; [#uses=2 type=i8*] [debug line = 321:6]
  %sum_load_1 = load i8* %sum_addr_1, align 1, !dbg !219 ; [#uses=1 type=i8] [debug line = 321:6]
  %tmp_31 = add i8 1, %sum_load_1, !dbg !219      ; [#uses=1 type=i8] [debug line = 321:6]
  store i8 %tmp_31, i8* %sum_addr_1, align 1, !dbg !219 ; [debug line = 321:6]
  br label %._crit_edge2, !dbg !221               ; [debug line = 322:5]

._crit_edge2:                                     ; preds = %9, %8
  %tmp_32 = add i8 %sum_load, %prod, !dbg !222    ; [#uses=1 type=i8] [debug line = 324:5]
  store i8 %tmp_32, i8* %sum_addr, align 1, !dbg !222 ; [debug line = 324:5]
  %tmp_33 = add i9 %k5, -1, !dbg !223             ; [#uses=1 type=i9] [debug line = 327:5]
  %tmp_34 = sext i9 %tmp_33 to i64, !dbg !223     ; [#uses=1 type=i64] [debug line = 327:5]
  %sum_addr_2 = getelementptr inbounds [256 x i8]* %sum, i64 0, i64 %tmp_34, !dbg !223 ; [#uses=2 type=i8*] [debug line = 327:5]
  %sum_load_2 = load i8* %sum_addr_2, align 1, !dbg !223 ; [#uses=2 type=i8] [debug line = 327:5]
  %tmp_49_cast = zext i8 %sum_load_2 to i9, !dbg !223 ; [#uses=1 type=i9] [debug line = 327:5]
  %tmp_50_cast = zext i8 %carry to i9, !dbg !223  ; [#uses=1 type=i9] [debug line = 327:5]
  %tmp_35 = add i9 %tmp_49_cast, %tmp_50_cast, !dbg !223 ; [#uses=1 type=i9] [debug line = 327:5]
  %tmp_8 = call i1 @_ssdm_op_BitSelect.i1.i9.i32(i9 %tmp_35, i32 8), !dbg !223 ; [#uses=1 type=i1] [debug line = 327:5]
  br i1 %tmp_8, label %10, label %._crit_edge3, !dbg !223 ; [debug line = 327:5]

; <label>:10                                      ; preds = %._crit_edge2
  %k5_cast = sext i9 %k5 to i10, !dbg !206        ; [#uses=1 type=i10] [debug line = 312:7]
  %tmp_36 = add i10 -2, %k5_cast, !dbg !224       ; [#uses=1 type=i10] [debug line = 328:6]
  %tmp_37 = sext i10 %tmp_36 to i64, !dbg !224    ; [#uses=1 type=i64] [debug line = 328:6]
  %sum_addr_3 = getelementptr inbounds [256 x i8]* %sum, i64 0, i64 %tmp_37, !dbg !224 ; [#uses=2 type=i8*] [debug line = 328:6]
  %sum_load_3 = load i8* %sum_addr_3, align 1, !dbg !224 ; [#uses=1 type=i8] [debug line = 328:6]
  %tmp_38 = add i8 1, %sum_load_3, !dbg !224      ; [#uses=1 type=i8] [debug line = 328:6]
  store i8 %tmp_38, i8* %sum_addr_3, align 1, !dbg !224 ; [debug line = 328:6]
  br label %._crit_edge3, !dbg !226               ; [debug line = 329:5]

._crit_edge3:                                     ; preds = %10, %._crit_edge2
  %tmp_39 = add i8 %sum_load_2, %carry, !dbg !227 ; [#uses=1 type=i8] [debug line = 331:5]
  store i8 %tmp_39, i8* %sum_addr_2, align 1, !dbg !227 ; [debug line = 331:5]
  br label %._crit_edge, !dbg !228                ; [debug line = 332:4]

._crit_edge:                                      ; preds = %._crit_edge3, %7
  call void @llvm.dbg.value(metadata !{i9 %j_5}, i64 0, metadata !229), !dbg !212 ; [debug line = 312:40] [debug variable = j]
  %k_5 = add i9 %k5, -1, !dbg !212                ; [#uses=1 type=i9] [debug line = 312:40]
  call void @llvm.dbg.value(metadata !{i9 %k_5}, i64 0, metadata !209), !dbg !212 ; [debug line = 312:40] [debug variable = k]
  br label %6, !dbg !212                          ; [debug line = 312:40]

; <label>:11                                      ; preds = %6
  call fastcc void @bigint_math_bigint_add.1([256 x i8]* %out, [256 x i8]* %sum)
  call fastcc void @bigint_math_bigint_zero([256 x i8]* %sum), !dbg !230 ; [debug line = 337:3]
  call void @llvm.dbg.value(metadata !{i9 %i_4}, i64 0, metadata !231), !dbg !205 ; [debug line = 309:22] [debug variable = i]
  br label %4, !dbg !205                          ; [debug line = 309:22]

; <label>:12                                      ; preds = %4
  ret void, !dbg !232                             ; [debug line = 340:1]
}

; [#uses=2]
define internal fastcc void @bigint_math_bigint_mul([256 x i8]* nocapture %out, [256 x i8]* nocapture %a, [256 x i8]* nocapture %b) {
  %empty = call i32 (...)* @_ssdm_op_SpecMemCore([256 x i8]* %b, [1 x i8]* @p_str10, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str10, i32 -1, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10) ; [#uses=0 type=i32]
  %empty_28 = call i32 (...)* @_ssdm_op_SpecMemCore([256 x i8]* %a, [1 x i8]* @p_str10, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str10, i32 -1, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10) ; [#uses=0 type=i32]
  %empty_29 = call i32 (...)* @_ssdm_op_SpecMemCore([256 x i8]* %out, [1 x i8]* @p_str10, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str10, i32 -1, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10) ; [#uses=0 type=i32]
  %sum = alloca [256 x i8], align 16              ; [#uses=8 type=[256 x i8]*]
  %tempA = alloca [256 x i8], align 16            ; [#uses=4 type=[256 x i8]*]
  %tempB = alloca [256 x i8], align 16            ; [#uses=4 type=[256 x i8]*]
  call void @llvm.dbg.value(metadata !{[256 x i8]* %tempB}, i64 0, metadata !169), !dbg !173 ; [debug line = 41:32@303:2] [debug variable = to]
  call void @llvm.dbg.value(metadata !{[256 x i8]* %out}, i64 0, metadata !174), !dbg !175 ; [debug line = 280:31] [debug variable = out]
  call void @llvm.dbg.value(metadata !{[256 x i8]* %a}, i64 0, metadata !176), !dbg !177 ; [debug line = 280:55] [debug variable = a]
  call void @llvm.dbg.value(metadata !{[256 x i8]* %b}, i64 0, metadata !178), !dbg !179 ; [debug line = 280:77] [debug variable = b]
  call void @llvm.dbg.declare(metadata !{[256 x i8]* %sum}, metadata !180), !dbg !181 ; [debug line = 287:16] [debug variable = sum]
  call void @llvm.dbg.declare(metadata !{[256 x i8]* %tempA}, metadata !182), !dbg !183 ; [debug line = 289:16] [debug variable = tempA]
  call void @llvm.dbg.declare(metadata !{[256 x i8]* %tempB}, metadata !184), !dbg !185 ; [debug line = 290:16] [debug variable = tempB]
  call fastcc void @bigint_math_bigint_zero([256 x i8]* %tempA), !dbg !186 ; [debug line = 299:2]
  call fastcc void @bigint_math_bigint_zero([256 x i8]* %tempB), !dbg !187 ; [debug line = 300:2]
  call void @llvm.dbg.value(metadata !{[256 x i8]* %tempA}, i64 0, metadata !188), !dbg !190 ; [debug line = 41:32@302:2] [debug variable = to]
  call void @llvm.dbg.value(metadata !{[256 x i8]* %a}, i64 0, metadata !191), !dbg !192 ; [debug line = 41:55@302:2] [debug variable = from]
  %empty_30 = call i32 (...)* @_ssdm_op_SpecMemCore([256 x i8]* %sum, [1 x i8]* @p_str10, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str10, i32 -1, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10) ; [#uses=0 type=i32]
  %empty_31 = call i32 (...)* @_ssdm_op_SpecMemCore([256 x i8]* %tempB, [1 x i8]* @p_str10, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str10, i32 -1, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10) ; [#uses=0 type=i32]
  %empty_32 = call i32 (...)* @_ssdm_op_SpecMemCore([256 x i8]* %tempA, [1 x i8]* @p_str10, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str10, i32 -1, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10) ; [#uses=0 type=i32]
  br label %1, !dbg !193                          ; [debug line = 44:6@302:2]

; <label>:1                                       ; preds = %2, %0
  %i_i = phi i9 [ 0, %0 ], [ %i_8, %2 ]           ; [#uses=3 type=i9]
  %exitcond_i = icmp eq i9 %i_i, -256, !dbg !193  ; [#uses=1 type=i1] [debug line = 44:6@302:2]
  %empty_33 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 256, i64 256, i64 256) ; [#uses=0 type=i32]
  %i_8 = add i9 %i_i, 1, !dbg !194                ; [#uses=1 type=i9] [debug line = 44:22@302:2]
  br i1 %exitcond_i, label %bigint_copy.exit, label %2, !dbg !193 ; [debug line = 44:6@302:2]

; <label>:2                                       ; preds = %1
  %tmp_i = zext i9 %i_i to i64, !dbg !195         ; [#uses=2 type=i64] [debug line = 45:3@302:2]
  %a_addr = getelementptr [256 x i8]* %a, i64 0, i64 %tmp_i, !dbg !195 ; [#uses=1 type=i8*] [debug line = 45:3@302:2]
  %a_load = load i8* %a_addr, align 1, !dbg !195  ; [#uses=1 type=i8] [debug line = 45:3@302:2]
  %tempA_addr = getelementptr [256 x i8]* %tempA, i64 0, i64 %tmp_i, !dbg !195 ; [#uses=1 type=i8*] [debug line = 45:3@302:2]
  store i8 %a_load, i8* %tempA_addr, align 1, !dbg !195 ; [debug line = 45:3@302:2]
  call void @llvm.dbg.value(metadata !{i9 %i_8}, i64 0, metadata !196), !dbg !194 ; [debug line = 44:22@302:2] [debug variable = i]
  br label %1, !dbg !194                          ; [debug line = 44:22@302:2]

bigint_copy.exit:                                 ; preds = %3, %1
  %i_i3 = phi i9 [ %i_9, %3 ], [ 0, %1 ]          ; [#uses=3 type=i9]
  %exitcond_i4 = icmp eq i9 %i_i3, -256, !dbg !197 ; [#uses=1 type=i1] [debug line = 44:6@303:2]
  %empty_34 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 256, i64 256, i64 256) ; [#uses=0 type=i32]
  %i_9 = add i9 %i_i3, 1, !dbg !198               ; [#uses=1 type=i9] [debug line = 44:22@303:2]
  br i1 %exitcond_i4, label %bigint_copy.exit10, label %3, !dbg !197 ; [debug line = 44:6@303:2]

; <label>:3                                       ; preds = %bigint_copy.exit
  %tmp_i5 = zext i9 %i_i3 to i64, !dbg !199       ; [#uses=2 type=i64] [debug line = 45:3@303:2]
  %b_addr = getelementptr [256 x i8]* %b, i64 0, i64 %tmp_i5, !dbg !199 ; [#uses=1 type=i8*] [debug line = 45:3@303:2]
  %b_load = load i8* %b_addr, align 1, !dbg !199  ; [#uses=1 type=i8] [debug line = 45:3@303:2]
  %tempB_addr_3 = getelementptr [256 x i8]* %tempB, i64 0, i64 %tmp_i5, !dbg !199 ; [#uses=1 type=i8*] [debug line = 45:3@303:2]
  store i8 %b_load, i8* %tempB_addr_3, align 1, !dbg !199 ; [debug line = 45:3@303:2]
  call void @llvm.dbg.value(metadata !{i9 %i_9}, i64 0, metadata !200), !dbg !198 ; [debug line = 44:22@303:2] [debug variable = i]
  br label %bigint_copy.exit, !dbg !198           ; [debug line = 44:22@303:2]

bigint_copy.exit10:                               ; preds = %bigint_copy.exit
  call fastcc void @bigint_math_bigint_zero([256 x i8]* %out), !dbg !201 ; [debug line = 305:2]
  call fastcc void @bigint_math_bigint_zero([256 x i8]* %sum), !dbg !202 ; [debug line = 306:2]
  br label %4, !dbg !203                          ; [debug line = 309:6]

; <label>:4                                       ; preds = %11, %bigint_copy.exit10
  %i = phi i9 [ 0, %bigint_copy.exit10 ], [ %i_4, %11 ] ; [#uses=3 type=i9]
  %exitcond1 = icmp eq i9 %i, -256, !dbg !203     ; [#uses=1 type=i1] [debug line = 309:6]
  %empty_35 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 256, i64 256, i64 256) ; [#uses=0 type=i32]
  %i_4 = add i9 %i, 1, !dbg !205                  ; [#uses=1 type=i9] [debug line = 309:22]
  br i1 %exitcond1, label %12, label %5, !dbg !203 ; [debug line = 309:6]

; <label>:5                                       ; preds = %4
  %k = sub i9 255, %i, !dbg !206                  ; [#uses=2 type=i9] [debug line = 312:7]
  call void @llvm.dbg.value(metadata !{i9 %k}, i64 0, metadata !209), !dbg !206 ; [debug line = 312:7] [debug variable = k]
  %tmp = zext i9 %k to i64, !dbg !210             ; [#uses=1 type=i64] [debug line = 315:4]
  %tempB_addr = getelementptr inbounds [256 x i8]* %tempB, i64 0, i64 %tmp, !dbg !210 ; [#uses=1 type=i8*] [debug line = 315:4]
  %tempB_load = load i8* %tempB_addr, align 1, !dbg !210 ; [#uses=2 type=i8] [debug line = 315:4]
  %tmp_cast = zext i8 %tempB_load to i16, !dbg !206 ; [#uses=1 type=i16] [debug line = 312:7]
  br label %6, !dbg !206                          ; [debug line = 312:7]

; <label>:6                                       ; preds = %._crit_edge, %5
  %j = phi i9 [ 0, %5 ], [ %j_5, %._crit_edge ]   ; [#uses=3 type=i9]
  %k5 = phi i9 [ %k, %5 ], [ %k_5, %._crit_edge ] ; [#uses=5 type=i9]
  %exitcond = icmp eq i9 %j, -256, !dbg !206      ; [#uses=1 type=i1] [debug line = 312:7]
  %empty_36 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 256, i64 256, i64 256) ; [#uses=0 type=i32]
  %j_5 = add i9 %j, 1, !dbg !212                  ; [#uses=1 type=i9] [debug line = 312:40]
  br i1 %exitcond, label %11, label %7, !dbg !206 ; [debug line = 312:7]

; <label>:7                                       ; preds = %6
  %tmp_31 = sub i9 255, %j, !dbg !210             ; [#uses=1 type=i9] [debug line = 315:4]
  %tmp_32 = zext i9 %tmp_31 to i64, !dbg !210     ; [#uses=1 type=i64] [debug line = 315:4]
  %tempA_addr_6 = getelementptr inbounds [256 x i8]* %tempA, i64 0, i64 %tmp_32, !dbg !210 ; [#uses=1 type=i8*] [debug line = 315:4]
  %tempA_load = load i8* %tempA_addr_6, align 1, !dbg !210 ; [#uses=2 type=i8] [debug line = 315:4]
  %prod = mul i8 %tempB_load, %tempA_load, !dbg !210 ; [#uses=3 type=i8] [debug line = 315:4]
  call void @llvm.dbg.value(metadata !{i8 %prod}, i64 0, metadata !213), !dbg !210 ; [debug line = 315:4] [debug variable = prod]
  %tmp_33_cast = zext i8 %tempA_load to i16, !dbg !214 ; [#uses=1 type=i16] [debug line = 316:4]
  %tmp_34 = mul i16 %tmp_cast, %tmp_33_cast, !dbg !214 ; [#uses=1 type=i16] [debug line = 316:4]
  %carry = call i8 @_ssdm_op_PartSelect.i8.i16.i32.i32(i16 %tmp_34, i32 8, i32 15), !dbg !214 ; [#uses=3 type=i8] [debug line = 316:4]
  call void @llvm.dbg.value(metadata !{i8 %carry}, i64 0, metadata !215), !dbg !214 ; [debug line = 316:4] [debug variable = carry]
  %tmp_36 = or i8 %carry, %prod, !dbg !216        ; [#uses=1 type=i8] [debug line = 318:4]
  %tmp_37 = icmp eq i8 %tmp_36, 0, !dbg !216      ; [#uses=1 type=i1] [debug line = 318:4]
  br i1 %tmp_37, label %._crit_edge, label %8, !dbg !216 ; [debug line = 318:4]

; <label>:8                                       ; preds = %7
  %tmp_38 = sext i9 %k5 to i64, !dbg !217         ; [#uses=1 type=i64] [debug line = 320:5]
  %sum_addr_1 = getelementptr inbounds [256 x i8]* %sum, i64 0, i64 %tmp_38, !dbg !217 ; [#uses=2 type=i8*] [debug line = 320:5]
  %sum_load = load i8* %sum_addr_1, align 1, !dbg !217 ; [#uses=2 type=i8] [debug line = 320:5]
  %tmp_39_cast = zext i8 %sum_load to i9, !dbg !217 ; [#uses=1 type=i9] [debug line = 320:5]
  %tmp_40_cast = zext i8 %prod to i9, !dbg !217   ; [#uses=1 type=i9] [debug line = 320:5]
  %tmp_40 = add i9 %tmp_39_cast, %tmp_40_cast, !dbg !217 ; [#uses=1 type=i9] [debug line = 320:5]
  %tmp_9 = call i1 @_ssdm_op_BitSelect.i1.i9.i32(i9 %tmp_40, i32 8), !dbg !217 ; [#uses=1 type=i1] [debug line = 320:5]
  br i1 %tmp_9, label %9, label %._crit_edge2, !dbg !217 ; [debug line = 320:5]

; <label>:9                                       ; preds = %8
  %tmp_41 = add i9 -1, %k5, !dbg !219             ; [#uses=1 type=i9] [debug line = 321:6]
  %tmp_42 = sext i9 %tmp_41 to i64, !dbg !219     ; [#uses=1 type=i64] [debug line = 321:6]
  %sum_addr_2 = getelementptr inbounds [256 x i8]* %sum, i64 0, i64 %tmp_42, !dbg !219 ; [#uses=2 type=i8*] [debug line = 321:6]
  %sum_load_1 = load i8* %sum_addr_2, align 1, !dbg !219 ; [#uses=1 type=i8] [debug line = 321:6]
  %tmp_43 = add i8 1, %sum_load_1, !dbg !219      ; [#uses=1 type=i8] [debug line = 321:6]
  store i8 %tmp_43, i8* %sum_addr_2, align 1, !dbg !219 ; [debug line = 321:6]
  br label %._crit_edge2, !dbg !221               ; [debug line = 322:5]

._crit_edge2:                                     ; preds = %9, %8
  %tmp_44 = add i8 %sum_load, %prod, !dbg !222    ; [#uses=1 type=i8] [debug line = 324:5]
  store i8 %tmp_44, i8* %sum_addr_1, align 1, !dbg !222 ; [debug line = 324:5]
  %tmp_45 = add i9 %k5, -1, !dbg !223             ; [#uses=1 type=i9] [debug line = 327:5]
  %tmp_s = sext i9 %tmp_45 to i64, !dbg !223      ; [#uses=1 type=i64] [debug line = 327:5]
  %sum_addr_3 = getelementptr inbounds [256 x i8]* %sum, i64 0, i64 %tmp_s, !dbg !223 ; [#uses=2 type=i8*] [debug line = 327:5]
  %sum_load_2 = load i8* %sum_addr_3, align 1, !dbg !223 ; [#uses=2 type=i8] [debug line = 327:5]
  %tmp_51_cast = zext i8 %sum_load_2 to i9, !dbg !223 ; [#uses=1 type=i9] [debug line = 327:5]
  %tmp_52_cast = zext i8 %carry to i9, !dbg !223  ; [#uses=1 type=i9] [debug line = 327:5]
  %tmp_46 = add i9 %tmp_51_cast, %tmp_52_cast, !dbg !223 ; [#uses=1 type=i9] [debug line = 327:5]
  %tmp_10 = call i1 @_ssdm_op_BitSelect.i1.i9.i32(i9 %tmp_46, i32 8), !dbg !223 ; [#uses=1 type=i1] [debug line = 327:5]
  br i1 %tmp_10, label %10, label %._crit_edge3, !dbg !223 ; [debug line = 327:5]

; <label>:10                                      ; preds = %._crit_edge2
  %k5_cast = sext i9 %k5 to i10, !dbg !206        ; [#uses=1 type=i10] [debug line = 312:7]
  %tmp_47 = add i10 -2, %k5_cast, !dbg !224       ; [#uses=1 type=i10] [debug line = 328:6]
  %tmp_48 = sext i10 %tmp_47 to i64, !dbg !224    ; [#uses=1 type=i64] [debug line = 328:6]
  %sum_addr = getelementptr inbounds [256 x i8]* %sum, i64 0, i64 %tmp_48, !dbg !224 ; [#uses=2 type=i8*] [debug line = 328:6]
  %sum_load_3 = load i8* %sum_addr, align 1, !dbg !224 ; [#uses=1 type=i8] [debug line = 328:6]
  %tmp_49 = add i8 1, %sum_load_3, !dbg !224      ; [#uses=1 type=i8] [debug line = 328:6]
  store i8 %tmp_49, i8* %sum_addr, align 1, !dbg !224 ; [debug line = 328:6]
  br label %._crit_edge3, !dbg !226               ; [debug line = 329:5]

._crit_edge3:                                     ; preds = %10, %._crit_edge2
  %tmp_50 = add i8 %sum_load_2, %carry, !dbg !227 ; [#uses=1 type=i8] [debug line = 331:5]
  store i8 %tmp_50, i8* %sum_addr_3, align 1, !dbg !227 ; [debug line = 331:5]
  br label %._crit_edge, !dbg !228                ; [debug line = 332:4]

._crit_edge:                                      ; preds = %._crit_edge3, %7
  call void @llvm.dbg.value(metadata !{i9 %j_5}, i64 0, metadata !229), !dbg !212 ; [debug line = 312:40] [debug variable = j]
  %k_5 = add i9 %k5, -1, !dbg !212                ; [#uses=1 type=i9] [debug line = 312:40]
  call void @llvm.dbg.value(metadata !{i9 %k_5}, i64 0, metadata !209), !dbg !212 ; [debug line = 312:40] [debug variable = k]
  br label %6, !dbg !212                          ; [debug line = 312:40]

; <label>:11                                      ; preds = %6
  call fastcc void @bigint_math_bigint_add.1([256 x i8]* %out, [256 x i8]* %sum)
  call fastcc void @bigint_math_bigint_zero([256 x i8]* %sum), !dbg !230 ; [debug line = 337:3]
  call void @llvm.dbg.value(metadata !{i9 %i_4}, i64 0, metadata !231), !dbg !205 ; [debug line = 309:22] [debug variable = i]
  br label %4, !dbg !205                          ; [debug line = 309:22]

; <label>:12                                      ; preds = %4
  ret void, !dbg !232                             ; [debug line = 340:1]
}

; [#uses=1]
define internal fastcc void @bigint_math_bigint_modexp([256 x i8]* nocapture %out, [256 x i8]* nocapture %base, [256 x i8]* nocapture %exp, [256 x i8]* nocapture %mod) {
  %empty = call i32 (...)* @_ssdm_op_SpecMemCore([256 x i8]* %mod, [1 x i8]* @p_str13, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str13, i32 -1, [1 x i8]* @p_str13, [1 x i8]* @p_str13, [1 x i8]* @p_str13, [1 x i8]* @p_str13, [1 x i8]* @p_str13) ; [#uses=0 type=i32]
  %empty_37 = call i32 (...)* @_ssdm_op_SpecMemCore([256 x i8]* %exp, [1 x i8]* @p_str12, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str12, i32 -1, [1 x i8]* @p_str12, [1 x i8]* @p_str12, [1 x i8]* @p_str12, [1 x i8]* @p_str12, [1 x i8]* @p_str12) ; [#uses=0 type=i32]
  %empty_38 = call i32 (...)* @_ssdm_op_SpecMemCore([256 x i8]* %base, [1 x i8]* @p_str11, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str11, i32 -1, [1 x i8]* @p_str11, [1 x i8]* @p_str11, [1 x i8]* @p_str11, [1 x i8]* @p_str11, [1 x i8]* @p_str11) ; [#uses=0 type=i32]
  %empty_39 = call i32 (...)* @_ssdm_op_SpecMemCore([256 x i8]* %out, [1 x i8]* @p_str10, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str10, i32 -1, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10) ; [#uses=0 type=i32]
  %zero_1 = alloca [256 x i8], align 16           ; [#uses=4 type=[256 x i8]*]
  %one_1 = alloca [256 x i8], align 16            ; [#uses=5 type=[256 x i8]*]
  %two = alloca [256 x i8], align 16              ; [#uses=4 type=[256 x i8]*]
  %temp = alloca [256 x i8], align 16             ; [#uses=13 type=[256 x i8]*]
  %temp1 = alloca [256 x i8], align 16            ; [#uses=11 type=[256 x i8]*]
  %temp2 = alloca [256 x i8], align 16            ; [#uses=3 type=[256 x i8]*]
  %tempBase = alloca [256 x i8], align 16         ; [#uses=8 type=[256 x i8]*]
  %tempExp = alloca [256 x i8], align 16          ; [#uses=7 type=[256 x i8]*]
  %tempMod = alloca [256 x i8], align 16          ; [#uses=6 type=[256 x i8]*]
  %result = alloca [256 x i8], align 16           ; [#uses=6 type=[256 x i8]*]
  call void @llvm.dbg.value(metadata !{[256 x i8]* %out}, i64 0, metadata !233), !dbg !237 ; [debug line = 539:34] [debug variable = out]
  call void @llvm.dbg.value(metadata !{[256 x i8]* %base}, i64 0, metadata !238), !dbg !239 ; [debug line = 539:58] [debug variable = base]
  call void @llvm.dbg.value(metadata !{[256 x i8]* %exp}, i64 0, metadata !240), !dbg !241 ; [debug line = 539:83] [debug variable = exp]
  call void @llvm.dbg.value(metadata !{[256 x i8]* %mod}, i64 0, metadata !242), !dbg !243 ; [debug line = 539:107] [debug variable = mod]
  call void @llvm.dbg.declare(metadata !{[256 x i8]* %zero_1}, metadata !244), !dbg !246 ; [debug line = 542:16] [debug variable = zero]
  call void @llvm.dbg.declare(metadata !{[256 x i8]* %one_1}, metadata !247), !dbg !248 ; [debug line = 543:16] [debug variable = one]
  call void @llvm.dbg.declare(metadata !{[256 x i8]* %two}, metadata !249), !dbg !250 ; [debug line = 544:16] [debug variable = two]
  call void @llvm.dbg.declare(metadata !{[256 x i8]* %temp}, metadata !251), !dbg !252 ; [debug line = 546:16] [debug variable = temp]
  call void @llvm.dbg.declare(metadata !{[256 x i8]* %temp1}, metadata !253), !dbg !254 ; [debug line = 547:16] [debug variable = temp1]
  call void @llvm.dbg.declare(metadata !{[256 x i8]* %temp2}, metadata !255), !dbg !256 ; [debug line = 548:16] [debug variable = temp2]
  call void @llvm.dbg.declare(metadata !{[256 x i8]* %tempBase}, metadata !257), !dbg !258 ; [debug line = 550:16] [debug variable = tempBase]
  call void @llvm.dbg.declare(metadata !{[256 x i8]* %tempExp}, metadata !259), !dbg !260 ; [debug line = 551:16] [debug variable = tempExp]
  call void @llvm.dbg.declare(metadata !{[256 x i8]* %tempMod}, metadata !261), !dbg !262 ; [debug line = 552:16] [debug variable = tempMod]
  call fastcc void @bigint_math_bigint_zero([256 x i8]* %zero_1), !dbg !263 ; [debug line = 554:2]
  call fastcc void @bigint_math_bigint_zero([256 x i8]* %one_1), !dbg !264 ; [debug line = 555:2]
  call fastcc void @bigint_math_bigint_zero([256 x i8]* %two), !dbg !265 ; [debug line = 556:2]
  call fastcc void @bigint_math_bigint_zero([256 x i8]* %temp), !dbg !266 ; [debug line = 558:2]
  call fastcc void @bigint_math_bigint_zero([256 x i8]* %temp1), !dbg !267 ; [debug line = 559:2]
  call fastcc void @bigint_math_bigint_zero([256 x i8]* %temp2), !dbg !268 ; [debug line = 560:2]
  call fastcc void @bigint_math_bigint_zero([256 x i8]* %tempBase), !dbg !269 ; [debug line = 562:2]
  call fastcc void @bigint_math_bigint_zero([256 x i8]* %tempExp), !dbg !270 ; [debug line = 563:2]
  call fastcc void @bigint_math_bigint_zero([256 x i8]* %tempMod), !dbg !271 ; [debug line = 564:2]
  call fastcc void @bigint_math_bigint_copy([256 x i8]* %tempBase, [256 x i8]* %base), !dbg !272 ; [debug line = 566:2]
  call fastcc void @bigint_math_bigint_copy([256 x i8]* %tempExp, [256 x i8]* %exp), !dbg !273 ; [debug line = 567:2]
  call fastcc void @bigint_math_bigint_copy([256 x i8]* %tempMod, [256 x i8]* %mod), !dbg !274 ; [debug line = 568:2]
  %temp_addr = getelementptr inbounds [256 x i8]* %temp, i64 0, i64 255, !dbg !275 ; [#uses=1 type=i8*] [debug line = 570:2]
  store i8 1, i8* %temp_addr, align 1, !dbg !275  ; [debug line = 570:2]
  %one_addr = getelementptr inbounds [256 x i8]* %one_1, i64 0, i64 255, !dbg !276 ; [#uses=2 type=i8*] [debug line = 571:2]
  store i8 1, i8* %one_addr, align 1, !dbg !276   ; [debug line = 571:2]
  %two_addr = getelementptr inbounds [256 x i8]* %two, i64 0, i64 255, !dbg !277 ; [#uses=2 type=i8*] [debug line = 572:2]
  store i8 2, i8* %two_addr, align 1, !dbg !277   ; [debug line = 572:2]
  call fastcc void @bigint_math_bigint_zero([256 x i8]* %out), !dbg !278 ; [debug line = 574:2]
  %tmp = call fastcc i2 @bigint_math_bigint_compare([256 x i8]* %mod, [256 x i8]* %one_1), !dbg !279 ; [#uses=1 type=i2] [debug line = 575:5]
  %tmp_s = icmp eq i2 %tmp, 0, !dbg !279          ; [#uses=1 type=i1] [debug line = 575:5]
  %empty_40 = call i32 (...)* @_ssdm_op_SpecMemCore([256 x i8]* %zero_1, [1 x i8]* @p_str10, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str10, i32 -1, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10) ; [#uses=0 type=i32]
  %empty_41 = call i32 (...)* @_ssdm_op_SpecMemCore([256 x i8]* %temp2, [1 x i8]* @p_str10, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str10, i32 -1, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10) ; [#uses=0 type=i32]
  %empty_42 = call i32 (...)* @_ssdm_op_SpecMemCore([256 x i8]* %temp1, [1 x i8]* @p_str10, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str10, i32 -1, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10) ; [#uses=0 type=i32]
  %empty_43 = call i32 (...)* @_ssdm_op_SpecMemCore([256 x i8]* %temp, [1 x i8]* @p_str10, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str10, i32 -1, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10) ; [#uses=0 type=i32]
  %empty_44 = call i32 (...)* @_ssdm_op_SpecMemCore([256 x i8]* %result, [1 x i8]* @p_str10, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str10, i32 -1, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10) ; [#uses=0 type=i32]
  %empty_45 = call i32 (...)* @_ssdm_op_SpecMemCore([256 x i8]* %tempMod, [1 x i8]* @p_str10, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str10, i32 -1, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10) ; [#uses=0 type=i32]
  %empty_46 = call i32 (...)* @_ssdm_op_SpecMemCore([256 x i8]* %tempExp, [1 x i8]* @p_str10, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str10, i32 -1, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10) ; [#uses=0 type=i32]
  %empty_47 = call i32 (...)* @_ssdm_op_SpecMemCore([256 x i8]* %tempBase, [1 x i8]* @p_str10, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str10, i32 -1, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10) ; [#uses=0 type=i32]
  %empty_48 = call i32 (...)* @_ssdm_op_SpecMemCore([256 x i8]* %two, [1 x i8]* @p_str10, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str10, i32 -1, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10) ; [#uses=0 type=i32]
  %empty_49 = call i32 (...)* @_ssdm_op_SpecMemCore([256 x i8]* %one_1, [1 x i8]* @p_str10, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str10, i32 -1, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10) ; [#uses=0 type=i32]
  br i1 %tmp_s, label %._crit_edge, label %1, !dbg !279 ; [debug line = 575:5]

; <label>:1                                       ; preds = %0
  call void @llvm.dbg.declare(metadata !{[256 x i8]* %result}, metadata !280), !dbg !281 ; [debug line = 579:16] [debug variable = result]
  call fastcc void @bigint_math_bigint_zero([256 x i8]* %result), !dbg !282 ; [debug line = 580:2]
  %out_addr = getelementptr [256 x i8]* %out, i64 0, i64 255, !dbg !283 ; [#uses=1 type=i8*] [debug line = 582:2]
  store i8 1, i8* %out_addr, align 1, !dbg !283   ; [debug line = 582:2]
  %result_addr = getelementptr inbounds [256 x i8]* %result, i64 0, i64 255, !dbg !284 ; [#uses=1 type=i8*] [debug line = 583:2]
  store i8 1, i8* %result_addr, align 1, !dbg !284 ; [debug line = 583:2]
  call fastcc void @bigint_math_bigint_longdiv([256 x i8]* %temp, [256 x i8]* %temp1, [256 x i8]* %tempBase, [256 x i8]* %tempMod), !dbg !285 ; [debug line = 585:2]
  call fastcc void @bigint_math_bigint_copy([256 x i8]* %tempBase, [256 x i8]* %temp1), !dbg !286 ; [debug line = 586:2]
  br label %2, !dbg !287                          ; [debug line = 588:2]

; <label>:2                                       ; preds = %._crit_edge1, %1
  %tmp_1 = call fastcc i2 @bigint_math_bigint_compare([256 x i8]* %tempExp, [256 x i8]* %zero_1), !dbg !288 ; [#uses=1 type=i2] [debug line = 588:8]
  %tmp_51 = icmp eq i2 %tmp_1, 1, !dbg !288       ; [#uses=1 type=i1] [debug line = 588:8]
  br i1 %tmp_51, label %3, label %5, !dbg !288    ; [debug line = 588:8]

; <label>:3                                       ; preds = %2
  call fastcc void @bigint_math_bigint_zero([256 x i8]* %temp), !dbg !289 ; [debug line = 589:3]
  call fastcc void @bigint_math_bigint_zero([256 x i8]* %temp1), !dbg !291 ; [debug line = 590:3]
  call fastcc void @bigint_math_bigint_longdiv([256 x i8]* %temp, [256 x i8]* %temp1, [256 x i8]* %tempExp, [256 x i8]* %two), !dbg !292 ; [debug line = 591:3]
  %tmp_2 = call fastcc i2 @bigint_math_bigint_compare([256 x i8]* %temp1, [256 x i8]* %one_1), !dbg !293 ; [#uses=1 type=i2] [debug line = 593:6]
  %tmp_52 = icmp eq i2 %tmp_2, 0, !dbg !293       ; [#uses=1 type=i1] [debug line = 593:6]
  br i1 %tmp_52, label %4, label %._crit_edge1, !dbg !293 ; [debug line = 593:6]

; <label>:4                                       ; preds = %3
  call fastcc void @bigint_math_bigint_mul([256 x i8]* %temp, [256 x i8]* %result, [256 x i8]* %tempBase)
  call fastcc void @bigint_math_bigint_zero([256 x i8]* %temp1), !dbg !294 ; [debug line = 596:4]
  call fastcc void @bigint_math_bigint_longdiv([256 x i8]* %temp1, [256 x i8]* %result, [256 x i8]* %temp, [256 x i8]* %tempMod), !dbg !296 ; [debug line = 598:4]
  br label %._crit_edge1, !dbg !297               ; [debug line = 600:3]

._crit_edge1:                                     ; preds = %4, %3
  call fastcc void @bigint_math_bigint_rightshift([256 x i8]* %temp, [256 x i8]* %tempExp), !dbg !298 ; [debug line = 602:3]
  call fastcc void @bigint_math_bigint_copy([256 x i8]* %tempExp, [256 x i8]* %temp), !dbg !299 ; [debug line = 603:3]
  call fastcc void @bigint_math_bigint_zero([256 x i8]* %temp), !dbg !300 ; [debug line = 605:3]
  call fastcc void @bigint_math_bigint_mul.1([256 x i8]* %temp, [256 x i8]* %tempBase)
  call fastcc void @bigint_math_bigint_zero([256 x i8]* %temp1), !dbg !301 ; [debug line = 608:3]
  call fastcc void @bigint_math_bigint_zero([256 x i8]* %temp2), !dbg !302 ; [debug line = 609:3]
  call fastcc void @bigint_math_bigint_longdiv([256 x i8]* %temp1, [256 x i8]* %tempBase, [256 x i8]* %temp, [256 x i8]* %tempMod), !dbg !303 ; [debug line = 610:3]
  call fastcc void @bigint_math_bigint_zero([256 x i8]* %zero_1), !dbg !304 ; [debug line = 612:3]
  store i8 1, i8* %one_addr, align 1, !dbg !305   ; [debug line = 613:3]
  store i8 2, i8* %two_addr, align 1, !dbg !306   ; [debug line = 614:3]
  br label %2, !dbg !307                          ; [debug line = 615:2]

; <label>:5                                       ; preds = %2
  call fastcc void @bigint_math_bigint_copy([256 x i8]* %out, [256 x i8]* %result), !dbg !308 ; [debug line = 617:2]
  br label %._crit_edge, !dbg !309                ; [debug line = 619:1]

._crit_edge:                                      ; preds = %5, %0
  ret void, !dbg !309                             ; [debug line = 619:1]
}

; [#uses=0]
define void @bigint_math([256 x i8]* %a, [256 x i8]* %b, [256 x i8]* %c, [256 x i8]* %d) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap([256 x i8]* %a) nounwind, !map !310
  call void (...)* @_ssdm_op_SpecBitsMap([256 x i8]* %b) nounwind, !map !316
  call void (...)* @_ssdm_op_SpecBitsMap([256 x i8]* %c) nounwind, !map !320
  call void (...)* @_ssdm_op_SpecBitsMap([256 x i8]* %d) nounwind, !map !324
  call void (...)* @_ssdm_op_SpecTopModule([12 x i8]* @bigint_math_str) nounwind
  call void @llvm.dbg.value(metadata !{[256 x i8]* %a}, i64 0, metadata !328), !dbg !331 ; [debug line = 7:32] [debug variable = a]
  call void @llvm.dbg.value(metadata !{[256 x i8]* %b}, i64 0, metadata !332), !dbg !333 ; [debug line = 7:54] [debug variable = b]
  call void @llvm.dbg.value(metadata !{[256 x i8]* %c}, i64 0, metadata !334), !dbg !335 ; [debug line = 7:76] [debug variable = c]
  call void @llvm.dbg.value(metadata !{[256 x i8]* %d}, i64 0, metadata !336), !dbg !337 ; [debug line = 7:98] [debug variable = d]
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [10 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [11 x i8]* @p_str1, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2) nounwind, !dbg !338 ; [debug line = 8:1]
  %empty = call i32 (...)* @_ssdm_op_SpecMemCore([256 x i8]* %a, [1 x i8]* @p_str10, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str10, i32 -1, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10) nounwind ; [#uses=0 type=i32]
  call void (...)* @_ssdm_op_SpecInterface([256 x i8]* %a, [10 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [11 x i8]* @p_str1, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2) nounwind
  %empty_50 = call i32 (...)* @_ssdm_op_SpecMemCore([256 x i8]* %b, [1 x i8]* @p_str11, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str11, i32 -1, [1 x i8]* @p_str11, [1 x i8]* @p_str11, [1 x i8]* @p_str11, [1 x i8]* @p_str11, [1 x i8]* @p_str11) nounwind ; [#uses=0 type=i32]
  call void (...)* @_ssdm_op_SpecInterface([256 x i8]* %b, [10 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [11 x i8]* @p_str1, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2) nounwind
  %empty_51 = call i32 (...)* @_ssdm_op_SpecMemCore([256 x i8]* %c, [1 x i8]* @p_str12, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str12, i32 -1, [1 x i8]* @p_str12, [1 x i8]* @p_str12, [1 x i8]* @p_str12, [1 x i8]* @p_str12, [1 x i8]* @p_str12) nounwind ; [#uses=0 type=i32]
  call void (...)* @_ssdm_op_SpecInterface([256 x i8]* %c, [10 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [11 x i8]* @p_str1, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2) nounwind
  %empty_52 = call i32 (...)* @_ssdm_op_SpecMemCore([256 x i8]* %d, [1 x i8]* @p_str13, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str13, i32 -1, [1 x i8]* @p_str13, [1 x i8]* @p_str13, [1 x i8]* @p_str13, [1 x i8]* @p_str13, [1 x i8]* @p_str13) nounwind ; [#uses=0 type=i32]
  call void (...)* @_ssdm_op_SpecInterface([256 x i8]* %d, [10 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [11 x i8]* @p_str1, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2) nounwind
  call void @llvm.dbg.value(metadata !{[256 x i8]* %a}, i64 0, metadata !340) nounwind, !dbg !342 ; [debug line = 6:32@14:2] [debug variable = in]
  br label %1, !dbg !343                          ; [debug line = 8:6@14:2]

; <label>:1                                       ; preds = %2, %0
  %i_i = phi i9 [ 0, %0 ], [ %i, %2 ]             ; [#uses=3 type=i9]
  %exitcond_i = icmp eq i9 %i_i, -256, !dbg !343  ; [#uses=1 type=i1] [debug line = 8:6@14:2]
  %empty_53 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 256, i64 256, i64 256) nounwind ; [#uses=0 type=i32]
  %i = add i9 %i_i, 1, !dbg !344                  ; [#uses=1 type=i9] [debug line = 8:22@14:2]
  br i1 %exitcond_i, label %bigint_zero.exit, label %2, !dbg !343 ; [debug line = 8:6@14:2]

; <label>:2                                       ; preds = %1
  %tmp_i = zext i9 %i_i to i64, !dbg !345         ; [#uses=1 type=i64] [debug line = 10:3@14:2]
  %a_addr = getelementptr [256 x i8]* %a, i64 0, i64 %tmp_i, !dbg !345 ; [#uses=1 type=i8*] [debug line = 10:3@14:2]
  store i8 0, i8* %a_addr, align 1, !dbg !345     ; [debug line = 10:3@14:2]
  call void @llvm.dbg.value(metadata !{i9 %i}, i64 0, metadata !346) nounwind, !dbg !344 ; [debug line = 8:22@14:2] [debug variable = i]
  br label %1, !dbg !344                          ; [debug line = 8:22@14:2]

bigint_zero.exit:                                 ; preds = %1
  call fastcc void @bigint_math_bigint_modexp([256 x i8]* %a, [256 x i8]* %b, [256 x i8]* %c, [256 x i8]* %d) nounwind, !dbg !347 ; [debug line = 15:2]
  ret void, !dbg !348                             ; [debug line = 16:1]
}

; [#uses=4]
define internal fastcc void @bigint_math_bigint_longdiv([256 x i8]* nocapture %out, [256 x i8]* nocapture %out1, [256 x i8]* nocapture %a, [256 x i8]* nocapture %b) {
  %empty = call i32 (...)* @_ssdm_op_SpecMemCore([256 x i8]* @one, [1 x i8]* @p_str10, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str10, i32 -1, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10) ; [#uses=0 type=i32]
  %empty_54 = call i32 (...)* @_ssdm_op_SpecMemCore([256 x i8]* %a, [1 x i8]* @p_str13, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str13, i32 -1, [1 x i8]* @p_str13, [1 x i8]* @p_str13, [1 x i8]* @p_str13, [1 x i8]* @p_str13, [1 x i8]* @p_str13) ; [#uses=0 type=i32]
  %empty_55 = call i32 (...)* @_ssdm_op_SpecMemCore([256 x i8]* %b, [1 x i8]* @p_str13, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str13, i32 -1, [1 x i8]* @p_str13, [1 x i8]* @p_str13, [1 x i8]* @p_str13, [1 x i8]* @p_str13, [1 x i8]* @p_str13) ; [#uses=0 type=i32]
  %empty_56 = call i32 (...)* @_ssdm_op_SpecMemCore([256 x i8]* @zero, [1 x i8]* @p_str13, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str13, i32 -1, [1 x i8]* @p_str13, [1 x i8]* @p_str13, [1 x i8]* @p_str13, [1 x i8]* @p_str13, [1 x i8]* @p_str13) ; [#uses=0 type=i32]
  %empty_57 = call i32 (...)* @_ssdm_op_SpecMemCore([256 x i8]* %out, [1 x i8]* @p_str10, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str10, i32 -1, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10) ; [#uses=0 type=i32]
  %empty_58 = call i32 (...)* @_ssdm_op_SpecMemCore([256 x i8]* %out1, [1 x i8]* @p_str10, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str10, i32 -1, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10) ; [#uses=0 type=i32]
  %tempA = alloca [256 x i8], align 16            ; [#uses=9 type=[256 x i8]*]
  %tempB = alloca [256 x i8], align 16            ; [#uses=8 type=[256 x i8]*]
  %temp = alloca [256 x i8], align 16             ; [#uses=12 type=[256 x i8]*]
  %d = alloca [256 x i8], align 16                ; [#uses=7 type=[256 x i8]*]
  %quot = alloca [256 x i8], align 16             ; [#uses=5 type=[256 x i8]*]
  %bitPlace = alloca [256 x i8], align 16         ; [#uses=6 type=[256 x i8]*]
  call void @llvm.dbg.value(metadata !{[256 x i8]* %out}, i64 0, metadata !349), !dbg !351 ; [debug line = 392:35] [debug variable = out]
  call void @llvm.dbg.value(metadata !{[256 x i8]* %out1}, i64 0, metadata !352), !dbg !353 ; [debug line = 392:59] [debug variable = out1]
  call void @llvm.dbg.value(metadata !{[256 x i8]* %a}, i64 0, metadata !354), !dbg !355 ; [debug line = 392:84] [debug variable = a]
  call void @llvm.dbg.value(metadata !{[256 x i8]* %b}, i64 0, metadata !356), !dbg !357 ; [debug line = 392:106] [debug variable = b]
  call void @llvm.dbg.declare(metadata !{[256 x i8]* %tempA}, metadata !358), !dbg !360 ; [debug line = 398:16] [debug variable = tempA]
  call void @llvm.dbg.declare(metadata !{[256 x i8]* %tempB}, metadata !361), !dbg !362 ; [debug line = 399:16] [debug variable = tempB]
  call fastcc void @bigint_math_bigint_zero([256 x i8]* %tempA), !dbg !363 ; [debug line = 407:2]
  call fastcc void @bigint_math_bigint_zero([256 x i8]* %tempB), !dbg !364 ; [debug line = 408:2]
  call fastcc void @bigint_math_bigint_copy([256 x i8]* %tempA, [256 x i8]* %a), !dbg !365 ; [debug line = 412:2]
  call fastcc void @bigint_math_bigint_copy([256 x i8]* %tempB, [256 x i8]* %b), !dbg !366 ; [debug line = 413:2]
  call fastcc void @bigint_math_bigint_zero([256 x i8]* %out), !dbg !367 ; [debug line = 418:2]
  call fastcc void @bigint_math_bigint_zero([256 x i8]* %out1), !dbg !368 ; [debug line = 419:2]
  %tmp = call fastcc i2 @bigint_math_bigint_compare([256 x i8]* %tempB, [256 x i8]* @zero), !dbg !369 ; [#uses=1 type=i2] [debug line = 421:5]
  %tmp_s = icmp eq i2 %tmp, 0, !dbg !369          ; [#uses=1 type=i1] [debug line = 421:5]
  %empty_59 = call i32 (...)* @_ssdm_op_SpecMemCore([256 x i8]* %bitPlace, [1 x i8]* @p_str10, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str10, i32 -1, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10) ; [#uses=0 type=i32]
  %empty_60 = call i32 (...)* @_ssdm_op_SpecMemCore([256 x i8]* %quot, [1 x i8]* @p_str10, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str10, i32 -1, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10) ; [#uses=0 type=i32]
  %empty_61 = call i32 (...)* @_ssdm_op_SpecMemCore([256 x i8]* %temp, [1 x i8]* @p_str10, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str10, i32 -1, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10) ; [#uses=0 type=i32]
  %empty_62 = call i32 (...)* @_ssdm_op_SpecMemCore([256 x i8]* %d, [1 x i8]* @p_str10, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str10, i32 -1, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10) ; [#uses=0 type=i32]
  %empty_63 = call i32 (...)* @_ssdm_op_SpecMemCore([256 x i8]* %tempB, [1 x i8]* @p_str10, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str10, i32 -1, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10) ; [#uses=0 type=i32]
  %empty_64 = call i32 (...)* @_ssdm_op_SpecMemCore([256 x i8]* %tempA, [1 x i8]* @p_str10, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str10, i32 -1, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10) ; [#uses=0 type=i32]
  br i1 %tmp_s, label %._crit_edge, label %1, !dbg !369 ; [debug line = 421:5]

; <label>:1                                       ; preds = %0
  %tmp_3 = call fastcc i2 @bigint_math_bigint_compare([256 x i8]* %tempB, [256 x i8]* @one), !dbg !370 ; [#uses=1 type=i2] [debug line = 425:5]
  %tmp_53 = icmp eq i2 %tmp_3, 0, !dbg !370       ; [#uses=1 type=i1] [debug line = 425:5]
  br i1 %tmp_53, label %2, label %3, !dbg !370    ; [debug line = 425:5]

; <label>:2                                       ; preds = %1
  call fastcc void @bigint_math_bigint_copy([256 x i8]* %out, [256 x i8]* %tempA), !dbg !371 ; [debug line = 426:3]
  call fastcc void @bigint_math_bigint_copy([256 x i8]* %out1, [256 x i8]* @zero), !dbg !373 ; [debug line = 427:3]
  br label %._crit_edge, !dbg !374                ; [debug line = 428:3]

; <label>:3                                       ; preds = %1
  %i = call fastcc i2 @bigint_math_bigint_compare([256 x i8]* %tempA, [256 x i8]* %tempB), !dbg !375 ; [#uses=2 type=i2] [debug line = 432:6]
  %tmp_54 = icmp eq i2 %i, -1, !dbg !376          ; [#uses=1 type=i1] [debug line = 433:2]
  br i1 %tmp_54, label %4, label %5, !dbg !376    ; [debug line = 433:2]

; <label>:4                                       ; preds = %3
  call fastcc void @bigint_math_bigint_copy([256 x i8]* %out1, [256 x i8]* %tempA), !dbg !377 ; [debug line = 434:3]
  call fastcc void @bigint_math_bigint_copy([256 x i8]* %out, [256 x i8]* @zero), !dbg !379 ; [debug line = 435:3]
  br label %._crit_edge, !dbg !380                ; [debug line = 436:3]

; <label>:5                                       ; preds = %3
  %tmp_55 = icmp eq i2 %i, 0, !dbg !381           ; [#uses=1 type=i1] [debug line = 439:2]
  br i1 %tmp_55, label %6, label %.preheader11.preheader, !dbg !381 ; [debug line = 439:2]

.preheader11.preheader:                           ; preds = %5
  %flag = alloca i2                               ; [#uses=3 type=i2*]
  store i2 0, i2* %flag
  br label %.preheader11, !dbg !382               ; [debug line = 448:6]

; <label>:6                                       ; preds = %5
  %out_addr = getelementptr [256 x i8]* %out, i64 0, i64 255, !dbg !384 ; [#uses=1 type=i8*] [debug line = 440:3]
  store i8 1, i8* %out_addr, align 1, !dbg !384   ; [debug line = 440:3]
  %out1_addr = getelementptr [256 x i8]* %out1, i64 0, i64 255, !dbg !386 ; [#uses=1 type=i8*] [debug line = 441:3]
  store i8 0, i8* %out1_addr, align 1, !dbg !386  ; [debug line = 441:3]
  br label %._crit_edge, !dbg !387                ; [debug line = 442:3]

.preheader11:                                     ; preds = %10, %.preheader11.preheader
  %i5 = phi i9 [ %i_5, %10 ], [ 0, %.preheader11.preheader ] ; [#uses=3 type=i9]
  %aMSB = phi i32 [ %aMSB_5, %10 ], [ 0, %.preheader11.preheader ] ; [#uses=3 type=i32]
  %tmp_11 = call i1 @_ssdm_op_BitSelect.i1.i9.i32(i9 %i5, i32 8), !dbg !382 ; [#uses=1 type=i1] [debug line = 448:6]
  %empty_65 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1, i64 256, i64 128) ; [#uses=0 type=i32]
  %i_5 = add i9 %i5, 1, !dbg !388                 ; [#uses=1 type=i9] [debug line = 448:22]
  br i1 %tmp_11, label %.loopexit8, label %7, !dbg !382 ; [debug line = 448:6]

; <label>:7                                       ; preds = %.preheader11
  %tmp_56 = zext i9 %i5 to i64, !dbg !389         ; [#uses=1 type=i64] [debug line = 449:3]
  %a_addr = getelementptr [256 x i8]* %a, i64 0, i64 %tmp_56, !dbg !389 ; [#uses=1 type=i8*] [debug line = 449:3]
  %a_load = load i8* %a_addr, align 1, !dbg !389  ; [#uses=2 type=i8] [debug line = 449:3]
  %tmp_57 = icmp eq i8 %a_load, 0, !dbg !389      ; [#uses=1 type=i1] [debug line = 449:3]
  br i1 %tmp_57, label %.loopexit5, label %.preheader10, !dbg !389 ; [debug line = 449:3]

.preheader10:                                     ; preds = %9, %7
  %j = phi i4 [ %j_6, %9 ], [ 0, %7 ]             ; [#uses=4 type=i4]
  %aMSB_1 = phi i32 [ %aMSB_4, %9 ], [ %aMSB, %7 ] ; [#uses=2 type=i32]
  %j_cast3 = zext i4 %j to i8, !dbg !391          ; [#uses=1 type=i8] [debug line = 450:8]
  %tmp_12 = call i1 @_ssdm_op_BitSelect.i1.i4.i32(i4 %j, i32 3), !dbg !391 ; [#uses=1 type=i1] [debug line = 450:8]
  %empty_66 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1, i64 8, i64 4) ; [#uses=0 type=i32]
  %j_6 = add i4 %j, 1, !dbg !394                  ; [#uses=1 type=i4] [debug line = 450:22]
  br i1 %tmp_12, label %.loopexit5.loopexit, label %8, !dbg !391 ; [debug line = 450:8]

; <label>:8                                       ; preds = %.preheader10
  %tmp_58 = lshr i8 -128, %j_cast3, !dbg !395     ; [#uses=1 type=i8] [debug line = 451:5]
  %tmp_59 = and i8 %tmp_58, %a_load, !dbg !395    ; [#uses=1 type=i8] [debug line = 451:5]
  %tmp_60 = sub i4 7, %j, !dbg !395               ; [#uses=1 type=i4] [debug line = 451:5]
  %tmp_73_cast = zext i4 %tmp_60 to i8, !dbg !395 ; [#uses=1 type=i8] [debug line = 451:5]
  %tmp_61 = lshr i8 %tmp_59, %tmp_73_cast, !dbg !395 ; [#uses=1 type=i8] [debug line = 451:5]
  %tmp_62 = icmp eq i8 %tmp_61, 1, !dbg !395      ; [#uses=1 type=i1] [debug line = 451:5]
  br i1 %tmp_62, label %.loopexit5.loopexit.pre, label %9, !dbg !395 ; [debug line = 451:5]

; <label>:9                                       ; preds = %8
  %aMSB_4 = add nsw i32 %aMSB_1, 1, !dbg !397     ; [#uses=1 type=i32] [debug line = 456:5]
  call void @llvm.dbg.value(metadata !{i32 %aMSB_4}, i64 0, metadata !398), !dbg !397 ; [debug line = 456:5] [debug variable = aMSB]
  call void @llvm.dbg.value(metadata !{i4 %j_6}, i64 0, metadata !399), !dbg !394 ; [debug line = 450:22] [debug variable = j]
  br label %.preheader10, !dbg !394               ; [debug line = 450:22]

.loopexit5.loopexit.pre:                          ; preds = %8
  store i2 1, i2* %flag
  br label %.loopexit5.loopexit

.loopexit5.loopexit:                              ; preds = %.loopexit5.loopexit.pre, %.preheader10
  br label %.loopexit5

.loopexit5:                                       ; preds = %.loopexit5.loopexit, %7
  %aMSB_2 = phi i32 [ %aMSB, %7 ], [ %aMSB_1, %.loopexit5.loopexit ] ; [#uses=2 type=i32]
  %flag_load = load i2* %flag, !dbg !400          ; [#uses=1 type=i2] [debug line = 460:3]
  %tmp_63 = icmp eq i2 %flag_load, 1, !dbg !400   ; [#uses=1 type=i1] [debug line = 460:3]
  br i1 %tmp_63, label %.loopexit8, label %10, !dbg !400 ; [debug line = 460:3]

; <label>:10                                      ; preds = %.loopexit5
  %aMSB_5 = add nsw i32 %aMSB_2, 8, !dbg !401     ; [#uses=1 type=i32] [debug line = 465:3]
  call void @llvm.dbg.value(metadata !{i32 %aMSB_5}, i64 0, metadata !398), !dbg !401 ; [debug line = 465:3] [debug variable = aMSB]
  call void @llvm.dbg.value(metadata !{i9 %i_5}, i64 0, metadata !402), !dbg !388 ; [debug line = 448:22] [debug variable = i]
  br label %.preheader11, !dbg !388               ; [debug line = 448:22]

.loopexit8:                                       ; preds = %.loopexit5, %.preheader11
  %aMSB_3 = phi i32 [ %aMSB, %.preheader11 ], [ %aMSB_2, %.loopexit5 ] ; [#uses=2 type=i32]
  %flag_3 = alloca i2                             ; [#uses=3 type=i2*]
  store i2 0, i2* %flag_3
  br label %11, !dbg !403                         ; [debug line = 471:6]

; <label>:11                                      ; preds = %15, %.loopexit8
  %i_1 = phi i9 [ 0, %.loopexit8 ], [ %i_6, %15 ] ; [#uses=3 type=i9]
  %bMSB = phi i32 [ 0, %.loopexit8 ], [ %bMSB_5, %15 ] ; [#uses=3 type=i32]
  %tmp_13 = call i1 @_ssdm_op_BitSelect.i1.i9.i32(i9 %i_1, i32 8), !dbg !403 ; [#uses=1 type=i1] [debug line = 471:6]
  %empty_67 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1, i64 256, i64 128) ; [#uses=0 type=i32]
  %i_6 = add i9 %i_1, 1, !dbg !405                ; [#uses=1 type=i9] [debug line = 471:22]
  br i1 %tmp_13, label %.loopexit3, label %12, !dbg !403 ; [debug line = 471:6]

; <label>:12                                      ; preds = %11
  %tmp_64 = zext i9 %i_1 to i64, !dbg !406        ; [#uses=1 type=i64] [debug line = 473:3]
  %b_addr = getelementptr [256 x i8]* %b, i64 0, i64 %tmp_64, !dbg !406 ; [#uses=1 type=i8*] [debug line = 473:3]
  %b_load = load i8* %b_addr, align 1, !dbg !406  ; [#uses=2 type=i8] [debug line = 473:3]
  %tmp_65 = icmp eq i8 %b_load, 0, !dbg !406      ; [#uses=1 type=i1] [debug line = 473:3]
  br i1 %tmp_65, label %.loopexit, label %.preheader, !dbg !406 ; [debug line = 473:3]

.preheader:                                       ; preds = %14, %12
  %j_1 = phi i4 [ %j_7, %14 ], [ 0, %12 ]         ; [#uses=4 type=i4]
  %bMSB_1 = phi i32 [ %bMSB_4, %14 ], [ %bMSB, %12 ] ; [#uses=2 type=i32]
  %j_1_cast1 = zext i4 %j_1 to i8, !dbg !408      ; [#uses=1 type=i8] [debug line = 474:8]
  %tmp_14 = call i1 @_ssdm_op_BitSelect.i1.i4.i32(i4 %j_1, i32 3), !dbg !408 ; [#uses=1 type=i1] [debug line = 474:8]
  %empty_68 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1, i64 8, i64 4) ; [#uses=0 type=i32]
  %j_7 = add i4 %j_1, 1, !dbg !411                ; [#uses=1 type=i4] [debug line = 474:22]
  br i1 %tmp_14, label %.loopexit.loopexit, label %13, !dbg !408 ; [debug line = 474:8]

; <label>:13                                      ; preds = %.preheader
  %tmp_66 = lshr i8 -128, %j_1_cast1, !dbg !412   ; [#uses=1 type=i8] [debug line = 475:5]
  %tmp_67 = and i8 %tmp_66, %b_load, !dbg !412    ; [#uses=1 type=i8] [debug line = 475:5]
  %tmp_68 = sub i4 7, %j_1, !dbg !412             ; [#uses=1 type=i4] [debug line = 475:5]
  %tmp_84_cast = zext i4 %tmp_68 to i8, !dbg !412 ; [#uses=1 type=i8] [debug line = 475:5]
  %tmp_69 = lshr i8 %tmp_67, %tmp_84_cast, !dbg !412 ; [#uses=1 type=i8] [debug line = 475:5]
  %tmp_70 = icmp eq i8 %tmp_69, 1, !dbg !412      ; [#uses=1 type=i1] [debug line = 475:5]
  br i1 %tmp_70, label %.loopexit.loopexit.pre, label %14, !dbg !412 ; [debug line = 475:5]

; <label>:14                                      ; preds = %13
  %bMSB_4 = add nsw i32 %bMSB_1, 1, !dbg !414     ; [#uses=1 type=i32] [debug line = 479:6]
  call void @llvm.dbg.value(metadata !{i32 %bMSB_4}, i64 0, metadata !415), !dbg !414 ; [debug line = 479:6] [debug variable = bMSB]
  call void @llvm.dbg.value(metadata !{i4 %j_7}, i64 0, metadata !399), !dbg !411 ; [debug line = 474:22] [debug variable = j]
  br label %.preheader, !dbg !411                 ; [debug line = 474:22]

.loopexit.loopexit.pre:                           ; preds = %13
  store i2 1, i2* %flag_3
  br label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %.loopexit.loopexit.pre, %.preheader
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %12
  %bMSB_2 = phi i32 [ %bMSB, %12 ], [ %bMSB_1, %.loopexit.loopexit ] ; [#uses=2 type=i32]
  %flag_3_load = load i2* %flag_3, !dbg !416      ; [#uses=1 type=i2] [debug line = 482:3]
  %tmp_71 = icmp eq i2 %flag_3_load, 1, !dbg !416 ; [#uses=1 type=i1] [debug line = 482:3]
  br i1 %tmp_71, label %.loopexit3, label %15, !dbg !416 ; [debug line = 482:3]

; <label>:15                                      ; preds = %.loopexit
  %bMSB_5 = add nsw i32 %bMSB_2, 8, !dbg !417     ; [#uses=1 type=i32] [debug line = 485:3]
  call void @llvm.dbg.value(metadata !{i32 %bMSB_5}, i64 0, metadata !415), !dbg !417 ; [debug line = 485:3] [debug variable = bMSB]
  call void @llvm.dbg.value(metadata !{i9 %i_6}, i64 0, metadata !402), !dbg !405 ; [debug line = 471:22] [debug variable = i]
  br label %11, !dbg !405                         ; [debug line = 471:22]

.loopexit3:                                       ; preds = %.loopexit, %11
  %bMSB_3 = phi i32 [ %bMSB, %11 ], [ %bMSB_2, %.loopexit ] ; [#uses=2 type=i32]
  call void @llvm.dbg.declare(metadata !{[256 x i8]* %temp}, metadata !418), !dbg !419 ; [debug line = 489:16] [debug variable = temp]
  call void @llvm.dbg.declare(metadata !{[256 x i8]* %d}, metadata !420), !dbg !421 ; [debug line = 492:16] [debug variable = d]
  call fastcc void @bigint_math_bigint_zero([256 x i8]* %d), !dbg !422 ; [debug line = 494:2]
  call fastcc void @bigint_math_bigint_zero([256 x i8]* %temp), !dbg !423 ; [debug line = 496:2]
  %tmp_72 = sub nsw i32 %bMSB_3, %aMSB_3, !dbg !424 ; [#uses=2 type=i32] [debug line = 497:2]
  call fastcc void @bigint_math_bigint_leftshift([256 x i8]* %d, [256 x i8]* %tempB, i32 %tmp_72), !dbg !424 ; [debug line = 497:2]
  call void @llvm.dbg.declare(metadata !{[256 x i8]* %quot}, metadata !425), !dbg !426 ; [debug line = 499:16] [debug variable = quot]
  call fastcc void @bigint_math_bigint_zero([256 x i8]* %quot), !dbg !427 ; [debug line = 500:2]
  call void @llvm.dbg.declare(metadata !{[256 x i8]* %bitPlace}, metadata !428), !dbg !429 ; [debug line = 502:16] [debug variable = bitPlace]
  call fastcc void @bigint_math_bigint_zero([256 x i8]* %bitPlace), !dbg !430 ; [debug line = 503:2]
  call fastcc void @bigint_math_bigint_leftshift([256 x i8]* %bitPlace, [256 x i8]* @one, i32 %tmp_72), !dbg !431 ; [debug line = 505:2]
  %tmp_73 = sub i32 1, %aMSB_3, !dbg !432         ; [#uses=1 type=i32] [debug line = 507:6]
  %tmp_74 = add i32 %tmp_73, %bMSB_3, !dbg !432   ; [#uses=1 type=i32] [debug line = 507:6]
  br label %16, !dbg !432                         ; [debug line = 507:6]

; <label>:16                                      ; preds = %._crit_edge14, %.loopexit3
  %j_2 = phi i31 [ 0, %.loopexit3 ], [ %j_8, %._crit_edge14 ] ; [#uses=2 type=i31]
  %j_2_cast = zext i31 %j_2 to i32, !dbg !432     ; [#uses=1 type=i32] [debug line = 507:6]
  %tmp_75 = icmp slt i32 %j_2_cast, %tmp_74, !dbg !432 ; [#uses=1 type=i1] [debug line = 507:6]
  %j_8 = add i31 %j_2, 1, !dbg !434               ; [#uses=1 type=i31] [debug line = 507:30]
  br i1 %tmp_75, label %17, label %19, !dbg !432  ; [debug line = 507:6]

; <label>:17                                      ; preds = %16
  %i_7 = call fastcc i2 @bigint_math_bigint_compare([256 x i8]* %tempA, [256 x i8]* %d), !dbg !435 ; [#uses=1 type=i2] [debug line = 508:7]
  %tmp_15 = call i1 @_ssdm_op_BitSelect.i1.i2.i32(i2 %i_7, i32 1), !dbg !437 ; [#uses=1 type=i1] [debug line = 510:3]
  br i1 %tmp_15, label %._crit_edge14, label %18, !dbg !437 ; [debug line = 510:3]

; <label>:18                                      ; preds = %17
  call fastcc void @bigint_math_bigint_add([256 x i8]* %temp, [256 x i8]* %quot, [256 x i8]* %bitPlace)
  call fastcc void @bigint_math_bigint_copy([256 x i8]* %quot, [256 x i8]* %temp), !dbg !438 ; [debug line = 512:4]
  call fastcc void @bigint_math_bigint_sub([256 x i8]* %temp, [256 x i8]* %tempA, [256 x i8]* %d), !dbg !440 ; [debug line = 514:4]
  call fastcc void @bigint_math_bigint_copy([256 x i8]* %tempA, [256 x i8]* %temp), !dbg !441 ; [debug line = 515:4]
  br label %._crit_edge14, !dbg !442              ; [debug line = 518:3]

._crit_edge14:                                    ; preds = %18, %17
  call fastcc void @bigint_math_bigint_rightshift([256 x i8]* %temp, [256 x i8]* %bitPlace), !dbg !443 ; [debug line = 520:3]
  call fastcc void @bigint_math_bigint_copy([256 x i8]* %bitPlace, [256 x i8]* %temp), !dbg !444 ; [debug line = 521:3]
  call fastcc void @bigint_math_bigint_rightshift([256 x i8]* %temp, [256 x i8]* %d), !dbg !445 ; [debug line = 523:3]
  call fastcc void @bigint_math_bigint_copy([256 x i8]* %d, [256 x i8]* %temp), !dbg !446 ; [debug line = 524:3]
  call void @llvm.dbg.value(metadata !{i31 %j_8}, i64 0, metadata !399), !dbg !434 ; [debug line = 507:30] [debug variable = j]
  br label %16, !dbg !434                         ; [debug line = 507:30]

; <label>:19                                      ; preds = %16
  call fastcc void @bigint_math_bigint_copy([256 x i8]* %out, [256 x i8]* %quot), !dbg !447 ; [debug line = 528:2]
  call fastcc void @bigint_math_bigint_mul([256 x i8]* %temp, [256 x i8]* %out, [256 x i8]* %tempB)
  call fastcc void @bigint_math_bigint_sub([256 x i8]* %out1, [256 x i8]* %a, [256 x i8]* %temp), !dbg !448 ; [debug line = 530:2]
  br label %._crit_edge, !dbg !449                ; [debug line = 533:1]

._crit_edge:                                      ; preds = %19, %6, %4, %2, %0
  ret void, !dbg !449                             ; [debug line = 533:1]
}

; [#uses=2]
define internal fastcc void @bigint_math_bigint_leftshift([256 x i8]* nocapture %out, [256 x i8]* nocapture %a, i32 %shift) {
  %empty = call i32 (...)* @_ssdm_op_SpecMemCore([256 x i8]* %a, [1 x i8]* @p_str10, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str10, i32 -1, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10) ; [#uses=0 type=i32]
  %empty_69 = call i32 (...)* @_ssdm_op_SpecMemCore([256 x i8]* %out, [1 x i8]* @p_str10, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str10, i32 -1, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10) ; [#uses=0 type=i32]
  %shift_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %shift) ; [#uses=5 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %shift_read}, i64 0, metadata !450), !dbg !452 ; [debug line = 93:73] [debug variable = shift]
  call void @llvm.dbg.value(metadata !{[256 x i8]* %out}, i64 0, metadata !453), !dbg !454 ; [debug line = 93:37] [debug variable = out]
  call void @llvm.dbg.value(metadata !{[256 x i8]* %a}, i64 0, metadata !455), !dbg !456 ; [debug line = 93:61] [debug variable = a]
  call void @llvm.dbg.value(metadata !{i32 %shift}, i64 0, metadata !450), !dbg !452 ; [debug line = 93:73] [debug variable = shift]
  %tmp = icmp eq i32 %shift_read, 0, !dbg !457    ; [#uses=1 type=i1] [debug line = 101:2]
  br i1 %tmp, label %.preheader10, label %2, !dbg !457 ; [debug line = 101:2]

.preheader10:                                     ; preds = %1, %0
  %i_i = phi i9 [ %i_10, %1 ], [ 0, %0 ]          ; [#uses=3 type=i9]
  %exitcond_i = icmp eq i9 %i_i, -256, !dbg !459  ; [#uses=1 type=i1] [debug line = 44:6@102:3]
  %empty_70 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 256, i64 256, i64 256) ; [#uses=0 type=i32]
  %i_10 = add i9 %i_i, 1, !dbg !462               ; [#uses=1 type=i9] [debug line = 44:22@102:3]
  br i1 %exitcond_i, label %.loopexit, label %1, !dbg !459 ; [debug line = 44:6@102:3]

; <label>:1                                       ; preds = %.preheader10
  %tmp_i = zext i9 %i_i to i64, !dbg !463         ; [#uses=2 type=i64] [debug line = 45:3@102:3]
  %a_addr_1 = getelementptr [256 x i8]* %a, i64 0, i64 %tmp_i, !dbg !463 ; [#uses=1 type=i8*] [debug line = 45:3@102:3]
  %a_load_1 = load i8* %a_addr_1, align 1, !dbg !463 ; [#uses=1 type=i8] [debug line = 45:3@102:3]
  %out_addr_3 = getelementptr [256 x i8]* %out, i64 0, i64 %tmp_i, !dbg !463 ; [#uses=1 type=i8*] [debug line = 45:3@102:3]
  store i8 %a_load_1, i8* %out_addr_3, align 1, !dbg !463 ; [debug line = 45:3@102:3]
  call void @llvm.dbg.value(metadata !{i9 %i_10}, i64 0, metadata !464), !dbg !462 ; [debug line = 44:22@102:3] [debug variable = i]
  br label %.preheader10, !dbg !462               ; [debug line = 44:22@102:3]

; <label>:2                                       ; preds = %0
  %tmp_16 = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %shift_read, i32 31), !dbg !465 ; [#uses=2 type=i1] [debug line = 106:21]
  %p_neg = sub i32 0, %shift_read, !dbg !465      ; [#uses=2 type=i32] [debug line = 106:21]
  %tmp_6 = call i29 @_ssdm_op_PartSelect.i29.i32.i32.i32(i32 %p_neg, i32 3, i32 31), !dbg !465 ; [#uses=1 type=i29] [debug line = 106:21]
  %p_lshr_cast = zext i29 %tmp_6 to i30, !dbg !465 ; [#uses=1 type=i30] [debug line = 106:21]
  %p_neg_t = sub i30 0, %p_lshr_cast, !dbg !465   ; [#uses=1 type=i30] [debug line = 106:21]
  %tmp_7 = call i29 @_ssdm_op_PartSelect.i29.i32.i32.i32(i32 %shift_read, i32 3, i32 31), !dbg !465 ; [#uses=1 type=i29] [debug line = 106:21]
  %p_lshr_f_cast = zext i29 %tmp_7 to i30, !dbg !465 ; [#uses=1 type=i30] [debug line = 106:21]
  %start = select i1 %tmp_16, i30 %p_neg_t, i30 %p_lshr_f_cast, !dbg !465 ; [#uses=1 type=i30] [debug line = 106:21]
  %start_cast = sext i30 %start to i31, !dbg !465 ; [#uses=1 type=i31] [debug line = 106:21]
  call void @llvm.dbg.value(metadata !{i30 %start}, i64 0, metadata !466), !dbg !465 ; [debug line = 106:21] [debug variable = start]
  %tmp_17 = trunc i32 %shift_read to i3           ; [#uses=1 type=i3]
  %p_and_f = call i32 @_ssdm_op_BitConcatenate.i32.i29.i3(i29 0, i3 %tmp_17), !dbg !467 ; [#uses=1 type=i32] [debug line = 107:26]
  %tmp_18 = trunc i32 %p_neg to i3                ; [#uses=1 type=i3]
  %p_and_t = call i32 @_ssdm_op_BitConcatenate.i32.i29.i3(i29 0, i3 %tmp_18), !dbg !467 ; [#uses=1 type=i32] [debug line = 107:26]
  %p_neg_t5 = sub i32 0, %p_and_t, !dbg !467      ; [#uses=1 type=i32] [debug line = 107:26]
  %outputBit_5 = select i1 %tmp_16, i32 %p_neg_t5, i32 %p_and_f, !dbg !467 ; [#uses=1 type=i32] [debug line = 107:26]
  call void @llvm.dbg.value(metadata !{i32 %outputBit_5}, i64 0, metadata !468), !dbg !469 ; [debug line = 114:3] [debug variable = outputBit]
  call void @llvm.dbg.value(metadata !{i32 %outputBit_5}, i64 0, metadata !472), !dbg !467 ; [debug line = 107:26] [debug variable = bitStart]
  %k = sub i31 255, %start_cast, !dbg !473        ; [#uses=1 type=i31] [debug line = 110:2]
  %k_cast = sext i31 %k to i32, !dbg !473         ; [#uses=1 type=i32] [debug line = 110:2]
  call void @llvm.dbg.value(metadata !{i31 %k}, i64 0, metadata !474), !dbg !473 ; [debug line = 110:2] [debug variable = k]
  call void @llvm.dbg.value(metadata !{[256 x i8]* %out}, i64 0, metadata !475), !dbg !477 ; [debug line = 6:32@111:2] [debug variable = in]
  br label %3, !dbg !478                          ; [debug line = 8:6@111:2]

; <label>:3                                       ; preds = %4, %2
  %i_i7 = phi i9 [ 0, %2 ], [ %i_11, %4 ]         ; [#uses=3 type=i9]
  %exitcond_i8 = icmp eq i9 %i_i7, -256, !dbg !478 ; [#uses=1 type=i1] [debug line = 8:6@111:2]
  %empty_71 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 256, i64 256, i64 256) ; [#uses=0 type=i32]
  %i_11 = add i9 %i_i7, 1, !dbg !479              ; [#uses=1 type=i9] [debug line = 8:22@111:2]
  br i1 %exitcond_i8, label %bigint_zero.exit, label %4, !dbg !478 ; [debug line = 8:6@111:2]

; <label>:4                                       ; preds = %3
  %tmp_i9 = zext i9 %i_i7 to i64, !dbg !480       ; [#uses=1 type=i64] [debug line = 10:3@111:2]
  %out_addr_4 = getelementptr [256 x i8]* %out, i64 0, i64 %tmp_i9, !dbg !480 ; [#uses=1 type=i8*] [debug line = 10:3@111:2]
  store i8 0, i8* %out_addr_4, align 1, !dbg !480 ; [debug line = 10:3@111:2]
  call void @llvm.dbg.value(metadata !{i9 %i_11}, i64 0, metadata !481), !dbg !479 ; [debug line = 8:22@111:2] [debug variable = i]
  br label %3, !dbg !479                          ; [debug line = 8:22@111:2]

bigint_zero.exit:                                 ; preds = %9, %3
  %i = phi i9 [ %i_8, %9 ], [ 255, %3 ]           ; [#uses=3 type=i9]
  %k7 = phi i32 [ %p_k_1, %9 ], [ %k_cast, %3 ]   ; [#uses=1 type=i32]
  %i_cast = sext i9 %i to i32, !dbg !482          ; [#uses=1 type=i32] [debug line = 113:6]
  %tmp_19 = call i1 @_ssdm_op_BitSelect.i1.i9.i32(i9 %i, i32 8), !dbg !482 ; [#uses=1 type=i1] [debug line = 113:6]
  %empty_72 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 256, i64 256, i64 256) ; [#uses=0 type=i32]
  br i1 %tmp_19, label %.loopexit, label %.preheader.preheader, !dbg !482 ; [debug line = 113:6]

.preheader.preheader:                             ; preds = %bigint_zero.exit
  %tmp_s = zext i32 %i_cast to i64, !dbg !483     ; [#uses=1 type=i64] [debug line = 116:4]
  %a_addr = getelementptr [256 x i8]* %a, i64 0, i64 %tmp_s, !dbg !483 ; [#uses=1 type=i8*] [debug line = 116:4]
  br label %.preheader, !dbg !486                 ; [debug line = 115:7]

.preheader:                                       ; preds = %8, %.preheader.preheader
  %j = phi i4 [ %j_9, %8 ], [ 0, %.preheader.preheader ] ; [#uses=3 type=i4]
  %k_1 = phi i32 [ %k_2, %8 ], [ %k7, %.preheader.preheader ] ; [#uses=5 type=i32]
  %outputBit = phi i32 [ %outputBit_3, %8 ], [ %outputBit_5, %.preheader.preheader ] ; [#uses=4 type=i32]
  %j_cast1 = zext i4 %j to i8, !dbg !486          ; [#uses=2 type=i8] [debug line = 115:7]
  %exitcond = icmp eq i4 %j, -8, !dbg !486        ; [#uses=1 type=i1] [debug line = 115:7]
  %empty_73 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) ; [#uses=0 type=i32]
  %j_9 = add i4 %j, 1, !dbg !487                  ; [#uses=1 type=i4] [debug line = 115:21]
  br i1 %exitcond, label %9, label %5, !dbg !486  ; [debug line = 115:7]

; <label>:5                                       ; preds = %.preheader
  %a_load = load i8* %a_addr, align 1, !dbg !483  ; [#uses=1 type=i8] [debug line = 116:4]
  %tmp_77 = shl i8 1, %j_cast1, !dbg !483         ; [#uses=1 type=i8] [debug line = 116:4]
  %tmp_78 = and i8 %tmp_77, %a_load, !dbg !483    ; [#uses=1 type=i8] [debug line = 116:4]
  %b = lshr i8 %tmp_78, %j_cast1, !dbg !483       ; [#uses=2 type=i8] [debug line = 116:4]
  call void @llvm.dbg.value(metadata !{i8 %b}, i64 0, metadata !488), !dbg !483 ; [debug line = 116:4] [debug variable = b]
  %tmp_79 = icmp eq i32 %outputBit, 8, !dbg !489  ; [#uses=1 type=i1] [debug line = 118:4]
  br i1 %tmp_79, label %6, label %7, !dbg !489    ; [debug line = 118:4]

; <label>:6                                       ; preds = %5
  %k_7 = add nsw i32 %k_1, -1, !dbg !490          ; [#uses=2 type=i32] [debug line = 119:5]
  call void @llvm.dbg.value(metadata !{i32 %k_7}, i64 0, metadata !474), !dbg !490 ; [debug line = 119:5] [debug variable = k]
  %tmp_80 = sext i32 %k_7 to i64, !dbg !492       ; [#uses=1 type=i64] [debug line = 121:5]
  %out_addr = getelementptr [256 x i8]* %out, i64 0, i64 %tmp_80, !dbg !492 ; [#uses=2 type=i8*] [debug line = 121:5]
  %out_load = load i8* %out_addr, align 1, !dbg !492 ; [#uses=1 type=i8] [debug line = 121:5]
  %tmp_81 = add i8 %out_load, %b, !dbg !492       ; [#uses=1 type=i8] [debug line = 121:5]
  store i8 %tmp_81, i8* %out_addr, align 1, !dbg !492 ; [debug line = 121:5]
  br label %8, !dbg !493                          ; [debug line = 122:4]

; <label>:7                                       ; preds = %5
  %tmp_20 = trunc i32 %outputBit to i8, !dbg !486 ; [#uses=1 type=i8] [debug line = 115:7]
  %tmp_82 = shl i8 %b, %tmp_20, !dbg !494         ; [#uses=1 type=i8] [debug line = 123:5]
  %tmp_83 = sext i32 %k_1 to i64, !dbg !494       ; [#uses=1 type=i64] [debug line = 123:5]
  %out_addr_2 = getelementptr [256 x i8]* %out, i64 0, i64 %tmp_83, !dbg !494 ; [#uses=2 type=i8*] [debug line = 123:5]
  %out_load_2 = load i8* %out_addr_2, align 1, !dbg !494 ; [#uses=1 type=i8] [debug line = 123:5]
  %tmp_84 = add i8 %tmp_82, %out_load_2, !dbg !494 ; [#uses=1 type=i8] [debug line = 123:5]
  store i8 %tmp_84, i8* %out_addr_2, align 1, !dbg !494 ; [debug line = 123:5]
  br label %8

; <label>:8                                       ; preds = %7, %6
  %k_2 = phi i32 [ %k_7, %6 ], [ %k_1, %7 ]       ; [#uses=1 type=i32]
  %outputBit_1 = phi i32 [ 0, %6 ], [ %outputBit, %7 ] ; [#uses=1 type=i32]
  %outputBit_3 = add nsw i32 %outputBit_1, 1, !dbg !496 ; [#uses=1 type=i32] [debug line = 126:4]
  call void @llvm.dbg.value(metadata !{i32 %outputBit_3}, i64 0, metadata !468), !dbg !496 ; [debug line = 126:4] [debug variable = outputBit]
  call void @llvm.dbg.value(metadata !{i4 %j_9}, i64 0, metadata !497), !dbg !487 ; [debug line = 115:21] [debug variable = j]
  br label %.preheader, !dbg !487                 ; [debug line = 115:21]

; <label>:9                                       ; preds = %.preheader
  %tmp_76 = icmp eq i32 %outputBit, 8, !dbg !498  ; [#uses=1 type=i1] [debug line = 130:3]
  %k_6 = add nsw i32 %k_1, -1, !dbg !499          ; [#uses=1 type=i32] [debug line = 131:4]
  call void @llvm.dbg.value(metadata !{i32 %k_6}, i64 0, metadata !474), !dbg !499 ; [debug line = 131:4] [debug variable = k]
  %p_k_1 = select i1 %tmp_76, i32 %k_6, i32 %k_1, !dbg !498 ; [#uses=1 type=i32] [debug line = 130:3]
  %i_8 = add i9 %i, -1, !dbg !501                 ; [#uses=1 type=i9] [debug line = 113:26]
  call void @llvm.dbg.value(metadata !{i9 %i_8}, i64 0, metadata !502), !dbg !501 ; [debug line = 113:26] [debug variable = i]
  br label %bigint_zero.exit, !dbg !501           ; [debug line = 113:26]

.loopexit:                                        ; preds = %bigint_zero.exit, %.preheader10
  ret void, !dbg !503                             ; [debug line = 136:1]
}

; [#uses=17]
define internal fastcc void @bigint_math_bigint_copy([256 x i8]* nocapture %to, [256 x i8]* nocapture %from) {
  %empty = call i32 (...)* @_ssdm_op_SpecMemCore([256 x i8]* %to, [1 x i8]* @p_str10, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str10, i32 -1, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10) ; [#uses=0 type=i32]
  %empty_74 = call i32 (...)* @_ssdm_op_SpecMemCore([256 x i8]* %from, [1 x i8]* @p_str13, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str13, i32 -1, [1 x i8]* @p_str13, [1 x i8]* @p_str13, [1 x i8]* @p_str13, [1 x i8]* @p_str13, [1 x i8]* @p_str13) ; [#uses=0 type=i32]
  call void @llvm.dbg.value(metadata !{[256 x i8]* %to}, i64 0, metadata !504), !dbg !505 ; [debug line = 41:32] [debug variable = to]
  call void @llvm.dbg.value(metadata !{[256 x i8]* %from}, i64 0, metadata !506), !dbg !507 ; [debug line = 41:55] [debug variable = from]
  br label %1, !dbg !508                          ; [debug line = 44:6]

; <label>:1                                       ; preds = %2, %0
  %i = phi i9 [ 0, %0 ], [ %i_9, %2 ]             ; [#uses=3 type=i9]
  %exitcond = icmp eq i9 %i, -256, !dbg !508      ; [#uses=1 type=i1] [debug line = 44:6]
  %empty_75 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 256, i64 256, i64 256) ; [#uses=0 type=i32]
  %i_9 = add i9 %i, 1, !dbg !509                  ; [#uses=1 type=i9] [debug line = 44:22]
  br i1 %exitcond, label %3, label %2, !dbg !508  ; [debug line = 44:6]

; <label>:2                                       ; preds = %1
  %tmp = zext i9 %i to i64, !dbg !510             ; [#uses=2 type=i64] [debug line = 45:3]
  %from_addr = getelementptr [256 x i8]* %from, i64 0, i64 %tmp, !dbg !510 ; [#uses=1 type=i8*] [debug line = 45:3]
  %from_load = load i8* %from_addr, align 1, !dbg !510 ; [#uses=1 type=i8] [debug line = 45:3]
  %to_addr = getelementptr [256 x i8]* %to, i64 0, i64 %tmp, !dbg !510 ; [#uses=1 type=i8*] [debug line = 45:3]
  store i8 %from_load, i8* %to_addr, align 1, !dbg !510 ; [debug line = 45:3]
  call void @llvm.dbg.value(metadata !{i9 %i_9}, i64 0, metadata !511), !dbg !509 ; [debug line = 44:22] [debug variable = i]
  br label %1, !dbg !509                          ; [debug line = 44:22]

; <label>:3                                       ; preds = %1
  ret void, !dbg !512                             ; [debug line = 49:1]
}

; [#uses=8]
define internal fastcc i2 @bigint_math_bigint_compare([256 x i8]* nocapture %a, [256 x i8]* nocapture %b) readonly {
  %empty = call i32 (...)* @_ssdm_op_SpecMemCore([256 x i8]* %b, [1 x i8]* @p_str10, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str10, i32 -1, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10) ; [#uses=0 type=i32]
  %empty_76 = call i32 (...)* @_ssdm_op_SpecMemCore([256 x i8]* %a, [1 x i8]* @p_str13, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str13, i32 -1, [1 x i8]* @p_str13, [1 x i8]* @p_str13, [1 x i8]* @p_str13, [1 x i8]* @p_str13, [1 x i8]* @p_str13) ; [#uses=0 type=i32]
  %state = alloca [256 x i2], align 1             ; [#uses=5 type=[256 x i2]*]
  call void @llvm.dbg.value(metadata !{[256 x i8]* %a}, i64 0, metadata !513), !dbg !517 ; [debug line = 55:34] [debug variable = a]
  call void @llvm.dbg.value(metadata !{[256 x i8]* %b}, i64 0, metadata !518), !dbg !519 ; [debug line = 55:56] [debug variable = b]
  call void @llvm.dbg.declare(metadata !{[256 x i2]* %state}, metadata !520), !dbg !523 ; [debug line = 59:6] [debug variable = state]
  br label %1, !dbg !524                          ; [debug line = 60:6]

; <label>:1                                       ; preds = %9, %0
  %i = phi i9 [ 0, %0 ], [ %i_12, %9 ]            ; [#uses=3 type=i9]
  %exitcond = icmp eq i9 %i, -256, !dbg !524      ; [#uses=1 type=i1] [debug line = 60:6]
  %empty_77 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 256, i64 256, i64 256) ; [#uses=0 type=i32]
  %i_12 = add i9 %i, 1, !dbg !526                 ; [#uses=1 type=i9] [debug line = 60:22]
  br i1 %exitcond, label %10, label %2, !dbg !524 ; [debug line = 60:6]

; <label>:2                                       ; preds = %1
  %tmp_s = zext i9 %i to i64, !dbg !527           ; [#uses=5 type=i64] [debug line = 61:3]
  %a_addr = getelementptr [256 x i8]* %a, i64 0, i64 %tmp_s, !dbg !527 ; [#uses=1 type=i8*] [debug line = 61:3]
  %a_load = load i8* %a_addr, align 1, !dbg !527  ; [#uses=3 type=i8] [debug line = 61:3]
  %b_addr = getelementptr [256 x i8]* %b, i64 0, i64 %tmp_s, !dbg !527 ; [#uses=1 type=i8*] [debug line = 61:3]
  %b_load = load i8* %b_addr, align 1, !dbg !527  ; [#uses=3 type=i8] [debug line = 61:3]
  %tmp_85 = icmp ugt i8 %a_load, %b_load, !dbg !527 ; [#uses=1 type=i1] [debug line = 61:3]
  br i1 %tmp_85, label %3, label %4, !dbg !527    ; [debug line = 61:3]

; <label>:3                                       ; preds = %2
  %state_addr_1 = getelementptr [256 x i2]* %state, i64 0, i64 %tmp_s, !dbg !529 ; [#uses=1 type=i2*] [debug line = 62:4]
  store i2 1, i2* %state_addr_1, align 1, !dbg !529 ; [debug line = 62:4]
  br label %9, !dbg !531                          ; [debug line = 63:3]

; <label>:4                                       ; preds = %2
  %tmp_86 = icmp ult i8 %a_load, %b_load, !dbg !532 ; [#uses=1 type=i1] [debug line = 63:9]
  br i1 %tmp_86, label %5, label %6, !dbg !532    ; [debug line = 63:9]

; <label>:5                                       ; preds = %4
  %state_addr_2 = getelementptr [256 x i2]* %state, i64 0, i64 %tmp_s, !dbg !533 ; [#uses=1 type=i2*] [debug line = 64:4]
  store i2 -1, i2* %state_addr_2, align 1, !dbg !533 ; [debug line = 64:4]
  br label %8, !dbg !535                          ; [debug line = 65:3]

; <label>:6                                       ; preds = %4
  %tmp_91 = icmp eq i8 %a_load, %b_load, !dbg !536 ; [#uses=1 type=i1] [debug line = 65:9]
  br i1 %tmp_91, label %7, label %._crit_edge, !dbg !536 ; [debug line = 65:9]

; <label>:7                                       ; preds = %6
  %state_addr_4 = getelementptr [256 x i2]* %state, i64 0, i64 %tmp_s, !dbg !537 ; [#uses=1 type=i2*] [debug line = 66:4]
  store i2 0, i2* %state_addr_4, align 1, !dbg !537 ; [debug line = 66:4]
  br label %._crit_edge, !dbg !539                ; [debug line = 67:3]

._crit_edge:                                      ; preds = %7, %6
  br label %8

; <label>:8                                       ; preds = %._crit_edge, %5
  br label %9

; <label>:9                                       ; preds = %8, %3
  call void @llvm.dbg.value(metadata !{i9 %i_12}, i64 0, metadata !540), !dbg !526 ; [debug line = 60:22] [debug variable = i]
  br label %1, !dbg !526                          ; [debug line = 60:22]

; <label>:10                                      ; preds = %1
  %state_addr = getelementptr [256 x i2]* %state, i64 0, i64 0, !dbg !541 ; [#uses=1 type=i2*] [debug line = 70:2]
  %state_load = load i2* %state_addr, align 1     ; [#uses=2 type=i2]
  %tmp = icmp eq i2 %state_load, 0, !dbg !541     ; [#uses=1 type=i1] [debug line = 70:2]
  br i1 %tmp, label %.preheader, label %.loopexit, !dbg !541 ; [debug line = 70:2]

.preheader:                                       ; preds = %12, %10
  %i_1 = phi i9 [ %i_2, %12 ], [ 0, %10 ]         ; [#uses=3 type=i9]
  %flag = phi i32 [ %p_flag, %12 ], [ 0, %10 ]    ; [#uses=1 type=i32]
  %tmp_21 = call i1 @_ssdm_op_BitSelect.i1.i9.i32(i9 %i_1, i32 8), !dbg !542 ; [#uses=1 type=i1] [debug line = 74:6]
  %empty_78 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1, i64 256, i64 128) ; [#uses=0 type=i32]
  %i_2 = add i9 %i_1, 1, !dbg !544                ; [#uses=1 type=i9] [debug line = 74:22]
  call void @llvm.dbg.value(metadata !{i9 %i_2}, i64 0, metadata !540), !dbg !544 ; [debug line = 74:22] [debug variable = i]
  br i1 %tmp_21, label %.loopexit, label %11, !dbg !542 ; [debug line = 74:6]

; <label>:11                                      ; preds = %.preheader
  %tmp_87 = zext i9 %i_1 to i64, !dbg !545        ; [#uses=1 type=i64] [debug line = 75:4]
  %state_addr_3 = getelementptr [256 x i2]* %state, i64 0, i64 %tmp_87, !dbg !545 ; [#uses=1 type=i2*] [debug line = 75:4]
  %state_load_1 = load i2* %state_addr_3, align 1 ; [#uses=3 type=i2]
  %tmp_88 = icmp eq i2 %state_load_1, 0, !dbg !545 ; [#uses=1 type=i1] [debug line = 75:4]
  %p_flag = select i1 %tmp_88, i32 1, i32 %flag, !dbg !545 ; [#uses=2 type=i32] [debug line = 75:4]
  %tmp_89 = icmp eq i2 %state_load_1, 1, !dbg !547 ; [#uses=1 type=i1] [debug line = 79:4]
  %tmp_90 = icmp eq i32 %p_flag, 1, !dbg !547     ; [#uses=2 type=i1] [debug line = 79:4]
  %or_cond = and i1 %tmp_89, %tmp_90, !dbg !547   ; [#uses=1 type=i1] [debug line = 79:4]
  br i1 %or_cond, label %.loopexit, label %12, !dbg !547 ; [debug line = 79:4]

; <label>:12                                      ; preds = %11
  %tmp_92 = icmp eq i2 %state_load_1, -1, !dbg !548 ; [#uses=1 type=i1] [debug line = 83:4]
  %or_cond1 = and i1 %tmp_92, %tmp_90, !dbg !548  ; [#uses=1 type=i1] [debug line = 83:4]
  br i1 %or_cond1, label %.loopexit, label %.preheader, !dbg !548 ; [debug line = 83:4]

.loopexit:                                        ; preds = %12, %11, %.preheader, %10
  %p_0 = phi i2 [ %state_load, %10 ], [ 0, %.preheader ], [ 1, %11 ], [ -1, %12 ] ; [#uses=1 type=i2]
  ret i2 %p_0, !dbg !549                          ; [debug line = 90:1]
}

; [#uses=2]
define internal fastcc void @bigint_math_bigint_add.1([256 x i8]* nocapture %out, [256 x i8]* nocapture %b) {
  %empty = call i32 (...)* @_ssdm_op_SpecMemCore([256 x i8]* %b, [1 x i8]* @p_str10, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str10, i32 -1, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10) ; [#uses=0 type=i32]
  %empty_79 = call i32 (...)* @_ssdm_op_SpecMemCore([256 x i8]* %out, [1 x i8]* @p_str10, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str10, i32 -1, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10) ; [#uses=0 type=i32]
  %tempA = alloca [256 x i8], align 16            ; [#uses=4 type=[256 x i8]*]
  %tempB = alloca [256 x i8], align 16            ; [#uses=4 type=[256 x i8]*]
  call void @llvm.dbg.value(metadata !{[256 x i8]* %tempB}, i64 0, metadata !550), !dbg !554 ; [debug line = 41:32@198:2] [debug variable = to]
  call void @llvm.dbg.value(metadata !{[256 x i8]* %out}, i64 0, metadata !555), !dbg !556 ; [debug line = 182:31] [debug variable = out]
  call void @llvm.dbg.value(metadata !{[256 x i8]* %out}, i64 0, metadata !557), !dbg !558 ; [debug line = 182:55] [debug variable = a]
  call void @llvm.dbg.value(metadata !{[256 x i8]* %b}, i64 0, metadata !559), !dbg !560 ; [debug line = 182:77] [debug variable = b]
  call void @llvm.dbg.declare(metadata !{[256 x i8]* %tempA}, metadata !561), !dbg !562 ; [debug line = 189:16] [debug variable = tempA]
  call void @llvm.dbg.declare(metadata !{[256 x i8]* %tempB}, metadata !563), !dbg !564 ; [debug line = 190:16] [debug variable = tempB]
  call fastcc void @bigint_math_bigint_zero([256 x i8]* %tempA), !dbg !565 ; [debug line = 193:2]
  call fastcc void @bigint_math_bigint_zero([256 x i8]* %tempB), !dbg !566 ; [debug line = 194:2]
  call void @llvm.dbg.value(metadata !{[256 x i8]* %tempA}, i64 0, metadata !567), !dbg !569 ; [debug line = 41:32@197:2] [debug variable = to]
  call void @llvm.dbg.value(metadata !{[256 x i8]* %out}, i64 0, metadata !570), !dbg !571 ; [debug line = 41:55@197:2] [debug variable = from]
  %empty_80 = call i32 (...)* @_ssdm_op_SpecMemCore([256 x i8]* %tempB, [1 x i8]* @p_str10, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str10, i32 -1, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10) ; [#uses=0 type=i32]
  %empty_81 = call i32 (...)* @_ssdm_op_SpecMemCore([256 x i8]* %tempA, [1 x i8]* @p_str10, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str10, i32 -1, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10) ; [#uses=0 type=i32]
  br label %1, !dbg !572                          ; [debug line = 44:6@197:2]

; <label>:1                                       ; preds = %2, %0
  %i_i = phi i9 [ 0, %0 ], [ %i_13, %2 ]          ; [#uses=3 type=i9]
  %exitcond_i = icmp eq i9 %i_i, -256, !dbg !572  ; [#uses=1 type=i1] [debug line = 44:6@197:2]
  %empty_82 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 256, i64 256, i64 256) ; [#uses=0 type=i32]
  %i_13 = add i9 %i_i, 1, !dbg !573               ; [#uses=1 type=i9] [debug line = 44:22@197:2]
  br i1 %exitcond_i, label %bigint_copy.exit, label %2, !dbg !572 ; [debug line = 44:6@197:2]

; <label>:2                                       ; preds = %1
  %tmp_i = zext i9 %i_i to i64, !dbg !574         ; [#uses=2 type=i64] [debug line = 45:3@197:2]
  %a_addr_4 = getelementptr [256 x i8]* %out, i64 0, i64 %tmp_i, !dbg !574 ; [#uses=1 type=i8*] [debug line = 45:3@197:2]
  %a_load_4 = load i8* %a_addr_4, align 1, !dbg !574 ; [#uses=1 type=i8] [debug line = 45:3@197:2]
  %tempA_addr = getelementptr [256 x i8]* %tempA, i64 0, i64 %tmp_i, !dbg !574 ; [#uses=1 type=i8*] [debug line = 45:3@197:2]
  store i8 %a_load_4, i8* %tempA_addr, align 1, !dbg !574 ; [debug line = 45:3@197:2]
  call void @llvm.dbg.value(metadata !{i9 %i_13}, i64 0, metadata !575), !dbg !573 ; [debug line = 44:22@197:2] [debug variable = i]
  br label %1, !dbg !573                          ; [debug line = 44:22@197:2]

bigint_copy.exit:                                 ; preds = %3, %1
  %i_i1 = phi i9 [ %i_3, %3 ], [ 0, %1 ]          ; [#uses=3 type=i9]
  %exitcond_i2 = icmp eq i9 %i_i1, -256, !dbg !576 ; [#uses=1 type=i1] [debug line = 44:6@198:2]
  %empty_83 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 256, i64 256, i64 256) ; [#uses=0 type=i32]
  %i_3 = add i9 %i_i1, 1, !dbg !577               ; [#uses=1 type=i9] [debug line = 44:22@198:2]
  br i1 %exitcond_i2, label %bigint_copy.exit8, label %3, !dbg !576 ; [debug line = 44:6@198:2]

; <label>:3                                       ; preds = %bigint_copy.exit
  %tmp_i3 = zext i9 %i_i1 to i64, !dbg !578       ; [#uses=2 type=i64] [debug line = 45:3@198:2]
  %b_addr = getelementptr [256 x i8]* %b, i64 0, i64 %tmp_i3, !dbg !578 ; [#uses=1 type=i8*] [debug line = 45:3@198:2]
  %b_load = load i8* %b_addr, align 1, !dbg !578  ; [#uses=1 type=i8] [debug line = 45:3@198:2]
  %tempB_addr_4 = getelementptr [256 x i8]* %tempB, i64 0, i64 %tmp_i3, !dbg !578 ; [#uses=1 type=i8*] [debug line = 45:3@198:2]
  store i8 %b_load, i8* %tempB_addr_4, align 1, !dbg !578 ; [debug line = 45:3@198:2]
  call void @llvm.dbg.value(metadata !{i9 %i_3}, i64 0, metadata !579), !dbg !577 ; [debug line = 44:22@198:2] [debug variable = i]
  br label %bigint_copy.exit, !dbg !577           ; [debug line = 44:22@198:2]

bigint_copy.exit8:                                ; preds = %bigint_copy.exit
  call fastcc void @bigint_math_bigint_zero([256 x i8]* %out), !dbg !580 ; [debug line = 200:2]
  br label %4, !dbg !581                          ; [debug line = 202:6]

; <label>:4                                       ; preds = %._crit_edge1, %bigint_copy.exit8
  %i = phi i9 [ 255, %bigint_copy.exit8 ], [ %i_14, %._crit_edge1 ] ; [#uses=5 type=i9]
  %i_cast = sext i9 %i to i32, !dbg !581          ; [#uses=1 type=i32] [debug line = 202:6]
  %tmp = call i1 @_ssdm_op_BitSelect.i1.i9.i32(i9 %i, i32 8), !dbg !581 ; [#uses=1 type=i1] [debug line = 202:6]
  %empty_84 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 256, i64 256, i64 256) ; [#uses=0 type=i32]
  br i1 %tmp, label %8, label %5, !dbg !581       ; [debug line = 202:6]

; <label>:5                                       ; preds = %4
  %tmp_s = zext i32 %i_cast to i64, !dbg !583     ; [#uses=3 type=i64] [debug line = 204:3]
  %tempA_addr_7 = getelementptr inbounds [256 x i8]* %tempA, i64 0, i64 %tmp_s, !dbg !583 ; [#uses=1 type=i8*] [debug line = 204:3]
  %tempA_load = load i8* %tempA_addr_7, align 1, !dbg !583 ; [#uses=2 type=i8] [debug line = 204:3]
  %tempB_addr = getelementptr inbounds [256 x i8]* %tempB, i64 0, i64 %tmp_s, !dbg !583 ; [#uses=1 type=i8*] [debug line = 204:3]
  %tempB_load = load i8* %tempB_addr, align 1, !dbg !583 ; [#uses=2 type=i8] [debug line = 204:3]
  %sum = add i8 %tempA_load, %tempB_load, !dbg !583 ; [#uses=2 type=i8] [debug line = 204:3]
  call void @llvm.dbg.value(metadata !{i8 %sum}, i64 0, metadata !585), !dbg !583 ; [debug line = 204:3] [debug variable = sum]
  %tmp_115_cast = zext i8 %tempA_load to i9, !dbg !586 ; [#uses=1 type=i9] [debug line = 205:3]
  %tmp_116_cast = zext i8 %tempB_load to i9, !dbg !586 ; [#uses=1 type=i9] [debug line = 205:3]
  %tmp_93 = add i9 %tmp_115_cast, %tmp_116_cast, !dbg !586 ; [#uses=1 type=i9] [debug line = 205:3]
  %tmp_22 = call i1 @_ssdm_op_BitSelect.i1.i9.i32(i9 %tmp_93, i32 8), !dbg !586 ; [#uses=2 type=i1] [debug line = 205:3]
  %carry = zext i1 %tmp_22 to i8, !dbg !586       ; [#uses=1 type=i8] [debug line = 205:3]
  call void @llvm.dbg.value(metadata !{i8 %carry}, i64 0, metadata !587), !dbg !586 ; [debug line = 205:3] [debug variable = carry]
  %a_addr = getelementptr [256 x i8]* %out, i64 0, i64 %tmp_s, !dbg !588 ; [#uses=2 type=i8*] [debug line = 208:3]
  %a_load = load i8* %a_addr, align 1, !dbg !588  ; [#uses=2 type=i8] [debug line = 208:3]
  %tmp_119_cast = zext i8 %a_load to i9, !dbg !588 ; [#uses=1 type=i9] [debug line = 208:3]
  %tmp_120_cast = zext i8 %sum to i9, !dbg !588   ; [#uses=1 type=i9] [debug line = 208:3]
  %tmp_94 = add i9 %tmp_120_cast, %tmp_119_cast, !dbg !588 ; [#uses=1 type=i9] [debug line = 208:3]
  %tmp_23 = call i1 @_ssdm_op_BitSelect.i1.i9.i32(i9 %tmp_94, i32 8), !dbg !588 ; [#uses=1 type=i1] [debug line = 208:3]
  br i1 %tmp_23, label %6, label %._crit_edge, !dbg !588 ; [debug line = 208:3]

; <label>:6                                       ; preds = %5
  %tmp_95 = add i9 -1, %i, !dbg !589              ; [#uses=1 type=i9] [debug line = 209:4]
  %tmp_96 = sext i9 %tmp_95 to i64, !dbg !589     ; [#uses=1 type=i64] [debug line = 209:4]
  %a_addr_1 = getelementptr [256 x i8]* %out, i64 0, i64 %tmp_96, !dbg !589 ; [#uses=2 type=i8*] [debug line = 209:4]
  %a_load_1 = load i8* %a_addr_1, align 1, !dbg !589 ; [#uses=1 type=i8] [debug line = 209:4]
  %tmp_97 = add i8 1, %a_load_1, !dbg !589        ; [#uses=1 type=i8] [debug line = 209:4]
  store i8 %tmp_97, i8* %a_addr_1, align 1, !dbg !589 ; [debug line = 209:4]
  br label %._crit_edge, !dbg !591                ; [debug line = 210:3]

._crit_edge:                                      ; preds = %6, %5
  %tmp_98 = add i8 %sum, %a_load, !dbg !592       ; [#uses=1 type=i8] [debug line = 211:3]
  store i8 %tmp_98, i8* %a_addr, align 1, !dbg !592 ; [debug line = 211:3]
  %i_14 = add i9 %i, -1, !dbg !593                ; [#uses=2 type=i9] [debug line = 214:3]
  %tmp_99 = sext i9 %i_14 to i64, !dbg !593       ; [#uses=1 type=i64] [debug line = 214:3]
  %a_addr_2 = getelementptr [256 x i8]* %out, i64 0, i64 %tmp_99, !dbg !593 ; [#uses=2 type=i8*] [debug line = 214:3]
  %a_load_2 = load i8* %a_addr_2, align 1, !dbg !593 ; [#uses=2 type=i8] [debug line = 214:3]
  %tmp_130_cast = zext i8 %a_load_2 to i9, !dbg !593 ; [#uses=1 type=i9] [debug line = 214:3]
  %tmp_131_cast = zext i1 %tmp_22 to i9, !dbg !593 ; [#uses=1 type=i9] [debug line = 214:3]
  %tmp_100 = add i9 %tmp_131_cast, %tmp_130_cast, !dbg !593 ; [#uses=1 type=i9] [debug line = 214:3]
  %tmp_24 = call i1 @_ssdm_op_BitSelect.i1.i9.i32(i9 %tmp_100, i32 8), !dbg !593 ; [#uses=1 type=i1] [debug line = 214:3]
  br i1 %tmp_24, label %7, label %._crit_edge1, !dbg !593 ; [debug line = 214:3]

; <label>:7                                       ; preds = %._crit_edge
  %tmp_101 = add i9 -2, %i, !dbg !594             ; [#uses=1 type=i9] [debug line = 215:4]
  %tmp_102 = sext i9 %tmp_101 to i64, !dbg !594   ; [#uses=1 type=i64] [debug line = 215:4]
  %a_addr_3 = getelementptr [256 x i8]* %out, i64 0, i64 %tmp_102, !dbg !594 ; [#uses=2 type=i8*] [debug line = 215:4]
  %a_load_3 = load i8* %a_addr_3, align 1, !dbg !594 ; [#uses=1 type=i8] [debug line = 215:4]
  %tmp_103 = add i8 1, %a_load_3, !dbg !594       ; [#uses=1 type=i8] [debug line = 215:4]
  store i8 %tmp_103, i8* %a_addr_3, align 1, !dbg !594 ; [debug line = 215:4]
  br label %._crit_edge1, !dbg !596               ; [debug line = 216:3]

._crit_edge1:                                     ; preds = %7, %._crit_edge
  %tmp_104 = add i8 %a_load_2, %carry, !dbg !597  ; [#uses=1 type=i8] [debug line = 217:3]
  store i8 %tmp_104, i8* %a_addr_2, align 1, !dbg !597 ; [debug line = 217:3]
  call void @llvm.dbg.value(metadata !{i9 %i_14}, i64 0, metadata !598), !dbg !599 ; [debug line = 202:26] [debug variable = i]
  br label %4, !dbg !599                          ; [debug line = 202:26]

; <label>:8                                       ; preds = %4
  ret void, !dbg !600                             ; [debug line = 219:1]
}

; [#uses=1]
define internal fastcc void @bigint_math_bigint_add([256 x i8]* nocapture %out, [256 x i8]* nocapture %a, [256 x i8]* nocapture %b) {
  %empty = call i32 (...)* @_ssdm_op_SpecMemCore([256 x i8]* %a, [1 x i8]* @p_str10, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str10, i32 -1, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10) ; [#uses=0 type=i32]
  %empty_85 = call i32 (...)* @_ssdm_op_SpecMemCore([256 x i8]* %b, [1 x i8]* @p_str10, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str10, i32 -1, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10) ; [#uses=0 type=i32]
  %empty_86 = call i32 (...)* @_ssdm_op_SpecMemCore([256 x i8]* %out, [1 x i8]* @p_str10, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str10, i32 -1, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10) ; [#uses=0 type=i32]
  %tempA = alloca [256 x i8], align 16            ; [#uses=4 type=[256 x i8]*]
  %tempB = alloca [256 x i8], align 16            ; [#uses=4 type=[256 x i8]*]
  call void @llvm.dbg.value(metadata !{[256 x i8]* %tempB}, i64 0, metadata !550), !dbg !554 ; [debug line = 41:32@198:2] [debug variable = to]
  call void @llvm.dbg.value(metadata !{[256 x i8]* %out}, i64 0, metadata !555), !dbg !556 ; [debug line = 182:31] [debug variable = out]
  call void @llvm.dbg.value(metadata !{[256 x i8]* %a}, i64 0, metadata !557), !dbg !558 ; [debug line = 182:55] [debug variable = a]
  call void @llvm.dbg.value(metadata !{[256 x i8]* %b}, i64 0, metadata !559), !dbg !560 ; [debug line = 182:77] [debug variable = b]
  call void @llvm.dbg.declare(metadata !{[256 x i8]* %tempA}, metadata !561), !dbg !562 ; [debug line = 189:16] [debug variable = tempA]
  call void @llvm.dbg.declare(metadata !{[256 x i8]* %tempB}, metadata !563), !dbg !564 ; [debug line = 190:16] [debug variable = tempB]
  call fastcc void @bigint_math_bigint_zero([256 x i8]* %tempA), !dbg !565 ; [debug line = 193:2]
  call fastcc void @bigint_math_bigint_zero([256 x i8]* %tempB), !dbg !566 ; [debug line = 194:2]
  call void @llvm.dbg.value(metadata !{[256 x i8]* %tempA}, i64 0, metadata !567), !dbg !569 ; [debug line = 41:32@197:2] [debug variable = to]
  call void @llvm.dbg.value(metadata !{[256 x i8]* %a}, i64 0, metadata !570), !dbg !571 ; [debug line = 41:55@197:2] [debug variable = from]
  %empty_87 = call i32 (...)* @_ssdm_op_SpecMemCore([256 x i8]* %tempB, [1 x i8]* @p_str10, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str10, i32 -1, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10) ; [#uses=0 type=i32]
  %empty_88 = call i32 (...)* @_ssdm_op_SpecMemCore([256 x i8]* %tempA, [1 x i8]* @p_str10, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str10, i32 -1, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10) ; [#uses=0 type=i32]
  br label %1, !dbg !572                          ; [debug line = 44:6@197:2]

; <label>:1                                       ; preds = %2, %0
  %i_i = phi i9 [ 0, %0 ], [ %i_15, %2 ]          ; [#uses=3 type=i9]
  %exitcond_i = icmp eq i9 %i_i, -256, !dbg !572  ; [#uses=1 type=i1] [debug line = 44:6@197:2]
  %empty_89 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 256, i64 256, i64 256) ; [#uses=0 type=i32]
  %i_15 = add i9 %i_i, 1, !dbg !573               ; [#uses=1 type=i9] [debug line = 44:22@197:2]
  br i1 %exitcond_i, label %bigint_copy.exit, label %2, !dbg !572 ; [debug line = 44:6@197:2]

; <label>:2                                       ; preds = %1
  %tmp_i = zext i9 %i_i to i64, !dbg !574         ; [#uses=2 type=i64] [debug line = 45:3@197:2]
  %a_addr = getelementptr [256 x i8]* %a, i64 0, i64 %tmp_i, !dbg !574 ; [#uses=1 type=i8*] [debug line = 45:3@197:2]
  %a_load = load i8* %a_addr, align 1, !dbg !574  ; [#uses=1 type=i8] [debug line = 45:3@197:2]
  %tempA_addr = getelementptr [256 x i8]* %tempA, i64 0, i64 %tmp_i, !dbg !574 ; [#uses=1 type=i8*] [debug line = 45:3@197:2]
  store i8 %a_load, i8* %tempA_addr, align 1, !dbg !574 ; [debug line = 45:3@197:2]
  call void @llvm.dbg.value(metadata !{i9 %i_15}, i64 0, metadata !575), !dbg !573 ; [debug line = 44:22@197:2] [debug variable = i]
  br label %1, !dbg !573                          ; [debug line = 44:22@197:2]

bigint_copy.exit:                                 ; preds = %3, %1
  %i_i1 = phi i9 [ %i_4, %3 ], [ 0, %1 ]          ; [#uses=3 type=i9]
  %exitcond_i1 = icmp eq i9 %i_i1, -256, !dbg !576 ; [#uses=1 type=i1] [debug line = 44:6@198:2]
  %empty_90 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 256, i64 256, i64 256) ; [#uses=0 type=i32]
  %i_4 = add i9 %i_i1, 1, !dbg !577               ; [#uses=1 type=i9] [debug line = 44:22@198:2]
  br i1 %exitcond_i1, label %bigint_copy.exit18, label %3, !dbg !576 ; [debug line = 44:6@198:2]

; <label>:3                                       ; preds = %bigint_copy.exit
  %tmp_i1 = zext i9 %i_i1 to i64, !dbg !578       ; [#uses=2 type=i64] [debug line = 45:3@198:2]
  %b_addr = getelementptr [256 x i8]* %b, i64 0, i64 %tmp_i1, !dbg !578 ; [#uses=1 type=i8*] [debug line = 45:3@198:2]
  %b_load = load i8* %b_addr, align 1, !dbg !578  ; [#uses=1 type=i8] [debug line = 45:3@198:2]
  %tempB_addr_5 = getelementptr [256 x i8]* %tempB, i64 0, i64 %tmp_i1, !dbg !578 ; [#uses=1 type=i8*] [debug line = 45:3@198:2]
  store i8 %b_load, i8* %tempB_addr_5, align 1, !dbg !578 ; [debug line = 45:3@198:2]
  call void @llvm.dbg.value(metadata !{i9 %i_4}, i64 0, metadata !579), !dbg !577 ; [debug line = 44:22@198:2] [debug variable = i]
  br label %bigint_copy.exit, !dbg !577           ; [debug line = 44:22@198:2]

bigint_copy.exit18:                               ; preds = %bigint_copy.exit
  call fastcc void @bigint_math_bigint_zero([256 x i8]* %out), !dbg !580 ; [debug line = 200:2]
  br label %4, !dbg !581                          ; [debug line = 202:6]

; <label>:4                                       ; preds = %._crit_edge1, %bigint_copy.exit18
  %i = phi i9 [ 255, %bigint_copy.exit18 ], [ %i_16, %._crit_edge1 ] ; [#uses=5 type=i9]
  %i_cast = sext i9 %i to i32, !dbg !581          ; [#uses=1 type=i32] [debug line = 202:6]
  %tmp = call i1 @_ssdm_op_BitSelect.i1.i9.i32(i9 %i, i32 8), !dbg !581 ; [#uses=1 type=i1] [debug line = 202:6]
  %empty_91 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 256, i64 256, i64 256) ; [#uses=0 type=i32]
  br i1 %tmp, label %8, label %5, !dbg !581       ; [debug line = 202:6]

; <label>:5                                       ; preds = %4
  %tmp_s = zext i32 %i_cast to i64, !dbg !583     ; [#uses=3 type=i64] [debug line = 204:3]
  %tempA_addr_8 = getelementptr inbounds [256 x i8]* %tempA, i64 0, i64 %tmp_s, !dbg !583 ; [#uses=1 type=i8*] [debug line = 204:3]
  %tempA_load = load i8* %tempA_addr_8, align 1, !dbg !583 ; [#uses=2 type=i8] [debug line = 204:3]
  %tempB_addr = getelementptr inbounds [256 x i8]* %tempB, i64 0, i64 %tmp_s, !dbg !583 ; [#uses=1 type=i8*] [debug line = 204:3]
  %tempB_load = load i8* %tempB_addr, align 1, !dbg !583 ; [#uses=2 type=i8] [debug line = 204:3]
  %sum = add i8 %tempA_load, %tempB_load, !dbg !583 ; [#uses=2 type=i8] [debug line = 204:3]
  call void @llvm.dbg.value(metadata !{i8 %sum}, i64 0, metadata !585), !dbg !583 ; [debug line = 204:3] [debug variable = sum]
  %tmp_118_cast = zext i8 %tempA_load to i9, !dbg !586 ; [#uses=1 type=i9] [debug line = 205:3]
  %tmp_119_cast = zext i8 %tempB_load to i9, !dbg !586 ; [#uses=1 type=i9] [debug line = 205:3]
  %tmp_105 = add i9 %tmp_118_cast, %tmp_119_cast, !dbg !586 ; [#uses=1 type=i9] [debug line = 205:3]
  %tmp_25 = call i1 @_ssdm_op_BitSelect.i1.i9.i32(i9 %tmp_105, i32 8), !dbg !586 ; [#uses=2 type=i1] [debug line = 205:3]
  %carry = zext i1 %tmp_25 to i8, !dbg !586       ; [#uses=1 type=i8] [debug line = 205:3]
  call void @llvm.dbg.value(metadata !{i8 %carry}, i64 0, metadata !587), !dbg !586 ; [debug line = 205:3] [debug variable = carry]
  %out_addr = getelementptr [256 x i8]* %out, i64 0, i64 %tmp_s, !dbg !588 ; [#uses=2 type=i8*] [debug line = 208:3]
  %out_load = load i8* %out_addr, align 1, !dbg !588 ; [#uses=2 type=i8] [debug line = 208:3]
  %tmp_122_cast = zext i8 %out_load to i9, !dbg !588 ; [#uses=1 type=i9] [debug line = 208:3]
  %tmp_123_cast = zext i8 %sum to i9, !dbg !588   ; [#uses=1 type=i9] [debug line = 208:3]
  %tmp_106 = add i9 %tmp_123_cast, %tmp_122_cast, !dbg !588 ; [#uses=1 type=i9] [debug line = 208:3]
  %tmp_26 = call i1 @_ssdm_op_BitSelect.i1.i9.i32(i9 %tmp_106, i32 8), !dbg !588 ; [#uses=1 type=i1] [debug line = 208:3]
  br i1 %tmp_26, label %6, label %._crit_edge, !dbg !588 ; [debug line = 208:3]

; <label>:6                                       ; preds = %5
  %tmp_107 = add i9 -1, %i, !dbg !589             ; [#uses=1 type=i9] [debug line = 209:4]
  %tmp_108 = sext i9 %tmp_107 to i64, !dbg !589   ; [#uses=1 type=i64] [debug line = 209:4]
  %out_addr_3 = getelementptr [256 x i8]* %out, i64 0, i64 %tmp_108, !dbg !589 ; [#uses=2 type=i8*] [debug line = 209:4]
  %out_load_3 = load i8* %out_addr_3, align 1, !dbg !589 ; [#uses=1 type=i8] [debug line = 209:4]
  %tmp_109 = add i8 1, %out_load_3, !dbg !589     ; [#uses=1 type=i8] [debug line = 209:4]
  store i8 %tmp_109, i8* %out_addr_3, align 1, !dbg !589 ; [debug line = 209:4]
  br label %._crit_edge, !dbg !591                ; [debug line = 210:3]

._crit_edge:                                      ; preds = %6, %5
  %tmp_110 = add i8 %sum, %out_load, !dbg !592    ; [#uses=1 type=i8] [debug line = 211:3]
  store i8 %tmp_110, i8* %out_addr, align 1, !dbg !592 ; [debug line = 211:3]
  %i_16 = add i9 %i, -1, !dbg !593                ; [#uses=2 type=i9] [debug line = 214:3]
  %tmp_111 = sext i9 %i_16 to i64, !dbg !593      ; [#uses=1 type=i64] [debug line = 214:3]
  %out_addr_4 = getelementptr [256 x i8]* %out, i64 0, i64 %tmp_111, !dbg !593 ; [#uses=2 type=i8*] [debug line = 214:3]
  %out_load_4 = load i8* %out_addr_4, align 1, !dbg !593 ; [#uses=2 type=i8] [debug line = 214:3]
  %tmp_133_cast = zext i8 %out_load_4 to i9, !dbg !593 ; [#uses=1 type=i9] [debug line = 214:3]
  %tmp_134_cast = zext i1 %tmp_25 to i9, !dbg !593 ; [#uses=1 type=i9] [debug line = 214:3]
  %tmp_112 = add i9 %tmp_134_cast, %tmp_133_cast, !dbg !593 ; [#uses=1 type=i9] [debug line = 214:3]
  %tmp_27 = call i1 @_ssdm_op_BitSelect.i1.i9.i32(i9 %tmp_112, i32 8), !dbg !593 ; [#uses=1 type=i1] [debug line = 214:3]
  br i1 %tmp_27, label %7, label %._crit_edge1, !dbg !593 ; [debug line = 214:3]

; <label>:7                                       ; preds = %._crit_edge
  %tmp_113 = add i9 -2, %i, !dbg !594             ; [#uses=1 type=i9] [debug line = 215:4]
  %tmp_114 = sext i9 %tmp_113 to i64, !dbg !594   ; [#uses=1 type=i64] [debug line = 215:4]
  %out_addr_5 = getelementptr [256 x i8]* %out, i64 0, i64 %tmp_114, !dbg !594 ; [#uses=2 type=i8*] [debug line = 215:4]
  %out_load_5 = load i8* %out_addr_5, align 1, !dbg !594 ; [#uses=1 type=i8] [debug line = 215:4]
  %tmp_115 = add i8 1, %out_load_5, !dbg !594     ; [#uses=1 type=i8] [debug line = 215:4]
  store i8 %tmp_115, i8* %out_addr_5, align 1, !dbg !594 ; [debug line = 215:4]
  br label %._crit_edge1, !dbg !596               ; [debug line = 216:3]

._crit_edge1:                                     ; preds = %7, %._crit_edge
  %tmp_116 = add i8 %out_load_4, %carry, !dbg !597 ; [#uses=1 type=i8] [debug line = 217:3]
  store i8 %tmp_116, i8* %out_addr_4, align 1, !dbg !597 ; [debug line = 217:3]
  call void @llvm.dbg.value(metadata !{i9 %i_16}, i64 0, metadata !598), !dbg !599 ; [debug line = 202:26] [debug variable = i]
  br label %4, !dbg !599                          ; [debug line = 202:26]

; <label>:8                                       ; preds = %4
  ret void, !dbg !600                             ; [debug line = 219:1]
}

; [#uses=1]
define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

; [#uses=65]
define weak i32 @_ssdm_op_SpecMemCore(...) {
entry:
  ret i32 0
}

; [#uses=33]
define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

; [#uses=5]
define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

; [#uses=4]
define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

; [#uses=1]
define weak i32 @_ssdm_op_Read.ap_auto.i32(i32) {
entry:
  ret i32 %0
}

; [#uses=0]
declare i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32, i32, i32) nounwind readnone

; [#uses=2]
define weak i8 @_ssdm_op_PartSelect.i8.i16.i32.i32(i16, i32, i32) nounwind readnone {
entry:
  %empty = call i16 @llvm.part.select.i16(i16 %0, i32 %1, i32 %2) ; [#uses=1 type=i16]
  %empty_92 = trunc i16 %empty to i8              ; [#uses=1 type=i8]
  ret i8 %empty_92
}

; [#uses=0]
declare i3 @_ssdm_op_PartSelect.i3.i32.i32.i32(i32, i32, i32) nounwind readnone

; [#uses=2]
define weak i29 @_ssdm_op_PartSelect.i29.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2) ; [#uses=1 type=i32]
  %empty_93 = trunc i32 %empty to i29             ; [#uses=1 type=i29]
  ret i29 %empty_93
}

; [#uses=0]
declare i1 @_ssdm_op_PartSelect.i1.i8.i32.i32(i8, i32, i32) nounwind readnone

; [#uses=17]
define weak i1 @_ssdm_op_BitSelect.i1.i9.i32(i9, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i9                     ; [#uses=1 type=i9]
  %empty_94 = shl i9 1, %empty                    ; [#uses=1 type=i9]
  %empty_95 = and i9 %0, %empty_94                ; [#uses=1 type=i9]
  %empty_96 = icmp ne i9 %empty_95, 0             ; [#uses=1 type=i1]
  ret i1 %empty_96
}

; [#uses=3]
define weak i1 @_ssdm_op_BitSelect.i1.i4.i32(i4, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i4                     ; [#uses=1 type=i4]
  %empty_97 = shl i4 1, %empty                    ; [#uses=1 type=i4]
  %empty_98 = and i4 %0, %empty_97                ; [#uses=1 type=i4]
  %empty_99 = icmp ne i4 %empty_98, 0             ; [#uses=1 type=i1]
  ret i1 %empty_99
}

; [#uses=1]
define weak i1 @_ssdm_op_BitSelect.i1.i32.i32(i32, i32) nounwind readnone {
entry:
  %empty = shl i32 1, %1                          ; [#uses=1 type=i32]
  %empty_100 = and i32 %0, %empty                 ; [#uses=1 type=i32]
  %empty_101 = icmp ne i32 %empty_100, 0          ; [#uses=1 type=i1]
  ret i1 %empty_101
}

; [#uses=1]
define weak i1 @_ssdm_op_BitSelect.i1.i2.i32(i2, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i2                     ; [#uses=1 type=i2]
  %empty_102 = shl i2 1, %empty                   ; [#uses=1 type=i2]
  %empty_103 = and i2 %0, %empty_102              ; [#uses=1 type=i2]
  %empty_104 = icmp ne i2 %empty_103, 0           ; [#uses=1 type=i1]
  ret i1 %empty_104
}

; [#uses=0]
declare i8 @_ssdm_op_BitConcatenate.i8.i1.i7(i1, i7) nounwind readnone

; [#uses=2]
define weak i32 @_ssdm_op_BitConcatenate.i32.i29.i3(i29, i3) nounwind readnone {
entry:
  %empty = zext i29 %0 to i32                     ; [#uses=1 type=i32]
  %empty_105 = zext i3 %1 to i32                  ; [#uses=1 type=i32]
  %empty_106 = shl i32 %empty, 3                  ; [#uses=1 type=i32]
  %empty_107 = or i32 %empty_106, %empty_105      ; [#uses=1 type=i32]
  ret i32 %empty_107
}

!opencl.kernels = !{!0, !7, !7, !13, !19, !21, !21, !27, !27, !27, !31, !31, !33}
!hls.encrypted.func = !{}
!llvm.map.gv = !{}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 1, i32 1}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"uchar*", metadata !"uchar*", metadata !"uchar*", metadata !"uchar*"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"a", metadata !"b", metadata !"c", metadata !"d"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !6}
!8 = metadata !{metadata !"kernel_arg_addr_space", i32 1}
!9 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!10 = metadata !{metadata !"kernel_arg_type", metadata !"uchar*"}
!11 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!12 = metadata !{metadata !"kernel_arg_name", metadata !"in"}
!13 = metadata !{null, metadata !14, metadata !15, metadata !16, metadata !17, metadata !18, metadata !6}
!14 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1}
!15 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!16 = metadata !{metadata !"kernel_arg_type", metadata !"uchar*", metadata !"uchar*"}
!17 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!18 = metadata !{metadata !"kernel_arg_name", metadata !"to", metadata !"from"}
!19 = metadata !{null, metadata !14, metadata !15, metadata !16, metadata !17, metadata !20, metadata !6}
!20 = metadata !{metadata !"kernel_arg_name", metadata !"a", metadata !"b"}
!21 = metadata !{null, metadata !22, metadata !23, metadata !24, metadata !25, metadata !26, metadata !6}
!22 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 0}
!23 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!24 = metadata !{metadata !"kernel_arg_type", metadata !"uchar*", metadata !"uchar*", metadata !"int"}
!25 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!26 = metadata !{metadata !"kernel_arg_name", metadata !"out", metadata !"a", metadata !"shift"}
!27 = metadata !{null, metadata !28, metadata !23, metadata !29, metadata !25, metadata !30, metadata !6}
!28 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 1}
!29 = metadata !{metadata !"kernel_arg_type", metadata !"uchar*", metadata !"uchar*", metadata !"uchar*"}
!30 = metadata !{metadata !"kernel_arg_name", metadata !"out", metadata !"a", metadata !"b"}
!31 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !32, metadata !6}
!32 = metadata !{metadata !"kernel_arg_name", metadata !"out", metadata !"out1", metadata !"a", metadata !"b"}
!33 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !34, metadata !6}
!34 = metadata !{metadata !"kernel_arg_name", metadata !"out", metadata !"base", metadata !"exp", metadata !"mod"}
!35 = metadata !{i32 786689, metadata !36, metadata !"in", null, i32 6, metadata !44, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!36 = metadata !{i32 786478, i32 0, metadata !37, metadata !"bigint_zero", metadata !"bigint_zero", metadata !"", metadata !37, i32 6, metadata !38, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !42, i32 6} ; [ DW_TAG_subprogram ]
!37 = metadata !{i32 786473, metadata !"../../bigint/bigint.c", metadata !"/home/linux/Documents/DLA/fw/hls", null} ; [ DW_TAG_file_type ]
!38 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !39, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!39 = metadata !{null, metadata !40}
!40 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !41} ; [ DW_TAG_pointer_type ]
!41 = metadata !{i32 786468, null, metadata !"unsigned char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ]
!42 = metadata !{metadata !43}
!43 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!44 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 2048, i64 8, i32 0, i32 0, metadata !41, metadata !45, i32 0, i32 0} ; [ DW_TAG_array_type ]
!45 = metadata !{metadata !46}
!46 = metadata !{i32 786465, i64 0, i64 255}      ; [ DW_TAG_subrange_type ]
!47 = metadata !{i32 6, i32 32, metadata !36, null}
!48 = metadata !{i32 8, i32 6, metadata !49, null}
!49 = metadata !{i32 786443, metadata !50, i32 8, i32 2, metadata !37, i32 1} ; [ DW_TAG_lexical_block ]
!50 = metadata !{i32 786443, metadata !36, i32 6, i32 40, metadata !37, i32 0} ; [ DW_TAG_lexical_block ]
!51 = metadata !{i32 8, i32 22, metadata !49, null}
!52 = metadata !{i32 10, i32 3, metadata !53, null}
!53 = metadata !{i32 786443, metadata !49, i32 8, i32 26, metadata !37, i32 2} ; [ DW_TAG_lexical_block ]
!54 = metadata !{i32 786688, metadata !50, metadata !"i", metadata !37, i32 7, metadata !55, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!55 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!56 = metadata !{i32 13, i32 1, metadata !50, null}
!57 = metadata !{i32 786689, metadata !58, metadata !"to", null, i32 41, metadata !44, i32 0, metadata !61} ; [ DW_TAG_arg_variable ]
!58 = metadata !{i32 786478, i32 0, metadata !37, metadata !"bigint_copy", metadata !"bigint_copy", metadata !"", metadata !37, i32 41, metadata !59, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !42, i32 41} ; [ DW_TAG_subprogram ]
!59 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !60, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!60 = metadata !{null, metadata !40, metadata !40}
!61 = metadata !{i32 239, i32 2, metadata !62, null}
!62 = metadata !{i32 786443, metadata !63, i32 222, i32 84, metadata !37, i32 48} ; [ DW_TAG_lexical_block ]
!63 = metadata !{i32 786478, i32 0, metadata !37, metadata !"bigint_sub", metadata !"bigint_sub", metadata !"", metadata !37, i32 222, metadata !64, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !42, i32 222} ; [ DW_TAG_subprogram ]
!64 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !65, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!65 = metadata !{null, metadata !40, metadata !40, metadata !40}
!66 = metadata !{i32 41, i32 32, metadata !58, metadata !61}
!67 = metadata !{i32 786689, metadata !63, metadata !"out", null, i32 222, metadata !44, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!68 = metadata !{i32 222, i32 31, metadata !63, null}
!69 = metadata !{i32 786689, metadata !63, metadata !"a", null, i32 222, metadata !44, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!70 = metadata !{i32 222, i32 55, metadata !63, null}
!71 = metadata !{i32 786689, metadata !63, metadata !"b", null, i32 222, metadata !44, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!72 = metadata !{i32 222, i32 77, metadata !63, null}
!73 = metadata !{i32 786688, metadata !62, metadata !"tempA", metadata !37, i32 228, metadata !44, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!74 = metadata !{i32 228, i32 16, metadata !62, null}
!75 = metadata !{i32 786688, metadata !62, metadata !"tempB", metadata !37, i32 229, metadata !44, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!76 = metadata !{i32 229, i32 16, metadata !62, null}
!77 = metadata !{i32 786688, metadata !62, metadata !"carry", metadata !37, i32 231, metadata !44, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!78 = metadata !{i32 231, i32 16, metadata !62, null}
!79 = metadata !{i32 233, i32 2, metadata !62, null}
!80 = metadata !{i32 234, i32 2, metadata !62, null}
!81 = metadata !{i32 236, i32 2, metadata !62, null}
!82 = metadata !{i32 786689, metadata !58, metadata !"to", null, i32 41, metadata !44, i32 0, metadata !83} ; [ DW_TAG_arg_variable ]
!83 = metadata !{i32 238, i32 2, metadata !62, null}
!84 = metadata !{i32 41, i32 32, metadata !58, metadata !83}
!85 = metadata !{i32 786689, metadata !58, metadata !"from", null, i32 41, metadata !44, i32 0, metadata !83} ; [ DW_TAG_arg_variable ]
!86 = metadata !{i32 41, i32 55, metadata !58, metadata !83}
!87 = metadata !{i32 44, i32 6, metadata !88, metadata !83}
!88 = metadata !{i32 786443, metadata !89, i32 44, i32 2, metadata !37, i32 11} ; [ DW_TAG_lexical_block ]
!89 = metadata !{i32 786443, metadata !58, i32 41, i32 65, metadata !37, i32 10} ; [ DW_TAG_lexical_block ]
!90 = metadata !{i32 44, i32 22, metadata !88, metadata !83}
!91 = metadata !{i32 45, i32 3, metadata !92, metadata !83}
!92 = metadata !{i32 786443, metadata !88, i32 44, i32 26, metadata !37, i32 12} ; [ DW_TAG_lexical_block ]
!93 = metadata !{i32 786688, metadata !89, metadata !"i", metadata !37, i32 42, metadata !55, i32 0, metadata !83} ; [ DW_TAG_auto_variable ]
!94 = metadata !{i32 44, i32 6, metadata !88, metadata !61}
!95 = metadata !{i32 44, i32 22, metadata !88, metadata !61}
!96 = metadata !{i32 45, i32 3, metadata !92, metadata !61}
!97 = metadata !{i32 786688, metadata !89, metadata !"i", metadata !37, i32 42, metadata !55, i32 0, metadata !61} ; [ DW_TAG_auto_variable ]
!98 = metadata !{i32 241, i32 2, metadata !62, null}
!99 = metadata !{i32 243, i32 5, metadata !62, null}
!100 = metadata !{i32 247, i32 6, metadata !101, null}
!101 = metadata !{i32 786443, metadata !62, i32 247, i32 2, metadata !37, i32 50} ; [ DW_TAG_lexical_block ]
!102 = metadata !{i32 248, i32 3, metadata !103, null}
!103 = metadata !{i32 786443, metadata !101, i32 247, i32 30, metadata !37, i32 51} ; [ DW_TAG_lexical_block ]
!104 = metadata !{i32 249, i32 4, metadata !105, null}
!105 = metadata !{i32 786443, metadata !103, i32 248, i32 26, metadata !37, i32 52} ; [ DW_TAG_lexical_block ]
!106 = metadata !{i32 250, i32 5, metadata !107, null}
!107 = metadata !{i32 786443, metadata !105, i32 249, i32 23, metadata !37, i32 53} ; [ DW_TAG_lexical_block ]
!108 = metadata !{i32 786688, metadata !62, metadata !"j", metadata !37, i32 226, metadata !55, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!109 = metadata !{i32 251, i32 5, metadata !107, null}
!110 = metadata !{i32 258, i32 5, metadata !107, null}
!111 = metadata !{i32 259, i32 5, metadata !107, null}
!112 = metadata !{i32 260, i32 5, metadata !107, null}
!113 = metadata !{i32 261, i32 6, metadata !114, null}
!114 = metadata !{i32 786443, metadata !107, i32 260, i32 20, metadata !37, i32 55} ; [ DW_TAG_lexical_block ]
!115 = metadata !{i32 262, i32 6, metadata !114, null}
!116 = metadata !{i32 263, i32 5, metadata !114, null}
!117 = metadata !{i32 265, i32 5, metadata !107, null}
!118 = metadata !{i32 266, i32 5, metadata !107, null}
!119 = metadata !{i32 268, i32 4, metadata !107, null}
!120 = metadata !{i32 269, i32 5, metadata !121, null}
!121 = metadata !{i32 786443, metadata !105, i32 268, i32 9, metadata !37, i32 56} ; [ DW_TAG_lexical_block ]
!122 = metadata !{i32 270, i32 5, metadata !121, null}
!123 = metadata !{i32 272, i32 3, metadata !105, null}
!124 = metadata !{i32 274, i32 3, metadata !103, null}
!125 = metadata !{i32 247, i32 26, metadata !101, null}
!126 = metadata !{i32 786688, metadata !62, metadata !"i", metadata !37, i32 225, metadata !55, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!127 = metadata !{i32 277, i32 1, metadata !62, null}
!128 = metadata !{i32 786689, metadata !129, metadata !"out", null, i32 139, metadata !44, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!129 = metadata !{i32 786478, i32 0, metadata !37, metadata !"bigint_rightshift", metadata !"bigint_rightshift", metadata !"", metadata !37, i32 139, metadata !130, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !42, i32 139} ; [ DW_TAG_subprogram ]
!130 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !131, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!131 = metadata !{null, metadata !40, metadata !40, metadata !55}
!132 = metadata !{i32 139, i32 38, metadata !129, null}
!133 = metadata !{i32 786689, metadata !129, metadata !"a", null, i32 139, metadata !44, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!134 = metadata !{i32 139, i32 62, metadata !129, null}
!135 = metadata !{i32 786689, metadata !36, metadata !"in", null, i32 6, metadata !44, i32 0, metadata !136} ; [ DW_TAG_arg_variable ]
!136 = metadata !{i32 155, i32 2, metadata !137, null}
!137 = metadata !{i32 786443, metadata !129, i32 139, i32 80, metadata !37, i32 34} ; [ DW_TAG_lexical_block ]
!138 = metadata !{i32 6, i32 32, metadata !36, metadata !136}
!139 = metadata !{i32 8, i32 6, metadata !49, metadata !136}
!140 = metadata !{i32 8, i32 22, metadata !49, metadata !136}
!141 = metadata !{i32 10, i32 3, metadata !53, metadata !136}
!142 = metadata !{i32 786688, metadata !50, metadata !"i", metadata !37, i32 7, metadata !55, i32 0, metadata !136} ; [ DW_TAG_auto_variable ]
!143 = metadata !{i32 157, i32 6, metadata !144, null}
!144 = metadata !{i32 786443, metadata !137, i32 157, i32 2, metadata !37, i32 36} ; [ DW_TAG_lexical_block ]
!145 = metadata !{i32 157, i32 22, metadata !144, null}
!146 = metadata !{i32 160, i32 4, metadata !147, null}
!147 = metadata !{i32 786443, metadata !148, i32 159, i32 26, metadata !37, i32 39} ; [ DW_TAG_lexical_block ]
!148 = metadata !{i32 786443, metadata !149, i32 159, i32 3, metadata !37, i32 38} ; [ DW_TAG_lexical_block ]
!149 = metadata !{i32 786443, metadata !144, i32 157, i32 26, metadata !37, i32 37} ; [ DW_TAG_lexical_block ]
!150 = metadata !{i32 159, i32 7, metadata !148, null}
!151 = metadata !{i32 786688, metadata !137, metadata !"b", metadata !37, i32 142, metadata !41, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!152 = metadata !{i32 163, i32 4, metadata !147, null}
!153 = metadata !{i32 164, i32 5, metadata !154, null}
!154 = metadata !{i32 786443, metadata !147, i32 163, i32 23, metadata !37, i32 40} ; [ DW_TAG_lexical_block ]
!155 = metadata !{i32 786688, metadata !137, metadata !"k", metadata !37, i32 140, metadata !55, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!156 = metadata !{i32 166, i32 5, metadata !154, null}
!157 = metadata !{i32 167, i32 4, metadata !154, null}
!158 = metadata !{i32 168, i32 5, metadata !159, null}
!159 = metadata !{i32 786443, metadata !147, i32 167, i32 9, metadata !37, i32 41} ; [ DW_TAG_lexical_block ]
!160 = metadata !{i32 171, i32 4, metadata !147, null}
!161 = metadata !{i32 786688, metadata !137, metadata !"outputBit", metadata !37, i32 152, metadata !55, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!162 = metadata !{i32 159, i32 22, metadata !148, null}
!163 = metadata !{i32 786688, metadata !137, metadata !"j", metadata !37, i32 140, metadata !55, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!164 = metadata !{i32 175, i32 3, metadata !149, null}
!165 = metadata !{i32 176, i32 4, metadata !166, null}
!166 = metadata !{i32 786443, metadata !149, i32 175, i32 21, metadata !37, i32 42} ; [ DW_TAG_lexical_block ]
!167 = metadata !{i32 786688, metadata !137, metadata !"i", metadata !37, i32 140, metadata !55, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!168 = metadata !{i32 180, i32 1, metadata !137, null}
!169 = metadata !{i32 786689, metadata !58, metadata !"to", null, i32 41, metadata !44, i32 0, metadata !170} ; [ DW_TAG_arg_variable ]
!170 = metadata !{i32 303, i32 2, metadata !171, null}
!171 = metadata !{i32 786443, metadata !172, i32 280, i32 84, metadata !37, i32 57} ; [ DW_TAG_lexical_block ]
!172 = metadata !{i32 786478, i32 0, metadata !37, metadata !"bigint_mul", metadata !"bigint_mul", metadata !"", metadata !37, i32 280, metadata !64, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !42, i32 280} ; [ DW_TAG_subprogram ]
!173 = metadata !{i32 41, i32 32, metadata !58, metadata !170}
!174 = metadata !{i32 786689, metadata !172, metadata !"out", null, i32 280, metadata !44, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!175 = metadata !{i32 280, i32 31, metadata !172, null}
!176 = metadata !{i32 786689, metadata !172, metadata !"a", null, i32 280, metadata !44, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!177 = metadata !{i32 280, i32 55, metadata !172, null}
!178 = metadata !{i32 786689, metadata !172, metadata !"b", null, i32 280, metadata !44, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!179 = metadata !{i32 280, i32 77, metadata !172, null}
!180 = metadata !{i32 786688, metadata !171, metadata !"sum", metadata !37, i32 287, metadata !44, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!181 = metadata !{i32 287, i32 16, metadata !171, null}
!182 = metadata !{i32 786688, metadata !171, metadata !"tempA", metadata !37, i32 289, metadata !44, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!183 = metadata !{i32 289, i32 16, metadata !171, null}
!184 = metadata !{i32 786688, metadata !171, metadata !"tempB", metadata !37, i32 290, metadata !44, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!185 = metadata !{i32 290, i32 16, metadata !171, null}
!186 = metadata !{i32 299, i32 2, metadata !171, null}
!187 = metadata !{i32 300, i32 2, metadata !171, null}
!188 = metadata !{i32 786689, metadata !58, metadata !"to", null, i32 41, metadata !44, i32 0, metadata !189} ; [ DW_TAG_arg_variable ]
!189 = metadata !{i32 302, i32 2, metadata !171, null}
!190 = metadata !{i32 41, i32 32, metadata !58, metadata !189}
!191 = metadata !{i32 786689, metadata !58, metadata !"from", null, i32 41, metadata !44, i32 0, metadata !189} ; [ DW_TAG_arg_variable ]
!192 = metadata !{i32 41, i32 55, metadata !58, metadata !189}
!193 = metadata !{i32 44, i32 6, metadata !88, metadata !189}
!194 = metadata !{i32 44, i32 22, metadata !88, metadata !189}
!195 = metadata !{i32 45, i32 3, metadata !92, metadata !189}
!196 = metadata !{i32 786688, metadata !89, metadata !"i", metadata !37, i32 42, metadata !55, i32 0, metadata !189} ; [ DW_TAG_auto_variable ]
!197 = metadata !{i32 44, i32 6, metadata !88, metadata !170}
!198 = metadata !{i32 44, i32 22, metadata !88, metadata !170}
!199 = metadata !{i32 45, i32 3, metadata !92, metadata !170}
!200 = metadata !{i32 786688, metadata !89, metadata !"i", metadata !37, i32 42, metadata !55, i32 0, metadata !170} ; [ DW_TAG_auto_variable ]
!201 = metadata !{i32 305, i32 2, metadata !171, null}
!202 = metadata !{i32 306, i32 2, metadata !171, null}
!203 = metadata !{i32 309, i32 6, metadata !204, null}
!204 = metadata !{i32 786443, metadata !171, i32 309, i32 2, metadata !37, i32 58} ; [ DW_TAG_lexical_block ]
!205 = metadata !{i32 309, i32 22, metadata !204, null}
!206 = metadata !{i32 312, i32 7, metadata !207, null}
!207 = metadata !{i32 786443, metadata !208, i32 312, i32 3, metadata !37, i32 60} ; [ DW_TAG_lexical_block ]
!208 = metadata !{i32 786443, metadata !204, i32 309, i32 26, metadata !37, i32 59} ; [ DW_TAG_lexical_block ]
!209 = metadata !{i32 786688, metadata !171, metadata !"k", metadata !37, i32 297, metadata !55, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!210 = metadata !{i32 315, i32 4, metadata !211, null}
!211 = metadata !{i32 786443, metadata !207, i32 312, i32 49, metadata !37, i32 61} ; [ DW_TAG_lexical_block ]
!212 = metadata !{i32 312, i32 40, metadata !207, null}
!213 = metadata !{i32 786688, metadata !171, metadata !"prod", metadata !37, i32 283, metadata !41, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!214 = metadata !{i32 316, i32 4, metadata !211, null}
!215 = metadata !{i32 786688, metadata !171, metadata !"carry", metadata !37, i32 284, metadata !41, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!216 = metadata !{i32 318, i32 4, metadata !211, null}
!217 = metadata !{i32 320, i32 5, metadata !218, null}
!218 = metadata !{i32 786443, metadata !211, i32 318, i32 40, metadata !37, i32 62} ; [ DW_TAG_lexical_block ]
!219 = metadata !{i32 321, i32 6, metadata !220, null}
!220 = metadata !{i32 786443, metadata !218, i32 320, i32 29, metadata !37, i32 63} ; [ DW_TAG_lexical_block ]
!221 = metadata !{i32 322, i32 5, metadata !220, null}
!222 = metadata !{i32 324, i32 5, metadata !218, null}
!223 = metadata !{i32 327, i32 5, metadata !218, null}
!224 = metadata !{i32 328, i32 6, metadata !225, null}
!225 = metadata !{i32 786443, metadata !218, i32 327, i32 32, metadata !37, i32 64} ; [ DW_TAG_lexical_block ]
!226 = metadata !{i32 329, i32 5, metadata !225, null}
!227 = metadata !{i32 331, i32 5, metadata !218, null}
!228 = metadata !{i32 332, i32 4, metadata !218, null}
!229 = metadata !{i32 786688, metadata !171, metadata !"j", metadata !37, i32 294, metadata !55, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!230 = metadata !{i32 337, i32 3, metadata !208, null}
!231 = metadata !{i32 786688, metadata !171, metadata !"i", metadata !37, i32 293, metadata !55, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!232 = metadata !{i32 340, i32 1, metadata !171, null}
!233 = metadata !{i32 786689, metadata !234, metadata !"out", null, i32 539, metadata !44, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!234 = metadata !{i32 786478, i32 0, metadata !37, metadata !"bigint_modexp", metadata !"bigint_modexp", metadata !"", metadata !37, i32 539, metadata !235, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !42, i32 539} ; [ DW_TAG_subprogram ]
!235 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !236, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!236 = metadata !{null, metadata !40, metadata !40, metadata !40, metadata !40}
!237 = metadata !{i32 539, i32 34, metadata !234, null}
!238 = metadata !{i32 786689, metadata !234, metadata !"base", null, i32 539, metadata !44, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!239 = metadata !{i32 539, i32 58, metadata !234, null}
!240 = metadata !{i32 786689, metadata !234, metadata !"exp", null, i32 539, metadata !44, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!241 = metadata !{i32 539, i32 83, metadata !234, null}
!242 = metadata !{i32 786689, metadata !234, metadata !"mod", null, i32 539, metadata !44, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!243 = metadata !{i32 539, i32 107, metadata !234, null}
!244 = metadata !{i32 786688, metadata !245, metadata !"zero", metadata !37, i32 542, metadata !44, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!245 = metadata !{i32 786443, metadata !234, i32 539, i32 116, metadata !37, i32 91} ; [ DW_TAG_lexical_block ]
!246 = metadata !{i32 542, i32 16, metadata !245, null}
!247 = metadata !{i32 786688, metadata !245, metadata !"one", metadata !37, i32 543, metadata !44, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!248 = metadata !{i32 543, i32 16, metadata !245, null}
!249 = metadata !{i32 786688, metadata !245, metadata !"two", metadata !37, i32 544, metadata !44, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!250 = metadata !{i32 544, i32 16, metadata !245, null}
!251 = metadata !{i32 786688, metadata !245, metadata !"temp", metadata !37, i32 546, metadata !44, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!252 = metadata !{i32 546, i32 16, metadata !245, null}
!253 = metadata !{i32 786688, metadata !245, metadata !"temp1", metadata !37, i32 547, metadata !44, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!254 = metadata !{i32 547, i32 16, metadata !245, null}
!255 = metadata !{i32 786688, metadata !245, metadata !"temp2", metadata !37, i32 548, metadata !44, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!256 = metadata !{i32 548, i32 16, metadata !245, null}
!257 = metadata !{i32 786688, metadata !245, metadata !"tempBase", metadata !37, i32 550, metadata !44, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!258 = metadata !{i32 550, i32 16, metadata !245, null}
!259 = metadata !{i32 786688, metadata !245, metadata !"tempExp", metadata !37, i32 551, metadata !44, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!260 = metadata !{i32 551, i32 16, metadata !245, null}
!261 = metadata !{i32 786688, metadata !245, metadata !"tempMod", metadata !37, i32 552, metadata !44, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!262 = metadata !{i32 552, i32 16, metadata !245, null}
!263 = metadata !{i32 554, i32 2, metadata !245, null}
!264 = metadata !{i32 555, i32 2, metadata !245, null}
!265 = metadata !{i32 556, i32 2, metadata !245, null}
!266 = metadata !{i32 558, i32 2, metadata !245, null}
!267 = metadata !{i32 559, i32 2, metadata !245, null}
!268 = metadata !{i32 560, i32 2, metadata !245, null}
!269 = metadata !{i32 562, i32 2, metadata !245, null}
!270 = metadata !{i32 563, i32 2, metadata !245, null}
!271 = metadata !{i32 564, i32 2, metadata !245, null}
!272 = metadata !{i32 566, i32 2, metadata !245, null}
!273 = metadata !{i32 567, i32 2, metadata !245, null}
!274 = metadata !{i32 568, i32 2, metadata !245, null}
!275 = metadata !{i32 570, i32 2, metadata !245, null}
!276 = metadata !{i32 571, i32 2, metadata !245, null}
!277 = metadata !{i32 572, i32 2, metadata !245, null}
!278 = metadata !{i32 574, i32 2, metadata !245, null}
!279 = metadata !{i32 575, i32 5, metadata !245, null}
!280 = metadata !{i32 786688, metadata !245, metadata !"result", metadata !37, i32 579, metadata !44, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!281 = metadata !{i32 579, i32 16, metadata !245, null}
!282 = metadata !{i32 580, i32 2, metadata !245, null}
!283 = metadata !{i32 582, i32 2, metadata !245, null}
!284 = metadata !{i32 583, i32 2, metadata !245, null}
!285 = metadata !{i32 585, i32 2, metadata !245, null}
!286 = metadata !{i32 586, i32 2, metadata !245, null}
!287 = metadata !{i32 588, i32 2, metadata !245, null}
!288 = metadata !{i32 588, i32 8, metadata !245, null}
!289 = metadata !{i32 589, i32 3, metadata !290, null}
!290 = metadata !{i32 786443, metadata !245, i32 588, i32 43, metadata !37, i32 93} ; [ DW_TAG_lexical_block ]
!291 = metadata !{i32 590, i32 3, metadata !290, null}
!292 = metadata !{i32 591, i32 3, metadata !290, null}
!293 = metadata !{i32 593, i32 6, metadata !290, null}
!294 = metadata !{i32 596, i32 4, metadata !295, null}
!295 = metadata !{i32 786443, metadata !290, i32 593, i32 38, metadata !37, i32 94} ; [ DW_TAG_lexical_block ]
!296 = metadata !{i32 598, i32 4, metadata !295, null}
!297 = metadata !{i32 600, i32 3, metadata !295, null}
!298 = metadata !{i32 602, i32 3, metadata !290, null}
!299 = metadata !{i32 603, i32 3, metadata !290, null}
!300 = metadata !{i32 605, i32 3, metadata !290, null}
!301 = metadata !{i32 608, i32 3, metadata !290, null}
!302 = metadata !{i32 609, i32 3, metadata !290, null}
!303 = metadata !{i32 610, i32 3, metadata !290, null}
!304 = metadata !{i32 612, i32 3, metadata !290, null}
!305 = metadata !{i32 613, i32 3, metadata !290, null}
!306 = metadata !{i32 614, i32 3, metadata !290, null}
!307 = metadata !{i32 615, i32 2, metadata !290, null}
!308 = metadata !{i32 617, i32 2, metadata !245, null}
!309 = metadata !{i32 619, i32 1, metadata !245, null}
!310 = metadata !{metadata !311}
!311 = metadata !{i32 0, i32 7, metadata !312}
!312 = metadata !{metadata !313}
!313 = metadata !{metadata !"a", metadata !314, metadata !"unsigned char", i32 0, i32 7}
!314 = metadata !{metadata !315}
!315 = metadata !{i32 0, i32 255, i32 1}
!316 = metadata !{metadata !317}
!317 = metadata !{i32 0, i32 7, metadata !318}
!318 = metadata !{metadata !319}
!319 = metadata !{metadata !"b", metadata !314, metadata !"unsigned char", i32 0, i32 7}
!320 = metadata !{metadata !321}
!321 = metadata !{i32 0, i32 7, metadata !322}
!322 = metadata !{metadata !323}
!323 = metadata !{metadata !"c", metadata !314, metadata !"unsigned char", i32 0, i32 7}
!324 = metadata !{metadata !325}
!325 = metadata !{i32 0, i32 7, metadata !326}
!326 = metadata !{metadata !327}
!327 = metadata !{metadata !"d", metadata !314, metadata !"unsigned char", i32 0, i32 7}
!328 = metadata !{i32 786689, metadata !329, metadata !"a", null, i32 7, metadata !44, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!329 = metadata !{i32 786478, i32 0, metadata !330, metadata !"bigint_math", metadata !"bigint_math", metadata !"", metadata !330, i32 7, metadata !235, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !42, i32 7} ; [ DW_TAG_subprogram ]
!330 = metadata !{i32 786473, metadata !"BigInt/solution1/main.c", metadata !"/home/linux/Documents/DLA/fw/hls", null} ; [ DW_TAG_file_type ]
!331 = metadata !{i32 7, i32 32, metadata !329, null}
!332 = metadata !{i32 786689, metadata !329, metadata !"b", null, i32 7, metadata !44, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!333 = metadata !{i32 7, i32 54, metadata !329, null}
!334 = metadata !{i32 786689, metadata !329, metadata !"c", null, i32 7, metadata !44, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!335 = metadata !{i32 7, i32 76, metadata !329, null}
!336 = metadata !{i32 786689, metadata !329, metadata !"d", null, i32 7, metadata !44, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!337 = metadata !{i32 7, i32 98, metadata !329, null}
!338 = metadata !{i32 8, i32 1, metadata !339, null}
!339 = metadata !{i32 786443, metadata !329, i32 7, i32 105, metadata !330, i32 0} ; [ DW_TAG_lexical_block ]
!340 = metadata !{i32 786689, metadata !36, metadata !"in", null, i32 6, metadata !44, i32 0, metadata !341} ; [ DW_TAG_arg_variable ]
!341 = metadata !{i32 14, i32 2, metadata !339, null}
!342 = metadata !{i32 6, i32 32, metadata !36, metadata !341}
!343 = metadata !{i32 8, i32 6, metadata !49, metadata !341}
!344 = metadata !{i32 8, i32 22, metadata !49, metadata !341}
!345 = metadata !{i32 10, i32 3, metadata !53, metadata !341}
!346 = metadata !{i32 786688, metadata !50, metadata !"i", metadata !37, i32 7, metadata !55, i32 0, metadata !341} ; [ DW_TAG_auto_variable ]
!347 = metadata !{i32 15, i32 2, metadata !339, null}
!348 = metadata !{i32 16, i32 1, metadata !339, null}
!349 = metadata !{i32 786689, metadata !350, metadata !"out", null, i32 392, metadata !44, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!350 = metadata !{i32 786478, i32 0, metadata !37, metadata !"bigint_longdiv", metadata !"bigint_longdiv", metadata !"", metadata !37, i32 392, metadata !235, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !42, i32 392} ; [ DW_TAG_subprogram ]
!351 = metadata !{i32 392, i32 35, metadata !350, null}
!352 = metadata !{i32 786689, metadata !350, metadata !"out1", null, i32 392, metadata !44, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!353 = metadata !{i32 392, i32 59, metadata !350, null}
!354 = metadata !{i32 786689, metadata !350, metadata !"a", null, i32 392, metadata !44, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!355 = metadata !{i32 392, i32 84, metadata !350, null}
!356 = metadata !{i32 786689, metadata !350, metadata !"b", null, i32 392, metadata !44, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!357 = metadata !{i32 392, i32 106, metadata !350, null}
!358 = metadata !{i32 786688, metadata !359, metadata !"tempA", metadata !37, i32 398, metadata !44, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!359 = metadata !{i32 786443, metadata !350, i32 392, i32 113, metadata !37, i32 69} ; [ DW_TAG_lexical_block ]
!360 = metadata !{i32 398, i32 16, metadata !359, null}
!361 = metadata !{i32 786688, metadata !359, metadata !"tempB", metadata !37, i32 399, metadata !44, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!362 = metadata !{i32 399, i32 16, metadata !359, null}
!363 = metadata !{i32 407, i32 2, metadata !359, null}
!364 = metadata !{i32 408, i32 2, metadata !359, null}
!365 = metadata !{i32 412, i32 2, metadata !359, null}
!366 = metadata !{i32 413, i32 2, metadata !359, null}
!367 = metadata !{i32 418, i32 2, metadata !359, null}
!368 = metadata !{i32 419, i32 2, metadata !359, null}
!369 = metadata !{i32 421, i32 5, metadata !359, null}
!370 = metadata !{i32 425, i32 5, metadata !359, null}
!371 = metadata !{i32 426, i32 3, metadata !372, null}
!372 = metadata !{i32 786443, metadata !359, i32 425, i32 37, metadata !37, i32 71} ; [ DW_TAG_lexical_block ]
!373 = metadata !{i32 427, i32 3, metadata !372, null}
!374 = metadata !{i32 428, i32 3, metadata !372, null}
!375 = metadata !{i32 432, i32 6, metadata !359, null}
!376 = metadata !{i32 433, i32 2, metadata !359, null}
!377 = metadata !{i32 434, i32 3, metadata !378, null}
!378 = metadata !{i32 786443, metadata !359, i32 433, i32 13, metadata !37, i32 72} ; [ DW_TAG_lexical_block ]
!379 = metadata !{i32 435, i32 3, metadata !378, null}
!380 = metadata !{i32 436, i32 3, metadata !378, null}
!381 = metadata !{i32 439, i32 2, metadata !359, null}
!382 = metadata !{i32 448, i32 6, metadata !383, null}
!383 = metadata !{i32 786443, metadata !359, i32 448, i32 2, metadata !37, i32 74} ; [ DW_TAG_lexical_block ]
!384 = metadata !{i32 440, i32 3, metadata !385, null}
!385 = metadata !{i32 786443, metadata !359, i32 439, i32 12, metadata !37, i32 73} ; [ DW_TAG_lexical_block ]
!386 = metadata !{i32 441, i32 3, metadata !385, null}
!387 = metadata !{i32 442, i32 3, metadata !385, null}
!388 = metadata !{i32 448, i32 22, metadata !383, null}
!389 = metadata !{i32 449, i32 3, metadata !390, null}
!390 = metadata !{i32 786443, metadata !383, i32 448, i32 26, metadata !37, i32 75} ; [ DW_TAG_lexical_block ]
!391 = metadata !{i32 450, i32 8, metadata !392, null}
!392 = metadata !{i32 786443, metadata !393, i32 450, i32 4, metadata !37, i32 77} ; [ DW_TAG_lexical_block ]
!393 = metadata !{i32 786443, metadata !390, i32 449, i32 16, metadata !37, i32 76} ; [ DW_TAG_lexical_block ]
!394 = metadata !{i32 450, i32 22, metadata !392, null}
!395 = metadata !{i32 451, i32 5, metadata !396, null}
!396 = metadata !{i32 786443, metadata !392, i32 450, i32 26, metadata !37, i32 78} ; [ DW_TAG_lexical_block ]
!397 = metadata !{i32 456, i32 5, metadata !396, null}
!398 = metadata !{i32 786688, metadata !359, metadata !"aMSB", metadata !37, i32 445, metadata !55, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!399 = metadata !{i32 786688, metadata !359, metadata !"j", metadata !37, i32 395, metadata !55, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!400 = metadata !{i32 460, i32 3, metadata !390, null}
!401 = metadata !{i32 465, i32 3, metadata !390, null}
!402 = metadata !{i32 786688, metadata !359, metadata !"i", metadata !37, i32 395, metadata !55, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!403 = metadata !{i32 471, i32 6, metadata !404, null}
!404 = metadata !{i32 786443, metadata !359, i32 471, i32 2, metadata !37, i32 81} ; [ DW_TAG_lexical_block ]
!405 = metadata !{i32 471, i32 22, metadata !404, null}
!406 = metadata !{i32 473, i32 3, metadata !407, null}
!407 = metadata !{i32 786443, metadata !404, i32 471, i32 26, metadata !37, i32 82} ; [ DW_TAG_lexical_block ]
!408 = metadata !{i32 474, i32 8, metadata !409, null}
!409 = metadata !{i32 786443, metadata !410, i32 474, i32 4, metadata !37, i32 84} ; [ DW_TAG_lexical_block ]
!410 = metadata !{i32 786443, metadata !407, i32 473, i32 16, metadata !37, i32 83} ; [ DW_TAG_lexical_block ]
!411 = metadata !{i32 474, i32 22, metadata !409, null}
!412 = metadata !{i32 475, i32 5, metadata !413, null}
!413 = metadata !{i32 786443, metadata !409, i32 474, i32 26, metadata !37, i32 85} ; [ DW_TAG_lexical_block ]
!414 = metadata !{i32 479, i32 6, metadata !413, null}
!415 = metadata !{i32 786688, metadata !359, metadata !"bMSB", metadata !37, i32 446, metadata !55, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!416 = metadata !{i32 482, i32 3, metadata !407, null}
!417 = metadata !{i32 485, i32 3, metadata !407, null}
!418 = metadata !{i32 786688, metadata !359, metadata !"temp", metadata !37, i32 489, metadata !44, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!419 = metadata !{i32 489, i32 16, metadata !359, null}
!420 = metadata !{i32 786688, metadata !359, metadata !"d", metadata !37, i32 492, metadata !44, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!421 = metadata !{i32 492, i32 16, metadata !359, null}
!422 = metadata !{i32 494, i32 2, metadata !359, null}
!423 = metadata !{i32 496, i32 2, metadata !359, null}
!424 = metadata !{i32 497, i32 2, metadata !359, null}
!425 = metadata !{i32 786688, metadata !359, metadata !"quot", metadata !37, i32 499, metadata !44, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!426 = metadata !{i32 499, i32 16, metadata !359, null}
!427 = metadata !{i32 500, i32 2, metadata !359, null}
!428 = metadata !{i32 786688, metadata !359, metadata !"bitPlace", metadata !37, i32 502, metadata !44, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!429 = metadata !{i32 502, i32 16, metadata !359, null}
!430 = metadata !{i32 503, i32 2, metadata !359, null}
!431 = metadata !{i32 505, i32 2, metadata !359, null}
!432 = metadata !{i32 507, i32 6, metadata !433, null}
!433 = metadata !{i32 786443, metadata !359, i32 507, i32 2, metadata !37, i32 88} ; [ DW_TAG_lexical_block ]
!434 = metadata !{i32 507, i32 30, metadata !433, null}
!435 = metadata !{i32 508, i32 7, metadata !436, null}
!436 = metadata !{i32 786443, metadata !433, i32 507, i32 34, metadata !37, i32 89} ; [ DW_TAG_lexical_block ]
!437 = metadata !{i32 510, i32 3, metadata !436, null}
!438 = metadata !{i32 512, i32 4, metadata !439, null}
!439 = metadata !{i32 786443, metadata !436, i32 510, i32 23, metadata !37, i32 90} ; [ DW_TAG_lexical_block ]
!440 = metadata !{i32 514, i32 4, metadata !439, null}
!441 = metadata !{i32 515, i32 4, metadata !439, null}
!442 = metadata !{i32 518, i32 3, metadata !439, null}
!443 = metadata !{i32 520, i32 3, metadata !436, null}
!444 = metadata !{i32 521, i32 3, metadata !436, null}
!445 = metadata !{i32 523, i32 3, metadata !436, null}
!446 = metadata !{i32 524, i32 3, metadata !436, null}
!447 = metadata !{i32 528, i32 2, metadata !359, null}
!448 = metadata !{i32 530, i32 2, metadata !359, null}
!449 = metadata !{i32 533, i32 1, metadata !359, null}
!450 = metadata !{i32 786689, metadata !451, metadata !"shift", metadata !37, i32 50331741, metadata !55, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!451 = metadata !{i32 786478, i32 0, metadata !37, metadata !"bigint_leftshift", metadata !"bigint_leftshift", metadata !"", metadata !37, i32 93, metadata !130, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !42, i32 93} ; [ DW_TAG_subprogram ]
!452 = metadata !{i32 93, i32 73, metadata !451, null}
!453 = metadata !{i32 786689, metadata !451, metadata !"out", null, i32 93, metadata !44, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!454 = metadata !{i32 93, i32 37, metadata !451, null}
!455 = metadata !{i32 786689, metadata !451, metadata !"a", null, i32 93, metadata !44, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!456 = metadata !{i32 93, i32 61, metadata !451, null}
!457 = metadata !{i32 101, i32 2, metadata !458, null}
!458 = metadata !{i32 786443, metadata !451, i32 93, i32 79, metadata !37, i32 25} ; [ DW_TAG_lexical_block ]
!459 = metadata !{i32 44, i32 6, metadata !88, metadata !460}
!460 = metadata !{i32 102, i32 3, metadata !461, null}
!461 = metadata !{i32 786443, metadata !458, i32 101, i32 16, metadata !37, i32 26} ; [ DW_TAG_lexical_block ]
!462 = metadata !{i32 44, i32 22, metadata !88, metadata !460}
!463 = metadata !{i32 45, i32 3, metadata !92, metadata !460}
!464 = metadata !{i32 786688, metadata !89, metadata !"i", metadata !37, i32 42, metadata !55, i32 0, metadata !460} ; [ DW_TAG_auto_variable ]
!465 = metadata !{i32 106, i32 21, metadata !458, null}
!466 = metadata !{i32 786688, metadata !458, metadata !"start", metadata !37, i32 106, metadata !55, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!467 = metadata !{i32 107, i32 26, metadata !458, null}
!468 = metadata !{i32 786688, metadata !458, metadata !"outputBit", metadata !37, i32 108, metadata !55, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!469 = metadata !{i32 114, i32 3, metadata !470, null}
!470 = metadata !{i32 786443, metadata !471, i32 113, i32 30, metadata !37, i32 28} ; [ DW_TAG_lexical_block ]
!471 = metadata !{i32 786443, metadata !458, i32 113, i32 2, metadata !37, i32 27} ; [ DW_TAG_lexical_block ]
!472 = metadata !{i32 786688, metadata !458, metadata !"bitStart", metadata !37, i32 107, metadata !55, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!473 = metadata !{i32 110, i32 2, metadata !458, null}
!474 = metadata !{i32 786688, metadata !458, metadata !"k", metadata !37, i32 94, metadata !55, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!475 = metadata !{i32 786689, metadata !36, metadata !"in", null, i32 6, metadata !44, i32 0, metadata !476} ; [ DW_TAG_arg_variable ]
!476 = metadata !{i32 111, i32 2, metadata !458, null}
!477 = metadata !{i32 6, i32 32, metadata !36, metadata !476}
!478 = metadata !{i32 8, i32 6, metadata !49, metadata !476}
!479 = metadata !{i32 8, i32 22, metadata !49, metadata !476}
!480 = metadata !{i32 10, i32 3, metadata !53, metadata !476}
!481 = metadata !{i32 786688, metadata !50, metadata !"i", metadata !37, i32 7, metadata !55, i32 0, metadata !476} ; [ DW_TAG_auto_variable ]
!482 = metadata !{i32 113, i32 6, metadata !471, null}
!483 = metadata !{i32 116, i32 4, metadata !484, null}
!484 = metadata !{i32 786443, metadata !485, i32 115, i32 25, metadata !37, i32 30} ; [ DW_TAG_lexical_block ]
!485 = metadata !{i32 786443, metadata !470, i32 115, i32 3, metadata !37, i32 29} ; [ DW_TAG_lexical_block ]
!486 = metadata !{i32 115, i32 7, metadata !485, null}
!487 = metadata !{i32 115, i32 21, metadata !485, null}
!488 = metadata !{i32 786688, metadata !458, metadata !"b", metadata !37, i32 96, metadata !41, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!489 = metadata !{i32 118, i32 4, metadata !484, null}
!490 = metadata !{i32 119, i32 5, metadata !491, null}
!491 = metadata !{i32 786443, metadata !484, i32 118, i32 22, metadata !37, i32 31} ; [ DW_TAG_lexical_block ]
!492 = metadata !{i32 121, i32 5, metadata !491, null}
!493 = metadata !{i32 122, i32 4, metadata !491, null}
!494 = metadata !{i32 123, i32 5, metadata !495, null}
!495 = metadata !{i32 786443, metadata !484, i32 122, i32 9, metadata !37, i32 32} ; [ DW_TAG_lexical_block ]
!496 = metadata !{i32 126, i32 4, metadata !484, null}
!497 = metadata !{i32 786688, metadata !458, metadata !"j", metadata !37, i32 94, metadata !55, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!498 = metadata !{i32 130, i32 3, metadata !470, null}
!499 = metadata !{i32 131, i32 4, metadata !500, null}
!500 = metadata !{i32 786443, metadata !470, i32 130, i32 21, metadata !37, i32 33} ; [ DW_TAG_lexical_block ]
!501 = metadata !{i32 113, i32 26, metadata !471, null}
!502 = metadata !{i32 786688, metadata !458, metadata !"i", metadata !37, i32 94, metadata !55, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!503 = metadata !{i32 136, i32 1, metadata !458, null}
!504 = metadata !{i32 786689, metadata !58, metadata !"to", null, i32 41, metadata !44, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!505 = metadata !{i32 41, i32 32, metadata !58, null}
!506 = metadata !{i32 786689, metadata !58, metadata !"from", null, i32 41, metadata !44, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!507 = metadata !{i32 41, i32 55, metadata !58, null}
!508 = metadata !{i32 44, i32 6, metadata !88, null}
!509 = metadata !{i32 44, i32 22, metadata !88, null}
!510 = metadata !{i32 45, i32 3, metadata !92, null}
!511 = metadata !{i32 786688, metadata !89, metadata !"i", metadata !37, i32 42, metadata !55, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!512 = metadata !{i32 49, i32 1, metadata !89, null}
!513 = metadata !{i32 786689, metadata !514, metadata !"a", null, i32 55, metadata !44, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!514 = metadata !{i32 786478, i32 0, metadata !37, metadata !"bigint_compare", metadata !"bigint_compare", metadata !"", metadata !37, i32 55, metadata !515, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !42, i32 55} ; [ DW_TAG_subprogram ]
!515 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !516, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!516 = metadata !{metadata !55, metadata !40, metadata !40}
!517 = metadata !{i32 55, i32 34, metadata !514, null}
!518 = metadata !{i32 786689, metadata !514, metadata !"b", null, i32 55, metadata !44, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!519 = metadata !{i32 55, i32 56, metadata !514, null}
!520 = metadata !{i32 786688, metadata !521, metadata !"state", metadata !37, i32 59, metadata !522, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!521 = metadata !{i32 786443, metadata !514, i32 55, i32 63, metadata !37, i32 13} ; [ DW_TAG_lexical_block ]
!522 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 8192, i64 32, i32 0, i32 0, metadata !55, metadata !45, i32 0, i32 0} ; [ DW_TAG_array_type ]
!523 = metadata !{i32 59, i32 6, metadata !521, null}
!524 = metadata !{i32 60, i32 6, metadata !525, null}
!525 = metadata !{i32 786443, metadata !521, i32 60, i32 2, metadata !37, i32 14} ; [ DW_TAG_lexical_block ]
!526 = metadata !{i32 60, i32 22, metadata !525, null}
!527 = metadata !{i32 61, i32 3, metadata !528, null}
!528 = metadata !{i32 786443, metadata !525, i32 60, i32 26, metadata !37, i32 15} ; [ DW_TAG_lexical_block ]
!529 = metadata !{i32 62, i32 4, metadata !530, null}
!530 = metadata !{i32 786443, metadata !528, i32 61, i32 18, metadata !37, i32 16} ; [ DW_TAG_lexical_block ]
!531 = metadata !{i32 63, i32 3, metadata !530, null}
!532 = metadata !{i32 63, i32 9, metadata !528, null}
!533 = metadata !{i32 64, i32 4, metadata !534, null}
!534 = metadata !{i32 786443, metadata !528, i32 63, i32 24, metadata !37, i32 17} ; [ DW_TAG_lexical_block ]
!535 = metadata !{i32 65, i32 3, metadata !534, null}
!536 = metadata !{i32 65, i32 9, metadata !528, null}
!537 = metadata !{i32 66, i32 4, metadata !538, null}
!538 = metadata !{i32 786443, metadata !528, i32 65, i32 25, metadata !37, i32 18} ; [ DW_TAG_lexical_block ]
!539 = metadata !{i32 67, i32 3, metadata !538, null}
!540 = metadata !{i32 786688, metadata !521, metadata !"i", metadata !37, i32 56, metadata !55, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!541 = metadata !{i32 70, i32 2, metadata !521, null}
!542 = metadata !{i32 74, i32 6, metadata !543, null}
!543 = metadata !{i32 786443, metadata !521, i32 74, i32 2, metadata !37, i32 20} ; [ DW_TAG_lexical_block ]
!544 = metadata !{i32 74, i32 22, metadata !543, null}
!545 = metadata !{i32 75, i32 4, metadata !546, null}
!546 = metadata !{i32 786443, metadata !543, i32 74, i32 26, metadata !37, i32 21} ; [ DW_TAG_lexical_block ]
!547 = metadata !{i32 79, i32 4, metadata !546, null}
!548 = metadata !{i32 83, i32 4, metadata !546, null}
!549 = metadata !{i32 90, i32 1, metadata !521, null}
!550 = metadata !{i32 786689, metadata !58, metadata !"to", null, i32 41, metadata !44, i32 0, metadata !551} ; [ DW_TAG_arg_variable ]
!551 = metadata !{i32 198, i32 2, metadata !552, null}
!552 = metadata !{i32 786443, metadata !553, i32 182, i32 84, metadata !37, i32 43} ; [ DW_TAG_lexical_block ]
!553 = metadata !{i32 786478, i32 0, metadata !37, metadata !"bigint_add", metadata !"bigint_add", metadata !"", metadata !37, i32 182, metadata !64, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !42, i32 182} ; [ DW_TAG_subprogram ]
!554 = metadata !{i32 41, i32 32, metadata !58, metadata !551}
!555 = metadata !{i32 786689, metadata !553, metadata !"out", null, i32 182, metadata !44, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!556 = metadata !{i32 182, i32 31, metadata !553, null}
!557 = metadata !{i32 786689, metadata !553, metadata !"a", null, i32 182, metadata !44, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!558 = metadata !{i32 182, i32 55, metadata !553, null}
!559 = metadata !{i32 786689, metadata !553, metadata !"b", null, i32 182, metadata !44, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!560 = metadata !{i32 182, i32 77, metadata !553, null}
!561 = metadata !{i32 786688, metadata !552, metadata !"tempA", metadata !37, i32 189, metadata !44, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!562 = metadata !{i32 189, i32 16, metadata !552, null}
!563 = metadata !{i32 786688, metadata !552, metadata !"tempB", metadata !37, i32 190, metadata !44, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!564 = metadata !{i32 190, i32 16, metadata !552, null}
!565 = metadata !{i32 193, i32 2, metadata !552, null}
!566 = metadata !{i32 194, i32 2, metadata !552, null}
!567 = metadata !{i32 786689, metadata !58, metadata !"to", null, i32 41, metadata !44, i32 0, metadata !568} ; [ DW_TAG_arg_variable ]
!568 = metadata !{i32 197, i32 2, metadata !552, null}
!569 = metadata !{i32 41, i32 32, metadata !58, metadata !568}
!570 = metadata !{i32 786689, metadata !58, metadata !"from", null, i32 41, metadata !44, i32 0, metadata !568} ; [ DW_TAG_arg_variable ]
!571 = metadata !{i32 41, i32 55, metadata !58, metadata !568}
!572 = metadata !{i32 44, i32 6, metadata !88, metadata !568}
!573 = metadata !{i32 44, i32 22, metadata !88, metadata !568}
!574 = metadata !{i32 45, i32 3, metadata !92, metadata !568}
!575 = metadata !{i32 786688, metadata !89, metadata !"i", metadata !37, i32 42, metadata !55, i32 0, metadata !568} ; [ DW_TAG_auto_variable ]
!576 = metadata !{i32 44, i32 6, metadata !88, metadata !551}
!577 = metadata !{i32 44, i32 22, metadata !88, metadata !551}
!578 = metadata !{i32 45, i32 3, metadata !92, metadata !551}
!579 = metadata !{i32 786688, metadata !89, metadata !"i", metadata !37, i32 42, metadata !55, i32 0, metadata !551} ; [ DW_TAG_auto_variable ]
!580 = metadata !{i32 200, i32 2, metadata !552, null}
!581 = metadata !{i32 202, i32 6, metadata !582, null}
!582 = metadata !{i32 786443, metadata !552, i32 202, i32 2, metadata !37, i32 44} ; [ DW_TAG_lexical_block ]
!583 = metadata !{i32 204, i32 3, metadata !584, null}
!584 = metadata !{i32 786443, metadata !582, i32 202, i32 30, metadata !37, i32 45} ; [ DW_TAG_lexical_block ]
!585 = metadata !{i32 786688, metadata !552, metadata !"sum", metadata !37, i32 184, metadata !41, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!586 = metadata !{i32 205, i32 3, metadata !584, null}
!587 = metadata !{i32 786688, metadata !552, metadata !"carry", metadata !37, i32 185, metadata !41, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!588 = metadata !{i32 208, i32 3, metadata !584, null}
!589 = metadata !{i32 209, i32 4, metadata !590, null}
!590 = metadata !{i32 786443, metadata !584, i32 208, i32 26, metadata !37, i32 46} ; [ DW_TAG_lexical_block ]
!591 = metadata !{i32 210, i32 3, metadata !590, null}
!592 = metadata !{i32 211, i32 3, metadata !584, null}
!593 = metadata !{i32 214, i32 3, metadata !584, null}
!594 = metadata !{i32 215, i32 4, metadata !595, null}
!595 = metadata !{i32 786443, metadata !584, i32 214, i32 30, metadata !37, i32 47} ; [ DW_TAG_lexical_block ]
!596 = metadata !{i32 216, i32 3, metadata !595, null}
!597 = metadata !{i32 217, i32 3, metadata !584, null}
!598 = metadata !{i32 786688, metadata !552, metadata !"i", metadata !37, i32 187, metadata !55, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!599 = metadata !{i32 202, i32 26, metadata !582, null}
!600 = metadata !{i32 219, i32 1, metadata !552, null}
