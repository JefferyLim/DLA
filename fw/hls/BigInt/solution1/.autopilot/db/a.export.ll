; ModuleID = '/home/linux/Documents/DLA/fw/hls/BigInt/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@zero = internal constant [256 x i8] zeroinitializer
@one = internal constant [256 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01"
@bigint_math_str = internal unnamed_addr constant [12 x i8] c"bigint_math\00"
@RAM_1P_str = internal unnamed_addr constant [7 x i8] c"RAM_1P\00"
@p_str2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str13 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str12 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str11 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str10 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str1 = private unnamed_addr constant [11 x i8] c"PERIPH_BUS\00", align 1
@p_str = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1

declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

declare i16 @llvm.part.select.i16(i16, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

define internal fastcc void @bigint_math_bigint_zero([256 x i8]* nocapture %in_r) {
  %empty = call i32 (...)* @_ssdm_op_SpecMemCore([256 x i8]* %in_r, [1 x i8]* @p_str10, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str10, i32 -1, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10)
  br label %1

; <label>:1                                       ; preds = %2, %0
  %i = phi i9 [ 0, %0 ], [ %i_1, %2 ]
  %exitcond = icmp eq i9 %i, -256
  %empty_7 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 256, i64 256, i64 256)
  %i_1 = add i9 %i, 1
  br i1 %exitcond, label %3, label %2

; <label>:2                                       ; preds = %1
  %tmp = zext i9 %i to i64
  %in_addr = getelementptr [256 x i8]* %in_r, i64 0, i64 %tmp
  store i8 0, i8* %in_addr, align 1
  br label %1

; <label>:3                                       ; preds = %1
  ret void
}

define internal fastcc void @bigint_math_bigint_sub([256 x i8]* nocapture %out_r, [256 x i8]* nocapture %a, [256 x i8]* nocapture %b) {
  %empty = call i32 (...)* @_ssdm_op_SpecMemCore([256 x i8]* %b, [1 x i8]* @p_str10, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str10, i32 -1, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10)
  %empty_8 = call i32 (...)* @_ssdm_op_SpecMemCore([256 x i8]* %a, [1 x i8]* @p_str13, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str13, i32 -1, [1 x i8]* @p_str13, [1 x i8]* @p_str13, [1 x i8]* @p_str13, [1 x i8]* @p_str13, [1 x i8]* @p_str13)
  %empty_9 = call i32 (...)* @_ssdm_op_SpecMemCore([256 x i8]* %out_r, [1 x i8]* @p_str10, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str10, i32 -1, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10)
  %tempA = alloca [256 x i8], align 16
  %tempB = alloca [256 x i8], align 16
  %carry = alloca [256 x i8], align 16
  call fastcc void @bigint_math_bigint_zero([256 x i8]* %tempA)
  call fastcc void @bigint_math_bigint_zero([256 x i8]* %tempB)
  call fastcc void @bigint_math_bigint_zero([256 x i8]* %carry)
  %empty_10 = call i32 (...)* @_ssdm_op_SpecMemCore([256 x i8]* %carry, [1 x i8]* @p_str10, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str10, i32 -1, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10)
  %empty_11 = call i32 (...)* @_ssdm_op_SpecMemCore([256 x i8]* %tempB, [1 x i8]* @p_str10, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str10, i32 -1, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10)
  %empty_12 = call i32 (...)* @_ssdm_op_SpecMemCore([256 x i8]* %tempA, [1 x i8]* @p_str10, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str10, i32 -1, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10)
  br label %1

; <label>:1                                       ; preds = %2, %0
  %i_i = phi i9 [ 0, %0 ], [ %i_3, %2 ]
  %exitcond_i = icmp eq i9 %i_i, -256
  %empty_13 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 256, i64 256, i64 256)
  %i_3 = add i9 %i_i, 1
  br i1 %exitcond_i, label %bigint_copy.exit, label %2

; <label>:2                                       ; preds = %1
  %tmp_i = zext i9 %i_i to i64
  %a_addr = getelementptr [256 x i8]* %a, i64 0, i64 %tmp_i
  %a_load = load i8* %a_addr, align 1
  %tempA_addr = getelementptr [256 x i8]* %tempA, i64 0, i64 %tmp_i
  store i8 %a_load, i8* %tempA_addr, align 1
  br label %1

bigint_copy.exit:                                 ; preds = %1, %3
  %i_i4 = phi i9 [ %i_4, %3 ], [ 0, %1 ]
  %exitcond_i5 = icmp eq i9 %i_i4, -256
  %empty_14 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 256, i64 256, i64 256)
  %i_4 = add i9 %i_i4, 1
  br i1 %exitcond_i5, label %bigint_copy.exit11, label %3

; <label>:3                                       ; preds = %bigint_copy.exit
  %tmp_i6 = zext i9 %i_i4 to i64
  %b_addr = getelementptr [256 x i8]* %b, i64 0, i64 %tmp_i6
  %b_load = load i8* %b_addr, align 1
  %tempB_addr_1 = getelementptr [256 x i8]* %tempB, i64 0, i64 %tmp_i6
  store i8 %b_load, i8* %tempB_addr_1, align 1
  br label %bigint_copy.exit

bigint_copy.exit11:                               ; preds = %bigint_copy.exit
  call fastcc void @bigint_math_bigint_zero([256 x i8]* %out_r)
  %tmp = call fastcc i2 @bigint_math_bigint_compare([256 x i8]* %tempA, [256 x i8]* %tempB)
  %tmp_2 = icmp eq i2 %tmp, -1
  br i1 %tmp_2, label %.loopexit, label %.preheader1

.preheader1:                                      ; preds = %bigint_copy.exit11, %._crit_edge
  %indvars_iv = phi i9 [ %indvars_iv_next, %._crit_edge ], [ 254, %bigint_copy.exit11 ]
  %i = phi i9 [ %i_2, %._crit_edge ], [ 255, %bigint_copy.exit11 ]
  %i_cast = sext i9 %i to i32
  %tmp_3 = call i1 @_ssdm_op_BitSelect.i1.i9.i32(i9 %i, i32 8)
  %empty_15 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 256, i64 256, i64 256)
  br i1 %tmp_3, label %.loopexit, label %4

; <label>:4                                       ; preds = %.preheader1
  %tmp_4 = zext i32 %i_cast to i64
  %tempA_addr_1 = getelementptr inbounds [256 x i8]* %tempA, i64 0, i64 %tmp_4
  %tempA_load = load i8* %tempA_addr_1, align 1
  %tempB_addr = getelementptr inbounds [256 x i8]* %tempB, i64 0, i64 %tmp_4
  %tempB_load = load i8* %tempB_addr, align 1
  %tmp_5 = icmp ult i8 %tempA_load, %tempB_load
  br i1 %tmp_5, label %5, label %._crit_edge

; <label>:5                                       ; preds = %4
  %tmp_6 = add i9 %i, -1
  %tmp_7 = sext i9 %tmp_6 to i64
  %tempA_addr_2 = getelementptr inbounds [256 x i8]* %tempA, i64 0, i64 %tmp_7
  %tempA_load_1 = load i8* %tempA_addr_2, align 1
  %tmp_8 = icmp eq i8 %tempA_load_1, 0
  br i1 %tmp_8, label %.preheader, label %10

.preheader:                                       ; preds = %5, %.preheader
  %j_2 = phi i32 [ %j, %.preheader ], [ %i_cast, %5 ]
  %j = add nsw i32 %j_2, -1
  %tmp_1 = sext i32 %j to i64
  %tempA_addr_3 = getelementptr inbounds [256 x i8]* %tempA, i64 0, i64 %tmp_1
  %tempA_load_2 = load i8* %tempA_addr_3, align 1
  %tmp_10 = icmp eq i8 %tempA_load_2, 0
  br i1 %tmp_10, label %.preheader, label %6

; <label>:6                                       ; preds = %.preheader
  %tmp_11 = add i8 %tempA_load_2, -1
  store i8 %tmp_11, i8* %tempA_addr_3, align 1
  br label %7

; <label>:7                                       ; preds = %8, %6
  %j_1 = phi i32 [ %j_2, %6 ], [ %j_3, %8 ]
  %indvars_iv_cast = sext i9 %indvars_iv to i32
  %exitcond = icmp eq i32 %j_1, %indvars_iv_cast
  br i1 %exitcond, label %9, label %8

; <label>:8                                       ; preds = %7
  %tmp_13 = sext i32 %j_1 to i64
  %tempA_addr_4 = getelementptr inbounds [256 x i8]* %tempA, i64 0, i64 %tmp_13
  store i8 -1, i8* %tempA_addr_4, align 1
  %j_3 = add nsw i32 %j_1, 1
  br label %7

; <label>:9                                       ; preds = %7
  store i8 -1, i8* %tempA_addr_2, align 1
  %carry_addr_1 = getelementptr inbounds [256 x i8]* %carry, i64 0, i64 %tmp_4
  %carry_load_1 = load i8* %carry_addr_1, align 1
  %tmp_12 = add i8 %carry_load_1, 1
  store i8 %tmp_12, i8* %carry_addr_1, align 1
  br label %11

; <label>:10                                      ; preds = %5
  %tmp_9 = add i8 %tempA_load_1, -1
  store i8 %tmp_9, i8* %tempA_addr_2, align 1
  %carry_addr = getelementptr inbounds [256 x i8]* %carry, i64 0, i64 %tmp_4
  %carry_load = load i8* %carry_addr, align 1
  %tmp_s = add i8 %carry_load, 1
  store i8 %tmp_s, i8* %carry_addr, align 1
  br label %11

; <label>:11                                      ; preds = %10, %9
  br label %._crit_edge

._crit_edge:                                      ; preds = %11, %4
  %tempA_load_3 = load i8* %tempA_addr_1, align 1
  %tmp_14 = sub i8 %tempA_load_3, %tempB_load
  %out_addr = getelementptr [256 x i8]* %out_r, i64 0, i64 %tmp_4
  store i8 %tmp_14, i8* %out_addr, align 1
  %i_2 = add i9 %i, -1
  %indvars_iv_next = add i9 %indvars_iv, -1
  br label %.preheader1

.loopexit:                                        ; preds = %.preheader1, %bigint_copy.exit11
  ret void
}

define internal fastcc void @bigint_math_bigint_rightshift([256 x i8]* nocapture %out_r, [256 x i8]* nocapture %a) {
  %empty = call i32 (...)* @_ssdm_op_SpecMemCore([256 x i8]* %a, [1 x i8]* @p_str10, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str10, i32 -1, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10)
  %empty_16 = call i32 (...)* @_ssdm_op_SpecMemCore([256 x i8]* %out_r, [1 x i8]* @p_str10, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str10, i32 -1, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10)
  br label %1

; <label>:1                                       ; preds = %2, %0
  %i_i = phi i9 [ 0, %0 ], [ %i_5, %2 ]
  %exitcond_i = icmp eq i9 %i_i, -256
  %empty_17 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 256, i64 256, i64 256)
  %i_5 = add i9 %i_i, 1
  br i1 %exitcond_i, label %bigint_zero.exit, label %2

; <label>:2                                       ; preds = %1
  %tmp_i = zext i9 %i_i to i64
  %out_addr_2 = getelementptr [256 x i8]* %out_r, i64 0, i64 %tmp_i
  store i8 0, i8* %out_addr_2, align 1
  br label %1

