; ModuleID = '/home/linux/Documents/DLA/source/sw/BigInt/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535]
@bigint_math_str = internal unnamed_addr constant [12 x i8] c"bigint_math\00"
@p_str2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str1 = private unnamed_addr constant [11 x i8] c"PERIPH_BUS\00", align 1
@p_str = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define void @bigint_math(i2048 %number1_V, i2048 %number2_V, i2048* %output_V) {
  call void (...)* @_ssdm_op_SpecBitsMap(i2048 %number1_V), !map !35
  call void (...)* @_ssdm_op_SpecBitsMap(i2048 %number2_V), !map !41
  call void (...)* @_ssdm_op_SpecBitsMap(i2048* %output_V), !map !45
  call void (...)* @_ssdm_op_SpecTopModule([12 x i8]* @bigint_math_str) nounwind
  %number2_V_read = call i2048 @_ssdm_op_Read.s_axilite.i2048(i2048 %number2_V)
  %number1_V_read = call i2048 @_ssdm_op_Read.s_axilite.i2048(i2048 %number1_V)
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [10 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [11 x i8]* @p_str1, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i2048 %number1_V, [10 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [11 x i8]* @p_str1, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i2048 %number2_V, [10 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [11 x i8]* @p_str1, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i2048* %output_V, [10 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [11 x i8]* @p_str1, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2) nounwind
  %r_V = xor i2048 %number2_V_read, %number1_V_read
  call void @_ssdm_op_Write.s_axilite.i2048P(i2048* %output_V, i2048 %r_V)
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

define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak i2048 @_ssdm_op_Read.s_axilite.i2048(i2048) {
entry:
  ret i2048 %0
}

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
