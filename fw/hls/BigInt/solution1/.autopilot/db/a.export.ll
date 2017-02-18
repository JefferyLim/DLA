; ModuleID = '/home/linux/Documents/DLA/source/sw/hls/BigInt/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535]
@bigint_math_str = internal unnamed_addr constant [12 x i8] c"bigint_math\00"
@RAM_1P_str = internal unnamed_addr constant [7 x i8] c"RAM_1P\00"
@p_str4 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str3 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str1 = private unnamed_addr constant [11 x i8] c"PERIPH_BUS\00", align 1
@p_str = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1

declare i16 @llvm.part.select.i16(i16, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

define void @bigint_math([128 x i8]* %a, [128 x i8]* %b, i2048* %output_V) {
  call void (...)* @_ssdm_op_SpecBitsMap([128 x i8]* %a), !map !45
  call void (...)* @_ssdm_op_SpecBitsMap([128 x i8]* %b), !map !51
  call void (...)* @_ssdm_op_SpecBitsMap(i2048* %output_V), !map !55
  call void (...)* @_ssdm_op_SpecTopModule([12 x i8]* @bigint_math_str) nounwind
  %c = alloca [256 x i8], align 16
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [10 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [11 x i8]* @p_str1, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2) nounwind
  %empty = call i32 (...)* @_ssdm_op_SpecMemCore([128 x i8]* %a, [1 x i8]* @p_str3, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str3, i32 -1, [1 x i8]* @p_str3, [1 x i8]* @p_str3, [1 x i8]* @p_str3, [1 x i8]* @p_str3, [1 x i8]* @p_str3)
  call void (...)* @_ssdm_op_SpecInterface([128 x i8]* %a, [10 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [11 x i8]* @p_str1, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2) nounwind
  %empty_5 = call i32 (...)* @_ssdm_op_SpecMemCore([128 x i8]* %b, [1 x i8]* @p_str4, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str4, i32 -1, [1 x i8]* @p_str4, [1 x i8]* @p_str4, [1 x i8]* @p_str4, [1 x i8]* @p_str4, [1 x i8]* @p_str4)
  call void (...)* @_ssdm_op_SpecInterface([128 x i8]* %b, [10 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [11 x i8]* @p_str1, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i2048* %output_V, [10 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [11 x i8]* @p_str1, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2) nounwind
  br label %.loopexit

.loopexit:                                        ; preds = %2, %0
  %i = phi i8 [ 0, %0 ], [ %i_2, %2 ]
  %exitcond1 = icmp eq i8 %i, -128
  %empty_6 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 128, i64 128, i64 128)
  %i_2 = add i8 %i, 1
  br i1 %exitcond1, label %.preheader, label %1

; <label>:1                                       ; preds = %.loopexit
  %k = xor i8 %i, -1
  %tmp = sub i8 127, %i
  %tmp_1 = zext i8 %tmp to i64
  %b_addr = getelementptr [128 x i8]* %b, i64 0, i64 %tmp_1
  %b_load = load i8* %b_addr, align 1
  %tmp_2_cast = zext i8 %b_load to i16
  br label %2

; <label>:2                                       ; preds = %._crit_edge56, %1
  %j = phi i8 [ 0, %1 ], [ %j_1, %._crit_edge56 ]
  %k1 = phi i8 [ %k, %1 ], [ %k_1, %._crit_edge56 ]
  %exitcond2 = icmp eq i8 %j, -128
  %empty_7 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 128, i64 128, i64 128)
  %j_1 = add i8 %j, 1
  br i1 %exitcond2, label %.loopexit, label %3

; <label>:3                                       ; preds = %2
  %tmp_6 = sub i8 127, %j
  %tmp_7 = zext i8 %tmp_6 to i64
  %a_addr = getelementptr [128 x i8]* %a, i64 0, i64 %tmp_7
  %a_load = load i8* %a_addr, align 1
  %prod = mul i8 %b_load, %a_load
  %tmp_9_cast = zext i8 %a_load to i16
  %tmp_s = mul i16 %tmp_2_cast, %tmp_9_cast
  %carry = call i8 @_ssdm_op_PartSelect.i8.i16.i32.i32(i16 %tmp_s, i32 8, i32 15)
  %tmp_5 = zext i8 %k1 to i64
  %c_addr_1 = getelementptr inbounds [256 x i8]* %c, i64 0, i64 %tmp_5
  %c_load = load i8* %c_addr_1, align 1
  %tmp_8_cast = zext i8 %c_load to i9
  %tmp_10_cast = zext i8 %prod to i9
  %tmp_8 = add i9 %tmp_10_cast, %tmp_8_cast
  %tmp_9 = call i1 @_ssdm_op_BitSelect.i1.i9.i32(i9 %tmp_8, i32 8)
  br i1 %tmp_9, label %4, label %._crit_edge

; <label>:4                                       ; preds = %3
  %tmp_4 = add i8 -1, %k1
  %tmp_10 = zext i8 %tmp_4 to i64
  %c_addr_2 = getelementptr inbounds [256 x i8]* %c, i64 0, i64 %tmp_10
  %c_load_1 = load i8* %c_addr_2, align 1
  %tmp_11 = add i8 1, %c_load_1
  store i8 %tmp_11, i8* %c_addr_2, align 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %4, %3
  %tmp_12 = add i8 %c_load, %prod
  store i8 %tmp_12, i8* %c_addr_1, align 1
  %k_1 = add i8 %k1, -1
  %tmp_13 = zext i8 %k_1 to i64
  %c_addr_3 = getelementptr inbounds [256 x i8]* %c, i64 0, i64 %tmp_13
  %c_load_2 = load i8* %c_addr_3, align 1
  %tmp_20_cast = zext i8 %c_load_2 to i9
  %tmp_21_cast = zext i8 %carry to i9
  %tmp_14 = add i9 %tmp_21_cast, %tmp_20_cast
  %tmp_15 = call i1 @_ssdm_op_BitSelect.i1.i9.i32(i9 %tmp_14, i32 8)
  br i1 %tmp_15, label %5, label %._crit_edge56

; <label>:5                                       ; preds = %._crit_edge
  %k1_cast = zext i8 %k1 to i9
  %tmp_16 = add i9 -2, %k1_cast
  %tmp_17 = sext i9 %tmp_16 to i64
  %c_addr_4 = getelementptr inbounds [256 x i8]* %c, i64 0, i64 %tmp_17
  %c_load_3 = load i8* %c_addr_4, align 1
  %tmp_18 = add i8 1, %c_load_3
  store i8 %tmp_18, i8* %c_addr_4, align 1
  br label %._crit_edge56

._crit_edge56:                                    ; preds = %5, %._crit_edge
  %tmp_19 = add i8 %c_load_2, %carry
  store i8 %tmp_19, i8* %c_addr_3, align 1
  br label %2

.preheader:                                       ; preds = %.loopexit, %6
  %p_Repl2_1 = phi i2048 [ %temp1_V, %6 ], [ 0, %.loopexit ]
  %i1 = phi i32 [ %i_1, %6 ], [ 255, %.loopexit ]
  %exitcond = icmp eq i32 %i1, -2147483648
  %empty_8 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 2147483393, i64 2147483393, i64 2147483393)
  br i1 %exitcond, label %7, label %6

; <label>:6                                       ; preds = %.preheader
  %tmp_3 = zext i32 %i1 to i64
  %c_addr = getelementptr inbounds [256 x i8]* %c, i64 0, i64 %tmp_3
  %p_Repl2_s = load i8* %c_addr, align 1
  %tmp_2 = trunc i2048 %p_Repl2_1 to i2040
  %temp1_V = call i2048 @_ssdm_op_BitConcatenate.i2048.i2040.i8(i2040 %tmp_2, i8 %p_Repl2_s)
  %i_1 = add nsw i32 1, %i1
  br label %.preheader

; <label>:7                                       ; preds = %.preheader
  call void @_ssdm_op_Write.s_axilite.i2048P(i2048* %output_V, i2048 %p_Repl2_1)
  ret void
}

define weak void @_ssdm_op_Write.s_axilite.i2048P(i2048*, i2048) {
entry:
  store i2048 %1, i2048* %0
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

declare i2040 @_ssdm_op_PartSelect.i2040.i2048.i32.i32(i2048, i32, i32) nounwind readnone

define weak i1 @_ssdm_op_BitSelect.i1.i9.i32(i9, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i9
  %empty_10 = shl i9 1, %empty
  %empty_11 = and i9 %0, %empty_10
  %empty_12 = icmp ne i9 %empty_11, 0
  ret i1 %empty_12
}

define weak i2048 @_ssdm_op_BitConcatenate.i2048.i2040.i8(i2040, i8) nounwind readnone {
entry:
  %empty = zext i2040 %0 to i2048
  %empty_13 = zext i8 %1 to i2048
  %empty_14 = shl i2048 %empty, 8
  %empty_15 = or i2048 %empty_14, %empty_13
  ret i2048 %empty_15
}

declare void @_GLOBAL__I_a() nounwind section ".text.startup"

!opencl.kernels = !{!0, !7, !7, !7, !13, !13, !13, !19, !19, !13, !13, !22, !25, !28, !28, !34, !34, !13, !13, !37, !37, !13}
!hls.encrypted.func = !{}
!llvm.map.gv = !{!38}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 1}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"uchar*", metadata !"uchar*", metadata !"uint2048*"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"a", metadata !"b", metadata !"output"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !6}
!8 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!9 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!10 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_concat_ref<2048, struct ap_int_base<2048, false, false>, 8, struct ap_int_base<8, false, true> > &"}
!11 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!12 = metadata !{metadata !"kernel_arg_name", metadata !"ref"}
!13 = metadata !{null, metadata !14, metadata !15, metadata !16, metadata !17, metadata !18, metadata !6}
!14 = metadata !{metadata !"kernel_arg_addr_space"}
!15 = metadata !{metadata !"kernel_arg_access_qual"}
!16 = metadata !{metadata !"kernel_arg_type"}
!17 = metadata !{metadata !"kernel_arg_type_qual"}
!18 = metadata !{metadata !"kernel_arg_name"}
!19 = metadata !{null, metadata !8, metadata !9, metadata !20, metadata !11, metadata !21, metadata !6}
!20 = metadata !{metadata !"kernel_arg_type", metadata !"int"}
!21 = metadata !{metadata !"kernel_arg_name", metadata !"op"}
!22 = metadata !{null, metadata !8, metadata !9, metadata !23, metadata !11, metadata !24, metadata !6}
!23 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<2048> &"}
!24 = metadata !{metadata !"kernel_arg_name", metadata !"op2"}
!25 = metadata !{null, metadata !8, metadata !9, metadata !26, metadata !11, metadata !27, metadata !6}
!26 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<8, false> &"}
!27 = metadata !{metadata !"kernel_arg_name", metadata !"a2"}
!28 = metadata !{null, metadata !29, metadata !30, metadata !31, metadata !32, metadata !33, metadata !6}
!29 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0}
!30 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!31 = metadata !{metadata !"kernel_arg_type", metadata !"struct ap_int_base<2048, false, false> &", metadata !"struct ap_int_base<8, false, true> &"}
!32 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!33 = metadata !{metadata !"kernel_arg_name", metadata !"bv1", metadata !"bv2"}
!34 = metadata !{null, metadata !8, metadata !9, metadata !35, metadata !11, metadata !36, metadata !6}
!35 = metadata !{metadata !"kernel_arg_type", metadata !"uchar"}
!36 = metadata !{metadata !"kernel_arg_name", metadata !"val"}
!37 = metadata !{null, metadata !8, metadata !9, metadata !20, metadata !11, metadata !36, metadata !6}
!38 = metadata !{metadata !39, [1 x i32]* @llvm_global_ctors_0}
!39 = metadata !{metadata !40}
!40 = metadata !{i32 0, i32 31, metadata !41}
!41 = metadata !{metadata !42}
!42 = metadata !{metadata !"llvm.global_ctors.0", metadata !43, metadata !"", i32 0, i32 31}
!43 = metadata !{metadata !44}
!44 = metadata !{i32 0, i32 0, i32 1}
!45 = metadata !{metadata !46}
!46 = metadata !{i32 0, i32 7, metadata !47}
!47 = metadata !{metadata !48}
!48 = metadata !{metadata !"a", metadata !49, metadata !"unsigned char", i32 0, i32 7}
!49 = metadata !{metadata !50}
!50 = metadata !{i32 0, i32 127, i32 1}
!51 = metadata !{metadata !52}
!52 = metadata !{i32 0, i32 7, metadata !53}
!53 = metadata !{metadata !54}
!54 = metadata !{metadata !"b", metadata !49, metadata !"unsigned char", i32 0, i32 7}
!55 = metadata !{metadata !56}
!56 = metadata !{i32 0, i32 2047, metadata !57}
!57 = metadata !{metadata !58}
!58 = metadata !{metadata !"output.V", metadata !43, metadata !"uint2048", i32 0, i32 2047}