bigint_zero.exit:                                 ; preds = %1, %9
  %i = phi i9 [ %i_3, %9 ], [ 0, %1 ]
  %k = phi i32 [ %p_k_1, %9 ], [ 0, %1 ]
  %exitcond = icmp eq i9 %i, -256
  %empty_18 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 256, i64 256, i64 256)
  %i_3 = add i9 %i, 1
  br i1 %exitcond, label %.loopexit, label %3

; <label>:3                                       ; preds = %bigint_zero.exit
  %tmp = zext i9 %i to i64
  %a_addr = getelementptr [256 x i8]* %a, i64 0, i64 %tmp
  br label %4

; <label>:4                                       ; preds = %8, %3
  %j = phi i4 [ 7, %3 ], [ %j_4, %8 ]
  %k_1 = phi i32 [ %k, %3 ], [ %k_2, %8 ]
  %outputBit = phi i32 [ 6, %3 ], [ %outputBit_2, %8 ]
  %j_cast = sext i4 %j to i8
  %tmp_4 = call i1 @_ssdm_op_BitSelect.i1.i4.i32(i4 %j, i32 3)
  %empty_19 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8)
  br i1 %tmp_4, label %9, label %5

; <label>:5                                       ; preds = %4
  %a_load = load i8* %a_addr, align 1
  %tmp_15 = shl i8 1, %j_cast
  %tmp_16 = and i8 %tmp_15, %a_load
  %b = lshr i8 %tmp_16, %j_cast
  %tmp_17 = icmp eq i32 %outputBit, -1
  br i1 %tmp_17, label %6, label %7

; <label>:6                                       ; preds = %5
  %k_4 = add nsw i32 1, %k_1
  %tmp_5 = shl i8 %b, 7
  %tmp_18 = sext i32 %k_4 to i64
  %out_addr = getelementptr [256 x i8]* %out_r, i64 0, i64 %tmp_18
  %out_load = load i8* %out_addr, align 1
  %tmp_19 = add i8 %out_load, %tmp_5
  store i8 %tmp_19, i8* %out_addr, align 1
  br label %8

; <label>:7                                       ; preds = %5
  %tmp_6 = trunc i32 %outputBit to i8
  %tmp_20 = shl i8 %b, %tmp_6
  %tmp_21 = sext i32 %k_1 to i64
  %out_addr_1 = getelementptr [256 x i8]* %out_r, i64 0, i64 %tmp_21
  %out_load_1 = load i8* %out_addr_1, align 1
  %tmp_22 = add i8 %tmp_20, %out_load_1
  store i8 %tmp_22, i8* %out_addr_1, align 1
  br label %8

; <label>:8                                       ; preds = %7, %6
  %k_2 = phi i32 [ %k_4, %6 ], [ %k_1, %7 ]
  %outputBit_1 = phi i32 [ 7, %6 ], [ %outputBit, %7 ]
  %outputBit_2 = add nsw i32 %outputBit_1, -1
  %j_4 = add i4 %j, -1
  br label %4

; <label>:9                                       ; preds = %4
  %tmp_s = icmp eq i32 %outputBit, 0
  %k_3 = add nsw i32 %k_1, 1
  %p_k_1 = select i1 %tmp_s, i32 %k_3, i32 %k_1
  br label %bigint_zero.exit

.loopexit:                                        ; preds = %bigint_zero.exit
  ret void
}

define internal fastcc void @bigint_math_bigint_mul.1([256 x i8]* nocapture %out_r, [256 x i8]* nocapture %a) {
  %empty = call i32 (...)* @_ssdm_op_SpecMemCore([256 x i8]* %a, [1 x i8]* @p_str10, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str10, i32 -1, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10)
  %empty_20 = call i32 (...)* @_ssdm_op_SpecMemCore([256 x i8]* %out_r, [1 x i8]* @p_str10, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str10, i32 -1, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10)
  %sum = alloca [256 x i8], align 16
  %tempA = alloca [256 x i8], align 16
  %tempB = alloca [256 x i8], align 16
  call fastcc void @bigint_math_bigint_zero([256 x i8]* %tempA)
  call fastcc void @bigint_math_bigint_zero([256 x i8]* %tempB)
  %empty_21 = call i32 (...)* @_ssdm_op_SpecMemCore([256 x i8]* %sum, [1 x i8]* @p_str10, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str10, i32 -1, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10)
  %empty_22 = call i32 (...)* @_ssdm_op_SpecMemCore([256 x i8]* %tempB, [1 x i8]* @p_str10, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str10, i32 -1, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10)
  %empty_23 = call i32 (...)* @_ssdm_op_SpecMemCore([256 x i8]* %tempA, [1 x i8]* @p_str10, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str10, i32 -1, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10)
  br label %1

; <label>:1                                       ; preds = %2, %0
  %i_i = phi i9 [ 0, %0 ], [ %i_6, %2 ]
  %exitcond_i = icmp eq i9 %i_i, -256
  %empty_24 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 256, i64 256, i64 256)
  %i_6 = add i9 %i_i, 1
  br i1 %exitcond_i, label %bigint_copy.exit, label %2

; <label>:2                                       ; preds = %1
  %tmp_i = zext i9 %i_i to i64
  %b_addr = getelementptr [256 x i8]* %a, i64 0, i64 %tmp_i
  %b_load = load i8* %b_addr, align 1
  %tempA_addr = getelementptr [256 x i8]* %tempA, i64 0, i64 %tmp_i
  store i8 %b_load, i8* %tempA_addr, align 1
  br label %1

bigint_copy.exit:                                 ; preds = %1, %3
  %i_i1 = phi i9 [ %i_7, %3 ], [ 0, %1 ]
  %exitcond_i2 = icmp eq i9 %i_i1, -256
  %empty_25 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 256, i64 256, i64 256)
  %i_7 = add i9 %i_i1, 1
  br i1 %exitcond_i2, label %bigint_copy.exit8, label %3

; <label>:3                                       ; preds = %bigint_copy.exit
  %tmp_i3 = zext i9 %i_i1 to i64
  %b_addr_1 = getelementptr [256 x i8]* %a, i64 0, i64 %tmp_i3
  %b_load_1 = load i8* %b_addr_1, align 1
  %tempB_addr_2 = getelementptr [256 x i8]* %tempB, i64 0, i64 %tmp_i3
  store i8 %b_load_1, i8* %tempB_addr_2, align 1
  br label %bigint_copy.exit

bigint_copy.exit8:                                ; preds = %bigint_copy.exit
  call fastcc void @bigint_math_bigint_zero([256 x i8]* %out_r)
  call fastcc void @bigint_math_bigint_zero([256 x i8]* %sum)
  br label %4

; <label>:4                                       ; preds = %11, %bigint_copy.exit8
  %i = phi i9 [ 0, %bigint_copy.exit8 ], [ %i_4, %11 ]
  %exitcond1 = icmp eq i9 %i, -256
  %empty_26 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 256, i64 256, i64 256)
  %i_4 = add i9 %i, 1
  br i1 %exitcond1, label %12, label %5

; <label>:5                                       ; preds = %4
  %k = sub i9 255, %i
  %tmp = zext i9 %k to i64
  %tempB_addr = getelementptr inbounds [256 x i8]* %tempB, i64 0, i64 %tmp
  %tempB_load = load i8* %tempB_addr, align 1
  %tmp_cast = zext i8 %tempB_load to i16
  br label %6

; <label>:6                                       ; preds = %._crit_edge, %5
  %j = phi i9 [ 0, %5 ], [ %j_5, %._crit_edge ]
  %k5 = phi i9 [ %k, %5 ], [ %k_5, %._crit_edge ]
  %exitcond = icmp eq i9 %j, -256
  %empty_27 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 256, i64 256, i64 256)
  %j_5 = add i9 %j, 1
  br i1 %exitcond, label %11, label %7

; <label>:7                                       ; preds = %6
  %tmp_s = sub i9 255, %j
  %tmp_23 = zext i9 %tmp_s to i64
  %tempA_addr_5 = getelementptr inbounds [256 x i8]* %tempA, i64 0, i64 %tmp_23
  %tempA_load = load i8* %tempA_addr_5, align 1
  %prod = mul i8 %tempB_load, %tempA_load
  %tmp_31_cast = zext i8 %tempA_load to i16
  %tmp_24 = mul i16 %tmp_cast, %tmp_31_cast
  %carry = call i8 @_ssdm_op_PartSelect.i8.i16.i32.i32(i16 %tmp_24, i32 8, i32 15)
  %tmp_25 = or i8 %carry, %prod
  %tmp_26 = icmp eq i8 %tmp_25, 0
  br i1 %tmp_26, label %._crit_edge, label %8

; <label>:8                                       ; preds = %7
  %tmp_27 = sext i9 %k5 to i64
  %sum_addr = getelementptr inbounds [256 x i8]* %sum, i64 0, i64 %tmp_27
  %sum_load = load i8* %sum_addr, align 1
  %tmp_37_cast = zext i8 %sum_load to i9
  %tmp_38_cast = zext i8 %prod to i9
  %tmp_28 = add i9 %tmp_37_cast, %tmp_38_cast
  %tmp_7 = call i1 @_ssdm_op_BitSelect.i1.i9.i32(i9 %tmp_28, i32 8)
  br i1 %tmp_7, label %9, label %._crit_edge2

; <label>:9                                       ; preds = %8
  %tmp_29 = add i9 -1, %k5
  %tmp_30 = sext i9 %tmp_29 to i64
  %sum_addr_1 = getelementptr inbounds [256 x i8]* %sum, i64 0, i64 %tmp_30
  %sum_load_1 = load i8* %sum_addr_1, align 1
  %tmp_31 = add i8 1, %sum_load_1
  store i8 %tmp_31, i8* %sum_addr_1, align 1
  br label %._crit_edge2

._crit_edge2:                                     ; preds = %9, %8
  %tmp_32 = add i8 %sum_load, %prod
  store i8 %tmp_32, i8* %sum_addr, align 1
  %tmp_33 = add i9 %k5, -1
  %tmp_34 = sext i9 %tmp_33 to i64
  %sum_addr_2 = getelementptr inbounds [256 x i8]* %sum, i64 0, i64 %tmp_34
  %sum_load_2 = load i8* %sum_addr_2, align 1
  %tmp_49_cast = zext i8 %sum_load_2 to i9
  %tmp_50_cast = zext i8 %carry to i9
  %tmp_35 = add i9 %tmp_49_cast, %tmp_50_cast
  %tmp_8 = call i1 @_ssdm_op_BitSelect.i1.i9.i32(i9 %tmp_35, i32 8)
  br i1 %tmp_8, label %10, label %._crit_edge3

; <label>:10                                      ; preds = %._crit_edge2
  %k5_cast = sext i9 %k5 to i10
  %tmp_36 = add i10 -2, %k5_cast
  %tmp_37 = sext i10 %tmp_36 to i64
  %sum_addr_3 = getelementptr inbounds [256 x i8]* %sum, i64 0, i64 %tmp_37
  %sum_load_3 = load i8* %sum_addr_3, align 1
  %tmp_38 = add i8 1, %sum_load_3
  store i8 %tmp_38, i8* %sum_addr_3, align 1
  br label %._crit_edge3

