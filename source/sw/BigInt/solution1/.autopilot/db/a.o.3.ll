; ModuleID = '/home/linux/Documents/DLA/source/sw/BigInt/solution1/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a] ; [#uses=0 type=[1 x void ()*]*]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535] ; [#uses=0 type=[1 x i32]*]
@bigint_math_str = internal unnamed_addr constant [12 x i8] c"bigint_math\00" ; [#uses=1 type=[12 x i8]*]
@p_str2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=12 type=[1 x i8]*]
@p_str1 = private unnamed_addr constant [11 x i8] c"PERIPH_BUS\00", align 1 ; [#uses=4 type=[11 x i8]*]
@p_str = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1 ; [#uses=4 type=[10 x i8]*]

; [#uses=5]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=0]
define void @bigint_math(i2048 %number1_V, i2048 %number2_V, i2048* %output_V) {
  call void (...)* @_ssdm_op_SpecBitsMap(i2048 %number1_V), !map !35
  call void (...)* @_ssdm_op_SpecBitsMap(i2048 %number2_V), !map !41
  call void (...)* @_ssdm_op_SpecBitsMap(i2048* %output_V), !map !45
  call void (...)* @_ssdm_op_SpecTopModule([12 x i8]* @bigint_math_str) nounwind
  %number2_V_read = call i2048 @_ssdm_op_Read.s_axilite.i2048(i2048 %number2_V) ; [#uses=1 type=i2048]
  %number1_V_read = call i2048 @_ssdm_op_Read.s_axilite.i2048(i2048 %number1_V) ; [#uses=1 type=i2048]
  call void @llvm.dbg.value(metadata !{i2048* %output_V}, i64 0, metadata !49), !dbg !425 ; [debug line = 11:61] [debug variable = output.V]
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [10 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [11 x i8]* @p_str1, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2) nounwind, !dbg !426 ; [debug line = 13:1]
  call void (...)* @_ssdm_op_SpecInterface(i2048 %number1_V, [10 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [11 x i8]* @p_str1, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2) nounwind, !dbg !428 ; [debug line = 14:1]
  call void (...)* @_ssdm_op_SpecInterface(i2048 %number2_V, [10 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [11 x i8]* @p_str1, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2) nounwind, !dbg !429 ; [debug line = 15:1]
  call void (...)* @_ssdm_op_SpecInterface(i2048* %output_V, [10 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [11 x i8]* @p_str1, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2) nounwind, !dbg !430 ; [debug line = 16:1]
  call void @llvm.dbg.value(metadata !{i2048 %number1_V}, i64 0, metadata !431), !dbg !440 ; [debug line = 3376:0@18:12] [debug variable = lhs.V]
  call void @llvm.dbg.value(metadata !{i2048 %number2_V}, i64 0, metadata !442), !dbg !440 ; [debug line = 3376:0@18:12] [debug variable = rhs.V]
  %r_V = xor i2048 %number2_V_read, %number1_V_read, !dbg !440 ; [#uses=1 type=i2048] [debug line = 3376:0@18:12]
  call void @llvm.dbg.value(metadata !{i2048 %r_V}, i64 0, metadata !444), !dbg !440 ; [debug line = 3376:0@18:12] [debug variable = r.V]
  call void @llvm.dbg.value(metadata !{i2048* %output_V}, i64 0, metadata !447), !dbg !451 ; [debug line = 276:53@18:12] [debug variable = ssdm_int<1024 + 1024 * 1, false>.V]
  call void @_ssdm_op_Write.s_axilite.i2048P(i2048* %output_V, i2048 %r_V), !dbg !452 ; [debug line = 277:10@18:12]
  ret void, !dbg !454                             ; [debug line = 20:1]
}

; [#uses=1]
define weak void @_ssdm_op_Write.s_axilite.i2048P(i2048*, i2048) {
entry:
  store i2048 %1, i2048* %0
  ret void
}

; [#uses=1]
define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
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

; [#uses=2]
define weak i2048 @_ssdm_op_Read.s_axilite.i2048(i2048) {
entry:
  ret i2048 %0
}

; [#uses=1]
declare void @_GLOBAL__I_a() nounwind section ".text.startup"

!opencl.kernels = !{!0, !7, !7, !13, !13, !19, !22, !13}
!hls.encrypted.func = !{}
!llvm.map.gv = !{!28}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 1}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"uintMem", metadata !"uintMem", metadata !"uintMem*"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"number1", metadata !"number2", metadata !"output"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !6}
!8 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!9 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!10 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<2048, false> &"}
!11 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!12 = metadata !{metadata !"kernel_arg_name", metadata !"op"}
!13 = metadata !{null, metadata !14, metadata !15, metadata !16, metadata !17, metadata !18, metadata !6}
!14 = metadata !{metadata !"kernel_arg_addr_space"}
!15 = metadata !{metadata !"kernel_arg_access_qual"}
!16 = metadata !{metadata !"kernel_arg_type"}
!17 = metadata !{metadata !"kernel_arg_type_qual"}
!18 = metadata !{metadata !"kernel_arg_name"}
!19 = metadata !{null, metadata !8, metadata !9, metadata !20, metadata !11, metadata !21, metadata !6}
!20 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<2048> &"}
!21 = metadata !{metadata !"kernel_arg_name", metadata !"op2"}
!22 = metadata !{null, metadata !23, metadata !24, metadata !25, metadata !26, metadata !27, metadata !6}
!23 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0}
!24 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!25 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<2048, false> &", metadata !"const ap_int_base<2048, false> &"}
!26 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!27 = metadata !{metadata !"kernel_arg_name", metadata !"op", metadata !"op2"}
!28 = metadata !{metadata !29, [1 x i32]* @llvm_global_ctors_0}
!29 = metadata !{metadata !30}
!30 = metadata !{i32 0, i32 31, metadata !31}
!31 = metadata !{metadata !32}
!32 = metadata !{metadata !"llvm.global_ctors.0", metadata !33, metadata !"", i32 0, i32 31}
!33 = metadata !{metadata !34}
!34 = metadata !{i32 0, i32 0, i32 1}
!35 = metadata !{metadata !36}
!36 = metadata !{i32 0, i32 2047, metadata !37}
!37 = metadata !{metadata !38}
!38 = metadata !{metadata !"number1.V", metadata !39, metadata !"uint2048", i32 0, i32 2047}
!39 = metadata !{metadata !40}
!40 = metadata !{i32 0, i32 0, i32 0}
!41 = metadata !{metadata !42}
!42 = metadata !{i32 0, i32 2047, metadata !43}
!43 = metadata !{metadata !44}
!44 = metadata !{metadata !"number2.V", metadata !39, metadata !"uint2048", i32 0, i32 2047}
!45 = metadata !{metadata !46}
!46 = metadata !{i32 0, i32 2047, metadata !47}
!47 = metadata !{metadata !48}
!48 = metadata !{metadata !"output.V", metadata !33, metadata !"uint2048", i32 0, i32 2047}
!49 = metadata !{i32 790531, metadata !50, metadata !"output.V", null, i32 11, metadata !418, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!50 = metadata !{i32 786689, metadata !51, metadata !"output", metadata !52, i32 50331659, metadata !417, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!51 = metadata !{i32 786478, i32 0, metadata !52, metadata !"bigint_math", metadata !"bigint_math", metadata !"_Z11bigint_math7ap_uintILi2048EES0_PS0_", metadata !52, i32 11, metadata !53, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !73, i32 11} ; [ DW_TAG_subprogram ]
!52 = metadata !{i32 786473, metadata !"BigInt/solution1/main.cpp", metadata !"/home/linux/Documents/DLA/source/sw", null} ; [ DW_TAG_file_type ]
!53 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !54, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!54 = metadata !{null, metadata !55, metadata !55, metadata !417}
!55 = metadata !{i32 786454, null, metadata !"uintMem", metadata !52, i32 9, i64 0, i64 0, i64 0, i32 0, metadata !56} ; [ DW_TAG_typedef ]
!56 = metadata !{i32 786434, null, metadata !"ap_uint<2048>", metadata !57, i32 180, i64 2048, i64 2048, i32 0, i32 0, null, metadata !58, i32 0, null, metadata !416} ; [ DW_TAG_class_type ]
!57 = metadata !{i32 786473, metadata !"/home/Xilinx/Vivado_HLS/2016.2/common/technology/autopilot/ap_int.h", metadata !"/home/linux/Documents/DLA/source/sw", null} ; [ DW_TAG_file_type ]
!58 = metadata !{metadata !59, metadata !344, metadata !348, metadata !351, metadata !354, metadata !357, metadata !360, metadata !363, metadata !366, metadata !369, metadata !372, metadata !375, metadata !378, metadata !381, metadata !384, metadata !387, metadata !390, metadata !393, metadata !396, metadata !403, metadata !408, metadata !412, metadata !415}
!59 = metadata !{i32 786460, metadata !56, null, metadata !57, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !60} ; [ DW_TAG_inheritance ]
!60 = metadata !{i32 786434, null, metadata !"ap_int_base<2048, false, false>", metadata !61, i32 2341, i64 2048, i64 2048, i32 0, i32 0, null, metadata !62, i32 0, null, metadata !341} ; [ DW_TAG_class_type ]
!61 = metadata !{i32 786473, metadata !"/home/Xilinx/Vivado_HLS/2016.2/common/technology/autopilot/ap_int_syn.h", metadata !"/home/linux/Documents/DLA/source/sw", null} ; [ DW_TAG_file_type ]
!62 = metadata !{metadata !63, metadata !80, metadata !84, metadata !92, metadata !98, metadata !101, metadata !105, metadata !109, metadata !113, metadata !117, metadata !120, metadata !124, metadata !128, metadata !132, metadata !137, metadata !142, metadata !146, metadata !150, metadata !156, metadata !159, metadata !163, metadata !166, metadata !169, metadata !170, metadata !174, metadata !177, metadata !180, metadata !183, metadata !186, metadata !189, metadata !192, metadata !195, metadata !198, metadata !201, metadata !204, metadata !207, metadata !217, metadata !220, metadata !221, metadata !222, metadata !223, metadata !224, metadata !227, metadata !230, metadata !233, metadata !236, metadata !239, metadata !242, metadata !245, metadata !246, metadata !250, metadata !253, metadata !254, metadata !255, metadata !256, metadata !257, metadata !258, metadata !261, metadata !262, metadata !265, metadata !266, metadata !267, metadata !268, metadata !269, metadata !270, metadata !273, metadata !274, metadata !275, metadata !278, metadata !279, metadata !282, metadata !290, metadata !291, metadata !294, metadata !298, metadata !299, metadata !302, metadata !303, metadata !307, metadata !308, metadata !309, metadata !310, metadata !313, metadata !314, metadata !315, metadata !316, metadata !317, metadata !318, metadata !319, metadata !320, metadata !321, metadata !322, metadata !323, metadata !324, metadata !334, metadata !337, metadata !340}
!63 = metadata !{i32 786460, metadata !60, null, metadata !61, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !64} ; [ DW_TAG_inheritance ]
!64 = metadata !{i32 786434, null, metadata !"ssdm_int<1024 + 1024 * 1, false>", metadata !65, i32 1038, i64 2048, i64 2048, i32 0, i32 0, null, metadata !66, i32 0, null, metadata !75} ; [ DW_TAG_class_type ]
!65 = metadata !{i32 786473, metadata !"/home/Xilinx/Vivado_HLS/2016.2/common/technology/autopilot/etc/autopilot_dt.def", metadata !"/home/linux/Documents/DLA/source/sw", null} ; [ DW_TAG_file_type ]
!66 = metadata !{metadata !67, metadata !69}
!67 = metadata !{i32 786445, metadata !64, metadata !"V", metadata !65, i32 1038, i64 2048, i64 2048, i64 0, i32 0, metadata !68} ; [ DW_TAG_member ]
!68 = metadata !{i32 786468, null, metadata !"uint2048", null, i32 0, i64 2048, i64 2048, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!69 = metadata !{i32 786478, i32 0, metadata !64, metadata !"ssdm_int", metadata !"ssdm_int", metadata !"", metadata !65, i32 1038, metadata !70, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !73, i32 1038} ; [ DW_TAG_subprogram ]
!70 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !71, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!71 = metadata !{null, metadata !72}
!72 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !64} ; [ DW_TAG_pointer_type ]
!73 = metadata !{metadata !74}
!74 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!75 = metadata !{metadata !76, metadata !78}
!76 = metadata !{i32 786480, null, metadata !"_AP_N", metadata !77, i64 2048, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!77 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!78 = metadata !{i32 786480, null, metadata !"_AP_S", metadata !79, i64 0, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!79 = metadata !{i32 786468, null, metadata !"bool", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 2} ; [ DW_TAG_base_type ]
!80 = metadata !{i32 786478, i32 0, metadata !60, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !61, i32 2379, metadata !81, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !73, i32 2379} ; [ DW_TAG_subprogram ]
!81 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !82, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!82 = metadata !{null, metadata !83}
!83 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !60} ; [ DW_TAG_pointer_type ]
!84 = metadata !{i32 786478, i32 0, metadata !60, metadata !"ap_int_base<2048, false>", metadata !"ap_int_base<2048, false>", metadata !"", metadata !61, i32 2391, metadata !85, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, metadata !89, i32 0, metadata !73, i32 2391} ; [ DW_TAG_subprogram ]
!85 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !86, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!86 = metadata !{null, metadata !83, metadata !87}
!87 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !88} ; [ DW_TAG_reference_type ]
!88 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !60} ; [ DW_TAG_const_type ]
!89 = metadata !{metadata !90, metadata !91}
!90 = metadata !{i32 786480, null, metadata !"_AP_W2", metadata !77, i64 2048, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!91 = metadata !{i32 786480, null, metadata !"_AP_S2", metadata !79, i64 0, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!92 = metadata !{i32 786478, i32 0, metadata !60, metadata !"ap_int_base<2048, false>", metadata !"ap_int_base<2048, false>", metadata !"", metadata !61, i32 2394, metadata !93, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, metadata !89, i32 0, metadata !73, i32 2394} ; [ DW_TAG_subprogram ]
!93 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !94, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!94 = metadata !{null, metadata !83, metadata !95}
!95 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !96} ; [ DW_TAG_reference_type ]
!96 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !97} ; [ DW_TAG_const_type ]
!97 = metadata !{i32 786485, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !60} ; [ DW_TAG_volatile_type ]
!98 = metadata !{i32 786478, i32 0, metadata !60, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !61, i32 2401, metadata !99, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !73, i32 2401} ; [ DW_TAG_subprogram ]
!99 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !100, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!100 = metadata !{null, metadata !83, metadata !79}
!101 = metadata !{i32 786478, i32 0, metadata !60, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !61, i32 2402, metadata !102, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !73, i32 2402} ; [ DW_TAG_subprogram ]
!102 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !103, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!103 = metadata !{null, metadata !83, metadata !104}
!104 = metadata !{i32 786468, null, metadata !"signed char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!105 = metadata !{i32 786478, i32 0, metadata !60, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !61, i32 2403, metadata !106, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !73, i32 2403} ; [ DW_TAG_subprogram ]
!106 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !107, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!107 = metadata !{null, metadata !83, metadata !108}
!108 = metadata !{i32 786468, null, metadata !"unsigned char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ]
!109 = metadata !{i32 786478, i32 0, metadata !60, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !61, i32 2404, metadata !110, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !73, i32 2404} ; [ DW_TAG_subprogram ]
!110 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !111, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!111 = metadata !{null, metadata !83, metadata !112}
!112 = metadata !{i32 786468, null, metadata !"short", null, i32 0, i64 16, i64 16, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!113 = metadata !{i32 786478, i32 0, metadata !60, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !61, i32 2405, metadata !114, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !73, i32 2405} ; [ DW_TAG_subprogram ]
!114 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !115, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!115 = metadata !{null, metadata !83, metadata !116}
!116 = metadata !{i32 786468, null, metadata !"unsigned short", null, i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!117 = metadata !{i32 786478, i32 0, metadata !60, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !61, i32 2406, metadata !118, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !73, i32 2406} ; [ DW_TAG_subprogram ]
!118 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !119, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!119 = metadata !{null, metadata !83, metadata !77}
!120 = metadata !{i32 786478, i32 0, metadata !60, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !61, i32 2407, metadata !121, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !73, i32 2407} ; [ DW_TAG_subprogram ]
!121 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !122, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!122 = metadata !{null, metadata !83, metadata !123}
!123 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!124 = metadata !{i32 786478, i32 0, metadata !60, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !61, i32 2408, metadata !125, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !73, i32 2408} ; [ DW_TAG_subprogram ]
!125 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !126, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!126 = metadata !{null, metadata !83, metadata !127}
!127 = metadata !{i32 786468, null, metadata !"long int", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!128 = metadata !{i32 786478, i32 0, metadata !60, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !61, i32 2409, metadata !129, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !73, i32 2409} ; [ DW_TAG_subprogram ]
!129 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !130, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!130 = metadata !{null, metadata !83, metadata !131}
!131 = metadata !{i32 786468, null, metadata !"long unsigned int", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!132 = metadata !{i32 786478, i32 0, metadata !60, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !61, i32 2410, metadata !133, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !73, i32 2410} ; [ DW_TAG_subprogram ]
!133 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !134, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!134 = metadata !{null, metadata !83, metadata !135}
!135 = metadata !{i32 786454, null, metadata !"ap_slong", metadata !61, i32 111, i64 0, i64 0, i64 0, i32 0, metadata !136} ; [ DW_TAG_typedef ]
!136 = metadata !{i32 786468, null, metadata !"long long int", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!137 = metadata !{i32 786478, i32 0, metadata !60, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !61, i32 2411, metadata !138, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !73, i32 2411} ; [ DW_TAG_subprogram ]
!138 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !139, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!139 = metadata !{null, metadata !83, metadata !140}
!140 = metadata !{i32 786454, null, metadata !"ap_ulong", metadata !61, i32 110, i64 0, i64 0, i64 0, i32 0, metadata !141} ; [ DW_TAG_typedef ]
!141 = metadata !{i32 786468, null, metadata !"long long unsigned int", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!142 = metadata !{i32 786478, i32 0, metadata !60, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !61, i32 2412, metadata !143, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !73, i32 2412} ; [ DW_TAG_subprogram ]
!143 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !144, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!144 = metadata !{null, metadata !83, metadata !145}
!145 = metadata !{i32 786468, null, metadata !"float", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!146 = metadata !{i32 786478, i32 0, metadata !60, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !61, i32 2413, metadata !147, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !73, i32 2413} ; [ DW_TAG_subprogram ]
!147 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !148, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!148 = metadata !{null, metadata !83, metadata !149}
!149 = metadata !{i32 786468, null, metadata !"double", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!150 = metadata !{i32 786478, i32 0, metadata !60, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !61, i32 2440, metadata !151, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !73, i32 2440} ; [ DW_TAG_subprogram ]
!151 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !152, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!152 = metadata !{null, metadata !83, metadata !153}
!153 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !154} ; [ DW_TAG_pointer_type ]
!154 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !155} ; [ DW_TAG_const_type ]
!155 = metadata !{i32 786468, null, metadata !"char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!156 = metadata !{i32 786478, i32 0, metadata !60, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !61, i32 2447, metadata !157, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !73, i32 2447} ; [ DW_TAG_subprogram ]
!157 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !158, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!158 = metadata !{null, metadata !83, metadata !153, metadata !104}
!159 = metadata !{i32 786478, i32 0, metadata !60, metadata !"read", metadata !"read", metadata !"_ZNV11ap_int_baseILi2048ELb0ELb0EE4readEv", metadata !61, i32 2468, metadata !160, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !73, i32 2468} ; [ DW_TAG_subprogram ]
!160 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !161, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!161 = metadata !{metadata !60, metadata !162}
!162 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !97} ; [ DW_TAG_pointer_type ]
!163 = metadata !{i32 786478, i32 0, metadata !60, metadata !"write", metadata !"write", metadata !"_ZNV11ap_int_baseILi2048ELb0ELb0EE5writeERKS0_", metadata !61, i32 2474, metadata !164, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !73, i32 2474} ; [ DW_TAG_subprogram ]
!164 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !165, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!165 = metadata !{null, metadata !162, metadata !87}
!166 = metadata !{i32 786478, i32 0, metadata !60, metadata !"operator=", metadata !"operator=", metadata !"_ZNV11ap_int_baseILi2048ELb0ELb0EEaSERVKS0_", metadata !61, i32 2486, metadata !167, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !73, i32 2486} ; [ DW_TAG_subprogram ]
!167 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !168, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!168 = metadata !{null, metadata !162, metadata !95}
!169 = metadata !{i32 786478, i32 0, metadata !60, metadata !"operator=", metadata !"operator=", metadata !"_ZNV11ap_int_baseILi2048ELb0ELb0EEaSERKS0_", metadata !61, i32 2495, metadata !164, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !73, i32 2495} ; [ DW_TAG_subprogram ]
!170 = metadata !{i32 786478, i32 0, metadata !60, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi2048ELb0ELb0EEaSERVKS0_", metadata !61, i32 2518, metadata !171, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !73, i32 2518} ; [ DW_TAG_subprogram ]
!171 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !172, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!172 = metadata !{metadata !173, metadata !83, metadata !95}
!173 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !60} ; [ DW_TAG_reference_type ]
!174 = metadata !{i32 786478, i32 0, metadata !60, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi2048ELb0ELb0EEaSERKS0_", metadata !61, i32 2523, metadata !175, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !73, i32 2523} ; [ DW_TAG_subprogram ]
!175 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !176, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!176 = metadata !{metadata !173, metadata !83, metadata !87}
!177 = metadata !{i32 786478, i32 0, metadata !60, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi2048ELb0ELb0EEaSEPKc", metadata !61, i32 2527, metadata !178, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !73, i32 2527} ; [ DW_TAG_subprogram ]
!178 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !179, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!179 = metadata !{metadata !173, metadata !83, metadata !153}
!180 = metadata !{i32 786478, i32 0, metadata !60, metadata !"set", metadata !"set", metadata !"_ZN11ap_int_baseILi2048ELb0ELb0EE3setEPKca", metadata !61, i32 2535, metadata !181, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !73, i32 2535} ; [ DW_TAG_subprogram ]
!181 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !182, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!182 = metadata !{metadata !173, metadata !83, metadata !153, metadata !104}
!183 = metadata !{i32 786478, i32 0, metadata !60, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi2048ELb0ELb0EEaSEc", metadata !61, i32 2549, metadata !184, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !73, i32 2549} ; [ DW_TAG_subprogram ]
!184 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !185, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!185 = metadata !{metadata !173, metadata !83, metadata !155}
!186 = metadata !{i32 786478, i32 0, metadata !60, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi2048ELb0ELb0EEaSEh", metadata !61, i32 2550, metadata !187, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !73, i32 2550} ; [ DW_TAG_subprogram ]
!187 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !188, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!188 = metadata !{metadata !173, metadata !83, metadata !108}
!189 = metadata !{i32 786478, i32 0, metadata !60, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi2048ELb0ELb0EEaSEs", metadata !61, i32 2551, metadata !190, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !73, i32 2551} ; [ DW_TAG_subprogram ]
!190 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !191, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!191 = metadata !{metadata !173, metadata !83, metadata !112}
!192 = metadata !{i32 786478, i32 0, metadata !60, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi2048ELb0ELb0EEaSEt", metadata !61, i32 2552, metadata !193, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !73, i32 2552} ; [ DW_TAG_subprogram ]
!193 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !194, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!194 = metadata !{metadata !173, metadata !83, metadata !116}
!195 = metadata !{i32 786478, i32 0, metadata !60, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi2048ELb0ELb0EEaSEi", metadata !61, i32 2553, metadata !196, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !73, i32 2553} ; [ DW_TAG_subprogram ]
!196 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !197, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!197 = metadata !{metadata !173, metadata !83, metadata !77}
!198 = metadata !{i32 786478, i32 0, metadata !60, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi2048ELb0ELb0EEaSEj", metadata !61, i32 2554, metadata !199, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !73, i32 2554} ; [ DW_TAG_subprogram ]
!199 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !200, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!200 = metadata !{metadata !173, metadata !83, metadata !123}
!201 = metadata !{i32 786478, i32 0, metadata !60, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi2048ELb0ELb0EEaSEx", metadata !61, i32 2555, metadata !202, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !73, i32 2555} ; [ DW_TAG_subprogram ]
!202 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !203, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!203 = metadata !{metadata !173, metadata !83, metadata !135}
!204 = metadata !{i32 786478, i32 0, metadata !60, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi2048ELb0ELb0EEaSEy", metadata !61, i32 2556, metadata !205, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !73, i32 2556} ; [ DW_TAG_subprogram ]
!205 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !206, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!206 = metadata !{metadata !173, metadata !83, metadata !140}
!207 = metadata !{i32 786478, i32 0, metadata !60, metadata !"operator unsigned long long", metadata !"operator unsigned long long", metadata !"_ZNK11ap_int_baseILi2048ELb0ELb0EEcvyEv", metadata !61, i32 2595, metadata !208, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !73, i32 2595} ; [ DW_TAG_subprogram ]
!208 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !209, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!209 = metadata !{metadata !210, metadata !216}
!210 = metadata !{i32 786454, metadata !60, metadata !"RetType", metadata !61, i32 2345, i64 0, i64 0, i64 0, i32 0, metadata !211} ; [ DW_TAG_typedef ]
!211 = metadata !{i32 786454, metadata !212, metadata !"Type", metadata !61, i32 1363, i64 0, i64 0, i64 0, i32 0, metadata !140} ; [ DW_TAG_typedef ]
!212 = metadata !{i32 786434, null, metadata !"retval<8, false>", metadata !61, i32 1362, i64 8, i64 8, i32 0, i32 0, null, metadata !213, i32 0, null, metadata !214} ; [ DW_TAG_class_type ]
!213 = metadata !{i32 0}
!214 = metadata !{metadata !215, metadata !78}
!215 = metadata !{i32 786480, null, metadata !"_AP_N", metadata !77, i64 8, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!216 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !88} ; [ DW_TAG_pointer_type ]
!217 = metadata !{i32 786478, i32 0, metadata !60, metadata !"to_bool", metadata !"to_bool", metadata !"_ZNK11ap_int_baseILi2048ELb0ELb0EE7to_boolEv", metadata !61, i32 2601, metadata !218, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !73, i32 2601} ; [ DW_TAG_subprogram ]
!218 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !219, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!219 = metadata !{metadata !79, metadata !216}
!220 = metadata !{i32 786478, i32 0, metadata !60, metadata !"to_uchar", metadata !"to_uchar", metadata !"_ZNK11ap_int_baseILi2048ELb0ELb0EE8to_ucharEv", metadata !61, i32 2602, metadata !218, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !73, i32 2602} ; [ DW_TAG_subprogram ]
!221 = metadata !{i32 786478, i32 0, metadata !60, metadata !"to_char", metadata !"to_char", metadata !"_ZNK11ap_int_baseILi2048ELb0ELb0EE7to_charEv", metadata !61, i32 2603, metadata !218, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !73, i32 2603} ; [ DW_TAG_subprogram ]
!222 = metadata !{i32 786478, i32 0, metadata !60, metadata !"to_ushort", metadata !"to_ushort", metadata !"_ZNK11ap_int_baseILi2048ELb0ELb0EE9to_ushortEv", metadata !61, i32 2604, metadata !218, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !73, i32 2604} ; [ DW_TAG_subprogram ]
!223 = metadata !{i32 786478, i32 0, metadata !60, metadata !"to_short", metadata !"to_short", metadata !"_ZNK11ap_int_baseILi2048ELb0ELb0EE8to_shortEv", metadata !61, i32 2605, metadata !218, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !73, i32 2605} ; [ DW_TAG_subprogram ]
!224 = metadata !{i32 786478, i32 0, metadata !60, metadata !"to_int", metadata !"to_int", metadata !"_ZNK11ap_int_baseILi2048ELb0ELb0EE6to_intEv", metadata !61, i32 2606, metadata !225, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !73, i32 2606} ; [ DW_TAG_subprogram ]
!225 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !226, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!226 = metadata !{metadata !77, metadata !216}
!227 = metadata !{i32 786478, i32 0, metadata !60, metadata !"to_uint", metadata !"to_uint", metadata !"_ZNK11ap_int_baseILi2048ELb0ELb0EE7to_uintEv", metadata !61, i32 2607, metadata !228, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !73, i32 2607} ; [ DW_TAG_subprogram ]
!228 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !229, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!229 = metadata !{metadata !123, metadata !216}
!230 = metadata !{i32 786478, i32 0, metadata !60, metadata !"to_long", metadata !"to_long", metadata !"_ZNK11ap_int_baseILi2048ELb0ELb0EE7to_longEv", metadata !61, i32 2608, metadata !231, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !73, i32 2608} ; [ DW_TAG_subprogram ]
!231 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !232, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!232 = metadata !{metadata !127, metadata !216}
!233 = metadata !{i32 786478, i32 0, metadata !60, metadata !"to_ulong", metadata !"to_ulong", metadata !"_ZNK11ap_int_baseILi2048ELb0ELb0EE8to_ulongEv", metadata !61, i32 2609, metadata !234, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !73, i32 2609} ; [ DW_TAG_subprogram ]
!234 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !235, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!235 = metadata !{metadata !131, metadata !216}
!236 = metadata !{i32 786478, i32 0, metadata !60, metadata !"to_int64", metadata !"to_int64", metadata !"_ZNK11ap_int_baseILi2048ELb0ELb0EE8to_int64Ev", metadata !61, i32 2610, metadata !237, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !73, i32 2610} ; [ DW_TAG_subprogram ]
!237 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !238, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!238 = metadata !{metadata !135, metadata !216}
!239 = metadata !{i32 786478, i32 0, metadata !60, metadata !"to_uint64", metadata !"to_uint64", metadata !"_ZNK11ap_int_baseILi2048ELb0ELb0EE9to_uint64Ev", metadata !61, i32 2611, metadata !240, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !73, i32 2611} ; [ DW_TAG_subprogram ]
!240 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !241, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!241 = metadata !{metadata !140, metadata !216}
!242 = metadata !{i32 786478, i32 0, metadata !60, metadata !"to_double", metadata !"to_double", metadata !"_ZNK11ap_int_baseILi2048ELb0ELb0EE9to_doubleEv", metadata !61, i32 2612, metadata !243, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !73, i32 2612} ; [ DW_TAG_subprogram ]
!243 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !244, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!244 = metadata !{metadata !149, metadata !216}
!245 = metadata !{i32 786478, i32 0, metadata !60, metadata !"length", metadata !"length", metadata !"_ZNK11ap_int_baseILi2048ELb0ELb0EE6lengthEv", metadata !61, i32 2625, metadata !225, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !73, i32 2625} ; [ DW_TAG_subprogram ]
!246 = metadata !{i32 786478, i32 0, metadata !60, metadata !"length", metadata !"length", metadata !"_ZNVK11ap_int_baseILi2048ELb0ELb0EE6lengthEv", metadata !61, i32 2626, metadata !247, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !73, i32 2626} ; [ DW_TAG_subprogram ]
!247 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !248, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!248 = metadata !{metadata !77, metadata !249}
!249 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !96} ; [ DW_TAG_pointer_type ]
!250 = metadata !{i32 786478, i32 0, metadata !60, metadata !"reverse", metadata !"reverse", metadata !"_ZN11ap_int_baseILi2048ELb0ELb0EE7reverseEv", metadata !61, i32 2631, metadata !251, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !73, i32 2631} ; [ DW_TAG_subprogram ]
!251 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !252, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!252 = metadata !{metadata !173, metadata !83}
!253 = metadata !{i32 786478, i32 0, metadata !60, metadata !"iszero", metadata !"iszero", metadata !"_ZNK11ap_int_baseILi2048ELb0ELb0EE6iszeroEv", metadata !61, i32 2637, metadata !218, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !73, i32 2637} ; [ DW_TAG_subprogram ]
!254 = metadata !{i32 786478, i32 0, metadata !60, metadata !"is_zero", metadata !"is_zero", metadata !"_ZNK11ap_int_baseILi2048ELb0ELb0EE7is_zeroEv", metadata !61, i32 2642, metadata !218, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !73, i32 2642} ; [ DW_TAG_subprogram ]
!255 = metadata !{i32 786478, i32 0, metadata !60, metadata !"sign", metadata !"sign", metadata !"_ZNK11ap_int_baseILi2048ELb0ELb0EE4signEv", metadata !61, i32 2647, metadata !218, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !73, i32 2647} ; [ DW_TAG_subprogram ]
!256 = metadata !{i32 786478, i32 0, metadata !60, metadata !"clear", metadata !"clear", metadata !"_ZN11ap_int_baseILi2048ELb0ELb0EE5clearEi", metadata !61, i32 2655, metadata !118, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !73, i32 2655} ; [ DW_TAG_subprogram ]
!257 = metadata !{i32 786478, i32 0, metadata !60, metadata !"invert", metadata !"invert", metadata !"_ZN11ap_int_baseILi2048ELb0ELb0EE6invertEi", metadata !61, i32 2661, metadata !118, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !73, i32 2661} ; [ DW_TAG_subprogram ]
!258 = metadata !{i32 786478, i32 0, metadata !60, metadata !"test", metadata !"test", metadata !"_ZNK11ap_int_baseILi2048ELb0ELb0EE4testEi", metadata !61, i32 2669, metadata !259, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !73, i32 2669} ; [ DW_TAG_subprogram ]
!259 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !260, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!260 = metadata !{metadata !79, metadata !216, metadata !77}
!261 = metadata !{i32 786478, i32 0, metadata !60, metadata !"set", metadata !"set", metadata !"_ZN11ap_int_baseILi2048ELb0ELb0EE3setEi", metadata !61, i32 2675, metadata !118, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !73, i32 2675} ; [ DW_TAG_subprogram ]
!262 = metadata !{i32 786478, i32 0, metadata !60, metadata !"set", metadata !"set", metadata !"_ZN11ap_int_baseILi2048ELb0ELb0EE3setEib", metadata !61, i32 2681, metadata !263, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !73, i32 2681} ; [ DW_TAG_subprogram ]
!263 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !264, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!264 = metadata !{null, metadata !83, metadata !77, metadata !79}
!265 = metadata !{i32 786478, i32 0, metadata !60, metadata !"lrotate", metadata !"lrotate", metadata !"_ZN11ap_int_baseILi2048ELb0ELb0EE7lrotateEi", metadata !61, i32 2688, metadata !118, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !73, i32 2688} ; [ DW_TAG_subprogram ]
!266 = metadata !{i32 786478, i32 0, metadata !60, metadata !"rrotate", metadata !"rrotate", metadata !"_ZN11ap_int_baseILi2048ELb0ELb0EE7rrotateEi", metadata !61, i32 2697, metadata !118, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !73, i32 2697} ; [ DW_TAG_subprogram ]
!267 = metadata !{i32 786478, i32 0, metadata !60, metadata !"set_bit", metadata !"set_bit", metadata !"_ZN11ap_int_baseILi2048ELb0ELb0EE7set_bitEib", metadata !61, i32 2705, metadata !263, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !73, i32 2705} ; [ DW_TAG_subprogram ]
!268 = metadata !{i32 786478, i32 0, metadata !60, metadata !"get_bit", metadata !"get_bit", metadata !"_ZNK11ap_int_baseILi2048ELb0ELb0EE7get_bitEi", metadata !61, i32 2710, metadata !259, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !73, i32 2710} ; [ DW_TAG_subprogram ]
!269 = metadata !{i32 786478, i32 0, metadata !60, metadata !"b_not", metadata !"b_not", metadata !"_ZN11ap_int_baseILi2048ELb0ELb0EE5b_notEv", metadata !61, i32 2715, metadata !81, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !73, i32 2715} ; [ DW_TAG_subprogram ]
!270 = metadata !{i32 786478, i32 0, metadata !60, metadata !"countLeadingZeros", metadata !"countLeadingZeros", metadata !"_ZN11ap_int_baseILi2048ELb0ELb0EE17countLeadingZerosEv", metadata !61, i32 2722, metadata !271, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !73, i32 2722} ; [ DW_TAG_subprogram ]
!271 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !272, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!272 = metadata !{metadata !77, metadata !83}
!273 = metadata !{i32 786478, i32 0, metadata !60, metadata !"operator++", metadata !"operator++", metadata !"_ZN11ap_int_baseILi2048ELb0ELb0EEppEv", metadata !61, i32 2779, metadata !251, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !73, i32 2779} ; [ DW_TAG_subprogram ]
!274 = metadata !{i32 786478, i32 0, metadata !60, metadata !"operator--", metadata !"operator--", metadata !"_ZN11ap_int_baseILi2048ELb0ELb0EEmmEv", metadata !61, i32 2783, metadata !251, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !73, i32 2783} ; [ DW_TAG_subprogram ]
!275 = metadata !{i32 786478, i32 0, metadata !60, metadata !"operator++", metadata !"operator++", metadata !"_ZN11ap_int_baseILi2048ELb0ELb0EEppEi", metadata !61, i32 2791, metadata !276, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !73, i32 2791} ; [ DW_TAG_subprogram ]
!276 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !277, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!277 = metadata !{metadata !88, metadata !83, metadata !77}
!278 = metadata !{i32 786478, i32 0, metadata !60, metadata !"operator--", metadata !"operator--", metadata !"_ZN11ap_int_baseILi2048ELb0ELb0EEmmEi", metadata !61, i32 2796, metadata !276, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !73, i32 2796} ; [ DW_TAG_subprogram ]
!279 = metadata !{i32 786478, i32 0, metadata !60, metadata !"operator+", metadata !"operator+", metadata !"_ZNK11ap_int_baseILi2048ELb0ELb0EEpsEv", metadata !61, i32 2805, metadata !280, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !73, i32 2805} ; [ DW_TAG_subprogram ]
!280 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !281, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!281 = metadata !{metadata !60, metadata !216}
!282 = metadata !{i32 786478, i32 0, metadata !60, metadata !"operator-", metadata !"operator-", metadata !"_ZNK11ap_int_baseILi2048ELb0ELb0EEngEv", metadata !61, i32 2809, metadata !283, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !73, i32 2809} ; [ DW_TAG_subprogram ]
!283 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !284, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!284 = metadata !{metadata !285, metadata !216}
!285 = metadata !{i32 786454, metadata !286, metadata !"minus", metadata !61, i32 2368, i64 0, i64 0, i64 0, i32 0, metadata !289} ; [ DW_TAG_typedef ]
!286 = metadata !{i32 786434, metadata !60, metadata !"RType<1, false>", metadata !61, i32 2350, i64 8, i64 8, i32 0, i32 0, null, metadata !213, i32 0, null, metadata !287} ; [ DW_TAG_class_type ]
!287 = metadata !{metadata !288, metadata !91}
!288 = metadata !{i32 786480, null, metadata !"_AP_W2", metadata !77, i64 1, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!289 = metadata !{i32 786434, null, metadata !"ap_int_base<2049, true, false>", metadata !61, i32 650, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_class_type ]
!290 = metadata !{i32 786478, i32 0, metadata !60, metadata !"operator!", metadata !"operator!", metadata !"_ZNK11ap_int_baseILi2048ELb0ELb0EEntEv", metadata !61, i32 2816, metadata !218, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !73, i32 2816} ; [ DW_TAG_subprogram ]
!291 = metadata !{i32 786478, i32 0, metadata !60, metadata !"operator~", metadata !"operator~", metadata !"_ZNK11ap_int_baseILi2048ELb0ELb0EEcoEv", metadata !61, i32 2823, metadata !292, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !73, i32 2823} ; [ DW_TAG_subprogram ]
!292 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !293, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!293 = metadata !{metadata !289, metadata !216}
!294 = metadata !{i32 786478, i32 0, metadata !60, metadata !"range", metadata !"range", metadata !"_ZN11ap_int_baseILi2048ELb0ELb0EE5rangeEii", metadata !61, i32 2950, metadata !295, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !73, i32 2950} ; [ DW_TAG_subprogram ]
!295 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !296, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!296 = metadata !{metadata !297, metadata !83, metadata !77, metadata !77}
!297 = metadata !{i32 786434, null, metadata !"ap_range_ref<2048, false>", metadata !61, i32 923, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_class_type ]
!298 = metadata !{i32 786478, i32 0, metadata !60, metadata !"operator()", metadata !"operator()", metadata !"_ZN11ap_int_baseILi2048ELb0ELb0EEclEii", metadata !61, i32 2956, metadata !295, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !73, i32 2956} ; [ DW_TAG_subprogram ]
!299 = metadata !{i32 786478, i32 0, metadata !60, metadata !"range", metadata !"range", metadata !"_ZNK11ap_int_baseILi2048ELb0ELb0EE5rangeEii", metadata !61, i32 2962, metadata !300, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !73, i32 2962} ; [ DW_TAG_subprogram ]
!300 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !301, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!301 = metadata !{metadata !297, metadata !216, metadata !77, metadata !77}
!302 = metadata !{i32 786478, i32 0, metadata !60, metadata !"operator()", metadata !"operator()", metadata !"_ZNK11ap_int_baseILi2048ELb0ELb0EEclEii", metadata !61, i32 2968, metadata !300, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !73, i32 2968} ; [ DW_TAG_subprogram ]
!303 = metadata !{i32 786478, i32 0, metadata !60, metadata !"operator[]", metadata !"operator[]", metadata !"_ZN11ap_int_baseILi2048ELb0ELb0EEixEi", metadata !61, i32 2988, metadata !304, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !73, i32 2988} ; [ DW_TAG_subprogram ]
!304 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !305, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!305 = metadata !{metadata !306, metadata !83, metadata !77}
!306 = metadata !{i32 786434, null, metadata !"ap_bit_ref<2048, false>", metadata !61, i32 1193, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_class_type ]
!307 = metadata !{i32 786478, i32 0, metadata !60, metadata !"operator[]", metadata !"operator[]", metadata !"_ZNK11ap_int_baseILi2048ELb0ELb0EEixEi", metadata !61, i32 3002, metadata !259, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !73, i32 3002} ; [ DW_TAG_subprogram ]
!308 = metadata !{i32 786478, i32 0, metadata !60, metadata !"bit", metadata !"bit", metadata !"_ZN11ap_int_baseILi2048ELb0ELb0EE3bitEi", metadata !61, i32 3016, metadata !304, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !73, i32 3016} ; [ DW_TAG_subprogram ]
!309 = metadata !{i32 786478, i32 0, metadata !60, metadata !"bit", metadata !"bit", metadata !"_ZNK11ap_int_baseILi2048ELb0ELb0EE3bitEi", metadata !61, i32 3030, metadata !259, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !73, i32 3030} ; [ DW_TAG_subprogram ]
!310 = metadata !{i32 786478, i32 0, metadata !60, metadata !"and_reduce", metadata !"and_reduce", metadata !"_ZN11ap_int_baseILi2048ELb0ELb0EE10and_reduceEv", metadata !61, i32 3210, metadata !311, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !73, i32 3210} ; [ DW_TAG_subprogram ]
!311 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !312, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!312 = metadata !{metadata !79, metadata !83}
!313 = metadata !{i32 786478, i32 0, metadata !60, metadata !"nand_reduce", metadata !"nand_reduce", metadata !"_ZN11ap_int_baseILi2048ELb0ELb0EE11nand_reduceEv", metadata !61, i32 3213, metadata !311, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !73, i32 3213} ; [ DW_TAG_subprogram ]
!314 = metadata !{i32 786478, i32 0, metadata !60, metadata !"or_reduce", metadata !"or_reduce", metadata !"_ZN11ap_int_baseILi2048ELb0ELb0EE9or_reduceEv", metadata !61, i32 3216, metadata !311, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !73, i32 3216} ; [ DW_TAG_subprogram ]
!315 = metadata !{i32 786478, i32 0, metadata !60, metadata !"nor_reduce", metadata !"nor_reduce", metadata !"_ZN11ap_int_baseILi2048ELb0ELb0EE10nor_reduceEv", metadata !61, i32 3219, metadata !311, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !73, i32 3219} ; [ DW_TAG_subprogram ]
!316 = metadata !{i32 786478, i32 0, metadata !60, metadata !"xor_reduce", metadata !"xor_reduce", metadata !"_ZN11ap_int_baseILi2048ELb0ELb0EE10xor_reduceEv", metadata !61, i32 3222, metadata !311, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !73, i32 3222} ; [ DW_TAG_subprogram ]
!317 = metadata !{i32 786478, i32 0, metadata !60, metadata !"xnor_reduce", metadata !"xnor_reduce", metadata !"_ZN11ap_int_baseILi2048ELb0ELb0EE11xnor_reduceEv", metadata !61, i32 3225, metadata !311, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !73, i32 3225} ; [ DW_TAG_subprogram ]
!318 = metadata !{i32 786478, i32 0, metadata !60, metadata !"and_reduce", metadata !"and_reduce", metadata !"_ZNK11ap_int_baseILi2048ELb0ELb0EE10and_reduceEv", metadata !61, i32 3229, metadata !218, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !73, i32 3229} ; [ DW_TAG_subprogram ]
!319 = metadata !{i32 786478, i32 0, metadata !60, metadata !"nand_reduce", metadata !"nand_reduce", metadata !"_ZNK11ap_int_baseILi2048ELb0ELb0EE11nand_reduceEv", metadata !61, i32 3232, metadata !218, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !73, i32 3232} ; [ DW_TAG_subprogram ]
!320 = metadata !{i32 786478, i32 0, metadata !60, metadata !"or_reduce", metadata !"or_reduce", metadata !"_ZNK11ap_int_baseILi2048ELb0ELb0EE9or_reduceEv", metadata !61, i32 3235, metadata !218, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !73, i32 3235} ; [ DW_TAG_subprogram ]
!321 = metadata !{i32 786478, i32 0, metadata !60, metadata !"nor_reduce", metadata !"nor_reduce", metadata !"_ZNK11ap_int_baseILi2048ELb0ELb0EE10nor_reduceEv", metadata !61, i32 3238, metadata !218, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !73, i32 3238} ; [ DW_TAG_subprogram ]
!322 = metadata !{i32 786478, i32 0, metadata !60, metadata !"xor_reduce", metadata !"xor_reduce", metadata !"_ZNK11ap_int_baseILi2048ELb0ELb0EE10xor_reduceEv", metadata !61, i32 3241, metadata !218, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !73, i32 3241} ; [ DW_TAG_subprogram ]
!323 = metadata !{i32 786478, i32 0, metadata !60, metadata !"xnor_reduce", metadata !"xnor_reduce", metadata !"_ZNK11ap_int_baseILi2048ELb0ELb0EE11xnor_reduceEv", metadata !61, i32 3244, metadata !218, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !73, i32 3244} ; [ DW_TAG_subprogram ]
!324 = metadata !{i32 786478, i32 0, metadata !60, metadata !"to_string", metadata !"to_string", metadata !"_ZNK11ap_int_baseILi2048ELb0ELb0EE9to_stringEPci8BaseModeb", metadata !61, i32 3251, metadata !325, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !73, i32 3251} ; [ DW_TAG_subprogram ]
!325 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !326, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!326 = metadata !{null, metadata !216, metadata !327, metadata !77, metadata !328, metadata !79}
!327 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !155} ; [ DW_TAG_pointer_type ]
!328 = metadata !{i32 786436, null, metadata !"BaseMode", metadata !61, i32 602, i64 5, i64 8, i32 0, i32 0, null, metadata !329, i32 0, i32 0} ; [ DW_TAG_enumeration_type ]
!329 = metadata !{metadata !330, metadata !331, metadata !332, metadata !333}
!330 = metadata !{i32 786472, metadata !"SC_BIN", i64 2} ; [ DW_TAG_enumerator ]
!331 = metadata !{i32 786472, metadata !"SC_OCT", i64 8} ; [ DW_TAG_enumerator ]
!332 = metadata !{i32 786472, metadata !"SC_DEC", i64 10} ; [ DW_TAG_enumerator ]
!333 = metadata !{i32 786472, metadata !"SC_HEX", i64 16} ; [ DW_TAG_enumerator ]
!334 = metadata !{i32 786478, i32 0, metadata !60, metadata !"to_string", metadata !"to_string", metadata !"_ZNK11ap_int_baseILi2048ELb0ELb0EE9to_stringE8BaseModeb", metadata !61, i32 3278, metadata !335, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !73, i32 3278} ; [ DW_TAG_subprogram ]
!335 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !336, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!336 = metadata !{metadata !327, metadata !216, metadata !328, metadata !79}
!337 = metadata !{i32 786478, i32 0, metadata !60, metadata !"to_string", metadata !"to_string", metadata !"_ZNK11ap_int_baseILi2048ELb0ELb0EE9to_stringEab", metadata !61, i32 3282, metadata !338, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !73, i32 3282} ; [ DW_TAG_subprogram ]
!338 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !339, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!339 = metadata !{metadata !327, metadata !216, metadata !104, metadata !79}
!340 = metadata !{i32 786478, i32 0, metadata !60, metadata !"~ap_int_base", metadata !"~ap_int_base", metadata !"", metadata !61, i32 2341, metadata !81, i1 false, i1 false, i32 0, i32 0, null, i32 320, i1 false, null, null, i32 0, metadata !73, i32 2341} ; [ DW_TAG_subprogram ]
!341 = metadata !{metadata !342, metadata !78, metadata !343}
!342 = metadata !{i32 786480, null, metadata !"_AP_W", metadata !77, i64 2048, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!343 = metadata !{i32 786480, null, metadata !"_AP_C", metadata !79, i64 0, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!344 = metadata !{i32 786478, i32 0, metadata !56, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !57, i32 183, metadata !345, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !73, i32 183} ; [ DW_TAG_subprogram ]
!345 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !346, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!346 = metadata !{null, metadata !347}
!347 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !56} ; [ DW_TAG_pointer_type ]
!348 = metadata !{i32 786478, i32 0, metadata !56, metadata !"ap_uint<2048, false>", metadata !"ap_uint<2048, false>", metadata !"", metadata !57, i32 226, metadata !349, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, metadata !89, i32 0, metadata !73, i32 226} ; [ DW_TAG_subprogram ]
!349 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !350, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!350 = metadata !{null, metadata !347, metadata !87}
!351 = metadata !{i32 786478, i32 0, metadata !56, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !57, i32 245, metadata !352, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !73, i32 245} ; [ DW_TAG_subprogram ]
!352 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !353, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!353 = metadata !{null, metadata !347, metadata !79}
!354 = metadata !{i32 786478, i32 0, metadata !56, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !57, i32 246, metadata !355, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !73, i32 246} ; [ DW_TAG_subprogram ]
!355 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !356, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!356 = metadata !{null, metadata !347, metadata !104}
!357 = metadata !{i32 786478, i32 0, metadata !56, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !57, i32 247, metadata !358, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !73, i32 247} ; [ DW_TAG_subprogram ]
!358 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !359, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!359 = metadata !{null, metadata !347, metadata !108}
!360 = metadata !{i32 786478, i32 0, metadata !56, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !57, i32 248, metadata !361, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !73, i32 248} ; [ DW_TAG_subprogram ]
!361 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !362, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!362 = metadata !{null, metadata !347, metadata !112}
!363 = metadata !{i32 786478, i32 0, metadata !56, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !57, i32 249, metadata !364, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !73, i32 249} ; [ DW_TAG_subprogram ]
!364 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !365, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!365 = metadata !{null, metadata !347, metadata !116}
!366 = metadata !{i32 786478, i32 0, metadata !56, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !57, i32 250, metadata !367, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !73, i32 250} ; [ DW_TAG_subprogram ]
!367 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !368, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!368 = metadata !{null, metadata !347, metadata !77}
!369 = metadata !{i32 786478, i32 0, metadata !56, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !57, i32 251, metadata !370, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !73, i32 251} ; [ DW_TAG_subprogram ]
!370 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !371, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!371 = metadata !{null, metadata !347, metadata !123}
!372 = metadata !{i32 786478, i32 0, metadata !56, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !57, i32 252, metadata !373, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !73, i32 252} ; [ DW_TAG_subprogram ]
!373 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !374, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!374 = metadata !{null, metadata !347, metadata !127}
!375 = metadata !{i32 786478, i32 0, metadata !56, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !57, i32 253, metadata !376, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !73, i32 253} ; [ DW_TAG_subprogram ]
!376 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !377, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!377 = metadata !{null, metadata !347, metadata !131}
!378 = metadata !{i32 786478, i32 0, metadata !56, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !57, i32 254, metadata !379, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !73, i32 254} ; [ DW_TAG_subprogram ]
!379 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !380, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!380 = metadata !{null, metadata !347, metadata !141}
!381 = metadata !{i32 786478, i32 0, metadata !56, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !57, i32 255, metadata !382, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !73, i32 255} ; [ DW_TAG_subprogram ]
!382 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !383, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!383 = metadata !{null, metadata !347, metadata !136}
!384 = metadata !{i32 786478, i32 0, metadata !56, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !57, i32 256, metadata !385, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !73, i32 256} ; [ DW_TAG_subprogram ]
!385 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !386, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!386 = metadata !{null, metadata !347, metadata !145}
!387 = metadata !{i32 786478, i32 0, metadata !56, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !57, i32 257, metadata !388, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !73, i32 257} ; [ DW_TAG_subprogram ]
!388 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !389, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!389 = metadata !{null, metadata !347, metadata !149}
!390 = metadata !{i32 786478, i32 0, metadata !56, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !57, i32 259, metadata !391, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !73, i32 259} ; [ DW_TAG_subprogram ]
!391 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !392, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!392 = metadata !{null, metadata !347, metadata !153}
!393 = metadata !{i32 786478, i32 0, metadata !56, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !57, i32 260, metadata !394, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !73, i32 260} ; [ DW_TAG_subprogram ]
!394 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !395, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!395 = metadata !{null, metadata !347, metadata !153, metadata !104}
!396 = metadata !{i32 786478, i32 0, metadata !56, metadata !"operator=", metadata !"operator=", metadata !"_ZNV7ap_uintILi2048EEaSERKS0_", metadata !57, i32 263, metadata !397, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !73, i32 263} ; [ DW_TAG_subprogram ]
!397 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !398, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!398 = metadata !{null, metadata !399, metadata !401}
!399 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !400} ; [ DW_TAG_pointer_type ]
!400 = metadata !{i32 786485, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !56} ; [ DW_TAG_volatile_type ]
!401 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !402} ; [ DW_TAG_reference_type ]
!402 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !56} ; [ DW_TAG_const_type ]
!403 = metadata !{i32 786478, i32 0, metadata !56, metadata !"operator=", metadata !"operator=", metadata !"_ZNV7ap_uintILi2048EEaSERVKS0_", metadata !57, i32 267, metadata !404, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !73, i32 267} ; [ DW_TAG_subprogram ]
!404 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !405, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!405 = metadata !{null, metadata !399, metadata !406}
!406 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !407} ; [ DW_TAG_reference_type ]
!407 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !400} ; [ DW_TAG_const_type ]
!408 = metadata !{i32 786478, i32 0, metadata !56, metadata !"operator=", metadata !"operator=", metadata !"_ZN7ap_uintILi2048EEaSERVKS0_", metadata !57, i32 271, metadata !409, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !73, i32 271} ; [ DW_TAG_subprogram ]
!409 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !410, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!410 = metadata !{metadata !411, metadata !347, metadata !406}
!411 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !56} ; [ DW_TAG_reference_type ]
!412 = metadata !{i32 786478, i32 0, metadata !56, metadata !"operator=", metadata !"operator=", metadata !"_ZN7ap_uintILi2048EEaSERKS0_", metadata !57, i32 276, metadata !413, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !73, i32 276} ; [ DW_TAG_subprogram ]
!413 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !414, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!414 = metadata !{metadata !411, metadata !347, metadata !401}
!415 = metadata !{i32 786478, i32 0, metadata !56, metadata !"~ap_uint", metadata !"~ap_uint", metadata !"", metadata !57, i32 180, metadata !345, i1 false, i1 false, i32 0, i32 0, null, i32 320, i1 false, null, null, i32 0, metadata !73, i32 180} ; [ DW_TAG_subprogram ]
!416 = metadata !{metadata !342}
!417 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !55} ; [ DW_TAG_pointer_type ]
!418 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !419} ; [ DW_TAG_pointer_type ]
!419 = metadata !{i32 786438, null, metadata !"ap_uint<2048>", metadata !57, i32 180, i64 2048, i64 2048, i32 0, i32 0, null, metadata !420, i32 0, null, metadata !416} ; [ DW_TAG_class_field_type ]
!420 = metadata !{metadata !421}
!421 = metadata !{i32 786438, null, metadata !"ap_int_base<2048, false, false>", metadata !61, i32 2341, i64 2048, i64 2048, i32 0, i32 0, null, metadata !422, i32 0, null, metadata !341} ; [ DW_TAG_class_field_type ]
!422 = metadata !{metadata !423}
!423 = metadata !{i32 786438, null, metadata !"ssdm_int<1024 + 1024 * 1, false>", metadata !65, i32 1038, i64 2048, i64 2048, i32 0, i32 0, null, metadata !424, i32 0, null, metadata !75} ; [ DW_TAG_class_field_type ]
!424 = metadata !{metadata !67}
!425 = metadata !{i32 11, i32 61, metadata !51, null}
!426 = metadata !{i32 13, i32 1, metadata !427, null}
!427 = metadata !{i32 786443, metadata !51, i32 11, i32 68, metadata !52, i32 0} ; [ DW_TAG_lexical_block ]
!428 = metadata !{i32 14, i32 1, metadata !427, null}
!429 = metadata !{i32 15, i32 1, metadata !427, null}
!430 = metadata !{i32 16, i32 1, metadata !427, null}
!431 = metadata !{i32 790529, metadata !432, metadata !"lhs.V", null, i32 3376, metadata !421, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!432 = metadata !{i32 786688, metadata !433, metadata !"lhs", metadata !61, i32 3376, metadata !437, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!433 = metadata !{i32 786443, metadata !434, i32 3376, i32 260, metadata !61, i32 5} ; [ DW_TAG_lexical_block ]
!434 = metadata !{i32 786478, i32 0, metadata !61, metadata !"operator^<2048, false, 2048, false>", metadata !"operator^<2048, false, 2048, false>", metadata !"_ZeoILi2048ELb0ELi2048ELb0EEN11ap_int_baseIXT_EXT0_EXleT_Li64EEE5RTypeIXT1_EXT2_EE5logicERKS1_RKS0_IXT1_EXT2_EXleT1_Li64EEE", metadata !61, i32 3376, metadata !435, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, metadata !439, null, metadata !73, i32 3376} ; [ DW_TAG_subprogram ]
!435 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !436, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!436 = metadata !{metadata !437, metadata !87, metadata !87}
!437 = metadata !{i32 786454, metadata !438, metadata !"logic", metadata !61, i32 2369, i64 0, i64 0, i64 0, i32 0, metadata !60} ; [ DW_TAG_typedef ]
!438 = metadata !{i32 786434, metadata !60, metadata !"RType<2048, false>", metadata !61, i32 2350, i64 8, i64 8, i32 0, i32 0, null, metadata !213, i32 0, null, metadata !89} ; [ DW_TAG_class_type ]
!439 = metadata !{metadata !342, metadata !78, metadata !90, metadata !91}
!440 = metadata !{i32 3376, i32 0, metadata !433, metadata !441}
!441 = metadata !{i32 18, i32 12, metadata !427, null}
!442 = metadata !{i32 790529, metadata !443, metadata !"rhs.V", null, i32 3376, metadata !421, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!443 = metadata !{i32 786688, metadata !433, metadata !"rhs", metadata !61, i32 3376, metadata !437, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!444 = metadata !{i32 790529, metadata !445, metadata !"r.V", null, i32 3376, metadata !421, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!445 = metadata !{i32 786688, metadata !433, metadata !"r", metadata !61, i32 3376, metadata !446, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!446 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !437} ; [ DW_TAG_reference_type ]
!447 = metadata !{i32 790531, metadata !448, metadata !"ssdm_int<1024 + 1024 * 1, false>.V", null, i32 276, metadata !418, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!448 = metadata !{i32 786689, metadata !449, metadata !"this", metadata !57, i32 16777492, metadata !450, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!449 = metadata !{i32 786478, i32 0, null, metadata !"operator=", metadata !"operator=", metadata !"_ZN7ap_uintILi2048EEaSERKS0_", metadata !57, i32 276, metadata !413, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !412, metadata !73, i32 276} ; [ DW_TAG_subprogram ]
!450 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !56} ; [ DW_TAG_pointer_type ]
!451 = metadata !{i32 276, i32 53, metadata !449, metadata !441}
!452 = metadata !{i32 277, i32 10, metadata !453, metadata !441}
!453 = metadata !{i32 786443, metadata !449, i32 276, i32 92, metadata !57, i32 4} ; [ DW_TAG_lexical_block ]
!454 = metadata !{i32 20, i32 1, metadata !427, null}
