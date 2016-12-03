; ModuleID = '/home/jlim/Documents/school/DLA/source/sw/rsa_HLS/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@encrypt.str = internal unnamed_addr constant [8 x i8] c"encrypt\00" ; [#uses=1 type=[8 x i8]*]

; [#uses=3]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=0]
define i512 @encrypt(i512 %key, i512 %exponent) nounwind uwtable readnone {
  call void (...)* @_ssdm_op_SpecBitsMap(i512 %key) nounwind, !map !27
  call void (...)* @_ssdm_op_SpecBitsMap(i512 %exponent) nounwind, !map !33
  call void (...)* @_ssdm_op_SpecBitsMap(i512 0) nounwind, !map !37
  call void (...)* @_ssdm_op_SpecTopModule([8 x i8]* @encrypt.str) nounwind
  call void @llvm.dbg.value(metadata !{i512 %key}, i64 0, metadata !43), !dbg !44 ; [debug line = 6:25] [debug variable = key]
  call void @llvm.dbg.value(metadata !{i512 %exponent}, i64 0, metadata !45), !dbg !46 ; [debug line = 6:38] [debug variable = exponent]
  %cyper = xor i512 %exponent, 100, !dbg !47      ; [#uses=1 type=i512] [debug line = 9:34]
  call void @llvm.dbg.value(metadata !{i512 %cyper}, i64 0, metadata !49), !dbg !47 ; [debug line = 9:34] [debug variable = cyper]
  %tmp = urem i512 %cyper, %key, !dbg !50         ; [#uses=1 type=i512] [debug line = 11:2]
  ret i512 %tmp, !dbg !50                         ; [debug line = 11:2]
}

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=3]
declare void @_ssdm_op_SpecBitsMap(...)

!llvm.dbg.cu = !{!0}
!opencl.kernels = !{!20}
!hls.encrypted.func = !{}
!llvm.map.gv = !{}

!0 = metadata !{i32 786449, i32 0, i32 4, metadata !"/home/jlim/Documents/school/DLA/source/sw/rsa_HLS/solution1/.autopilot/db/main.pragma.2.cpp", metadata !"/home/jlim/Documents/school/DLA/source/sw", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !13} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"encrypt", metadata !"encrypt", metadata !"_Z7encryptDq512_jS_", metadata !6, i32 6, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i512 (i512, i512)* @encrypt, null, null, metadata !11, i32 6} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"rsa_HLS/solution1/main.cpp", metadata !"/home/jlim/Documents/school/DLA/source/sw", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{metadata !9, metadata !9, metadata !9}
!9 = metadata !{i32 786454, null, metadata !"uint512", metadata !6, i32 526, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_typedef ]
!10 = metadata !{i32 786468, null, metadata !"uint512", null, i32 0, i64 512, i64 512, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!11 = metadata !{metadata !12}
!12 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!13 = metadata !{metadata !14}
!14 = metadata !{metadata !15, metadata !18, metadata !19}
!15 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stdin_", metadata !"_IO_2_1_stdin_", metadata !"", metadata !16, i32 320, metadata !17, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!16 = metadata !{i32 786473, metadata !"/usr/include/libio.h", metadata !"/home/jlim/Documents/school/DLA/source/sw", null} ; [ DW_TAG_file_type ]
!17 = metadata !{i32 786434, null, metadata !"_IO_FILE_plus", metadata !16, i32 318, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_class_type ]
!18 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stdout_", metadata !"_IO_2_1_stdout_", metadata !"", metadata !16, i32 321, metadata !17, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!19 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stderr_", metadata !"_IO_2_1_stderr_", metadata !"", metadata !16, i32 322, metadata !17, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!20 = metadata !{i512 (i512, i512)* @encrypt, metadata !21, metadata !22, metadata !23, metadata !24, metadata !25, metadata !26}
!21 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0}
!22 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!23 = metadata !{metadata !"kernel_arg_type", metadata !"uint512", metadata !"uint512"}
!24 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!25 = metadata !{metadata !"kernel_arg_name", metadata !"key", metadata !"exponent"}
!26 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!27 = metadata !{metadata !28}
!28 = metadata !{i32 0, i32 511, metadata !29}
!29 = metadata !{metadata !30}
!30 = metadata !{metadata !"key", metadata !31, metadata !"uint512", i32 0, i32 511}
!31 = metadata !{metadata !32}
!32 = metadata !{i32 0, i32 0, i32 0}
!33 = metadata !{metadata !34}
!34 = metadata !{i32 0, i32 511, metadata !35}
!35 = metadata !{metadata !36}
!36 = metadata !{metadata !"exponent", metadata !31, metadata !"uint512", i32 0, i32 511}
!37 = metadata !{metadata !38}
!38 = metadata !{i32 0, i32 511, metadata !39}
!39 = metadata !{metadata !40}
!40 = metadata !{metadata !"return", metadata !41, metadata !"uint512", i32 0, i32 511}
!41 = metadata !{metadata !42}
!42 = metadata !{i32 0, i32 1, i32 0}
!43 = metadata !{i32 786689, metadata !5, metadata !"key", metadata !6, i32 16777222, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!44 = metadata !{i32 6, i32 25, metadata !5, null}
!45 = metadata !{i32 786689, metadata !5, metadata !"exponent", metadata !6, i32 33554438, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!46 = metadata !{i32 6, i32 38, metadata !5, null}
!47 = metadata !{i32 9, i32 34, metadata !48, null}
!48 = metadata !{i32 786443, metadata !5, i32 6, i32 47, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!49 = metadata !{i32 786688, metadata !48, metadata !"cyper", metadata !6, i32 9, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!50 = metadata !{i32 11, i32 2, metadata !48, null}
