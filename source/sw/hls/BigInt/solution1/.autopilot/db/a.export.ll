; ModuleID = '/home/linux/Documents/DLA/source/sw/hls/BigInt/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bigint_math_str = internal unnamed_addr constant [12 x i8] c"bigint_math\00"
@RAM_1P_str = internal unnamed_addr constant [7 x i8] c"RAM_1P\00"
@p_str5 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str4 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str3 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str1 = private unnamed_addr constant [11 x i8] c"PERIPH_BUS\00", align 1
@p_str = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1

declare i16 @llvm.part.select.i16(i16, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define void @bigint_math([128 x i8]* %a, [128 x i8]* %b, [256 x i8]* %c) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap([128 x i8]* %a) nounwind, !map !7
  call void (...)* @_ssdm_op_SpecBitsMap([128 x i8]* %b) nounwind, !map !13
  call void (...)* @_ssdm_op_SpecBitsMap([256 x i8]* %c) nounwind, !map !17
  call void (...)* @_ssdm_op_SpecTopModule([12 x i8]* @bigint_math_str) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [10 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [11 x i8]* @p_str1, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2) nounwind
  %empty = call i32 (...)* @_ssdm_op_SpecMemCore([128 x i8]* %a, [1 x i8]* @p_str3, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str3, i32 -1, [1 x i8]* @p_str3, [1 x i8]* @p_str3, [1 x i8]* @p_str3, [1 x i8]* @p_str3, [1 x i8]* @p_str3) nounwind
  call void (...)* @_ssdm_op_SpecInterface([128 x i8]* %a, [10 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [11 x i8]* @p_str1, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2) nounwind
  %empty_4 = call i32 (...)* @_ssdm_op_SpecMemCore([128 x i8]* %b, [1 x i8]* @p_str4, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str4, i32 -1, [1 x i8]* @p_str4, [1 x i8]* @p_str4, [1 x i8]* @p_str4, [1 x i8]* @p_str4, [1 x i8]* @p_str4) nounwind
  call void (...)* @_ssdm_op_SpecInterface([128 x i8]* %b, [10 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [11 x i8]* @p_str1, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2) nounwind
  %empty_5 = call i32 (...)* @_ssdm_op_SpecMemCore([256 x i8]* %c, [1 x i8]* @p_str5, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str5, i32 -1, [1 x i8]* @p_str5, [1 x i8]* @p_str5, [1 x i8]* @p_str5, [1 x i8]* @p_str5, [1 x i8]* @p_str5) nounwind
  call void (...)* @_ssdm_op_SpecInterface([256 x i8]* %c, [10 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [11 x i8]* @p_str1, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2) nounwind
  br label %1

; <label>:1                                       ; preds = %2, %0
  %i = phi i9 [ 0, %0 ], [ %i_2, %2 ]
  %exitcond2 = icmp eq i9 %i, -256
  %empty_6 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 256, i64 256, i64 256) nounwind
  %i_2 = add i9 %i, 1
  br i1 %exitcond2, label %.preheader, label %2

; <label>:2                                       ; preds = %1
  %tmp = zext i9 %i to i64
  %c_addr = getelementptr [256 x i8]* %c, i64 0, i64 %tmp
  store i8 0, i8* %c_addr, align 1
  br label %1

.preheader:                                       ; preds = %4, %1
  %i_1 = phi i8 [ 0, %1 ], [ %i_3, %4 ]
  %exitcond1 = icmp eq i8 %i_1, -128
  %empty_7 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 128, i64 128, i64 128) nounwind
  %i_3 = add i8 %i_1, 1
  br i1 %exitcond1, label %8, label %3

; <label>:3                                       ; preds = %.preheader
  %k = xor i8 %i_1, -1
  %tmp_3 = sub i8 127, %i_1
  %tmp_4 = zext i8 %tmp_3 to i64
  %b_addr = getelementptr [128 x i8]* %b, i64 0, i64 %tmp_4
  br label %4

; <label>:4                                       ; preds = %._crit_edge3, %3
  %j = phi i8 [ 0, %3 ], [ %j_1, %._crit_edge3 ]
  %k1 = phi i8 [ %k, %3 ], [ %k_1, %._crit_edge3 ]
  %exitcond = icmp eq i8 %j, -128
  %empty_8 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 128, i64 128, i64 128) nounwind
  %j_1 = add i8 %j, 1
  br i1 %exitcond, label %.preheader, label %5

; <label>:5                                       ; preds = %4
  %b_load = load i8* %b_addr, align 1
  %tmp_6 = sub i8 127, %j
  %tmp_7 = zext i8 %tmp_6 to i64
  %a_addr = getelementptr [128 x i8]* %a, i64 0, i64 %tmp_7
  %a_load = load i8* %a_addr, align 1
  %prod = mul i8 %b_load, %a_load
  %tmp_9_cast = zext i8 %b_load to i16
  %tmp_cast = zext i8 %a_load to i16
  %tmp_1 = mul i16 %tmp_9_cast, %tmp_cast
  %carry = call i8 @_ssdm_op_PartSelect.i8.i16.i32.i32(i16 %tmp_1, i32 8, i32 15)
  %tmp_5 = zext i8 %k1 to i64
  %c_addr_1 = getelementptr [256 x i8]* %c, i64 0, i64 %tmp_5
  %c_load = load i8* %c_addr_1, align 1
  %tmp_8_cast = zext i8 %c_load to i9
  %tmp_10_cast = zext i8 %prod to i9
  %tmp_s = add i9 %tmp_10_cast, %tmp_8_cast
  %tmp_8 = call i1 @_ssdm_op_BitSelect.i1.i9.i32(i9 %tmp_s, i32 8)
  br i1 %tmp_8, label %6, label %._crit_edge

; <label>:6                                       ; preds = %5
  %tmp_2 = add i8 -1, %k1
  %tmp_9 = zext i8 %tmp_2 to i64
  %c_addr_2 = getelementptr [256 x i8]* %c, i64 0, i64 %tmp_9
  %c_load_1 = load i8* %c_addr_2, align 1
  %tmp_10 = add i8 1, %c_load_1
  store i8 %tmp_10, i8* %c_addr_2, align 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %6, %5
  %tmp_11 = add i8 %c_load, %prod
  store i8 %tmp_11, i8* %c_addr_1, align 1
  %k_1 = add i8 %k1, -1
  %tmp_12 = zext i8 %k_1 to i64
  %c_addr_3 = getelementptr [256 x i8]* %c, i64 0, i64 %tmp_12
  %c_load_2 = load i8* %c_addr_3, align 1
  %tmp_20_cast = zext i8 %c_load_2 to i9
  %tmp_21_cast = zext i8 %carry to i9
  %tmp_13 = add i9 %tmp_21_cast, %tmp_20_cast
  %tmp_14 = call i1 @_ssdm_op_BitSelect.i1.i9.i32(i9 %tmp_13, i32 8)
  br i1 %tmp_14, label %7, label %._crit_edge3

; <label>:7                                       ; preds = %._crit_edge
  %k1_cast = zext i8 %k1 to i9
  %tmp_15 = add i9 -2, %k1_cast
  %tmp_16 = sext i9 %tmp_15 to i64
  %c_addr_4 = getelementptr [256 x i8]* %c, i64 0, i64 %tmp_16
  %c_load_3 = load i8* %c_addr_4, align 1
  %tmp_17 = add i8 1, %c_load_3
  store i8 %tmp_17, i8* %c_addr_4, align 1
  br label %._crit_edge3

._crit_edge3:                                     ; preds = %7, %._crit_edge
  %tmp_18 = add i8 %c_load_2, %carry
  store i8 %tmp_18, i8* %c_addr_3, align 1
  br label %4

; <label>:8                                       ; preds = %.preheader
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

define weak i8 @_ssdm_op_PartSelect.i8.i16.i32.i32(i16, i32, i32) nounwind readnone {
entry:
  %empty = call i16 @llvm.part.select.i16(i16 %0, i32 %1, i32 %2)
  %empty_9 = trunc i16 %empty to i8
  ret i8 %empty_9
}

define weak i1 @_ssdm_op_BitSelect.i1.i9.i32(i9, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i9
  %empty_10 = shl i9 1, %empty
  %empty_11 = and i9 %0, %empty_10
  %empty_12 = icmp ne i9 %empty_11, 0
  ret i1 %empty_12
}

!opencl.kernels = !{!0}
!hls.encrypted.func = !{}
!llvm.map.gv = !{}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 1}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"uchar*", metadata !"uchar*", metadata !"uchar*"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"a", metadata !"b", metadata !"c"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{metadata !8}
!8 = metadata !{i32 0, i32 7, metadata !9}
!9 = metadata !{metadata !10}
!10 = metadata !{metadata !"a", metadata !11, metadata !"unsigned char", i32 0, i32 7}
!11 = metadata !{metadata !12}
!12 = metadata !{i32 0, i32 127, i32 1}
!13 = metadata !{metadata !14}
!14 = metadata !{i32 0, i32 7, metadata !15}
!15 = metadata !{metadata !16}
!16 = metadata !{metadata !"b", metadata !11, metadata !"unsigned char", i32 0, i32 7}
!17 = metadata !{metadata !18}
!18 = metadata !{i32 0, i32 7, metadata !19}
!19 = metadata !{metadata !20}
!20 = metadata !{metadata !"c", metadata !21, metadata !"unsigned char", i32 0, i32 7}
!21 = metadata !{metadata !22}
!22 = metadata !{i32 0, i32 255, i32 1}