._crit_edge3:                                     ; preds = %10, %._crit_edge2
  %tmp_39 = add i8 %sum_load_2, %carry
  store i8 %tmp_39, i8* %sum_addr_2, align 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge3, %7
  %k_5 = add i9 %k5, -1
  br label %6

; <label>:11                                      ; preds = %6
  call fastcc void @bigint_math_bigint_add.1([256 x i8]* %out_r, [256 x i8]* %sum)
  call fastcc void @bigint_math_bigint_zero([256 x i8]* %sum)
  br label %4

; <label>:12                                      ; preds = %4
  ret void
}

define internal fastcc void @bigint_math_bigint_mul([256 x i8]* nocapture %out_r, [256 x i8]* nocapture %a, [256 x i8]* nocapture %b) {
  %empty = call i32 (...)* @_ssdm_op_SpecMemCore([256 x i8]* %b, [1 x i8]* @p_str10, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str10, i32 -1, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10)
  %empty_28 = call i32 (...)* @_ssdm_op_SpecMemCore([256 x i8]* %a, [1 x i8]* @p_str10, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str10, i32 -1, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10)
  %empty_29 = call i32 (...)* @_ssdm_op_SpecMemCore([256 x i8]* %out_r, [1 x i8]* @p_str10, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str10, i32 -1, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10)
  %sum = alloca [256 x i8], align 16
  %tempA = alloca [256 x i8], align 16
  %tempB = alloca [256 x i8], align 16
  call fastcc void @bigint_math_bigint_zero([256 x i8]* %tempA)
  call fastcc void @bigint_math_bigint_zero([256 x i8]* %tempB)
  %empty_30 = call i32 (...)* @_ssdm_op_SpecMemCore([256 x i8]* %sum, [1 x i8]* @p_str10, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str10, i32 -1, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10)
  %empty_31 = call i32 (...)* @_ssdm_op_SpecMemCore([256 x i8]* %tempB, [1 x i8]* @p_str10, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str10, i32 -1, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10)
  %empty_32 = call i32 (...)* @_ssdm_op_SpecMemCore([256 x i8]* %tempA, [1 x i8]* @p_str10, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str10, i32 -1, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10)
  br label %1

; <label>:1                                       ; preds = %2, %0
  %i_i = phi i9 [ 0, %0 ], [ %i_8, %2 ]
  %exitcond_i = icmp eq i9 %i_i, -256
  %empty_33 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 256, i64 256, i64 256)
  %i_8 = add i9 %i_i, 1
  br i1 %exitcond_i, label %bigint_copy.exit, label %2

; <label>:2                                       ; preds = %1
  %tmp_i = zext i9 %i_i to i64
  %a_addr = getelementptr [256 x i8]* %a, i64 0, i64 %tmp_i
  %a_load = load i8* %a_addr, align 1
  %tempA_addr = getelementptr [256 x i8]* %tempA, i64 0, i64 %tmp_i
  store i8 %a_load, i8* %tempA_addr, align 1
  br label %1

bigint_copy.exit:                                 ; preds = %1, %3
  %i_i3 = phi i9 [ %i_9, %3 ], [ 0, %1 ]
  %exitcond_i4 = icmp eq i9 %i_i3, -256
  %empty_34 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 256, i64 256, i64 256)
  %i_9 = add i9 %i_i3, 1
  br i1 %exitcond_i4, label %bigint_copy.exit10, label %3

; <label>:3                                       ; preds = %bigint_copy.exit
  %tmp_i5 = zext i9 %i_i3 to i64
  %b_addr = getelementptr [256 x i8]* %b, i64 0, i64 %tmp_i5
  %b_load = load i8* %b_addr, align 1
  %tempB_addr_3 = getelementptr [256 x i8]* %tempB, i64 0, i64 %tmp_i5
  store i8 %b_load, i8* %tempB_addr_3, align 1
  br label %bigint_copy.exit

bigint_copy.exit10:                               ; preds = %bigint_copy.exit
  call fastcc void @bigint_math_bigint_zero([256 x i8]* %out_r)
  call fastcc void @bigint_math_bigint_zero([256 x i8]* %sum)
  br label %4

; <label>:4                                       ; preds = %11, %bigint_copy.exit10
  %i = phi i9 [ 0, %bigint_copy.exit10 ], [ %i_4, %11 ]
  %exitcond1 = icmp eq i9 %i, -256
  %empty_35 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 256, i64 256, i64 256)
  %i_4 = add i9 %i, 1
  br i1 %exitcond1, label %12, label %5

; <label>:5                                       ; preds = %4
  %k = sub i9 255, %i
  %tmp = zext i9 %k to i64
  %tempB_addr = getelementptr inbounds [256 x i8]* %tempB, i64 0, i64 %tmp
  %tempB_load = load i8* %tempB_addr, align 1
  %tmp_cast = zext i8 %tempB_load to i16
  br label %6

; <label>:6                                       ; preds = %._crit_edge, %5
  %j = phi i9 [ 0, %5 ], [ %j_5, %._crit_edge ]
  %k5 = phi i9 [ %k, %5 ], [ %k_5, %._crit_edge ]
  %exitcond = icmp eq i9 %j, -256
  %empty_36 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 256, i64 256, i64 256)
  %j_5 = add i9 %j, 1
  br i1 %exitcond, label %11, label %7

; <label>:7                                       ; preds = %6
  %tmp_31 = sub i9 255, %j
  %tmp_32 = zext i9 %tmp_31 to i64
  %tempA_addr_6 = getelementptr inbounds [256 x i8]* %tempA, i64 0, i64 %tmp_32
  %tempA_load = load i8* %tempA_addr_6, align 1
  %prod = mul i8 %tempB_load, %tempA_load
  %tmp_33_cast = zext i8 %tempA_load to i16
  %tmp_34 = mul i16 %tmp_cast, %tmp_33_cast
  %carry = call i8 @_ssdm_op_PartSelect.i8.i16.i32.i32(i16 %tmp_34, i32 8, i32 15)
  %tmp_36 = or i8 %carry, %prod
  %tmp_37 = icmp eq i8 %tmp_36, 0
  br i1 %tmp_37, label %._crit_edge, label %8

; <label>:8                                       ; preds = %7
  %tmp_38 = sext i9 %k5 to i64
  %sum_addr_1 = getelementptr inbounds [256 x i8]* %sum, i64 0, i64 %tmp_38
  %sum_load = load i8* %sum_addr_1, align 1
  %tmp_39_cast = zext i8 %sum_load to i9
  %tmp_40_cast = zext i8 %prod to i9
  %tmp_40 = add i9 %tmp_39_cast, %tmp_40_cast
  %tmp_9 = call i1 @_ssdm_op_BitSelect.i1.i9.i32(i9 %tmp_40, i32 8)
  br i1 %tmp_9, label %9, label %._crit_edge2

; <label>:9                                       ; preds = %8
  %tmp_41 = add i9 -1, %k5
  %tmp_42 = sext i9 %tmp_41 to i64
  %sum_addr_2 = getelementptr inbounds [256 x i8]* %sum, i64 0, i64 %tmp_42
  %sum_load_1 = load i8* %sum_addr_2, align 1
  %tmp_43 = add i8 1, %sum_load_1
  store i8 %tmp_43, i8* %sum_addr_2, align 1
  br label %._crit_edge2

._crit_edge2:                                     ; preds = %9, %8
  %tmp_44 = add i8 %sum_load, %prod
  store i8 %tmp_44, i8* %sum_addr_1, align 1
  %tmp_45 = add i9 %k5, -1
  %tmp_s = sext i9 %tmp_45 to i64
  %sum_addr_3 = getelementptr inbounds [256 x i8]* %sum, i64 0, i64 %tmp_s
  %sum_load_2 = load i8* %sum_addr_3, align 1
  %tmp_51_cast = zext i8 %sum_load_2 to i9
  %tmp_52_cast = zext i8 %carry to i9
  %tmp_46 = add i9 %tmp_51_cast, %tmp_52_cast
  %tmp_10 = call i1 @_ssdm_op_BitSelect.i1.i9.i32(i9 %tmp_46, i32 8)
  br i1 %tmp_10, label %10, label %._crit_edge3

; <label>:10                                      ; preds = %._crit_edge2
  %k5_cast = sext i9 %k5 to i10
  %tmp_47 = add i10 -2, %k5_cast
  %tmp_48 = sext i10 %tmp_47 to i64
  %sum_addr = getelementptr inbounds [256 x i8]* %sum, i64 0, i64 %tmp_48
  %sum_load_3 = load i8* %sum_addr, align 1
  %tmp_49 = add i8 1, %sum_load_3
  store i8 %tmp_49, i8* %sum_addr, align 1
  br label %._crit_edge3

._crit_edge3:                                     ; preds = %10, %._crit_edge2
  %tmp_50 = add i8 %sum_load_2, %carry
  store i8 %tmp_50, i8* %sum_addr_3, align 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge3, %7
  %k_5 = add i9 %k5, -1
  br label %6

; <label>:11                                      ; preds = %6
  call fastcc void @bigint_math_bigint_add.1([256 x i8]* %out_r, [256 x i8]* %sum)
  call fastcc void @bigint_math_bigint_zero([256 x i8]* %sum)
  br label %4

; <label>:12                                      ; preds = %4
  ret void
}

