; ModuleID = '/home/linux/Documents/DLA/source/sw/rsa_HLS/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535]
@encrypt_str = internal unnamed_addr constant [8 x i8] c"encrypt\00"
@p_str2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str1 = private unnamed_addr constant [11 x i8] c"PERIPH_BUS\00", align 1
@p_str = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define void @encrypt(i512 %key_V, i512* %output_V) {
  call void (...)* @_ssdm_op_SpecBitsMap(i512 %key_V), !map !42
  call void (...)* @_ssdm_op_SpecBitsMap(i512* %output_V), !map !48
  call void (...)* @_ssdm_op_SpecTopModule([8 x i8]* @encrypt_str) nounwind
  %key_V_read = call i512 @_ssdm_op_Read.s_axilite.i512(i512 %key_V)
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [10 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [11 x i8]* @p_str1, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i512 %key_V, [10 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [11 x i8]* @p_str1, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i512* %output_V, [10 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [11 x i8]* @p_str1, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2) nounwind
  %output_V_assign = add i512 %key_V_read, 5
  call void @_ssdm_op_Write.s_axilite.i512P(i512* %output_V, i512 %output_V_assign)
  ret void
}

define weak void @_ssdm_op_Write.s_axilite.i512P(i512*, i512) {
entry:
  store i512 %1, i512* %0
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

define weak i512 @_ssdm_op_Read.s_axilite.i512(i512) {
entry:
  ret i512 %0
}

declare void @_GLOBAL__I_a() nounwind section ".text.startup"

!opencl.kernels = !{!0, !7, !7, !13, !13, !19, !22, !26, !26, !13, !28, !13, !13, !13, !31, !31, !33, !33}
!hls.encrypted.func = !{}
!llvm.map.gv = !{!35}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 1}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"uintMem", metadata !"uintMem*"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"key", metadata !"output"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !6}
!8 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!9 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!10 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<514, true> &"}
!11 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!12 = metadata !{metadata !"kernel_arg_name", metadata !"op"}
!13 = metadata !{null, metadata !14, metadata !15, metadata !16, metadata !17, metadata !18, metadata !6}
!14 = metadata !{metadata !"kernel_arg_addr_space"}
!15 = metadata !{metadata !"kernel_arg_access_qual"}
!16 = metadata !{metadata !"kernel_arg_type"}
!17 = metadata !{metadata !"kernel_arg_type_qual"}
!18 = metadata !{metadata !"kernel_arg_name"}
!19 = metadata !{null, metadata !8, metadata !9, metadata !20, metadata !11, metadata !21, metadata !6}
!20 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<512> &"}
!21 = metadata !{metadata !"kernel_arg_name", metadata !"op2"}
!22 = metadata !{null, metadata !23, metadata !2, metadata !24, metadata !4, metadata !25, metadata !6}
!23 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0}
!24 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<512, false> &", metadata !"int"}
!25 = metadata !{metadata !"kernel_arg_name", metadata !"op", metadata !"i_op"}
!26 = metadata !{null, metadata !8, metadata !9, metadata !27, metadata !11, metadata !12, metadata !6}
!27 = metadata !{metadata !"kernel_arg_type", metadata !"int"}
!28 = metadata !{null, metadata !23, metadata !2, metadata !29, metadata !4, metadata !30, metadata !6}
!29 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<512, false> &", metadata !"const ap_int_base<32, true> &"}
!30 = metadata !{metadata !"kernel_arg_name", metadata !"op", metadata !"op2"}
!31 = metadata !{null, metadata !8, metadata !9, metadata !32, metadata !11, metadata !12, metadata !6}
!32 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, true> &"}
!33 = metadata !{null, metadata !8, metadata !9, metadata !34, metadata !11, metadata !12, metadata !6}
!34 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<512, false> &"}
!35 = metadata !{metadata !36, [1 x i32]* @llvm_global_ctors_0}
!36 = metadata !{metadata !37}
!37 = metadata !{i32 0, i32 31, metadata !38}
!38 = metadata !{metadata !39}
!39 = metadata !{metadata !"llvm.global_ctors.0", metadata !40, metadata !"", i32 0, i32 31}
!40 = metadata !{metadata !41}
!41 = metadata !{i32 0, i32 0, i32 1}
!42 = metadata !{metadata !43}
!43 = metadata !{i32 0, i32 511, metadata !44}
!44 = metadata !{metadata !45}
!45 = metadata !{metadata !"key.V", metadata !46, metadata !"uint512", i32 0, i32 511}
!46 = metadata !{metadata !47}
!47 = metadata !{i32 0, i32 0, i32 0}
!48 = metadata !{metadata !49}
!49 = metadata !{i32 0, i32 511, metadata !50}
!50 = metadata !{metadata !51}
!51 = metadata !{metadata !"output.V", metadata !40, metadata !"uint512", i32 0, i32 511}
