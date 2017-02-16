; ModuleID = '/home/linux/Documents/DLA/source/sw/hls/BigInt/solution1/.autopilot/db/a.g.1.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bigint_math.str = internal unnamed_addr constant [12 x i8] c"bigint_math\00" ; [#uses=1 type=[12 x i8]*]
@.str2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]
@.str1 = private unnamed_addr constant [11 x i8] c"PERIPH_BUS\00", align 1 ; [#uses=1 type=[11 x i8]*]
@.str = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1 ; [#uses=1 type=[10 x i8]*]

; [#uses=10]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=0]
define void @bigint_math(i8* %a, i8* %b, i8* %c) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecTopModule([12 x i8]* @bigint_math.str) nounwind
  call void @llvm.dbg.value(metadata !{i8* %a}, i64 0, metadata !31), !dbg !32 ; [debug line = 15:32] [debug variable = a]
  call void @llvm.dbg.value(metadata !{i8* %b}, i64 0, metadata !33), !dbg !34 ; [debug line = 15:54] [debug variable = b]
  call void @llvm.dbg.value(metadata !{i8* %c}, i64 0, metadata !35), !dbg !36 ; [debug line = 15:76] [debug variable = c]
  call void (...)* @_ssdm_SpecArrayDimSize(i8* %a, i32 128) nounwind, !dbg !37 ; [debug line = 15:84]
  call void (...)* @_ssdm_SpecArrayDimSize(i8* %b, i32 128) nounwind, !dbg !39 ; [debug line = 15:114]
  call void (...)* @_ssdm_SpecArrayDimSize(i8* %c, i32 256) nounwind, !dbg !40 ; [debug line = 15:144]
  call void (...)* @_ssdm_op_SpecInterface(i32 0, i8* getelementptr inbounds ([10 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str2, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str2, i64 0, i64 0)) nounwind, !dbg !41 ; [debug line = 17:1]
  call void (...)* @_ssdm_op_SpecInterface(i8* %a, i8* getelementptr inbounds ([10 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str2, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str2, i64 0, i64 0)) nounwind, !dbg !42 ; [debug line = 18:1]
  call void (...)* @_ssdm_op_SpecInterface(i8* %b, i8* getelementptr inbounds ([10 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str2, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str2, i64 0, i64 0)) nounwind, !dbg !43 ; [debug line = 19:1]
  call void (...)* @_ssdm_op_SpecInterface(i8* %c, i8* getelementptr inbounds ([10 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str2, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str2, i64 0, i64 0)) nounwind, !dbg !44 ; [debug line = 20:1]
  br label %1, !dbg !45                           ; [debug line = 28:6]

; <label>:1                                       ; preds = %2, %0
  %i = phi i32 [ 0, %0 ], [ %i.2, %2 ]            ; [#uses=3 type=i32]
  %exitcond2 = icmp eq i32 %i, 256, !dbg !45      ; [#uses=1 type=i1] [debug line = 28:6]
  br i1 %exitcond2, label %.preheader.preheader, label %2, !dbg !45 ; [debug line = 28:6]

.preheader.preheader:                             ; preds = %1
  br label %.preheader, !dbg !47                  ; [debug line = 32:6]

; <label>:2                                       ; preds = %1
  %tmp = sext i32 %i to i64, !dbg !49             ; [#uses=1 type=i64] [debug line = 29:3]
  %c.addr = getelementptr inbounds i8* %c, i64 %tmp, !dbg !49 ; [#uses=1 type=i8*] [debug line = 29:3]
  store i8 0, i8* %c.addr, align 1, !dbg !49      ; [debug line = 29:3]
  %i.2 = add nsw i32 %i, 1, !dbg !51              ; [#uses=1 type=i32] [debug line = 28:22]
  call void @llvm.dbg.value(metadata !{i32 %i.2}, i64 0, metadata !52), !dbg !51 ; [debug line = 28:22] [debug variable = i]
  br label %1, !dbg !51                           ; [debug line = 28:22]

.preheader:                                       ; preds = %8, %.preheader.preheader
  %i.1 = phi i32 [ %i.3, %8 ], [ 0, %.preheader.preheader ] ; [#uses=4 type=i32]
  %exitcond1 = icmp eq i32 %i.1, 128, !dbg !47    ; [#uses=1 type=i1] [debug line = 32:6]
  br i1 %exitcond1, label %9, label %3, !dbg !47  ; [debug line = 32:6]

; <label>:3                                       ; preds = %.preheader
  %k = sub nsw i32 255, %i.1, !dbg !53            ; [#uses=1 type=i32] [debug line = 33:3]
  call void @llvm.dbg.value(metadata !{i32 %k}, i64 0, metadata !55), !dbg !53 ; [debug line = 33:3] [debug variable = k]
  %tmp.3 = sub nsw i32 127, %i.1, !dbg !56        ; [#uses=1 type=i32] [debug line = 36:4]
  %tmp.4 = sext i32 %tmp.3 to i64, !dbg !56       ; [#uses=1 type=i64] [debug line = 36:4]
  %b.addr = getelementptr inbounds i8* %b, i64 %tmp.4, !dbg !56 ; [#uses=1 type=i8*] [debug line = 36:4]
  br label %4, !dbg !59                           ; [debug line = 35:7]

; <label>:4                                       ; preds = %._crit_edge3, %3
  %j = phi i32 [ 0, %3 ], [ %j.1, %._crit_edge3 ] ; [#uses=3 type=i32]
  %k1 = phi i32 [ %k, %3 ], [ %k.2, %._crit_edge3 ] ; [#uses=4 type=i32]
  %exitcond = icmp eq i32 %j, 128, !dbg !59       ; [#uses=1 type=i1] [debug line = 35:7]
  br i1 %exitcond, label %8, label %5, !dbg !59   ; [debug line = 35:7]

; <label>:5                                       ; preds = %4
  %b.load = load i8* %b.addr, align 1, !dbg !56   ; [#uses=4 type=i8] [debug line = 36:4]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %b.load) nounwind
  %tmp.6 = sub nsw i32 127, %j, !dbg !56          ; [#uses=1 type=i32] [debug line = 36:4]
  %tmp.7 = sext i32 %tmp.6 to i64, !dbg !56       ; [#uses=1 type=i64] [debug line = 36:4]
  %a.addr = getelementptr inbounds i8* %a, i64 %tmp.7, !dbg !56 ; [#uses=1 type=i8*] [debug line = 36:4]
  %a.load = load i8* %a.addr, align 1, !dbg !56   ; [#uses=4 type=i8] [debug line = 36:4]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %a.load) nounwind
  %prod = mul i8 %a.load, %b.load, !dbg !56       ; [#uses=2 type=i8] [debug line = 36:4]
  call void @llvm.dbg.value(metadata !{i8 %prod}, i64 0, metadata !60), !dbg !56 ; [debug line = 36:4] [debug variable = prod]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %b.load) nounwind
  %tmp.9 = zext i8 %b.load to i32, !dbg !61       ; [#uses=1 type=i32] [debug line = 37:4]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %a.load) nounwind
  %tmp.10 = zext i8 %a.load to i32, !dbg !61      ; [#uses=1 type=i32] [debug line = 37:4]
  %tmp.11 = mul nsw i32 %tmp.10, %tmp.9, !dbg !61 ; [#uses=1 type=i32] [debug line = 37:4]
  %tmp.12 = lshr i32 %tmp.11, 8, !dbg !61         ; [#uses=1 type=i32] [debug line = 37:4]
  %carry = trunc i32 %tmp.12 to i8, !dbg !61      ; [#uses=2 type=i8] [debug line = 37:4]
  call void @llvm.dbg.value(metadata !{i8 %carry}, i64 0, metadata !62), !dbg !61 ; [debug line = 37:4] [debug variable = carry]
  %tmp.13 = sext i32 %k1 to i64, !dbg !63         ; [#uses=1 type=i64] [debug line = 39:4]
  %c.addr.1 = getelementptr inbounds i8* %c, i64 %tmp.13, !dbg !63 ; [#uses=2 type=i8*] [debug line = 39:4]
  %c.load = load i8* %c.addr.1, align 1, !dbg !63 ; [#uses=5 type=i8] [debug line = 39:4]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %c.load) nounwind
  %tmp.14 = zext i8 %c.load to i32, !dbg !63      ; [#uses=1 type=i32] [debug line = 39:4]
  %tmp.15 = zext i8 %prod to i32, !dbg !63        ; [#uses=1 type=i32] [debug line = 39:4]
  %tmp.16 = add nsw i32 %tmp.14, %tmp.15, !dbg !63 ; [#uses=2 type=i32] [debug line = 39:4]
  %tmp.17 = icmp sgt i32 %tmp.16, 255, !dbg !63   ; [#uses=1 type=i1] [debug line = 39:4]
  br i1 %tmp.17, label %6, label %._crit_edge, !dbg !63 ; [debug line = 39:4]

; <label>:6                                       ; preds = %5
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %c.load) nounwind
  %tmp.18 = lshr i32 %tmp.16, 8, !dbg !64         ; [#uses=1 type=i32] [debug line = 40:5]
  %tmp.19 = add nsw i32 %k1, -1, !dbg !64         ; [#uses=1 type=i32] [debug line = 40:5]
  %tmp.20 = sext i32 %tmp.19 to i64, !dbg !64     ; [#uses=1 type=i64] [debug line = 40:5]
  %c.addr.2 = getelementptr inbounds i8* %c, i64 %tmp.20, !dbg !64 ; [#uses=2 type=i8*] [debug line = 40:5]
  %c.load.1 = load i8* %c.addr.2, align 1, !dbg !64 ; [#uses=2 type=i8] [debug line = 40:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %c.load.1) nounwind
  %tmp.21 = trunc i32 %tmp.18 to i8, !dbg !64     ; [#uses=1 type=i8] [debug line = 40:5]
  %tmp.22 = add i8 %c.load.1, %tmp.21, !dbg !64   ; [#uses=1 type=i8] [debug line = 40:5]
  store i8 %tmp.22, i8* %c.addr.2, align 1, !dbg !64 ; [debug line = 40:5]
  br label %._crit_edge, !dbg !66                 ; [debug line = 41:4]

._crit_edge:                                      ; preds = %6, %5
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %c.load) nounwind
  %tmp.23 = add i8 %c.load, %prod, !dbg !67       ; [#uses=1 type=i8] [debug line = 43:4]
  store i8 %tmp.23, i8* %c.addr.1, align 1, !dbg !67 ; [debug line = 43:4]
  %k.2 = add nsw i32 %k1, -1, !dbg !68            ; [#uses=2 type=i32] [debug line = 45:4]
  %tmp.25 = sext i32 %k.2 to i64, !dbg !68        ; [#uses=1 type=i64] [debug line = 45:4]
  %c.addr.3 = getelementptr inbounds i8* %c, i64 %tmp.25, !dbg !68 ; [#uses=2 type=i8*] [debug line = 45:4]
  %c.load.2 = load i8* %c.addr.3, align 1, !dbg !68 ; [#uses=5 type=i8] [debug line = 45:4]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %c.load.2) nounwind
  %tmp.26 = zext i8 %c.load.2 to i32, !dbg !68    ; [#uses=1 type=i32] [debug line = 45:4]
  %tmp.27 = zext i8 %carry to i32, !dbg !68       ; [#uses=1 type=i32] [debug line = 45:4]
  %tmp.28 = add nsw i32 %tmp.26, %tmp.27, !dbg !68 ; [#uses=2 type=i32] [debug line = 45:4]
  %tmp.29 = icmp sgt i32 %tmp.28, 255, !dbg !68   ; [#uses=1 type=i1] [debug line = 45:4]
  br i1 %tmp.29, label %7, label %._crit_edge3, !dbg !68 ; [debug line = 45:4]

; <label>:7                                       ; preds = %._crit_edge
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %c.load.2) nounwind
  %tmp.30 = lshr i32 %tmp.28, 8, !dbg !69         ; [#uses=1 type=i32] [debug line = 46:5]
  %tmp.31 = add nsw i32 %k1, -2, !dbg !69         ; [#uses=1 type=i32] [debug line = 46:5]
  %tmp.32 = sext i32 %tmp.31 to i64, !dbg !69     ; [#uses=1 type=i64] [debug line = 46:5]
  %c.addr.4 = getelementptr inbounds i8* %c, i64 %tmp.32, !dbg !69 ; [#uses=2 type=i8*] [debug line = 46:5]
  %c.load.3 = load i8* %c.addr.4, align 1, !dbg !69 ; [#uses=2 type=i8] [debug line = 46:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %c.load.3) nounwind
  %tmp.33 = trunc i32 %tmp.30 to i8, !dbg !69     ; [#uses=1 type=i8] [debug line = 46:5]
  %tmp.34 = add i8 %c.load.3, %tmp.33, !dbg !69   ; [#uses=1 type=i8] [debug line = 46:5]
  store i8 %tmp.34, i8* %c.addr.4, align 1, !dbg !69 ; [debug line = 46:5]
  br label %._crit_edge3, !dbg !71                ; [debug line = 47:4]

._crit_edge3:                                     ; preds = %7, %._crit_edge
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %c.load.2) nounwind
  %tmp.35 = add i8 %c.load.2, %carry, !dbg !72    ; [#uses=1 type=i8] [debug line = 48:4]
  store i8 %tmp.35, i8* %c.addr.3, align 1, !dbg !72 ; [debug line = 48:4]
  call void @llvm.dbg.value(metadata !{i32 %k.2}, i64 0, metadata !55), !dbg !73 ; [debug line = 50:4] [debug variable = k]
  %j.1 = add nsw i32 %j, 1, !dbg !74              ; [#uses=1 type=i32] [debug line = 35:23]
  call void @llvm.dbg.value(metadata !{i32 %j.1}, i64 0, metadata !75), !dbg !74 ; [debug line = 35:23] [debug variable = j]
  br label %4, !dbg !74                           ; [debug line = 35:23]

; <label>:8                                       ; preds = %4
  %i.3 = add nsw i32 %i.1, 1, !dbg !76            ; [#uses=1 type=i32] [debug line = 32:22]
  call void @llvm.dbg.value(metadata !{i32 %i.3}, i64 0, metadata !52), !dbg !76 ; [debug line = 32:22] [debug variable = i]
  br label %.preheader, !dbg !76                  ; [debug line = 32:22]

; <label>:9                                       ; preds = %.preheader
  ret void, !dbg !77                              ; [debug line = 54:1]
}

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=4]
declare void @_ssdm_op_SpecInterface(...) nounwind

; [#uses=12]
declare void @_ssdm_SpecKeepArrayLoad(...)

; [#uses=3]
declare void @_ssdm_SpecArrayDimSize(...) nounwind

!llvm.dbg.cu = !{!0}
!opencl.kernels = !{!24}
!hls.encrypted.func = !{}

!0 = metadata !{i32 786449, i32 0, i32 4, metadata !"/home/linux/Documents/DLA/source/sw/hls/BigInt/solution1/.autopilot/db/main.pragma.2.cpp", metadata !"/home/linux/Documents/DLA/source/sw/hls", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !13} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"bigint_math", metadata !"bigint_math", metadata !"_Z11bigint_mathPhS_S_", metadata !6, i32 15, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i8*, i8*, i8*)* @bigint_math, null, null, metadata !11, i32 15} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"BigInt/solution1/main.cpp", metadata !"/home/linux/Documents/DLA/source/sw/hls", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{null, metadata !9, metadata !9, metadata !9}
!9 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ]
!10 = metadata !{i32 786468, null, metadata !"unsigned char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ]
!11 = metadata !{metadata !12}
!12 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!13 = metadata !{metadata !14}
!14 = metadata !{metadata !15, metadata !18, metadata !19, metadata !20, metadata !23}
!15 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stdin_", metadata !"_IO_2_1_stdin_", metadata !"", metadata !16, i32 320, metadata !17, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!16 = metadata !{i32 786473, metadata !"/usr/include/libio.h", metadata !"/home/linux/Documents/DLA/source/sw/hls", null} ; [ DW_TAG_file_type ]
!17 = metadata !{i32 786434, null, metadata !"_IO_FILE_plus", metadata !16, i32 318, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_class_type ]
!18 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stdout_", metadata !"_IO_2_1_stdout_", metadata !"", metadata !16, i32 321, metadata !17, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!19 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stderr_", metadata !"_IO_2_1_stderr_", metadata !"", metadata !16, i32 322, metadata !17, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!20 = metadata !{i32 786484, i32 0, null, metadata !"sys_nerr", metadata !"sys_nerr", metadata !"", metadata !21, i32 26, metadata !22, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!21 = metadata !{i32 786473, metadata !"/usr/include/x86_64-linux-gnu/bits/sys_errlist.h", metadata !"/home/linux/Documents/DLA/source/sw/hls", null} ; [ DW_TAG_file_type ]
!22 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!23 = metadata !{i32 786484, i32 0, null, metadata !"_sys_nerr", metadata !"_sys_nerr", metadata !"", metadata !21, i32 30, metadata !22, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!24 = metadata !{void (i8*, i8*, i8*)* @bigint_math, metadata !25, metadata !26, metadata !27, metadata !28, metadata !29, metadata !30}
!25 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 1}
!26 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!27 = metadata !{metadata !"kernel_arg_type", metadata !"uchar*", metadata !"uchar*", metadata !"uchar*"}
!28 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!29 = metadata !{metadata !"kernel_arg_name", metadata !"a", metadata !"b", metadata !"c"}
!30 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!31 = metadata !{i32 786689, metadata !5, metadata !"a", metadata !6, i32 16777231, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!32 = metadata !{i32 15, i32 32, metadata !5, null}
!33 = metadata !{i32 786689, metadata !5, metadata !"b", metadata !6, i32 33554447, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!34 = metadata !{i32 15, i32 54, metadata !5, null}
!35 = metadata !{i32 786689, metadata !5, metadata !"c", metadata !6, i32 50331663, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!36 = metadata !{i32 15, i32 76, metadata !5, null}
!37 = metadata !{i32 15, i32 84, metadata !38, null}
!38 = metadata !{i32 786443, metadata !5, i32 15, i32 83, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!39 = metadata !{i32 15, i32 114, metadata !38, null}
!40 = metadata !{i32 15, i32 144, metadata !38, null}
!41 = metadata !{i32 17, i32 1, metadata !38, null}
!42 = metadata !{i32 18, i32 1, metadata !38, null}
!43 = metadata !{i32 19, i32 1, metadata !38, null}
!44 = metadata !{i32 20, i32 1, metadata !38, null}
!45 = metadata !{i32 28, i32 6, metadata !46, null}
!46 = metadata !{i32 786443, metadata !38, i32 28, i32 2, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!47 = metadata !{i32 32, i32 6, metadata !48, null}
!48 = metadata !{i32 786443, metadata !38, i32 32, i32 2, metadata !6, i32 3} ; [ DW_TAG_lexical_block ]
!49 = metadata !{i32 29, i32 3, metadata !50, null}
!50 = metadata !{i32 786443, metadata !46, i32 28, i32 26, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!51 = metadata !{i32 28, i32 22, metadata !46, null}
!52 = metadata !{i32 786688, metadata !38, metadata !"i", metadata !6, i32 24, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!53 = metadata !{i32 33, i32 3, metadata !54, null}
!54 = metadata !{i32 786443, metadata !48, i32 32, i32 26, metadata !6, i32 4} ; [ DW_TAG_lexical_block ]
!55 = metadata !{i32 786688, metadata !38, metadata !"k", metadata !6, i32 26, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!56 = metadata !{i32 36, i32 4, metadata !57, null}
!57 = metadata !{i32 786443, metadata !58, i32 35, i32 27, metadata !6, i32 6} ; [ DW_TAG_lexical_block ]
!58 = metadata !{i32 786443, metadata !54, i32 35, i32 3, metadata !6, i32 5} ; [ DW_TAG_lexical_block ]
!59 = metadata !{i32 35, i32 7, metadata !58, null}
!60 = metadata !{i32 786688, metadata !38, metadata !"prod", metadata !6, i32 22, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!61 = metadata !{i32 37, i32 4, metadata !57, null}
!62 = metadata !{i32 786688, metadata !38, metadata !"carry", metadata !6, i32 23, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!63 = metadata !{i32 39, i32 4, metadata !57, null}
!64 = metadata !{i32 40, i32 5, metadata !65, null}
!65 = metadata !{i32 786443, metadata !57, i32 39, i32 28, metadata !6, i32 7} ; [ DW_TAG_lexical_block ]
!66 = metadata !{i32 41, i32 4, metadata !65, null}
!67 = metadata !{i32 43, i32 4, metadata !57, null}
!68 = metadata !{i32 45, i32 4, metadata !57, null}
!69 = metadata !{i32 46, i32 5, metadata !70, null}
!70 = metadata !{i32 786443, metadata !57, i32 45, i32 31, metadata !6, i32 8} ; [ DW_TAG_lexical_block ]
!71 = metadata !{i32 47, i32 4, metadata !70, null}
!72 = metadata !{i32 48, i32 4, metadata !57, null}
!73 = metadata !{i32 50, i32 4, metadata !57, null}
!74 = metadata !{i32 35, i32 23, metadata !58, null}
!75 = metadata !{i32 786688, metadata !38, metadata !"j", metadata !6, i32 25, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!76 = metadata !{i32 32, i32 22, metadata !48, null}
!77 = metadata !{i32 54, i32 1, metadata !38, null}