define internal fastcc void @bigint_math_bigint_modexp([256 x i8]* nocapture %out_r, [256 x i8]* nocapture %base_r, [256 x i8]* nocapture %exp, [256 x i8]* nocapture %mod_r) {
  %empty = call i32 (...)* @_ssdm_op_SpecMemCore([256 x i8]* %mod_r, [1 x i8]* @p_str13, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str13, i32 -1, [1 x i8]* @p_str13, [1 x i8]* @p_str13, [1 x i8]* @p_str13, [1 x i8]* @p_str13, [1 x i8]* @p_str13)
  %empty_37 = call i32 (...)* @_ssdm_op_SpecMemCore([256 x i8]* %exp, [1 x i8]* @p_str12, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str12, i32 -1, [1 x i8]* @p_str12, [1 x i8]* @p_str12, [1 x i8]* @p_str12, [1 x i8]* @p_str12, [1 x i8]* @p_str12)
  %empty_38 = call i32 (...)* @_ssdm_op_SpecMemCore([256 x i8]* %base_r, [1 x i8]* @p_str11, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str11, i32 -1, [1 x i8]* @p_str11, [1 x i8]* @p_str11, [1 x i8]* @p_str11, [1 x i8]* @p_str11, [1 x i8]* @p_str11)
  %empty_39 = call i32 (...)* @_ssdm_op_SpecMemCore([256 x i8]* %out_r, [1 x i8]* @p_str10, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str10, i32 -1, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10)
  %zero_1 = alloca [256 x i8], align 16
  %one_1 = alloca [256 x i8], align 16
  %two = alloca [256 x i8], align 16
  %temp = alloca [256 x i8], align 16
  %temp1 = alloca [256 x i8], align 16
  %temp2 = alloca [256 x i8], align 16
  %tempBase = alloca [256 x i8], align 16
  %tempExp = alloca [256 x i8], align 16
  %tempMod = alloca [256 x i8], align 16
  %result = alloca [256 x i8], align 16
  call fastcc void @bigint_math_bigint_zero([256 x i8]* %zero_1)
  call fastcc void @bigint_math_bigint_zero([256 x i8]* %one_1)
  call fastcc void @bigint_math_bigint_zero([256 x i8]* %two)
  call fastcc void @bigint_math_bigint_zero([256 x i8]* %temp)
  call fastcc void @bigint_math_bigint_zero([256 x i8]* %temp1)
  call fastcc void @bigint_math_bigint_zero([256 x i8]* %temp2)
  call fastcc void @bigint_math_bigint_zero([256 x i8]* %tempBase)
  call fastcc void @bigint_math_bigint_zero([256 x i8]* %tempExp)
  call fastcc void @bigint_math_bigint_zero([256 x i8]* %tempMod)
  call fastcc void @bigint_math_bigint_copy([256 x i8]* %tempBase, [256 x i8]* %base_r)
  call fastcc void @bigint_math_bigint_copy([256 x i8]* %tempExp, [256 x i8]* %exp)
  call fastcc void @bigint_math_bigint_copy([256 x i8]* %tempMod, [256 x i8]* %mod_r)
  %temp_addr = getelementptr inbounds [256 x i8]* %temp, i64 0, i64 255
  store i8 1, i8* %temp_addr, align 1
  %one_addr = getelementptr inbounds [256 x i8]* %one_1, i64 0, i64 255
  store i8 1, i8* %one_addr, align 1
  %two_addr = getelementptr inbounds [256 x i8]* %two, i64 0, i64 255
  store i8 2, i8* %two_addr, align 1
  call fastcc void @bigint_math_bigint_zero([256 x i8]* %out_r)
  %tmp = call fastcc i2 @bigint_math_bigint_compare([256 x i8]* %mod_r, [256 x i8]* %one_1)
  %tmp_s = icmp eq i2 %tmp, 0
  %empty_40 = call i32 (...)* @_ssdm_op_SpecMemCore([256 x i8]* %zero_1, [1 x i8]* @p_str10, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str10, i32 -1, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10)
  %empty_41 = call i32 (...)* @_ssdm_op_SpecMemCore([256 x i8]* %temp2, [1 x i8]* @p_str10, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str10, i32 -1, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10)
  %empty_42 = call i32 (...)* @_ssdm_op_SpecMemCore([256 x i8]* %temp1, [1 x i8]* @p_str10, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str10, i32 -1, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10)
  %empty_43 = call i32 (...)* @_ssdm_op_SpecMemCore([256 x i8]* %temp, [1 x i8]* @p_str10, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str10, i32 -1, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10)
  %empty_44 = call i32 (...)* @_ssdm_op_SpecMemCore([256 x i8]* %result, [1 x i8]* @p_str10, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str10, i32 -1, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10)
  %empty_45 = call i32 (...)* @_ssdm_op_SpecMemCore([256 x i8]* %tempMod, [1 x i8]* @p_str10, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str10, i32 -1, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10)
  %empty_46 = call i32 (...)* @_ssdm_op_SpecMemCore([256 x i8]* %tempExp, [1 x i8]* @p_str10, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str10, i32 -1, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10)
  %empty_47 = call i32 (...)* @_ssdm_op_SpecMemCore([256 x i8]* %tempBase, [1 x i8]* @p_str10, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str10, i32 -1, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10)
  %empty_48 = call i32 (...)* @_ssdm_op_SpecMemCore([256 x i8]* %two, [1 x i8]* @p_str10, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str10, i32 -1, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10)
  %empty_49 = call i32 (...)* @_ssdm_op_SpecMemCore([256 x i8]* %one_1, [1 x i8]* @p_str10, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str10, i32 -1, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10)
  br i1 %tmp_s, label %._crit_edge, label %1

; <label>:1                                       ; preds = %0
  call fastcc void @bigint_math_bigint_zero([256 x i8]* %result)
  %out_addr = getelementptr [256 x i8]* %out_r, i64 0, i64 255
  store i8 1, i8* %out_addr, align 1
  %result_addr = getelementptr inbounds [256 x i8]* %result, i64 0, i64 255
  store i8 1, i8* %result_addr, align 1
  call fastcc void @bigint_math_bigint_longdiv([256 x i8]* %temp, [256 x i8]* %temp1, [256 x i8]* %tempBase, [256 x i8]* %tempMod)
  call fastcc void @bigint_math_bigint_copy([256 x i8]* %tempBase, [256 x i8]* %temp1)
  br label %2

; <label>:2                                       ; preds = %._crit_edge1, %1
  %tmp_1 = call fastcc i2 @bigint_math_bigint_compare([256 x i8]* %tempExp, [256 x i8]* %zero_1)
  %tmp_51 = icmp eq i2 %tmp_1, 1
  br i1 %tmp_51, label %3, label %5

; <label>:3                                       ; preds = %2
  call fastcc void @bigint_math_bigint_zero([256 x i8]* %temp)
  call fastcc void @bigint_math_bigint_zero([256 x i8]* %temp1)
  call fastcc void @bigint_math_bigint_longdiv([256 x i8]* %temp, [256 x i8]* %temp1, [256 x i8]* %tempExp, [256 x i8]* %two)
  %tmp_2 = call fastcc i2 @bigint_math_bigint_compare([256 x i8]* %temp1, [256 x i8]* %one_1)
  %tmp_52 = icmp eq i2 %tmp_2, 0
  br i1 %tmp_52, label %4, label %._crit_edge1

; <label>:4                                       ; preds = %3
  call fastcc void @bigint_math_bigint_mul([256 x i8]* %temp, [256 x i8]* %result, [256 x i8]* %tempBase)
  call fastcc void @bigint_math_bigint_zero([256 x i8]* %temp1)
  call fastcc void @bigint_math_bigint_longdiv([256 x i8]* %temp1, [256 x i8]* %result, [256 x i8]* %temp, [256 x i8]* %tempMod)
  br label %._crit_edge1

._crit_edge1:                                     ; preds = %4, %3
  call fastcc void @bigint_math_bigint_rightshift([256 x i8]* %temp, [256 x i8]* %tempExp)
  call fastcc void @bigint_math_bigint_copy([256 x i8]* %tempExp, [256 x i8]* %temp)
  call fastcc void @bigint_math_bigint_zero([256 x i8]* %temp)
  call fastcc void @bigint_math_bigint_mul.1([256 x i8]* %temp, [256 x i8]* %tempBase)
  call fastcc void @bigint_math_bigint_zero([256 x i8]* %temp1)
  call fastcc void @bigint_math_bigint_zero([256 x i8]* %temp2)
  call fastcc void @bigint_math_bigint_longdiv([256 x i8]* %temp1, [256 x i8]* %tempBase, [256 x i8]* %temp, [256 x i8]* %tempMod)
  call fastcc void @bigint_math_bigint_zero([256 x i8]* %zero_1)
  store i8 1, i8* %one_addr, align 1
  store i8 2, i8* %two_addr, align 1
  br label %2

; <label>:5                                       ; preds = %2
  call fastcc void @bigint_math_bigint_copy([256 x i8]* %out_r, [256 x i8]* %result)
  br label %._crit_edge

._crit_edge:                                      ; preds = %5, %0
  ret void
}

