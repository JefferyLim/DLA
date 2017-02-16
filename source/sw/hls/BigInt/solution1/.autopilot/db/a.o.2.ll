; ModuleID = '/home/linux/Documents/DLA/source/sw/hls/BigInt/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bigint_math.str = internal unnamed_addr constant [12 x i8] c"bigint_math\00" ; [#uses=1 type=[12 x i8]*]
@.str2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=12 type=[1 x i8]*]
@.str1 = private unnamed_addr constant [11 x i8] c"PERIPH_BUS\00", align 1 ; [#uses=4 type=[11 x i8]*]
@.str = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1 ; [#uses=4 type=[10 x i8]*]

; [#uses=10]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=0]
define void @bigint_math([128 x i8]* %a, [128 x i8]* %b, [256 x i8]* %c) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap([128 x i8]* %a) nounwind, !map !31
  call void (...)* @_ssdm_op_SpecBitsMap([128 x i8]* %b) nounwind, !map !37
  call void (...)* @_ssdm_op_SpecBitsMap([256 x i8]* %c) nounwind, !map !41
  call void (...)* @_ssdm_op_SpecTopModule([12 x i8]* @bigint_math.str) nounwind
  call void @llvm.dbg.value(metadata !{[128 x i8]* %a}, i64 0, metadata !47), !dbg !51 ; [debug line = 15:32] [debug variable = a]
  call void @llvm.dbg.value(metadata !{[128 x i8]* %b}, i64 0, metadata !52), !dbg !53 ; [debug line = 15:54] [debug variable = b]
  call void @llvm.dbg.value(metadata !{[256 x i8]* %c}, i64 0, metadata !54), !dbg !58 ; [debug line = 15:76] [debug variable = c]
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [10 x i8]* @.str, i32 0, i32 0, i32 0, i32 0, [11 x i8]* @.str1, [1 x i8]* @.str2, [1 x i8]* @.str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str2) nounwind, !dbg !59 ; [debug line = 17:1]
  call void (...)* @_ssdm_op_SpecInterface([128 x i8]* %a, [10 x i8]* @.str, i32 0, i32 0, i32 0, i32 0, [11 x i8]* @.str1, [1 x i8]* @.str2, [1 x i8]* @.str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str2) nounwind
  call void (...)* @_ssdm_op_SpecInterface([128 x i8]* %b, [10 x i8]* @.str, i32 0, i32 0, i32 0, i32 0, [11 x i8]* @.str1, [1 x i8]* @.str2, [1 x i8]* @.str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str2) nounwind
  call void (...)* @_ssdm_op_SpecInterface([256 x i8]* %c, [10 x i8]* @.str, i32 0, i32 0, i32 0, i32 0, [11 x i8]* @.str1, [1 x i8]* @.str2, [1 x i8]* @.str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str2) nounwind
  br label %1, !dbg !61                           ; [debug line = 28:6]

; <label>:1                                       ; preds = %3, %0
  %i = phi i9 [ 0, %0 ], [ %i.2, %3 ]             ; [#uses=3 type=i9]
  %exitcond2 = icmp eq i9 %i, -256, !dbg !61      ; [#uses=1 type=i1] [debug line = 28:6]
  %2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 256, i64 256, i64 256) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond2, label %.preheader.preheader, label %3, !dbg !61 ; [debug line = 28:6]

.preheader.preheader:                             ; preds = %1
  br label %.preheader, !dbg !63                  ; [debug line = 32:6]

; <label>:3                                       ; preds = %1
  %tmp = zext i9 %i to i64, !dbg !65              ; [#uses=1 type=i64] [debug line = 29:3]
  %c.addr = getelementptr [256 x i8]* %c, i64 0, i64 %tmp, !dbg !65 ; [#uses=1 type=i8*] [debug line = 29:3]
  store i8 0, i8* %c.addr, align 1, !dbg !65      ; [debug line = 29:3]
  %i.2 = add i9 %i, 1, !dbg !67                   ; [#uses=1 type=i9] [debug line = 28:22]
  call void @llvm.dbg.value(metadata !{i9 %i.2}, i64 0, metadata !68), !dbg !67 ; [debug line = 28:22] [debug variable = i]
  br label %1, !dbg !67                           ; [debug line = 28:22]

.preheader:                                       ; preds = %11, %.preheader.preheader
  %i.1 = phi i8 [ %i.3, %11 ], [ 0, %.preheader.preheader ] ; [#uses=4 type=i8]
  %exitcond1 = icmp eq i8 %i.1, -128, !dbg !63    ; [#uses=1 type=i1] [debug line = 32:6]
  %4 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 128, i64 128, i64 128) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond1, label %12, label %5, !dbg !63 ; [debug line = 32:6]

; <label>:5                                       ; preds = %.preheader
  %k = xor i8 %i.1, -1, !dbg !69                  ; [#uses=1 type=i8] [debug line = 33:3]
  call void @llvm.dbg.value(metadata !{i8 %k}, i64 0, metadata !71), !dbg !69 ; [debug line = 33:3] [debug variable = k]
  %tmp.3 = sub i8 127, %i.1, !dbg !72             ; [#uses=1 type=i8] [debug line = 36:4]
  %tmp.4 = zext i8 %tmp.3 to i64, !dbg !72        ; [#uses=1 type=i64] [debug line = 36:4]
  %b.addr = getelementptr [128 x i8]* %b, i64 0, i64 %tmp.4, !dbg !72 ; [#uses=1 type=i8*] [debug line = 36:4]
  br label %6, !dbg !75                           ; [debug line = 35:7]

; <label>:6                                       ; preds = %._crit_edge3, %5
  %j = phi i8 [ 0, %5 ], [ %j.1, %._crit_edge3 ]  ; [#uses=3 type=i8]
  %k1 = phi i8 [ %k, %5 ], [ %k.1, %._crit_edge3 ] ; [#uses=4 type=i8]
  %k1.cast1 = zext i8 %k1 to i9, !dbg !75         ; [#uses=1 type=i9] [debug line = 35:7]
  %exitcond = icmp eq i8 %j, -128, !dbg !75       ; [#uses=1 type=i1] [debug line = 35:7]
  %7 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 128, i64 128, i64 128) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond, label %11, label %8, !dbg !75  ; [debug line = 35:7]

; <label>:8                                       ; preds = %6
  %b.load = load i8* %b.addr, align 1, !dbg !72   ; [#uses=2 type=i8] [debug line = 36:4]
  %tmp.6 = sub i8 127, %j, !dbg !72               ; [#uses=1 type=i8] [debug line = 36:4]
  %tmp.7 = zext i8 %tmp.6 to i64, !dbg !72        ; [#uses=1 type=i64] [debug line = 36:4]
  %a.addr = getelementptr [128 x i8]* %a, i64 0, i64 %tmp.7, !dbg !72 ; [#uses=1 type=i8*] [debug line = 36:4]
  %a.load = load i8* %a.addr, align 1, !dbg !72   ; [#uses=2 type=i8] [debug line = 36:4]
  %prod = mul i8 %a.load, %b.load, !dbg !72       ; [#uses=2 type=i8] [debug line = 36:4]
  call void @llvm.dbg.value(metadata !{i8 %prod}, i64 0, metadata !76), !dbg !72 ; [debug line = 36:4] [debug variable = prod]
  %tmp.9.cast = zext i8 %b.load to i16, !dbg !77  ; [#uses=1 type=i16] [debug line = 37:4]
  %tmp..cast = zext i8 %a.load to i16, !dbg !77   ; [#uses=1 type=i16] [debug line = 37:4]
  %tmp.1 = mul i16 %tmp..cast, %tmp.9.cast, !dbg !77 ; [#uses=1 type=i16] [debug line = 37:4]
  %tmp.2 = lshr i16 %tmp.1, 8, !dbg !77           ; [#uses=1 type=i16] [debug line = 37:4]
  %carry = trunc i16 %tmp.2 to i8, !dbg !77       ; [#uses=2 type=i8] [debug line = 37:4]
  call void @llvm.dbg.value(metadata !{i8 %carry}, i64 0, metadata !78), !dbg !77 ; [debug line = 37:4] [debug variable = carry]
  %tmp.5 = zext i8 %k1 to i64, !dbg !79           ; [#uses=1 type=i64] [debug line = 39:4]
  %c.addr.1 = getelementptr [256 x i8]* %c, i64 0, i64 %tmp.5, !dbg !79 ; [#uses=2 type=i8*] [debug line = 39:4]
  %c.load = load i8* %c.addr.1, align 1, !dbg !79 ; [#uses=2 type=i8] [debug line = 39:4]
  %tmp.8.cast = zext i8 %c.load to i9, !dbg !79   ; [#uses=1 type=i9] [debug line = 39:4]
  %tmp.10.cast = zext i8 %prod to i9, !dbg !79    ; [#uses=1 type=i9] [debug line = 39:4]
  %tmp. = add i9 %tmp.8.cast, %tmp.10.cast, !dbg !79 ; [#uses=2 type=i9] [debug line = 39:4]
  %tmp.8 = icmp slt i9 %tmp., 0, !dbg !79         ; [#uses=1 type=i1] [debug line = 39:4]
  br i1 %tmp.8, label %9, label %._crit_edge, !dbg !79 ; [debug line = 39:4]

; <label>:9                                       ; preds = %8
  %tmp.9 = lshr i9 %tmp., 8, !dbg !80             ; [#uses=1 type=i9] [debug line = 40:5]
  %tmp.10 = add i8 %k1, -1, !dbg !80              ; [#uses=1 type=i8] [debug line = 40:5]
  %tmp.11 = zext i8 %tmp.10 to i64, !dbg !80      ; [#uses=1 type=i64] [debug line = 40:5]
  %c.addr.2 = getelementptr [256 x i8]* %c, i64 0, i64 %tmp.11, !dbg !80 ; [#uses=2 type=i8*] [debug line = 40:5]
  %c.load.1 = load i8* %c.addr.2, align 1, !dbg !80 ; [#uses=1 type=i8] [debug line = 40:5]
  %tmp.12 = trunc i9 %tmp.9 to i8, !dbg !80       ; [#uses=1 type=i8] [debug line = 40:5]
  %tmp.13 = add i8 %tmp.12, %c.load.1, !dbg !80   ; [#uses=1 type=i8] [debug line = 40:5]
  store i8 %tmp.13, i8* %c.addr.2, align 1, !dbg !80 ; [debug line = 40:5]
  br label %._crit_edge, !dbg !82                 ; [debug line = 41:4]

._crit_edge:                                      ; preds = %9, %8
  %tmp.14 = add i8 %prod, %c.load, !dbg !83       ; [#uses=1 type=i8] [debug line = 43:4]
  store i8 %tmp.14, i8* %c.addr.1, align 1, !dbg !83 ; [debug line = 43:4]
  %k.1 = add i8 %k1, -1, !dbg !84                 ; [#uses=2 type=i8] [debug line = 45:4]
  %tmp.15 = zext i8 %k.1 to i64, !dbg !84         ; [#uses=1 type=i64] [debug line = 45:4]
  %c.addr.3 = getelementptr [256 x i8]* %c, i64 0, i64 %tmp.15, !dbg !84 ; [#uses=2 type=i8*] [debug line = 45:4]
  %c.load.2 = load i8* %c.addr.3, align 1, !dbg !84 ; [#uses=2 type=i8] [debug line = 45:4]
  %tmp.20.cast = zext i8 %c.load.2 to i9, !dbg !84 ; [#uses=1 type=i9] [debug line = 45:4]
  %tmp.21.cast = zext i8 %carry to i9, !dbg !84   ; [#uses=1 type=i9] [debug line = 45:4]
  %tmp.16 = add i9 %tmp.20.cast, %tmp.21.cast, !dbg !84 ; [#uses=2 type=i9] [debug line = 45:4]
  %tmp.17 = icmp slt i9 %tmp.16, 0, !dbg !84      ; [#uses=1 type=i1] [debug line = 45:4]
  br i1 %tmp.17, label %10, label %._crit_edge3, !dbg !84 ; [debug line = 45:4]

; <label>:10                                      ; preds = %._crit_edge
  %tmp.18 = lshr i9 %tmp.16, 8, !dbg !85          ; [#uses=1 type=i9] [debug line = 46:5]
  %tmp.19 = add i9 %k1.cast1, -2, !dbg !85        ; [#uses=1 type=i9] [debug line = 46:5]
  %tmp.20 = sext i9 %tmp.19 to i64, !dbg !85      ; [#uses=1 type=i64] [debug line = 46:5]
  %c.addr.4 = getelementptr [256 x i8]* %c, i64 0, i64 %tmp.20, !dbg !85 ; [#uses=2 type=i8*] [debug line = 46:5]
  %c.load.3 = load i8* %c.addr.4, align 1, !dbg !85 ; [#uses=1 type=i8] [debug line = 46:5]
  %tmp.21 = trunc i9 %tmp.18 to i8, !dbg !85      ; [#uses=1 type=i8] [debug line = 46:5]
  %tmp.22 = add i8 %tmp.21, %c.load.3, !dbg !85   ; [#uses=1 type=i8] [debug line = 46:5]
  store i8 %tmp.22, i8* %c.addr.4, align 1, !dbg !85 ; [debug line = 46:5]
  br label %._crit_edge3, !dbg !87                ; [debug line = 47:4]

._crit_edge3:                                     ; preds = %10, %._crit_edge
  %tmp.23 = add i8 %carry, %c.load.2, !dbg !88    ; [#uses=1 type=i8] [debug line = 48:4]
  store i8 %tmp.23, i8* %c.addr.3, align 1, !dbg !88 ; [debug line = 48:4]
  call void @llvm.dbg.value(metadata !{i8 %k.1}, i64 0, metadata !71), !dbg !89 ; [debug line = 50:4] [debug variable = k]
  %j.1 = add i8 %j, 1, !dbg !90                   ; [#uses=1 type=i8] [debug line = 35:23]
  call void @llvm.dbg.value(metadata !{i8 %j.1}, i64 0, metadata !91), !dbg !90 ; [debug line = 35:23] [debug variable = j]
  br label %6, !dbg !90                           ; [debug line = 35:23]

; <label>:11                                      ; preds = %6
  %i.3 = add i8 %i.1, 1, !dbg !92                 ; [#uses=1 type=i8] [debug line = 32:22]
  call void @llvm.dbg.value(metadata !{i8 %i.3}, i64 0, metadata !68), !dbg !92 ; [debug line = 32:22] [debug variable = i]
  br label %.preheader, !dbg !92                  ; [debug line = 32:22]

; <label>:12                                      ; preds = %.preheader
  ret void, !dbg !93                              ; [debug line = 54:1]
}

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=3]
declare i32 @_ssdm_op_SpecLoopTripCount(...)

; [#uses=4]
declare void @_ssdm_op_SpecInterface(...) nounwind

; [#uses=3]
declare void @_ssdm_op_SpecBitsMap(...)

!llvm.dbg.cu = !{!0}
!opencl.kernels = !{!24}
!hls.encrypted.func = !{}
!llvm.map.gv = !{}

!0 = metadata !{i32 786449, i32 0, i32 4, metadata !"/home/linux/Documents/DLA/source/sw/hls/BigInt/solution1/.autopilot/db/main.pragma.2.cpp", metadata !"/home/linux/Documents/DLA/source/sw/hls", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !13} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"bigint_math", metadata !"bigint_math", metadata !"_Z11bigint_mathPhS_S_", metadata !6, i32 15, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !11, i32 15} ; [ DW_TAG_subprogram ]
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
!24 = metadata !{null, metadata !25, metadata !26, metadata !27, metadata !28, metadata !29, metadata !30}
!25 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 1}
!26 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!27 = metadata !{metadata !"kernel_arg_type", metadata !"uchar*", metadata !"uchar*", metadata !"uchar*"}
!28 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!29 = metadata !{metadata !"kernel_arg_name", metadata !"a", metadata !"b", metadata !"c"}
!30 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!31 = metadata !{metadata !32}
!32 = metadata !{i32 0, i32 7, metadata !33}
!33 = metadata !{metadata !34}
!34 = metadata !{metadata !"a", metadata !35, metadata !"unsigned char", i32 0, i32 7}
!35 = metadata !{metadata !36}
!36 = metadata !{i32 0, i32 127, i32 1}
!37 = metadata !{metadata !38}
!38 = metadata !{i32 0, i32 7, metadata !39}
!39 = metadata !{metadata !40}
!40 = metadata !{metadata !"b", metadata !35, metadata !"unsigned char", i32 0, i32 7}
!41 = metadata !{metadata !42}
!42 = metadata !{i32 0, i32 7, metadata !43}
!43 = metadata !{metadata !44}
!44 = metadata !{metadata !"c", metadata !45, metadata !"unsigned char", i32 0, i32 7}
!45 = metadata !{metadata !46}
!46 = metadata !{i32 0, i32 255, i32 1}
!47 = metadata !{i32 786689, metadata !5, metadata !"a", null, i32 15, metadata !48, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!48 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 1024, i64 8, i32 0, i32 0, metadata !10, metadata !49, i32 0, i32 0} ; [ DW_TAG_array_type ]
!49 = metadata !{metadata !50}
!50 = metadata !{i32 786465, i64 0, i64 127}      ; [ DW_TAG_subrange_type ]
!51 = metadata !{i32 15, i32 32, metadata !5, null}
!52 = metadata !{i32 786689, metadata !5, metadata !"b", null, i32 15, metadata !48, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!53 = metadata !{i32 15, i32 54, metadata !5, null}
!54 = metadata !{i32 786689, metadata !5, metadata !"c", null, i32 15, metadata !55, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!55 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 2048, i64 8, i32 0, i32 0, metadata !10, metadata !56, i32 0, i32 0} ; [ DW_TAG_array_type ]
!56 = metadata !{metadata !57}
!57 = metadata !{i32 786465, i64 0, i64 255}      ; [ DW_TAG_subrange_type ]
!58 = metadata !{i32 15, i32 76, metadata !5, null}
!59 = metadata !{i32 17, i32 1, metadata !60, null}
!60 = metadata !{i32 786443, metadata !5, i32 15, i32 83, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!61 = metadata !{i32 28, i32 6, metadata !62, null}
!62 = metadata !{i32 786443, metadata !60, i32 28, i32 2, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!63 = metadata !{i32 32, i32 6, metadata !64, null}
!64 = metadata !{i32 786443, metadata !60, i32 32, i32 2, metadata !6, i32 3} ; [ DW_TAG_lexical_block ]
!65 = metadata !{i32 29, i32 3, metadata !66, null}
!66 = metadata !{i32 786443, metadata !62, i32 28, i32 26, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!67 = metadata !{i32 28, i32 22, metadata !62, null}
!68 = metadata !{i32 786688, metadata !60, metadata !"i", metadata !6, i32 24, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!69 = metadata !{i32 33, i32 3, metadata !70, null}
!70 = metadata !{i32 786443, metadata !64, i32 32, i32 26, metadata !6, i32 4} ; [ DW_TAG_lexical_block ]
!71 = metadata !{i32 786688, metadata !60, metadata !"k", metadata !6, i32 26, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!72 = metadata !{i32 36, i32 4, metadata !73, null}
!73 = metadata !{i32 786443, metadata !74, i32 35, i32 27, metadata !6, i32 6} ; [ DW_TAG_lexical_block ]
!74 = metadata !{i32 786443, metadata !70, i32 35, i32 3, metadata !6, i32 5} ; [ DW_TAG_lexical_block ]
!75 = metadata !{i32 35, i32 7, metadata !74, null}
!76 = metadata !{i32 786688, metadata !60, metadata !"prod", metadata !6, i32 22, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!77 = metadata !{i32 37, i32 4, metadata !73, null}
!78 = metadata !{i32 786688, metadata !60, metadata !"carry", metadata !6, i32 23, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!79 = metadata !{i32 39, i32 4, metadata !73, null}
!80 = metadata !{i32 40, i32 5, metadata !81, null}
!81 = metadata !{i32 786443, metadata !73, i32 39, i32 28, metadata !6, i32 7} ; [ DW_TAG_lexical_block ]
!82 = metadata !{i32 41, i32 4, metadata !81, null}
!83 = metadata !{i32 43, i32 4, metadata !73, null}
!84 = metadata !{i32 45, i32 4, metadata !73, null}
!85 = metadata !{i32 46, i32 5, metadata !86, null}
!86 = metadata !{i32 786443, metadata !73, i32 45, i32 31, metadata !6, i32 8} ; [ DW_TAG_lexical_block ]
!87 = metadata !{i32 47, i32 4, metadata !86, null}
!88 = metadata !{i32 48, i32 4, metadata !73, null}
!89 = metadata !{i32 50, i32 4, metadata !73, null}
!90 = metadata !{i32 35, i32 23, metadata !74, null}
!91 = metadata !{i32 786688, metadata !60, metadata !"j", metadata !6, i32 25, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!92 = metadata !{i32 32, i32 22, metadata !64, null}
!93 = metadata !{i32 54, i32 1, metadata !60, null}
