; ModuleID = '/home/jlim/Documents/school/DLA/source/sw/rsa_HLS/solution1/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@encrypt_str = internal unnamed_addr constant [8 x i8] c"encrypt\00" ; [#uses=1 type=[8 x i8]*]

; [#uses=5]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=0]
define i512 @encrypt(i512 %key, i512 %exponent) nounwind uwtable readnone {
  call void (...)* @_ssdm_op_SpecBitsMap(i512 %key) nounwind, !map !7
  call void (...)* @_ssdm_op_SpecBitsMap(i512 %exponent) nounwind, !map !13
  call void (...)* @_ssdm_op_SpecBitsMap(i512 0) nounwind, !map !17
  call void (...)* @_ssdm_op_SpecTopModule([8 x i8]* @encrypt_str) nounwind
  %exponent_read = call i512 @_ssdm_op_Read.ap_auto.i512(i512 %exponent) nounwind ; [#uses=1 type=i512]
  call void @llvm.dbg.value(metadata !{i512 %exponent_read}, i64 0, metadata !23), !dbg !32 ; [debug line = 6:38] [debug variable = exponent]
  %key_read = call i512 @_ssdm_op_Read.ap_auto.i512(i512 %key) nounwind ; [#uses=1 type=i512]
  call void @llvm.dbg.value(metadata !{i512 %key_read}, i64 0, metadata !33), !dbg !34 ; [debug line = 6:25] [debug variable = key]
  call void @llvm.dbg.value(metadata !{i512 %key}, i64 0, metadata !33), !dbg !34 ; [debug line = 6:25] [debug variable = key]
  call void @llvm.dbg.value(metadata !{i512 %exponent}, i64 0, metadata !23), !dbg !32 ; [debug line = 6:38] [debug variable = exponent]
  %cyper = xor i512 %exponent_read, 100, !dbg !35 ; [#uses=1 type=i512] [debug line = 9:34]
  call void @llvm.dbg.value(metadata !{i512 %cyper}, i64 0, metadata !37), !dbg !35 ; [debug line = 9:34] [debug variable = cyper]
  %tmp = urem i512 %cyper, %key_read, !dbg !38    ; [#uses=1 type=i512] [debug line = 11:2]
  ret i512 %tmp, !dbg !38                         ; [debug line = 11:2]
}

; [#uses=1]
define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

; [#uses=3]
define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

; [#uses=2]
define weak i512 @_ssdm_op_Read.ap_auto.i512(i512) {
entry:
  ret i512 %0
}

!opencl.kernels = !{!0}
!hls.encrypted.func = !{}
!llvm.map.gv = !{}

!0 = metadata !{i512 (i512, i512)* @encrypt, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"uint512", metadata !"uint512"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"key", metadata !"exponent"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{metadata !8}
!8 = metadata !{i32 0, i32 511, metadata !9}
!9 = metadata !{metadata !10}
!10 = metadata !{metadata !"key", metadata !11, metadata !"uint512", i32 0, i32 511}
!11 = metadata !{metadata !12}
!12 = metadata !{i32 0, i32 0, i32 0}
!13 = metadata !{metadata !14}
!14 = metadata !{i32 0, i32 511, metadata !15}
!15 = metadata !{metadata !16}
!16 = metadata !{metadata !"exponent", metadata !11, metadata !"uint512", i32 0, i32 511}
!17 = metadata !{metadata !18}
!18 = metadata !{i32 0, i32 511, metadata !19}
!19 = metadata !{metadata !20}
!20 = metadata !{metadata !"return", metadata !21, metadata !"uint512", i32 0, i32 511}
!21 = metadata !{metadata !22}
!22 = metadata !{i32 0, i32 1, i32 0}
!23 = metadata !{i32 786689, metadata !24, metadata !"exponent", metadata !25, i32 33554438, metadata !28, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!24 = metadata !{i32 786478, i32 0, metadata !25, metadata !"encrypt", metadata !"encrypt", metadata !"_Z7encryptDq512_jS_", metadata !25, i32 6, metadata !26, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i512 (i512, i512)* @encrypt, null, null, metadata !30, i32 6} ; [ DW_TAG_subprogram ]
!25 = metadata !{i32 786473, metadata !"rsa_HLS/solution1/main.cpp", metadata !"/home/jlim/Documents/school/DLA/source/sw", null} ; [ DW_TAG_file_type ]
!26 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !27, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!27 = metadata !{metadata !28, metadata !28, metadata !28}
!28 = metadata !{i32 786454, null, metadata !"uint512", metadata !25, i32 526, i64 0, i64 0, i64 0, i32 0, metadata !29} ; [ DW_TAG_typedef ]
!29 = metadata !{i32 786468, null, metadata !"uint512", null, i32 0, i64 512, i64 512, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!30 = metadata !{metadata !31}
!31 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!32 = metadata !{i32 6, i32 38, metadata !24, null}
!33 = metadata !{i32 786689, metadata !24, metadata !"key", metadata !25, i32 16777222, metadata !28, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!34 = metadata !{i32 6, i32 25, metadata !24, null}
!35 = metadata !{i32 9, i32 34, metadata !36, null}
!36 = metadata !{i32 786443, metadata !24, i32 6, i32 47, metadata !25, i32 0} ; [ DW_TAG_lexical_block ]
!37 = metadata !{i32 786688, metadata !36, metadata !"cyper", metadata !25, i32 9, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!38 = metadata !{i32 11, i32 2, metadata !36, null}