define void @bigint_math([256 x i8]* %a, [256 x i8]* %b, [256 x i8]* %c, [256 x i8]* %d) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap([256 x i8]* %a) nounwind, !map !35
  call void (...)* @_ssdm_op_SpecBitsMap([256 x i8]* %b) nounwind, !map !41
  call void (...)* @_ssdm_op_SpecBitsMap([256 x i8]* %c) nounwind, !map !45
  call void (...)* @_ssdm_op_SpecBitsMap([256 x i8]* %d) nounwind, !map !49
  call void (...)* @_ssdm_op_SpecTopModule([12 x i8]* @bigint_math_str) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [10 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [11 x i8]* @p_str1, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2) nounwind
  %empty = call i32 (...)* @_ssdm_op_SpecMemCore([256 x i8]* %a, [1 x i8]* @p_str10, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str10, i32 -1, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10) nounwind
  call void (...)* @_ssdm_op_SpecInterface([256 x i8]* %a, [10 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [11 x i8]* @p_str1, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2) nounwind
  %empty_50 = call i32 (...)* @_ssdm_op_SpecMemCore([256 x i8]* %b, [1 x i8]* @p_str11, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str11, i32 -1, [1 x i8]* @p_str11, [1 x i8]* @p_str11, [1 x i8]* @p_str11, [1 x i8]* @p_str11, [1 x i8]* @p_str11) nounwind
  call void (...)* @_ssdm_op_SpecInterface([256 x i8]* %b, [10 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [11 x i8]* @p_str1, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2) nounwind
  %empty_51 = call i32 (...)* @_ssdm_op_SpecMemCore([256 x i8]* %c, [1 x i8]* @p_str12, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str12, i32 -1, [1 x i8]* @p_str12, [1 x i8]* @p_str12, [1 x i8]* @p_str12, [1 x i8]* @p_str12, [1 x i8]* @p_str12) nounwind
  call void (...)* @_ssdm_op_SpecInterface([256 x i8]* %c, [10 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [11 x i8]* @p_str1, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2) nounwind
  %empty_52 = call i32 (...)* @_ssdm_op_SpecMemCore([256 x i8]* %d, [1 x i8]* @p_str13, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str13, i32 -1, [1 x i8]* @p_str13, [1 x i8]* @p_str13, [1 x i8]* @p_str13, [1 x i8]* @p_str13, [1 x i8]* @p_str13) nounwind
  call void (...)* @_ssdm_op_SpecInterface([256 x i8]* %d, [10 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [11 x i8]* @p_str1, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2) nounwind
  br label %1

; <label>:1                                       ; preds = %2, %0
  %i_i = phi i9 [ 0, %0 ], [ %i, %2 ]
  %exitcond_i = icmp eq i9 %i_i, -256
  %empty_53 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 256, i64 256, i64 256) nounwind
  %i = add i9 %i_i, 1
  br i1 %exitcond_i, label %bigint_zero.exit, label %2

; <label>:2                                       ; preds = %1
  %tmp_i = zext i9 %i_i to i64
  %a_addr = getelementptr [256 x i8]* %a, i64 0, i64 %tmp_i
  store i8 0, i8* %a_addr, align 1
  br label %1

bigint_zero.exit:                                 ; preds = %1
  call fastcc void @bigint_math_bigint_modexp([256 x i8]* %a, [256 x i8]* %b, [256 x i8]* %c, [256 x i8]* %d) nounwind
  ret void
}

define internal fastcc void @bigint_math_bigint_longdiv([256 x i8]* nocapture %out_r, [256 x i8]* nocapture %out1, [256 x i8]* nocapture %a, [256 x i8]* nocapture %b) {
  %empty = call i32 (...)* @_ssdm_op_SpecMemCore([256 x i8]* @one, [1 x i8]* @p_str10, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str10, i32 -1, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10)
  %empty_54 = call i32 (...)* @_ssdm_op_SpecMemCore([256 x i8]* %a, [1 x i8]* @p_str13, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str13, i32 -1, [1 x i8]* @p_str13, [1 x i8]* @p_str13, [1 x i8]* @p_str13, [1 x i8]* @p_str13, [1 x i8]* @p_str13)
  %empty_55 = call i32 (...)* @_ssdm_op_SpecMemCore([256 x i8]* %b, [1 x i8]* @p_str13, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str13, i32 -1, [1 x i8]* @p_str13, [1 x i8]* @p_str13, [1 x i8]* @p_str13, [1 x i8]* @p_str13, [1 x i8]* @p_str13)
  %empty_56 = call i32 (...)* @_ssdm_op_SpecMemCore([256 x i8]* @zero, [1 x i8]* @p_str13, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str13, i32 -1, [1 x i8]* @p_str13, [1 x i8]* @p_str13, [1 x i8]* @p_str13, [1 x i8]* @p_str13, [1 x i8]* @p_str13)
  %empty_57 = call i32 (...)* @_ssdm_op_SpecMemCore([256 x i8]* %out_r, [1 x i8]* @p_str10, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str10, i32 -1, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10)
  %empty_58 = call i32 (...)* @_ssdm_op_SpecMemCore([256 x i8]* %out1, [1 x i8]* @p_str10, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str10, i32 -1, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10)
  %tempA = alloca [256 x i8], align 16
  %tempB = alloca [256 x i8], align 16
  %temp = alloca [256 x i8], align 16
  %d = alloca [256 x i8], align 16
  %quot = alloca [256 x i8], align 16
  %bitPlace = alloca [256 x i8], align 16
  call fastcc void @bigint_math_bigint_zero([256 x i8]* %tempA)
  call fastcc void @bigint_math_bigint_zero([256 x i8]* %tempB)
  call fastcc void @bigint_math_bigint_copy([256 x i8]* %tempA, [256 x i8]* %a)
  call fastcc void @bigint_math_bigint_copy([256 x i8]* %tempB, [256 x i8]* %b)
  call fastcc void @bigint_math_bigint_zero([256 x i8]* %out_r)
  call fastcc void @bigint_math_bigint_zero([256 x i8]* %out1)
  %tmp = call fastcc i2 @bigint_math_bigint_compare([256 x i8]* %tempB, [256 x i8]* @zero)
  %tmp_s = icmp eq i2 %tmp, 0
  %empty_59 = call i32 (...)* @_ssdm_op_SpecMemCore([256 x i8]* %bitPlace, [1 x i8]* @p_str10, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str10, i32 -1, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10)
  %empty_60 = call i32 (...)* @_ssdm_op_SpecMemCore([256 x i8]* %quot, [1 x i8]* @p_str10, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str10, i32 -1, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10)
  %empty_61 = call i32 (...)* @_ssdm_op_SpecMemCore([256 x i8]* %temp, [1 x i8]* @p_str10, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str10, i32 -1, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10)
  %empty_62 = call i32 (...)* @_ssdm_op_SpecMemCore([256 x i8]* %d, [1 x i8]* @p_str10, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str10, i32 -1, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10)
  %empty_63 = call i32 (...)* @_ssdm_op_SpecMemCore([256 x i8]* %tempB, [1 x i8]* @p_str10, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str10, i32 -1, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10)
  %empty_64 = call i32 (...)* @_ssdm_op_SpecMemCore([256 x i8]* %tempA, [1 x i8]* @p_str10, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str10, i32 -1, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10)
  br i1 %tmp_s, label %._crit_edge, label %1

; <label>:1                                       ; preds = %0
  %tmp_3 = call fastcc i2 @bigint_math_bigint_compare([256 x i8]* %tempB, [256 x i8]* @one)
  %tmp_53 = icmp eq i2 %tmp_3, 0
  br i1 %tmp_53, label %2, label %3

; <label>:2                                       ; preds = %1
  call fastcc void @bigint_math_bigint_copy([256 x i8]* %out_r, [256 x i8]* %tempA)
  call fastcc void @bigint_math_bigint_copy([256 x i8]* %out1, [256 x i8]* @zero)
  br label %._crit_edge

; <label>:3                                       ; preds = %1
  %i = call fastcc i2 @bigint_math_bigint_compare([256 x i8]* %tempA, [256 x i8]* %tempB)
  %tmp_54 = icmp eq i2 %i, -1
  br i1 %tmp_54, label %4, label %5

; <label>:4                                       ; preds = %3
  call fastcc void @bigint_math_bigint_copy([256 x i8]* %out1, [256 x i8]* %tempA)
  call fastcc void @bigint_math_bigint_copy([256 x i8]* %out_r, [256 x i8]* @zero)
  br label %._crit_edge

; <label>:5                                       ; preds = %3
  %tmp_55 = icmp eq i2 %i, 0
  br i1 %tmp_55, label %6, label %.preheader11.preheader

.preheader11.preheader:                           ; preds = %5
  %flag = alloca i2
  store i2 0, i2* %flag
  br label %.preheader11

; <label>:6                                       ; preds = %5
  %out_addr = getelementptr [256 x i8]* %out_r, i64 0, i64 255
  store i8 1, i8* %out_addr, align 1
  %out1_addr = getelementptr [256 x i8]* %out1, i64 0, i64 255
  store i8 0, i8* %out1_addr, align 1
  br label %._crit_edge

.preheader11:                                     ; preds = %.preheader11.preheader, %10
  %i5 = phi i9 [ %i_5, %10 ], [ 0, %.preheader11.preheader ]
  %aMSB = phi i32 [ %aMSB_5, %10 ], [ 0, %.preheader11.preheader ]
  %tmp_11 = call i1 @_ssdm_op_BitSelect.i1.i9.i32(i9 %i5, i32 8)
  %empty_65 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1, i64 256, i64 128)
  %i_5 = add i9 %i5, 1
  br i1 %tmp_11, label %.loopexit8, label %7

; <label>:7                                       ; preds = %.preheader11
  %tmp_56 = zext i9 %i5 to i64
  %a_addr = getelementptr [256 x i8]* %a, i64 0, i64 %tmp_56
  %a_load = load i8* %a_addr, align 1
  %tmp_57 = icmp eq i8 %a_load, 0
  br i1 %tmp_57, label %.loopexit5, label %.preheader10

.preheader10:                                     ; preds = %7, %9
  %j = phi i4 [ %j_6, %9 ], [ 0, %7 ]
  %aMSB_1 = phi i32 [ %aMSB_4, %9 ], [ %aMSB, %7 ]
  %j_cast3 = zext i4 %j to i8
  %tmp_12 = call i1 @_ssdm_op_BitSelect.i1.i4.i32(i4 %j, i32 3)
  %empty_66 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1, i64 8, i64 4)
  %j_6 = add i4 %j, 1
  br i1 %tmp_12, label %.loopexit5.loopexit, label %8

; <label>:8                                       ; preds = %.preheader10
  %tmp_58 = lshr i8 -128, %j_cast3
  %tmp_59 = and i8 %tmp_58, %a_load
  %tmp_60 = sub i4 7, %j
  %tmp_73_cast = zext i4 %tmp_60 to i8
  %tmp_61 = lshr i8 %tmp_59, %tmp_73_cast
  %tmp_62 = icmp eq i8 %tmp_61, 1
  br i1 %tmp_62, label %.loopexit5.loopexit.pre, label %9

; <label>:9                                       ; preds = %8
  %aMSB_4 = add nsw i32 %aMSB_1, 1
  br label %.preheader10

.loopexit5.loopexit.pre:                          ; preds = %8
  store i2 1, i2* %flag
  br label %.loopexit5.loopexit

.loopexit5.loopexit:                              ; preds = %.loopexit5.loopexit.pre, %.preheader10
  br label %.loopexit5

.loopexit5:                                       ; preds = %.loopexit5.loopexit, %7
  %aMSB_2 = phi i32 [ %aMSB, %7 ], [ %aMSB_1, %.loopexit5.loopexit ]
  %flag_load = load i2* %flag
  %tmp_63 = icmp eq i2 %flag_load, 1
  br i1 %tmp_63, label %.loopexit8, label %10

; <label>:10                                      ; preds = %.loopexit5
  %aMSB_5 = add nsw i32 %aMSB_2, 8
  br label %.preheader11

.loopexit8:                                       ; preds = %.preheader11, %.loopexit5
  %aMSB_3 = phi i32 [ %aMSB, %.preheader11 ], [ %aMSB_2, %.loopexit5 ]
  %flag_3 = alloca i2
  store i2 0, i2* %flag_3
  br label %11

; <label>:11                                      ; preds = %15, %.loopexit8
  %i_1 = phi i9 [ 0, %.loopexit8 ], [ %i_6, %15 ]
  %bMSB = phi i32 [ 0, %.loopexit8 ], [ %bMSB_5, %15 ]
  %tmp_13 = call i1 @_ssdm_op_BitSelect.i1.i9.i32(i9 %i_1, i32 8)
  %empty_67 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1, i64 256, i64 128)
  %i_6 = add i9 %i_1, 1
  br i1 %tmp_13, label %.loopexit3, label %12

; <label>:12                                      ; preds = %11
  %tmp_64 = zext i9 %i_1 to i64
  %b_addr = getelementptr [256 x i8]* %b, i64 0, i64 %tmp_64
  %b_load = load i8* %b_addr, align 1
  %tmp_65 = icmp eq i8 %b_load, 0
  br i1 %tmp_65, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %12, %14
  %j_1 = phi i4 [ %j_7, %14 ], [ 0, %12 ]
  %bMSB_1 = phi i32 [ %bMSB_4, %14 ], [ %bMSB, %12 ]
  %j_1_cast1 = zext i4 %j_1 to i8
  %tmp_14 = call i1 @_ssdm_op_BitSelect.i1.i4.i32(i4 %j_1, i32 3)
  %empty_68 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1, i64 8, i64 4)
  %j_7 = add i4 %j_1, 1
  br i1 %tmp_14, label %.loopexit.loopexit, label %13

; <label>:13                                      ; preds = %.preheader
  %tmp_66 = lshr i8 -128, %j_1_cast1
  %tmp_67 = and i8 %tmp_66, %b_load
  %tmp_68 = sub i4 7, %j_1
  %tmp_84_cast = zext i4 %tmp_68 to i8
  %tmp_69 = lshr i8 %tmp_67, %tmp_84_cast
  %tmp_70 = icmp eq i8 %tmp_69, 1
  br i1 %tmp_70, label %.loopexit.loopexit.pre, label %14

; <label>:14                                      ; preds = %13
  %bMSB_4 = add nsw i32 %bMSB_1, 1
  br label %.preheader

.loopexit.loopexit.pre:                           ; preds = %13
  store i2 1, i2* %flag_3
  br label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %.loopexit.loopexit.pre, %.preheader
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %12
  %bMSB_2 = phi i32 [ %bMSB, %12 ], [ %bMSB_1, %.loopexit.loopexit ]
  %flag_3_load = load i2* %flag_3
  %tmp_71 = icmp eq i2 %flag_3_load, 1
  br i1 %tmp_71, label %.loopexit3, label %15

; <label>:15                                      ; preds = %.loopexit
  %bMSB_5 = add nsw i32 %bMSB_2, 8
  br label %11

