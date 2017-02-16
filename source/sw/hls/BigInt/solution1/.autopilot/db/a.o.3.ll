; ModuleID = '/home/linux/Documents/DLA/source/sw/hls/BigInt/solution1/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bigint_math_str = internal unnamed_addr constant [12 x i8] c"bigint_math\00" ; [#uses=1 type=[12 x i8]*]
@RAM_1P_str = internal unnamed_addr constant [7 x i8] c"RAM_1P\00" ; [#uses=3 type=[7 x i8]*]
@p_str5 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=7 type=[1 x i8]*]
@p_str4 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=7 type=[1 x i8]*]
@p_str3 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=7 type=[1 x i8]*]
@p_str2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=12 type=[1 x i8]*]
@p_str1 = private unnamed_addr constant [11 x i8] c"PERIPH_BUS\00", align 1 ; [#uses=4 type=[11 x i8]*]
@p_str = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1 ; [#uses=4 type=[10 x i8]*]

; [#uses=1]
declare i16 @llvm.part.select.i16(i16, i32, i32) nounwind readnone

; [#uses=10]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=0]
define void @bigint_math([128 x i8]* %a, [128 x i8]* %b, [256 x i8]* %c) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap([128 x i8]* %a) nounwind, !map !7
  call void (...)* @_ssdm_op_SpecBitsMap([128 x i8]* %b) nounwind, !map !13
  call void (...)* @_ssdm_op_SpecBitsMap([256 x i8]* %c) nounwind, !map !17
  call void (...)* @_ssdm_op_SpecTopModule([12 x i8]* @bigint_math_str) nounwind
  call void @llvm.dbg.value(metadata !{[128 x i8]* %a}, i64 0, metadata !23), !dbg !35 ; [debug line = 15:32] [debug variable = a]
  call void @llvm.dbg.value(metadata !{[128 x i8]* %b}, i64 0, metadata !36), !dbg !37 ; [debug line = 15:54] [debug variable = b]
  call void @llvm.dbg.value(metadata !{[256 x i8]* %c}, i64 0, metadata !38), !dbg !42 ; [debug line = 15:76] [debug variable = c]
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [10 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [11 x i8]* @p_str1, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2) nounwind, !dbg !43 ; [debug line = 17:1]
  %empty = call i32 (...)* @_ssdm_op_SpecMemCore([128 x i8]* %a, [1 x i8]* @p_str3, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str3, i32 -1, [1 x i8]* @p_str3, [1 x i8]* @p_str3, [1 x i8]* @p_str3, [1 x i8]* @p_str3, [1 x i8]* @p_str3) nounwind ; [#uses=0 type=i32]
  call void (...)* @_ssdm_op_SpecInterface([128 x i8]* %a, [10 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [11 x i8]* @p_str1, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2) nounwind
  %empty_4 = call i32 (...)* @_ssdm_op_SpecMemCore([128 x i8]* %b, [1 x i8]* @p_str4, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str4, i32 -1, [1 x i8]* @p_str4, [1 x i8]* @p_str4, [1 x i8]* @p_str4, [1 x i8]* @p_str4, [1 x i8]* @p_str4) nounwind ; [#uses=0 type=i32]
  call void (...)* @_ssdm_op_SpecInterface([128 x i8]* %b, [10 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [11 x i8]* @p_str1, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2) nounwind
  %empty_5 = call i32 (...)* @_ssdm_op_SpecMemCore([256 x i8]* %c, [1 x i8]* @p_str5, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str5, i32 -1, [1 x i8]* @p_str5, [1 x i8]* @p_str5, [1 x i8]* @p_str5, [1 x i8]* @p_str5, [1 x i8]* @p_str5) nounwind ; [#uses=0 type=i32]
  call void (...)* @_ssdm_op_SpecInterface([256 x i8]* %c, [10 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [11 x i8]* @p_str1, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2) nounwind
  br label %1, !dbg !45                           ; [debug line = 28:6]

; <label>:1                                       ; preds = %2, %0
  %i = phi i9 [ 0, %0 ], [ %i_2, %2 ]             ; [#uses=3 type=i9]
  %exitcond2 = icmp eq i9 %i, -256, !dbg !45      ; [#uses=1 type=i1] [debug line = 28:6]
  %empty_6 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 256, i64 256, i64 256) nounwind ; [#uses=0 type=i32]
  %i_2 = add i9 %i, 1, !dbg !47                   ; [#uses=1 type=i9] [debug line = 28:22]
  br i1 %exitcond2, label %.preheader, label %2, !dbg !45 ; [debug line = 28:6]

; <label>:2                                       ; preds = %1
  %tmp = zext i9 %i to i64, !dbg !48              ; [#uses=1 type=i64] [debug line = 29:3]
  %c_addr = getelementptr [256 x i8]* %c, i64 0, i64 %tmp, !dbg !48 ; [#uses=1 type=i8*] [debug line = 29:3]
  store i8 0, i8* %c_addr, align 1, !dbg !48      ; [debug line = 29:3]
  call void @llvm.dbg.value(metadata !{i9 %i_2}, i64 0, metadata !50), !dbg !47 ; [debug line = 28:22] [debug variable = i]
  br label %1, !dbg !47                           ; [debug line = 28:22]

.preheader:                                       ; preds = %4, %1
  %i_1 = phi i8 [ 0, %1 ], [ %i_3, %4 ]           ; [#uses=4 type=i8]
  %exitcond1 = icmp eq i8 %i_1, -128, !dbg !52    ; [#uses=1 type=i1] [debug line = 32:6]
  %empty_7 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 128, i64 128, i64 128) nounwind ; [#uses=0 type=i32]
  %i_3 = add i8 %i_1, 1, !dbg !54                 ; [#uses=1 type=i8] [debug line = 32:22]
  call void @llvm.dbg.value(metadata !{i8 %i_3}, i64 0, metadata !50), !dbg !54 ; [debug line = 32:22] [debug variable = i]
  br i1 %exitcond1, label %8, label %3, !dbg !52  ; [debug line = 32:6]

; <label>:3                                       ; preds = %.preheader
  %k = xor i8 %i_1, -1, !dbg !55                  ; [#uses=1 type=i8] [debug line = 33:3]
  call void @llvm.dbg.value(metadata !{i8 %k}, i64 0, metadata !57), !dbg !55 ; [debug line = 33:3] [debug variable = k]
  %tmp_3 = sub i8 127, %i_1, !dbg !58             ; [#uses=1 type=i8] [debug line = 36:4]
  %tmp_4 = zext i8 %tmp_3 to i64, !dbg !58        ; [#uses=1 type=i64] [debug line = 36:4]
  %b_addr = getelementptr [128 x i8]* %b, i64 0, i64 %tmp_4, !dbg !58 ; [#uses=1 type=i8*] [debug line = 36:4]
  br label %4, !dbg !61                           ; [debug line = 35:7]

; <label>:4                                       ; preds = %._crit_edge3, %3
  %j = phi i8 [ 0, %3 ], [ %j_1, %._crit_edge3 ]  ; [#uses=3 type=i8]
  %k1 = phi i8 [ %k, %3 ], [ %k_1, %._crit_edge3 ] ; [#uses=4 type=i8]
  %exitcond = icmp eq i8 %j, -128, !dbg !61       ; [#uses=1 type=i1] [debug line = 35:7]
  %empty_8 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 128, i64 128, i64 128) nounwind ; [#uses=0 type=i32]
  %j_1 = add i8 %j, 1, !dbg !62                   ; [#uses=1 type=i8] [debug line = 35:23]
  br i1 %exitcond, label %.preheader, label %5, !dbg !61 ; [debug line = 35:7]

; <label>:5                                       ; preds = %4
  %b_load = load i8* %b_addr, align 1, !dbg !58   ; [#uses=2 type=i8] [debug line = 36:4]
  %tmp_6 = sub i8 127, %j, !dbg !58               ; [#uses=1 type=i8] [debug line = 36:4]
  %tmp_7 = zext i8 %tmp_6 to i64, !dbg !58        ; [#uses=1 type=i64] [debug line = 36:4]
  %a_addr = getelementptr [128 x i8]* %a, i64 0, i64 %tmp_7, !dbg !58 ; [#uses=1 type=i8*] [debug line = 36:4]
  %a_load = load i8* %a_addr, align 1, !dbg !58   ; [#uses=2 type=i8] [debug line = 36:4]
  %prod = mul i8 %b_load, %a_load, !dbg !58       ; [#uses=2 type=i8] [debug line = 36:4]
  call void @llvm.dbg.value(metadata !{i8 %prod}, i64 0, metadata !63), !dbg !58 ; [debug line = 36:4] [debug variable = prod]
  %tmp_9_cast = zext i8 %b_load to i16, !dbg !64  ; [#uses=1 type=i16] [debug line = 37:4]
  %tmp_cast = zext i8 %a_load to i16, !dbg !64    ; [#uses=1 type=i16] [debug line = 37:4]
  %tmp_1 = mul i16 %tmp_9_cast, %tmp_cast, !dbg !64 ; [#uses=1 type=i16] [debug line = 37:4]
  %carry = call i8 @_ssdm_op_PartSelect.i8.i16.i32.i32(i16 %tmp_1, i32 8, i32 15), !dbg !64 ; [#uses=2 type=i8] [debug line = 37:4]
  call void @llvm.dbg.value(metadata !{i8 %carry}, i64 0, metadata !65), !dbg !64 ; [debug line = 37:4] [debug variable = carry]
  %tmp_5 = zext i8 %k1 to i64, !dbg !66           ; [#uses=1 type=i64] [debug line = 39:4]
  %c_addr_1 = getelementptr [256 x i8]* %c, i64 0, i64 %tmp_5, !dbg !66 ; [#uses=2 type=i8*] [debug line = 39:4]
  %c_load = load i8* %c_addr_1, align 1, !dbg !66 ; [#uses=2 type=i8] [debug line = 39:4]
  %tmp_8_cast = zext i8 %c_load to i9, !dbg !66   ; [#uses=1 type=i9] [debug line = 39:4]
  %tmp_10_cast = zext i8 %prod to i9, !dbg !66    ; [#uses=1 type=i9] [debug line = 39:4]
  %tmp_s = add i9 %tmp_10_cast, %tmp_8_cast, !dbg !66 ; [#uses=1 type=i9] [debug line = 39:4]
  %tmp_8 = call i1 @_ssdm_op_BitSelect.i1.i9.i32(i9 %tmp_s, i32 8), !dbg !66 ; [#uses=1 type=i1] [debug line = 39:4]
  br i1 %tmp_8, label %6, label %._crit_edge, !dbg !66 ; [debug line = 39:4]

; <label>:6                                       ; preds = %5
  %tmp_2 = add i8 -1, %k1, !dbg !67               ; [#uses=1 type=i8] [debug line = 40:5]
  %tmp_9 = zext i8 %tmp_2 to i64, !dbg !67        ; [#uses=1 type=i64] [debug line = 40:5]
  %c_addr_2 = getelementptr [256 x i8]* %c, i64 0, i64 %tmp_9, !dbg !67 ; [#uses=2 type=i8*] [debug line = 40:5]
  %c_load_1 = load i8* %c_addr_2, align 1, !dbg !67 ; [#uses=1 type=i8] [debug line = 40:5]
  %tmp_10 = add i8 1, %c_load_1, !dbg !67         ; [#uses=1 type=i8] [debug line = 40:5]
  store i8 %tmp_10, i8* %c_addr_2, align 1, !dbg !67 ; [debug line = 40:5]
  br label %._crit_edge, !dbg !69                 ; [debug line = 41:4]

._crit_edge:                                      ; preds = %6, %5
  %tmp_11 = add i8 %c_load, %prod, !dbg !70       ; [#uses=1 type=i8] [debug line = 43:4]
  store i8 %tmp_11, i8* %c_addr_1, align 1, !dbg !70 ; [debug line = 43:4]
  %k_1 = add i8 %k1, -1, !dbg !71                 ; [#uses=2 type=i8] [debug line = 45:4]
  %tmp_12 = zext i8 %k_1 to i64, !dbg !71         ; [#uses=1 type=i64] [debug line = 45:4]
  %c_addr_3 = getelementptr [256 x i8]* %c, i64 0, i64 %tmp_12, !dbg !71 ; [#uses=2 type=i8*] [debug line = 45:4]
  %c_load_2 = load i8* %c_addr_3, align 1, !dbg !71 ; [#uses=2 type=i8] [debug line = 45:4]
  %tmp_20_cast = zext i8 %c_load_2 to i9, !dbg !71 ; [#uses=1 type=i9] [debug line = 45:4]
  %tmp_21_cast = zext i8 %carry to i9, !dbg !71   ; [#uses=1 type=i9] [debug line = 45:4]
  %tmp_13 = add i9 %tmp_21_cast, %tmp_20_cast, !dbg !71 ; [#uses=1 type=i9] [debug line = 45:4]
  %tmp_14 = call i1 @_ssdm_op_BitSelect.i1.i9.i32(i9 %tmp_13, i32 8), !dbg !71 ; [#uses=1 type=i1] [debug line = 45:4]
  br i1 %tmp_14, label %7, label %._crit_edge3, !dbg !71 ; [debug line = 45:4]

; <label>:7                                       ; preds = %._crit_edge
  %k1_cast = zext i8 %k1 to i9, !dbg !61          ; [#uses=1 type=i9] [debug line = 35:7]
  %tmp_15 = add i9 -2, %k1_cast, !dbg !72         ; [#uses=1 type=i9] [debug line = 46:5]
  %tmp_16 = sext i9 %tmp_15 to i64, !dbg !72      ; [#uses=1 type=i64] [debug line = 46:5]
  %c_addr_4 = getelementptr [256 x i8]* %c, i64 0, i64 %tmp_16, !dbg !72 ; [#uses=2 type=i8*] [debug line = 46:5]
  %c_load_3 = load i8* %c_addr_4, align 1, !dbg !72 ; [#uses=1 type=i8] [debug line = 46:5]
  %tmp_17 = add i8 1, %c_load_3, !dbg !72         ; [#uses=1 type=i8] [debug line = 46:5]
  store i8 %tmp_17, i8* %c_addr_4, align 1, !dbg !72 ; [debug line = 46:5]
  br label %._crit_edge3, !dbg !74                ; [debug line = 47:4]

._crit_edge3:                                     ; preds = %7, %._crit_edge
  %tmp_18 = add i8 %c_load_2, %carry, !dbg !75    ; [#uses=1 type=i8] [debug line = 48:4]
  store i8 %tmp_18, i8* %c_addr_3, align 1, !dbg !75 ; [debug line = 48:4]
  call void @llvm.dbg.value(metadata !{i8 %k_1}, i64 0, metadata !57), !dbg !76 ; [debug line = 50:4] [debug variable = k]
  call void @llvm.dbg.value(metadata !{i8 %j_1}, i64 0, metadata !77), !dbg !62 ; [debug line = 35:23] [debug variable = j]
  br label %4, !dbg !62                           ; [debug line = 35:23]

; <label>:8                                       ; preds = %.preheader
  ret void, !dbg !78                              ; [debug line = 54:1]
}

; [#uses=1]
define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

; [#uses=3]
define weak i32 @_ssdm_op_SpecMemCore(...) {
entry:
  ret i32 0
}

; [#uses=3]
define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

; [#uses=4]
define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

; [#uses=3]
define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

; [#uses=1]
define weak i8 @_ssdm_op_PartSelect.i8.i16.i32.i32(i16, i32, i32) nounwind readnone {
entry:
  %empty = call i16 @llvm.part.select.i16(i16 %0, i32 %1, i32 %2) ; [#uses=1 type=i16]
  %empty_9 = trunc i16 %empty to i8               ; [#uses=1 type=i8]
  ret i8 %empty_9
}

; [#uses=2]
define weak i1 @_ssdm_op_BitSelect.i1.i9.i32(i9, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i9                     ; [#uses=1 type=i9]
  %empty_10 = shl i9 1, %empty                    ; [#uses=1 type=i9]
  %empty_11 = and i9 %0, %empty_10                ; [#uses=1 type=i9]
  %empty_12 = icmp ne i9 %empty_11, 0             ; [#uses=1 type=i1]
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
!23 = metadata !{i32 786689, metadata !24, metadata !"a", null, i32 15, metadata !32, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!24 = metadata !{i32 786478, i32 0, metadata !25, metadata !"bigint_math", metadata !"bigint_math", metadata !"_Z11bigint_mathPhS_S_", metadata !25, i32 15, metadata !26, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !30, i32 15} ; [ DW_TAG_subprogram ]
!25 = metadata !{i32 786473, metadata !"BigInt/solution1/main.cpp", metadata !"/home/linux/Documents/DLA/source/sw/hls", null} ; [ DW_TAG_file_type ]
!26 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !27, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!27 = metadata !{null, metadata !28, metadata !28, metadata !28}
!28 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !29} ; [ DW_TAG_pointer_type ]
!29 = metadata !{i32 786468, null, metadata !"unsigned char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ]
!30 = metadata !{metadata !31}
!31 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!32 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 1024, i64 8, i32 0, i32 0, metadata !29, metadata !33, i32 0, i32 0} ; [ DW_TAG_array_type ]
!33 = metadata !{metadata !34}
!34 = metadata !{i32 786465, i64 0, i64 127}      ; [ DW_TAG_subrange_type ]
!35 = metadata !{i32 15, i32 32, metadata !24, null}
!36 = metadata !{i32 786689, metadata !24, metadata !"b", null, i32 15, metadata !32, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!37 = metadata !{i32 15, i32 54, metadata !24, null}
!38 = metadata !{i32 786689, metadata !24, metadata !"c", null, i32 15, metadata !39, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!39 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 2048, i64 8, i32 0, i32 0, metadata !29, metadata !40, i32 0, i32 0} ; [ DW_TAG_array_type ]
!40 = metadata !{metadata !41}
!41 = metadata !{i32 786465, i64 0, i64 255}      ; [ DW_TAG_subrange_type ]
!42 = metadata !{i32 15, i32 76, metadata !24, null}
!43 = metadata !{i32 17, i32 1, metadata !44, null}
!44 = metadata !{i32 786443, metadata !24, i32 15, i32 83, metadata !25, i32 0} ; [ DW_TAG_lexical_block ]
!45 = metadata !{i32 28, i32 6, metadata !46, null}
!46 = metadata !{i32 786443, metadata !44, i32 28, i32 2, metadata !25, i32 1} ; [ DW_TAG_lexical_block ]
!47 = metadata !{i32 28, i32 22, metadata !46, null}
!48 = metadata !{i32 29, i32 3, metadata !49, null}
!49 = metadata !{i32 786443, metadata !46, i32 28, i32 26, metadata !25, i32 2} ; [ DW_TAG_lexical_block ]
!50 = metadata !{i32 786688, metadata !44, metadata !"i", metadata !25, i32 24, metadata !51, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!51 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!52 = metadata !{i32 32, i32 6, metadata !53, null}
!53 = metadata !{i32 786443, metadata !44, i32 32, i32 2, metadata !25, i32 3} ; [ DW_TAG_lexical_block ]
!54 = metadata !{i32 32, i32 22, metadata !53, null}
!55 = metadata !{i32 33, i32 3, metadata !56, null}
!56 = metadata !{i32 786443, metadata !53, i32 32, i32 26, metadata !25, i32 4} ; [ DW_TAG_lexical_block ]
!57 = metadata !{i32 786688, metadata !44, metadata !"k", metadata !25, i32 26, metadata !51, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!58 = metadata !{i32 36, i32 4, metadata !59, null}
!59 = metadata !{i32 786443, metadata !60, i32 35, i32 27, metadata !25, i32 6} ; [ DW_TAG_lexical_block ]
!60 = metadata !{i32 786443, metadata !56, i32 35, i32 3, metadata !25, i32 5} ; [ DW_TAG_lexical_block ]
!61 = metadata !{i32 35, i32 7, metadata !60, null}
!62 = metadata !{i32 35, i32 23, metadata !60, null}
!63 = metadata !{i32 786688, metadata !44, metadata !"prod", metadata !25, i32 22, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!64 = metadata !{i32 37, i32 4, metadata !59, null}
!65 = metadata !{i32 786688, metadata !44, metadata !"carry", metadata !25, i32 23, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!66 = metadata !{i32 39, i32 4, metadata !59, null}
!67 = metadata !{i32 40, i32 5, metadata !68, null}
!68 = metadata !{i32 786443, metadata !59, i32 39, i32 28, metadata !25, i32 7} ; [ DW_TAG_lexical_block ]
!69 = metadata !{i32 41, i32 4, metadata !68, null}
!70 = metadata !{i32 43, i32 4, metadata !59, null}
!71 = metadata !{i32 45, i32 4, metadata !59, null}
!72 = metadata !{i32 46, i32 5, metadata !73, null}
!73 = metadata !{i32 786443, metadata !59, i32 45, i32 31, metadata !25, i32 8} ; [ DW_TAG_lexical_block ]
!74 = metadata !{i32 47, i32 4, metadata !73, null}
!75 = metadata !{i32 48, i32 4, metadata !59, null}
!76 = metadata !{i32 50, i32 4, metadata !59, null}
!77 = metadata !{i32 786688, metadata !44, metadata !"j", metadata !25, i32 25, metadata !51, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!78 = metadata !{i32 54, i32 1, metadata !44, null}
