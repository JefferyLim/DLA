; ModuleID = '/home/jlim/Documents/school/DLA/source/sw/rsa_HLS/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@encrypt_str = internal unnamed_addr constant [8 x i8] c"encrypt\00"

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define i512 @encrypt(i512 %key, i512 %exponent) nounwind uwtable readnone {
  call void (...)* @_ssdm_op_SpecBitsMap(i512 %key) nounwind, !map !7
  call void (...)* @_ssdm_op_SpecBitsMap(i512 %exponent) nounwind, !map !13
  call void (...)* @_ssdm_op_SpecBitsMap(i512 0) nounwind, !map !17
  call void (...)* @_ssdm_op_SpecTopModule([8 x i8]* @encrypt_str) nounwind
  %exponent_read = call i512 @_ssdm_op_Read.ap_auto.i512(i512 %exponent) nounwind
  %key_read = call i512 @_ssdm_op_Read.ap_auto.i512(i512 %key) nounwind
  %cyper = xor i512 %exponent_read, 100
  %tmp = urem i512 %cyper, %key_read
  ret i512 %tmp
}

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

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