.loopexit3:                                       ; preds = %11, %.loopexit
  %bMSB_3 = phi i32 [ %bMSB, %11 ], [ %bMSB_2, %.loopexit ]
  call fastcc void @bigint_math_bigint_zero([256 x i8]* %d)
  call fastcc void @bigint_math_bigint_zero([256 x i8]* %temp)
  %tmp_72 = sub nsw i32 %bMSB_3, %aMSB_3
  call fastcc void @bigint_math_bigint_leftshift([256 x i8]* %d, [256 x i8]* %tempB, i32 %tmp_72)
  call fastcc void @bigint_math_bigint_zero([256 x i8]* %quot)
  call fastcc void @bigint_math_bigint_zero([256 x i8]* %bitPlace)
  call fastcc void @bigint_math_bigint_leftshift([256 x i8]* %bitPlace, [256 x i8]* @one, i32 %tmp_72)
  %tmp_73 = sub i32 1, %aMSB_3
  %tmp_74 = add i32 %tmp_73, %bMSB_3
  br label %16

; <label>:16                                      ; preds = %._crit_edge14, %.loopexit3
  %j_2 = phi i31 [ 0, %.loopexit3 ], [ %j_8, %._crit_edge14 ]
  %j_2_cast = zext i31 %j_2 to i32
  %tmp_75 = icmp slt i32 %j_2_cast, %tmp_74
  %j_8 = add i31 %j_2, 1
  br i1 %tmp_75, label %17, label %19

; <label>:17                                      ; preds = %16
  %i_7 = call fastcc i2 @bigint_math_bigint_compare([256 x i8]* %tempA, [256 x i8]* %d)
  %tmp_15 = call i1 @_ssdm_op_BitSelect.i1.i2.i32(i2 %i_7, i32 1)
  br i1 %tmp_15, label %._crit_edge14, label %18

; <label>:18                                      ; preds = %17
  call fastcc void @bigint_math_bigint_add([256 x i8]* %temp, [256 x i8]* %quot, [256 x i8]* %bitPlace)
  call fastcc void @bigint_math_bigint_copy([256 x i8]* %quot, [256 x i8]* %temp)
  call fastcc void @bigint_math_bigint_sub([256 x i8]* %temp, [256 x i8]* %tempA, [256 x i8]* %d)
  call fastcc void @bigint_math_bigint_copy([256 x i8]* %tempA, [256 x i8]* %temp)
  br label %._crit_edge14

._crit_edge14:                                    ; preds = %17, %18
  call fastcc void @bigint_math_bigint_rightshift([256 x i8]* %temp, [256 x i8]* %bitPlace)
  call fastcc void @bigint_math_bigint_copy([256 x i8]* %bitPlace, [256 x i8]* %temp)
  call fastcc void @bigint_math_bigint_rightshift([256 x i8]* %temp, [256 x i8]* %d)
  call fastcc void @bigint_math_bigint_copy([256 x i8]* %d, [256 x i8]* %temp)
  br label %16

; <label>:19                                      ; preds = %16
  call fastcc void @bigint_math_bigint_copy([256 x i8]* %out_r, [256 x i8]* %quot)
  call fastcc void @bigint_math_bigint_mul([256 x i8]* %temp, [256 x i8]* %out_r, [256 x i8]* %tempB)
  call fastcc void @bigint_math_bigint_sub([256 x i8]* %out1, [256 x i8]* %a, [256 x i8]* %temp)
  br label %._crit_edge

._crit_edge:                                      ; preds = %19, %6, %4, %2, %0
  ret void
}

define internal fastcc void @bigint_math_bigint_leftshift([256 x i8]* nocapture %out_r, [256 x i8]* nocapture %a, i32 %shift) {
  %empty = call i32 (...)* @_ssdm_op_SpecMemCore([256 x i8]* %a, [1 x i8]* @p_str10, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str10, i32 -1, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10)
  %empty_69 = call i32 (...)* @_ssdm_op_SpecMemCore([256 x i8]* %out_r, [1 x i8]* @p_str10, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str10, i32 -1, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10)
  %shift_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %shift)
  %tmp = icmp eq i32 %shift_read, 0
  br i1 %tmp, label %.preheader10, label %2

.preheader10:                                     ; preds = %0, %1
  %i_i = phi i9 [ %i_10, %1 ], [ 0, %0 ]
  %exitcond_i = icmp eq i9 %i_i, -256
  %empty_70 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 256, i64 256, i64 256)
  %i_10 = add i9 %i_i, 1
  br i1 %exitcond_i, label %.loopexit, label %1

; <label>:1                                       ; preds = %.preheader10
  %tmp_i = zext i9 %i_i to i64
  %a_addr_1 = getelementptr [256 x i8]* %a, i64 0, i64 %tmp_i
  %a_load_1 = load i8* %a_addr_1, align 1
  %out_addr_3 = getelementptr [256 x i8]* %out_r, i64 0, i64 %tmp_i
  store i8 %a_load_1, i8* %out_addr_3, align 1
  br label %.preheader10

; <label>:2                                       ; preds = %0
  %tmp_16 = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %shift_read, i32 31)
  %p_neg = sub i32 0, %shift_read
  %tmp_6 = call i29 @_ssdm_op_PartSelect.i29.i32.i32.i32(i32 %p_neg, i32 3, i32 31)
  %p_lshr_cast = zext i29 %tmp_6 to i30
  %p_neg_t = sub i30 0, %p_lshr_cast
  %tmp_7 = call i29 @_ssdm_op_PartSelect.i29.i32.i32.i32(i32 %shift_read, i32 3, i32 31)
  %p_lshr_f_cast = zext i29 %tmp_7 to i30
  %start = select i1 %tmp_16, i30 %p_neg_t, i30 %p_lshr_f_cast
  %start_cast = sext i30 %start to i31
  %tmp_17 = trunc i32 %shift_read to i3
  %p_and_f = call i32 @_ssdm_op_BitConcatenate.i32.i29.i3(i29 0, i3 %tmp_17)
  %tmp_18 = trunc i32 %p_neg to i3
  %p_and_t = call i32 @_ssdm_op_BitConcatenate.i32.i29.i3(i29 0, i3 %tmp_18)
  %p_neg_t5 = sub i32 0, %p_and_t
  %outputBit_5 = select i1 %tmp_16, i32 %p_neg_t5, i32 %p_and_f
  %k = sub i31 255, %start_cast
  %k_cast = sext i31 %k to i32
  br label %3

; <label>:3                                       ; preds = %4, %2
  %i_i7 = phi i9 [ 0, %2 ], [ %i_11, %4 ]
  %exitcond_i8 = icmp eq i9 %i_i7, -256
  %empty_71 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 256, i64 256, i64 256)
  %i_11 = add i9 %i_i7, 1
  br i1 %exitcond_i8, label %bigint_zero.exit, label %4

; <label>:4                                       ; preds = %3
  %tmp_i9 = zext i9 %i_i7 to i64
  %out_addr_4 = getelementptr [256 x i8]* %out_r, i64 0, i64 %tmp_i9
  store i8 0, i8* %out_addr_4, align 1
  br label %3

bigint_zero.exit:                                 ; preds = %3, %9
  %i = phi i9 [ %i_8, %9 ], [ 255, %3 ]
  %k7 = phi i32 [ %p_k_1, %9 ], [ %k_cast, %3 ]
  %i_cast = sext i9 %i to i32
  %tmp_19 = call i1 @_ssdm_op_BitSelect.i1.i9.i32(i9 %i, i32 8)
  %empty_72 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 256, i64 256, i64 256)
  br i1 %tmp_19, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bigint_zero.exit
  %tmp_s = zext i32 %i_cast to i64
  %a_addr = getelementptr [256 x i8]* %a, i64 0, i64 %tmp_s
  br label %.preheader

.preheader:                                       ; preds = %8, %.preheader.preheader
  %j = phi i4 [ %j_9, %8 ], [ 0, %.preheader.preheader ]
  %k_1 = phi i32 [ %k_2, %8 ], [ %k7, %.preheader.preheader ]
  %outputBit = phi i32 [ %outputBit_3, %8 ], [ %outputBit_5, %.preheader.preheader ]
  %j_cast1 = zext i4 %j to i8
  %exitcond = icmp eq i4 %j, -8
  %empty_73 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8)
  %j_9 = add i4 %j, 1
  br i1 %exitcond, label %9, label %5

; <label>:5                                       ; preds = %.preheader
  %a_load = load i8* %a_addr, align 1
  %tmp_77 = shl i8 1, %j_cast1
  %tmp_78 = and i8 %tmp_77, %a_load
  %b = lshr i8 %tmp_78, %j_cast1
  %tmp_79 = icmp eq i32 %outputBit, 8
  br i1 %tmp_79, label %6, label %7

; <label>:6                                       ; preds = %5
  %k_7 = add nsw i32 %k_1, -1
  %tmp_80 = sext i32 %k_7 to i64
  %out_addr = getelementptr [256 x i8]* %out_r, i64 0, i64 %tmp_80
  %out_load = load i8* %out_addr, align 1
  %tmp_81 = add i8 %out_load, %b
  store i8 %tmp_81, i8* %out_addr, align 1
  br label %8

; <label>:7                                       ; preds = %5
  %tmp_20 = trunc i32 %outputBit to i8
  %tmp_82 = shl i8 %b, %tmp_20
  %tmp_83 = sext i32 %k_1 to i64
  %out_addr_2 = getelementptr [256 x i8]* %out_r, i64 0, i64 %tmp_83
  %out_load_2 = load i8* %out_addr_2, align 1
  %tmp_84 = add i8 %tmp_82, %out_load_2
  store i8 %tmp_84, i8* %out_addr_2, align 1
  br label %8

; <label>:8                                       ; preds = %7, %6
  %k_2 = phi i32 [ %k_7, %6 ], [ %k_1, %7 ]
  %outputBit_1 = phi i32 [ 0, %6 ], [ %outputBit, %7 ]
  %outputBit_3 = add nsw i32 %outputBit_1, 1
  br label %.preheader

; <label>:9                                       ; preds = %.preheader
  %tmp_76 = icmp eq i32 %outputBit, 8
  %k_6 = add nsw i32 %k_1, -1
  %p_k_1 = select i1 %tmp_76, i32 %k_6, i32 %k_1
  %i_8 = add i9 %i, -1
  br label %bigint_zero.exit

.loopexit:                                        ; preds = %.preheader10, %bigint_zero.exit
  ret void
}

define internal fastcc void @bigint_math_bigint_copy([256 x i8]* nocapture %to_r, [256 x i8]* nocapture %from) {
  %empty = call i32 (...)* @_ssdm_op_SpecMemCore([256 x i8]* %to_r, [1 x i8]* @p_str10, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str10, i32 -1, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10)
  %empty_74 = call i32 (...)* @_ssdm_op_SpecMemCore([256 x i8]* %from, [1 x i8]* @p_str13, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str13, i32 -1, [1 x i8]* @p_str13, [1 x i8]* @p_str13, [1 x i8]* @p_str13, [1 x i8]* @p_str13, [1 x i8]* @p_str13)
  br label %1

; <label>:1                                       ; preds = %2, %0
  %i = phi i9 [ 0, %0 ], [ %i_9, %2 ]
  %exitcond = icmp eq i9 %i, -256
  %empty_75 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 256, i64 256, i64 256)
  %i_9 = add i9 %i, 1
  br i1 %exitcond, label %3, label %2

; <label>:2                                       ; preds = %1
  %tmp = zext i9 %i to i64
  %from_addr = getelementptr [256 x i8]* %from, i64 0, i64 %tmp
  %from_load = load i8* %from_addr, align 1
  %to_addr = getelementptr [256 x i8]* %to_r, i64 0, i64 %tmp
  store i8 %from_load, i8* %to_addr, align 1
  br label %1

; <label>:3                                       ; preds = %1
  ret void
}

define internal fastcc i2 @bigint_math_bigint_compare([256 x i8]* nocapture %a, [256 x i8]* nocapture %b) readonly {
  %empty = call i32 (...)* @_ssdm_op_SpecMemCore([256 x i8]* %b, [1 x i8]* @p_str10, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str10, i32 -1, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10)
  %empty_76 = call i32 (...)* @_ssdm_op_SpecMemCore([256 x i8]* %a, [1 x i8]* @p_str13, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str13, i32 -1, [1 x i8]* @p_str13, [1 x i8]* @p_str13, [1 x i8]* @p_str13, [1 x i8]* @p_str13, [1 x i8]* @p_str13)
  %state = alloca [256 x i2], align 1
  br label %1

; <label>:1                                       ; preds = %9, %0
  %i = phi i9 [ 0, %0 ], [ %i_12, %9 ]
  %exitcond = icmp eq i9 %i, -256
  %empty_77 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 256, i64 256, i64 256)
  %i_12 = add i9 %i, 1
  br i1 %exitcond, label %10, label %2

; <label>:2                                       ; preds = %1
  %tmp_s = zext i9 %i to i64
  %a_addr = getelementptr [256 x i8]* %a, i64 0, i64 %tmp_s
  %a_load = load i8* %a_addr, align 1
  %b_addr = getelementptr [256 x i8]* %b, i64 0, i64 %tmp_s
  %b_load = load i8* %b_addr, align 1
  %tmp_85 = icmp ugt i8 %a_load, %b_load
  br i1 %tmp_85, label %3, label %4

; <label>:3                                       ; preds = %2
  %state_addr_1 = getelementptr [256 x i2]* %state, i64 0, i64 %tmp_s
  store i2 1, i2* %state_addr_1, align 1
  br label %9

; <label>:4                                       ; preds = %2
  %tmp_86 = icmp ult i8 %a_load, %b_load
  br i1 %tmp_86, label %5, label %6

; <label>:5                                       ; preds = %4
  %state_addr_2 = getelementptr [256 x i2]* %state, i64 0, i64 %tmp_s
  store i2 -1, i2* %state_addr_2, align 1
  br label %8

; <label>:6                                       ; preds = %4
  %tmp_91 = icmp eq i8 %a_load, %b_load
  br i1 %tmp_91, label %7, label %._crit_edge

; <label>:7                                       ; preds = %6
  %state_addr_4 = getelementptr [256 x i2]* %state, i64 0, i64 %tmp_s
  store i2 0, i2* %state_addr_4, align 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %7, %6
  br label %8

; <label>:8                                       ; preds = %._crit_edge, %5
  br label %9

; <label>:9                                       ; preds = %8, %3
  br label %1

; <label>:10                                      ; preds = %1
  %state_addr = getelementptr [256 x i2]* %state, i64 0, i64 0
  %state_load = load i2* %state_addr, align 1
  %tmp = icmp eq i2 %state_load, 0
  br i1 %tmp, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %10, %12
  %i_1 = phi i9 [ %i_2, %12 ], [ 0, %10 ]
  %flag = phi i32 [ %p_flag, %12 ], [ 0, %10 ]
  %tmp_21 = call i1 @_ssdm_op_BitSelect.i1.i9.i32(i9 %i_1, i32 8)
  %empty_78 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1, i64 256, i64 128)
  %i_2 = add i9 %i_1, 1
  br i1 %tmp_21, label %.loopexit, label %11

; <label>:11                                      ; preds = %.preheader
  %tmp_87 = zext i9 %i_1 to i64
  %state_addr_3 = getelementptr [256 x i2]* %state, i64 0, i64 %tmp_87
  %state_load_1 = load i2* %state_addr_3, align 1
  %tmp_88 = icmp eq i2 %state_load_1, 0
  %p_flag = select i1 %tmp_88, i32 1, i32 %flag
  %tmp_89 = icmp eq i2 %state_load_1, 1
  %tmp_90 = icmp eq i32 %p_flag, 1
  %or_cond = and i1 %tmp_89, %tmp_90
  br i1 %or_cond, label %.loopexit, label %12

; <label>:12                                      ; preds = %11
  %tmp_92 = icmp eq i2 %state_load_1, -1
  %or_cond1 = and i1 %tmp_92, %tmp_90
  br i1 %or_cond1, label %.loopexit, label %.preheader

.loopexit:                                        ; preds = %11, %12, %.preheader, %10
  %p_0 = phi i2 [ %state_load, %10 ], [ 0, %.preheader ], [ 1, %11 ], [ -1, %12 ]
  ret i2 %p_0
}

define internal fastcc void @bigint_math_bigint_add.1([256 x i8]* nocapture %out_r, [256 x i8]* nocapture %b) {
  %empty = call i32 (...)* @_ssdm_op_SpecMemCore([256 x i8]* %b, [1 x i8]* @p_str10, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str10, i32 -1, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10)
  %empty_79 = call i32 (...)* @_ssdm_op_SpecMemCore([256 x i8]* %out_r, [1 x i8]* @p_str10, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str10, i32 -1, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10)
  %tempA = alloca [256 x i8], align 16
  %tempB = alloca [256 x i8], align 16
  call fastcc void @bigint_math_bigint_zero([256 x i8]* %tempA)
  call fastcc void @bigint_math_bigint_zero([256 x i8]* %tempB)
  %empty_80 = call i32 (...)* @_ssdm_op_SpecMemCore([256 x i8]* %tempB, [1 x i8]* @p_str10, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str10, i32 -1, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10)
  %empty_81 = call i32 (...)* @_ssdm_op_SpecMemCore([256 x i8]* %tempA, [1 x i8]* @p_str10, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str10, i32 -1, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10)
  br label %1

; <label>:1                                       ; preds = %2, %0
  %i_i = phi i9 [ 0, %0 ], [ %i_13, %2 ]
  %exitcond_i = icmp eq i9 %i_i, -256
  %empty_82 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 256, i64 256, i64 256)
  %i_13 = add i9 %i_i, 1
  br i1 %exitcond_i, label %bigint_copy.exit, label %2

; <label>:2                                       ; preds = %1
  %tmp_i = zext i9 %i_i to i64
  %a_addr_4 = getelementptr [256 x i8]* %out_r, i64 0, i64 %tmp_i
  %a_load_4 = load i8* %a_addr_4, align 1
  %tempA_addr = getelementptr [256 x i8]* %tempA, i64 0, i64 %tmp_i
  store i8 %a_load_4, i8* %tempA_addr, align 1
  br label %1

bigint_copy.exit:                                 ; preds = %1, %3
  %i_i1 = phi i9 [ %i_3, %3 ], [ 0, %1 ]
  %exitcond_i2 = icmp eq i9 %i_i1, -256
  %empty_83 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 256, i64 256, i64 256)
  %i_3 = add i9 %i_i1, 1
  br i1 %exitcond_i2, label %bigint_copy.exit8, label %3

; <label>:3                                       ; preds = %bigint_copy.exit
  %tmp_i3 = zext i9 %i_i1 to i64
  %b_addr = getelementptr [256 x i8]* %b, i64 0, i64 %tmp_i3
  %b_load = load i8* %b_addr, align 1
  %tempB_addr_4 = getelementptr [256 x i8]* %tempB, i64 0, i64 %tmp_i3
  store i8 %b_load, i8* %tempB_addr_4, align 1
  br label %bigint_copy.exit

bigint_copy.exit8:                                ; preds = %bigint_copy.exit
  call fastcc void @bigint_math_bigint_zero([256 x i8]* %out_r)
  br label %4

; <label>:4                                       ; preds = %._crit_edge1, %bigint_copy.exit8
  %i = phi i9 [ 255, %bigint_copy.exit8 ], [ %i_14, %._crit_edge1 ]
  %i_cast = sext i9 %i to i32
  %tmp = call i1 @_ssdm_op_BitSelect.i1.i9.i32(i9 %i, i32 8)
  %empty_84 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 256, i64 256, i64 256)
  br i1 %tmp, label %8, label %5

; <label>:5                                       ; preds = %4
  %tmp_s = zext i32 %i_cast to i64
  %tempA_addr_7 = getelementptr inbounds [256 x i8]* %tempA, i64 0, i64 %tmp_s
  %tempA_load = load i8* %tempA_addr_7, align 1
  %tempB_addr = getelementptr inbounds [256 x i8]* %tempB, i64 0, i64 %tmp_s
  %tempB_load = load i8* %tempB_addr, align 1
  %sum = add i8 %tempA_load, %tempB_load
  %tmp_115_cast = zext i8 %tempA_load to i9
  %tmp_116_cast = zext i8 %tempB_load to i9
  %tmp_93 = add i9 %tmp_115_cast, %tmp_116_cast
  %tmp_22 = call i1 @_ssdm_op_BitSelect.i1.i9.i32(i9 %tmp_93, i32 8)
  %carry = zext i1 %tmp_22 to i8
  %a_addr = getelementptr [256 x i8]* %out_r, i64 0, i64 %tmp_s
  %a_load = load i8* %a_addr, align 1
  %tmp_119_cast = zext i8 %a_load to i9
  %tmp_120_cast = zext i8 %sum to i9
  %tmp_94 = add i9 %tmp_120_cast, %tmp_119_cast
  %tmp_23 = call i1 @_ssdm_op_BitSelect.i1.i9.i32(i9 %tmp_94, i32 8)
  br i1 %tmp_23, label %6, label %._crit_edge

; <label>:6                                       ; preds = %5
  %tmp_95 = add i9 -1, %i
  %tmp_96 = sext i9 %tmp_95 to i64
  %a_addr_1 = getelementptr [256 x i8]* %out_r, i64 0, i64 %tmp_96
  %a_load_1 = load i8* %a_addr_1, align 1
  %tmp_97 = add i8 1, %a_load_1
  store i8 %tmp_97, i8* %a_addr_1, align 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %6, %5
  %tmp_98 = add i8 %sum, %a_load
  store i8 %tmp_98, i8* %a_addr, align 1
  %i_14 = add i9 %i, -1
  %tmp_99 = sext i9 %i_14 to i64
  %a_addr_2 = getelementptr [256 x i8]* %out_r, i64 0, i64 %tmp_99
  %a_load_2 = load i8* %a_addr_2, align 1
  %tmp_130_cast = zext i8 %a_load_2 to i9
  %tmp_131_cast = zext i1 %tmp_22 to i9
  %tmp_100 = add i9 %tmp_131_cast, %tmp_130_cast
  %tmp_24 = call i1 @_ssdm_op_BitSelect.i1.i9.i32(i9 %tmp_100, i32 8)
  br i1 %tmp_24, label %7, label %._crit_edge1

; <label>:7                                       ; preds = %._crit_edge
  %tmp_101 = add i9 -2, %i
  %tmp_102 = sext i9 %tmp_101 to i64
  %a_addr_3 = getelementptr [256 x i8]* %out_r, i64 0, i64 %tmp_102
  %a_load_3 = load i8* %a_addr_3, align 1
  %tmp_103 = add i8 1, %a_load_3
  store i8 %tmp_103, i8* %a_addr_3, align 1
  br label %._crit_edge1

._crit_edge1:                                     ; preds = %7, %._crit_edge
  %tmp_104 = add i8 %a_load_2, %carry
  store i8 %tmp_104, i8* %a_addr_2, align 1
  br label %4

; <label>:8                                       ; preds = %4
  ret void
}

define internal fastcc void @bigint_math_bigint_add([256 x i8]* nocapture %out_r, [256 x i8]* nocapture %a, [256 x i8]* nocapture %b) {
  %empty = call i32 (...)* @_ssdm_op_SpecMemCore([256 x i8]* %a, [1 x i8]* @p_str10, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str10, i32 -1, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10)
  %empty_85 = call i32 (...)* @_ssdm_op_SpecMemCore([256 x i8]* %b, [1 x i8]* @p_str10, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str10, i32 -1, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10)
  %empty_86 = call i32 (...)* @_ssdm_op_SpecMemCore([256 x i8]* %out_r, [1 x i8]* @p_str10, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str10, i32 -1, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10)
  %tempA = alloca [256 x i8], align 16
  %tempB = alloca [256 x i8], align 16
  call fastcc void @bigint_math_bigint_zero([256 x i8]* %tempA)
  call fastcc void @bigint_math_bigint_zero([256 x i8]* %tempB)
  %empty_87 = call i32 (...)* @_ssdm_op_SpecMemCore([256 x i8]* %tempB, [1 x i8]* @p_str10, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str10, i32 -1, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10)
  %empty_88 = call i32 (...)* @_ssdm_op_SpecMemCore([256 x i8]* %tempA, [1 x i8]* @p_str10, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str10, i32 -1, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10)
  br label %1

; <label>:1                                       ; preds = %2, %0
  %i_i = phi i9 [ 0, %0 ], [ %i_15, %2 ]
  %exitcond_i = icmp eq i9 %i_i, -256
  %empty_89 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 256, i64 256, i64 256)
  %i_15 = add i9 %i_i, 1
  br i1 %exitcond_i, label %bigint_copy.exit, label %2

; <label>:2                                       ; preds = %1
  %tmp_i = zext i9 %i_i to i64
  %a_addr = getelementptr [256 x i8]* %a, i64 0, i64 %tmp_i
  %a_load = load i8* %a_addr, align 1
  %tempA_addr = getelementptr [256 x i8]* %tempA, i64 0, i64 %tmp_i
  store i8 %a_load, i8* %tempA_addr, align 1
  br label %1

bigint_copy.exit:                                 ; preds = %1, %3
  %i_i1 = phi i9 [ %i_4, %3 ], [ 0, %1 ]
  %exitcond_i1 = icmp eq i9 %i_i1, -256
  %empty_90 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 256, i64 256, i64 256)
  %i_4 = add i9 %i_i1, 1
  br i1 %exitcond_i1, label %bigint_copy.exit18, label %3

; <label>:3                                       ; preds = %bigint_copy.exit
  %tmp_i1 = zext i9 %i_i1 to i64
  %b_addr = getelementptr [256 x i8]* %b, i64 0, i64 %tmp_i1
  %b_load = load i8* %b_addr, align 1
  %tempB_addr_5 = getelementptr [256 x i8]* %tempB, i64 0, i64 %tmp_i1
  store i8 %b_load, i8* %tempB_addr_5, align 1
  br label %bigint_copy.exit

bigint_copy.exit18:                               ; preds = %bigint_copy.exit
  call fastcc void @bigint_math_bigint_zero([256 x i8]* %out_r)
  br label %4

; <label>:4                                       ; preds = %._crit_edge1, %bigint_copy.exit18
  %i = phi i9 [ 255, %bigint_copy.exit18 ], [ %i_16, %._crit_edge1 ]
  %i_cast = sext i9 %i to i32
  %tmp = call i1 @_ssdm_op_BitSelect.i1.i9.i32(i9 %i, i32 8)
  %empty_91 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 256, i64 256, i64 256)
  br i1 %tmp, label %8, label %5

; <label>:5                                       ; preds = %4
  %tmp_s = zext i32 %i_cast to i64
  %tempA_addr_8 = getelementptr inbounds [256 x i8]* %tempA, i64 0, i64 %tmp_s
  %tempA_load = load i8* %tempA_addr_8, align 1
  %tempB_addr = getelementptr inbounds [256 x i8]* %tempB, i64 0, i64 %tmp_s
  %tempB_load = load i8* %tempB_addr, align 1
  %sum = add i8 %tempA_load, %tempB_load
  %tmp_118_cast = zext i8 %tempA_load to i9
  %tmp_119_cast = zext i8 %tempB_load to i9
  %tmp_105 = add i9 %tmp_118_cast, %tmp_119_cast
  %tmp_25 = call i1 @_ssdm_op_BitSelect.i1.i9.i32(i9 %tmp_105, i32 8)
  %carry = zext i1 %tmp_25 to i8
  %out_addr = getelementptr [256 x i8]* %out_r, i64 0, i64 %tmp_s
  %out_load = load i8* %out_addr, align 1
  %tmp_122_cast = zext i8 %out_load to i9
  %tmp_123_cast = zext i8 %sum to i9
  %tmp_106 = add i9 %tmp_123_cast, %tmp_122_cast
  %tmp_26 = call i1 @_ssdm_op_BitSelect.i1.i9.i32(i9 %tmp_106, i32 8)
  br i1 %tmp_26, label %6, label %._crit_edge

; <label>:6                                       ; preds = %5
  %tmp_107 = add i9 -1, %i
  %tmp_108 = sext i9 %tmp_107 to i64
  %out_addr_3 = getelementptr [256 x i8]* %out_r, i64 0, i64 %tmp_108
  %out_load_3 = load i8* %out_addr_3, align 1
  %tmp_109 = add i8 1, %out_load_3
  store i8 %tmp_109, i8* %out_addr_3, align 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %6, %5
  %tmp_110 = add i8 %sum, %out_load
  store i8 %tmp_110, i8* %out_addr, align 1
  %i_16 = add i9 %i, -1
  %tmp_111 = sext i9 %i_16 to i64
  %out_addr_4 = getelementptr [256 x i8]* %out_r, i64 0, i64 %tmp_111
  %out_load_4 = load i8* %out_addr_4, align 1
  %tmp_133_cast = zext i8 %out_load_4 to i9
  %tmp_134_cast = zext i1 %tmp_25 to i9
  %tmp_112 = add i9 %tmp_134_cast, %tmp_133_cast
  %tmp_27 = call i1 @_ssdm_op_BitSelect.i1.i9.i32(i9 %tmp_112, i32 8)
  br i1 %tmp_27, label %7, label %._crit_edge1

; <label>:7                                       ; preds = %._crit_edge
  %tmp_113 = add i9 -2, %i
  %tmp_114 = sext i9 %tmp_113 to i64
  %out_addr_5 = getelementptr [256 x i8]* %out_r, i64 0, i64 %tmp_114
  %out_load_5 = load i8* %out_addr_5, align 1
  %tmp_115 = add i8 1, %out_load_5
  store i8 %tmp_115, i8* %out_addr_5, align 1
  br label %._crit_edge1

._crit_edge1:                                     ; preds = %7, %._crit_edge
  %tmp_116 = add i8 %out_load_4, %carry
  store i8 %tmp_116, i8* %out_addr_4, align 1
  br label %4

; <label>:8                                       ; preds = %4
  ret void
}

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecMemCore(...) {
entry:
  ret i32 0
}

define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak i32 @_ssdm_op_Read.ap_auto.i32(i32) {
entry:
  ret i32 %0
}

declare i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32, i32, i32) nounwind readnone

define weak i8 @_ssdm_op_PartSelect.i8.i16.i32.i32(i16, i32, i32) nounwind readnone {
entry:
  %empty = call i16 @llvm.part.select.i16(i16 %0, i32 %1, i32 %2)
  %empty_92 = trunc i16 %empty to i8
  ret i8 %empty_92
}

declare i3 @_ssdm_op_PartSelect.i3.i32.i32.i32(i32, i32, i32) nounwind readnone

define weak i29 @_ssdm_op_PartSelect.i29.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_93 = trunc i32 %empty to i29
  ret i29 %empty_93
}

declare i1 @_ssdm_op_PartSelect.i1.i8.i32.i32(i8, i32, i32) nounwind readnone

define weak i1 @_ssdm_op_BitSelect.i1.i9.i32(i9, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i9
  %empty_94 = shl i9 1, %empty
  %empty_95 = and i9 %0, %empty_94
  %empty_96 = icmp ne i9 %empty_95, 0
  ret i1 %empty_96
}

define weak i1 @_ssdm_op_BitSelect.i1.i4.i32(i4, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i4
  %empty_97 = shl i4 1, %empty
  %empty_98 = and i4 %0, %empty_97
  %empty_99 = icmp ne i4 %empty_98, 0
  ret i1 %empty_99
}

define weak i1 @_ssdm_op_BitSelect.i1.i32.i32(i32, i32) nounwind readnone {
entry:
  %empty = shl i32 1, %1
  %empty_100 = and i32 %0, %empty
  %empty_101 = icmp ne i32 %empty_100, 0
  ret i1 %empty_101
}

define weak i1 @_ssdm_op_BitSelect.i1.i2.i32(i2, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i2
  %empty_102 = shl i2 1, %empty
  %empty_103 = and i2 %0, %empty_102
  %empty_104 = icmp ne i2 %empty_103, 0
  ret i1 %empty_104
}

declare i8 @_ssdm_op_BitConcatenate.i8.i1.i7(i1, i7) nounwind readnone

define weak i32 @_ssdm_op_BitConcatenate.i32.i29.i3(i29, i3) nounwind readnone {
entry:
  %empty = zext i29 %0 to i32
  %empty_105 = zext i3 %1 to i32
  %empty_106 = shl i32 %empty, 3
  %empty_107 = or i32 %empty_106, %empty_105
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
!35 = metadata !{metadata !36}
!36 = metadata !{i32 0, i32 7, metadata !37}
!37 = metadata !{metadata !38}
!38 = metadata !{metadata !"a", metadata !39, metadata !"unsigned char", i32 0, i32 7}
!39 = metadata !{metadata !40}
!40 = metadata !{i32 0, i32 255, i32 1}
!41 = metadata !{metadata !42}
!42 = metadata !{i32 0, i32 7, metadata !43}
!43 = metadata !{metadata !44}
!44 = metadata !{metadata !"b", metadata !39, metadata !"unsigned char", i32 0, i32 7}
!45 = metadata !{metadata !46}
!46 = metadata !{i32 0, i32 7, metadata !47}
!47 = metadata !{metadata !48}
!48 = metadata !{metadata !"c", metadata !39, metadata !"unsigned char", i32 0, i32 7}
!49 = metadata !{metadata !50}
!50 = metadata !{i32 0, i32 7, metadata !51}
!51 = metadata !{metadata !52}
!52 = metadata !{metadata !"d", metadata !39, metadata !"unsigned char", i32 0, i32 7}
