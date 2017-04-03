; ModuleID = '/home/linux/Documents/DLA/fw/hls/BigInt/solution1/.autopilot/db/a.g.1.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@zero = internal constant [256 x i8] zeroinitializer ; [#uses=1 type=[256 x i8]*]
@one = internal constant [256 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01" ; [#uses=1 type=[256 x i8]*]
@bigint_math.str = internal unnamed_addr constant [12 x i8] c"bigint_math\00" ; [#uses=1 type=[12 x i8]*]
@.str2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]
@.str1 = private unnamed_addr constant [11 x i8] c"PERIPH_BUS\00", align 1 ; [#uses=1 type=[11 x i8]*]
@.str = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1 ; [#uses=1 type=[10 x i8]*]

; [#uses=75]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=25]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=42]
define internal fastcc void @bigint_zero(i8* %in) nounwind uwtable {
  call void @llvm.dbg.value(metadata !{i8* %in}, i64 0, metadata !89), !dbg !90 ; [debug line = 6:32] [debug variable = in]
  call void (...)* @_ssdm_SpecArrayDimSize(i8* %in, i32 256) nounwind, !dbg !91 ; [debug line = 6:41]
  br label %1, !dbg !93                           ; [debug line = 8:6]

; <label>:1                                       ; preds = %2, %0
  %i = phi i32 [ 0, %0 ], [ %i.1, %2 ]            ; [#uses=3 type=i32]
  %exitcond = icmp eq i32 %i, 256, !dbg !93       ; [#uses=1 type=i1] [debug line = 8:6]
  br i1 %exitcond, label %3, label %2, !dbg !93   ; [debug line = 8:6]

; <label>:2                                       ; preds = %1
  %tmp = sext i32 %i to i64, !dbg !95             ; [#uses=1 type=i64] [debug line = 10:3]
  %in.addr = getelementptr inbounds i8* %in, i64 %tmp, !dbg !95 ; [#uses=1 type=i8*] [debug line = 10:3]
  store i8 0, i8* %in.addr, align 1, !dbg !95     ; [debug line = 10:3]
  %i.1 = add nsw i32 %i, 1, !dbg !97              ; [#uses=1 type=i32] [debug line = 8:22]
  call void @llvm.dbg.value(metadata !{i32 %i.1}, i64 0, metadata !98), !dbg !97 ; [debug line = 8:22] [debug variable = i]
  br label %1, !dbg !97                           ; [debug line = 8:22]

; <label>:3                                       ; preds = %1
  ret void, !dbg !99                              ; [debug line = 13:1]
}

; [#uses=2]
define internal fastcc void @bigint_sub(i8* %out, i8* %a, i8* %b) nounwind uwtable {
  %tempA = alloca [256 x i8], align 16            ; [#uses=6 type=[256 x i8]*]
  %tempB = alloca [256 x i8], align 16            ; [#uses=2 type=[256 x i8]*]
  %carry = alloca [256 x i8], align 16            ; [#uses=4 type=[256 x i8]*]
  call void @llvm.dbg.value(metadata !{i8* %out}, i64 0, metadata !100), !dbg !101 ; [debug line = 222:31] [debug variable = out]
  call void @llvm.dbg.value(metadata !{i8* %a}, i64 0, metadata !102), !dbg !103 ; [debug line = 222:55] [debug variable = a]
  call void @llvm.dbg.value(metadata !{i8* %b}, i64 0, metadata !104), !dbg !105 ; [debug line = 222:77] [debug variable = b]
  call void (...)* @_ssdm_SpecArrayDimSize(i8* %a, i32 256) nounwind, !dbg !106 ; [debug line = 222:85]
  call void (...)* @_ssdm_SpecArrayDimSize(i8* %b, i32 256) nounwind, !dbg !108 ; [debug line = 222:115]
  call void (...)* @_ssdm_SpecArrayDimSize(i8* %out, i32 256) nounwind, !dbg !109 ; [debug line = 222:145]
  call void @llvm.dbg.declare(metadata !{[256 x i8]* %tempA}, metadata !110), !dbg !114 ; [debug line = 228:16] [debug variable = tempA]
  call void @llvm.dbg.declare(metadata !{[256 x i8]* %tempB}, metadata !115), !dbg !116 ; [debug line = 229:16] [debug variable = tempB]
  call void @llvm.dbg.declare(metadata !{[256 x i8]* %carry}, metadata !117), !dbg !118 ; [debug line = 231:16] [debug variable = carry]
  %tempA.addr = getelementptr inbounds [256 x i8]* %tempA, i64 0, i64 0, !dbg !119 ; [#uses=3 type=i8*] [debug line = 233:2]
  call fastcc void @bigint_zero(i8* %tempA.addr), !dbg !119 ; [debug line = 233:2]
  %tempB.addr = getelementptr inbounds [256 x i8]* %tempB, i64 0, i64 0, !dbg !120 ; [#uses=3 type=i8*] [debug line = 234:2]
  call fastcc void @bigint_zero(i8* %tempB.addr), !dbg !120 ; [debug line = 234:2]
  %carry.addr = getelementptr inbounds [256 x i8]* %carry, i64 0, i64 0, !dbg !121 ; [#uses=1 type=i8*] [debug line = 236:2]
  call fastcc void @bigint_zero(i8* %carry.addr), !dbg !121 ; [debug line = 236:2]
  call fastcc void @bigint_copy(i8* %tempA.addr, i8* %a), !dbg !122 ; [debug line = 238:2]
  call fastcc void @bigint_copy(i8* %tempB.addr, i8* %b), !dbg !123 ; [debug line = 239:2]
  call fastcc void @bigint_zero(i8* %out), !dbg !124 ; [debug line = 241:2]
  %tmp = call fastcc i32 @bigint_compare(i8* %tempA.addr, i8* %tempB.addr), !dbg !125 ; [#uses=1 type=i32] [debug line = 243:5]
  %tmp.2 = icmp eq i32 %tmp, -1, !dbg !125        ; [#uses=1 type=i1] [debug line = 243:5]
  br i1 %tmp.2, label %.loopexit, label %.preheader1.preheader, !dbg !125 ; [debug line = 243:5]

.preheader1.preheader:                            ; preds = %0
  br label %.preheader1, !dbg !126                ; [debug line = 247:6]

.preheader1:                                      ; preds = %._crit_edge, %.preheader1.preheader
  %indvars.iv = phi i32 [ %indvars.iv.next, %._crit_edge ], [ 254, %.preheader1.preheader ] ; [#uses=2 type=i32]
  %i = phi i32 [ %i.2, %._crit_edge ], [ 255, %.preheader1.preheader ] ; [#uses=5 type=i32]
  %tmp.3 = icmp sgt i32 %i, -1, !dbg !126         ; [#uses=1 type=i1] [debug line = 247:6]
  br i1 %tmp.3, label %1, label %.loopexit.loopexit, !dbg !126 ; [debug line = 247:6]

; <label>:1                                       ; preds = %.preheader1
  %tmp.4 = sext i32 %i to i64, !dbg !128          ; [#uses=6 type=i64] [debug line = 248:3]
  %tempA.addr.1 = getelementptr inbounds [256 x i8]* %tempA, i64 0, i64 %tmp.4, !dbg !128 ; [#uses=2 type=i8*] [debug line = 248:3]
  %tempA.load = load i8* %tempA.addr.1, align 1, !dbg !128 ; [#uses=2 type=i8] [debug line = 248:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %tempA.load) nounwind
  %tempB.addr.1 = getelementptr inbounds [256 x i8]* %tempB, i64 0, i64 %tmp.4, !dbg !128 ; [#uses=1 type=i8*] [debug line = 248:3]
  %tempB.load = load i8* %tempB.addr.1, align 1, !dbg !128 ; [#uses=4 type=i8] [debug line = 248:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %tempB.load) nounwind
  %tmp.5 = icmp ult i8 %tempA.load, %tempB.load, !dbg !128 ; [#uses=1 type=i1] [debug line = 248:3]
  br i1 %tmp.5, label %2, label %._crit_edge, !dbg !128 ; [debug line = 248:3]

; <label>:2                                       ; preds = %1
  %tmp.6 = add nsw i32 %i, -1, !dbg !130          ; [#uses=1 type=i32] [debug line = 249:4]
  %tmp.7 = sext i32 %tmp.6 to i64, !dbg !130      ; [#uses=1 type=i64] [debug line = 249:4]
  %tempA.addr.2 = getelementptr inbounds [256 x i8]* %tempA, i64 0, i64 %tmp.7, !dbg !130 ; [#uses=3 type=i8*] [debug line = 249:4]
  %tempA.load.1 = load i8* %tempA.addr.2, align 1, !dbg !130 ; [#uses=4 type=i8] [debug line = 249:4]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %tempA.load.1) nounwind
  %tmp.8 = icmp eq i8 %tempA.load.1, 0, !dbg !130 ; [#uses=1 type=i1] [debug line = 249:4]
  br i1 %tmp.8, label %.preheader.preheader, label %7, !dbg !130 ; [debug line = 249:4]

.preheader.preheader:                             ; preds = %2
  br label %.preheader, !dbg !132                 ; [debug line = 250:5]

.preheader:                                       ; preds = %.preheader, %.preheader.preheader
  %j.2 = phi i32 [ %j, %.preheader ], [ %i, %.preheader.preheader ] ; [#uses=2 type=i32]
  %j = add nsw i32 %j.2, -1, !dbg !132            ; [#uses=2 type=i32] [debug line = 250:5]
  call void @llvm.dbg.value(metadata !{i32 %j}, i64 0, metadata !134), !dbg !132 ; [debug line = 250:5] [debug variable = j]
  %tmp.11 = sext i32 %j to i64, !dbg !135         ; [#uses=2 type=i64] [debug line = 251:5]
  %tempA.addr.3 = getelementptr inbounds [256 x i8]* %tempA, i64 0, i64 %tmp.11, !dbg !135 ; [#uses=1 type=i8*] [debug line = 251:5]
  %tempA.load.2 = load i8* %tempA.addr.3, align 1, !dbg !135 ; [#uses=3 type=i8] [debug line = 251:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %tempA.load.2) nounwind
  %tmp.12 = icmp eq i8 %tempA.load.2, 0, !dbg !135 ; [#uses=1 type=i1] [debug line = 251:5]
  br i1 %tmp.12, label %.preheader, label %3, !dbg !135 ; [debug line = 251:5]

; <label>:3                                       ; preds = %.preheader
  %.lcssa = phi i8 [ %tempA.load.2, %.preheader ] ; [#uses=2 type=i8]
  %.lcssa1 = phi i64 [ %tmp.11, %.preheader ]     ; [#uses=1 type=i64]
  %j.0.in.lcssa = phi i32 [ %j.2, %.preheader ]   ; [#uses=1 type=i32]
  %tempA.addr.4 = getelementptr [256 x i8]* %tempA, i64 0, i64 %.lcssa1, !dbg !135 ; [#uses=1 type=i8*] [debug line = 251:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %.lcssa) nounwind
  %tmp.13 = add i8 %.lcssa, -1, !dbg !136         ; [#uses=1 type=i8] [debug line = 258:5]
  store i8 %tmp.13, i8* %tempA.addr.4, align 1, !dbg !136 ; [debug line = 258:5]
  call void @llvm.dbg.value(metadata !{i32 %j.2}, i64 0, metadata !134), !dbg !137 ; [debug line = 259:5] [debug variable = j]
  br label %4, !dbg !138                          ; [debug line = 260:5]

; <label>:4                                       ; preds = %5, %3
  %j.1 = phi i32 [ %j.0.in.lcssa, %3 ], [ %j.3, %5 ] ; [#uses=3 type=i32]
  %exitcond = icmp eq i32 %j.1, %indvars.iv, !dbg !138 ; [#uses=1 type=i1] [debug line = 260:5]
  br i1 %exitcond, label %6, label %5, !dbg !138  ; [debug line = 260:5]

; <label>:5                                       ; preds = %4
  %tmp.15 = sext i32 %j.1 to i64, !dbg !139       ; [#uses=1 type=i64] [debug line = 261:6]
  %tempA.addr.5 = getelementptr inbounds [256 x i8]* %tempA, i64 0, i64 %tmp.15, !dbg !139 ; [#uses=1 type=i8*] [debug line = 261:6]
  store i8 -1, i8* %tempA.addr.5, align 1, !dbg !139 ; [debug line = 261:6]
  %j.3 = add nsw i32 %j.1, 1, !dbg !141           ; [#uses=1 type=i32] [debug line = 262:6]
  call void @llvm.dbg.value(metadata !{i32 %j.3}, i64 0, metadata !134), !dbg !141 ; [debug line = 262:6] [debug variable = j]
  br label %4, !dbg !142                          ; [debug line = 263:5]

; <label>:6                                       ; preds = %4
  store i8 -1, i8* %tempA.addr.2, align 1, !dbg !143 ; [debug line = 265:5]
  %carry.addr.2 = getelementptr inbounds [256 x i8]* %carry, i64 0, i64 %tmp.4, !dbg !144 ; [#uses=2 type=i8*] [debug line = 266:5]
  %carry.load.1 = load i8* %carry.addr.2, align 1, !dbg !144 ; [#uses=2 type=i8] [debug line = 266:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %carry.load.1) nounwind
  %tmp.14 = add i8 %carry.load.1, 1, !dbg !144    ; [#uses=1 type=i8] [debug line = 266:5]
  store i8 %tmp.14, i8* %carry.addr.2, align 1, !dbg !144 ; [debug line = 266:5]
  br label %8, !dbg !145                          ; [debug line = 268:4]

; <label>:7                                       ; preds = %2
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %tempA.load.1) nounwind
  %tmp.9 = add i8 %tempA.load.1, -1, !dbg !146    ; [#uses=1 type=i8] [debug line = 269:5]
  store i8 %tmp.9, i8* %tempA.addr.2, align 1, !dbg !146 ; [debug line = 269:5]
  %carry.addr.1 = getelementptr inbounds [256 x i8]* %carry, i64 0, i64 %tmp.4, !dbg !148 ; [#uses=2 type=i8*] [debug line = 270:5]
  %carry.load = load i8* %carry.addr.1, align 1, !dbg !148 ; [#uses=2 type=i8] [debug line = 270:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %carry.load) nounwind
  %tmp.10 = add i8 %carry.load, 1, !dbg !148      ; [#uses=1 type=i8] [debug line = 270:5]
  store i8 %tmp.10, i8* %carry.addr.1, align 1, !dbg !148 ; [debug line = 270:5]
  br label %8

; <label>:8                                       ; preds = %7, %6
  br label %._crit_edge, !dbg !149                ; [debug line = 272:3]

._crit_edge:                                      ; preds = %8, %1
  %carry.addr.3 = getelementptr inbounds [256 x i8]* %carry, i64 0, i64 %tmp.4, !dbg !150 ; [#uses=1 type=i8*] [debug line = 274:3]
  %carry.load.2 = load i8* %carry.addr.3, align 1, !dbg !150 ; [#uses=1 type=i8] [debug line = 274:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %carry.load.2) nounwind
  %tempA.load.3 = load i8* %tempA.addr.1, align 1, !dbg !150 ; [#uses=2 type=i8] [debug line = 274:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %tempA.load.3) nounwind
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %tempB.load) nounwind
  %tmp.17 = sub i8 %tempA.load.3, %tempB.load, !dbg !150 ; [#uses=1 type=i8] [debug line = 274:3]
  %out.addr = getelementptr inbounds i8* %out, i64 %tmp.4, !dbg !150 ; [#uses=1 type=i8*] [debug line = 274:3]
  store i8 %tmp.17, i8* %out.addr, align 1, !dbg !150 ; [debug line = 274:3]
  %i.2 = add nsw i32 %i, -1, !dbg !151            ; [#uses=1 type=i32] [debug line = 247:26]
  call void @llvm.dbg.value(metadata !{i32 %i.2}, i64 0, metadata !152), !dbg !151 ; [debug line = 247:26] [debug variable = i]
  %indvars.iv.next = add i32 %indvars.iv, -1, !dbg !151 ; [#uses=1 type=i32] [debug line = 247:26]
  br label %.preheader1, !dbg !151                ; [debug line = 247:26]

.loopexit.loopexit:                               ; preds = %.preheader1
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %0
  ret void, !dbg !153                             ; [debug line = 277:1]
}

; [#uses=3]
define internal fastcc void @bigint_rightshift(i8* %out, i8* %a) nounwind uwtable {
  call void @llvm.dbg.value(metadata !{i8* %out}, i64 0, metadata !154), !dbg !155 ; [debug line = 139:38] [debug variable = out]
  call void @llvm.dbg.value(metadata !{i8* %a}, i64 0, metadata !156), !dbg !157 ; [debug line = 139:62] [debug variable = a]
  call void (...)* @_ssdm_SpecArrayDimSize(i8* %a, i32 256) nounwind, !dbg !158 ; [debug line = 139:81]
  call void (...)* @_ssdm_SpecArrayDimSize(i8* %out, i32 256) nounwind, !dbg !160 ; [debug line = 139:111]
  br i1 false, label %1, label %2, !dbg !161      ; [debug line = 145:2]

; <label>:1                                       ; preds = %0
  call fastcc void @bigint_copy(i8* %out, i8* %a), !dbg !162 ; [debug line = 146:3]
  br label %.loopexit, !dbg !164                  ; [debug line = 147:3]

; <label>:2                                       ; preds = %0
  call fastcc void @bigint_zero(i8* %out), !dbg !165 ; [debug line = 155:2]
  br label %3, !dbg !166                          ; [debug line = 157:6]

; <label>:3                                       ; preds = %10, %2
  %i = phi i32 [ 0, %2 ], [ %i.3, %10 ]           ; [#uses=3 type=i32]
  %k = phi i32 [ 0, %2 ], [ %.k.1, %10 ]          ; [#uses=1 type=i32]
  %exitcond = icmp eq i32 %i, 256, !dbg !166      ; [#uses=1 type=i1] [debug line = 157:6]
  br i1 %exitcond, label %.loopexit.loopexit, label %4, !dbg !166 ; [debug line = 157:6]

; <label>:4                                       ; preds = %3
  %tmp = sext i32 %i to i64, !dbg !168            ; [#uses=1 type=i64] [debug line = 160:4]
  %a.addr = getelementptr inbounds i8* %a, i64 %tmp, !dbg !168 ; [#uses=1 type=i8*] [debug line = 160:4]
  br label %5, !dbg !172                          ; [debug line = 159:7]

; <label>:5                                       ; preds = %9, %4
  %j = phi i32 [ 7, %4 ], [ %j.4, %9 ]            ; [#uses=4 type=i32]
  %k.1 = phi i32 [ %k, %4 ], [ %k.2, %9 ]         ; [#uses=4 type=i32]
  %outputBit = phi i32 [ 6, %4 ], [ %outputBit.2, %9 ] ; [#uses=4 type=i32]
  %tmp.19 = icmp sgt i32 %j, -1, !dbg !172        ; [#uses=1 type=i1] [debug line = 159:7]
  br i1 %tmp.19, label %6, label %10, !dbg !172   ; [debug line = 159:7]

; <label>:6                                       ; preds = %5
  %a.load = load i8* %a.addr, align 1, !dbg !168  ; [#uses=2 type=i8] [debug line = 160:4]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %a.load) nounwind
  %tmp.20 = zext i8 %a.load to i32, !dbg !168     ; [#uses=1 type=i32] [debug line = 160:4]
  %tmp.21 = shl i32 1, %j, !dbg !168              ; [#uses=1 type=i32] [debug line = 160:4]
  %tmp.22 = and i32 %tmp.20, %tmp.21, !dbg !168   ; [#uses=1 type=i32] [debug line = 160:4]
  %tmp.23 = lshr i32 %tmp.22, %j, !dbg !168       ; [#uses=1 type=i32] [debug line = 160:4]
  %b = trunc i32 %tmp.23 to i8, !dbg !168         ; [#uses=2 type=i8] [debug line = 160:4]
  call void @llvm.dbg.value(metadata !{i8 %b}, i64 0, metadata !173), !dbg !168 ; [debug line = 160:4] [debug variable = b]
  %tmp.24 = icmp eq i32 %outputBit, -1, !dbg !174 ; [#uses=1 type=i1] [debug line = 163:4]
  br i1 %tmp.24, label %7, label %8, !dbg !174    ; [debug line = 163:4]

; <label>:7                                       ; preds = %6
  %k.4 = add nsw i32 %k.1, 1, !dbg !175           ; [#uses=2 type=i32] [debug line = 164:5]
  call void @llvm.dbg.value(metadata !{i32 %k.4}, i64 0, metadata !177), !dbg !175 ; [debug line = 164:5] [debug variable = k]
  %tmp.29 = zext i8 %b to i32, !dbg !178          ; [#uses=1 type=i32] [debug line = 166:5]
  %tmp.30 = shl i32 %tmp.29, 7, !dbg !178         ; [#uses=1 type=i32] [debug line = 166:5]
  %tmp.31 = sext i32 %k.4 to i64, !dbg !178       ; [#uses=1 type=i64] [debug line = 166:5]
  %out.addr = getelementptr inbounds i8* %out, i64 %tmp.31, !dbg !178 ; [#uses=2 type=i8*] [debug line = 166:5]
  %out.load = load i8* %out.addr, align 1, !dbg !178 ; [#uses=2 type=i8] [debug line = 166:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %out.load) nounwind
  %tmp.32 = trunc i32 %tmp.30 to i8, !dbg !178    ; [#uses=1 type=i8] [debug line = 166:5]
  %tmp.33 = add i8 %out.load, %tmp.32, !dbg !178  ; [#uses=1 type=i8] [debug line = 166:5]
  store i8 %tmp.33, i8* %out.addr, align 1, !dbg !178 ; [debug line = 166:5]
  br label %9, !dbg !179                          ; [debug line = 167:4]

; <label>:8                                       ; preds = %6
  %tmp.34 = zext i8 %b to i32, !dbg !180          ; [#uses=1 type=i32] [debug line = 168:5]
  %tmp.35 = shl i32 %tmp.34, %outputBit, !dbg !180 ; [#uses=1 type=i32] [debug line = 168:5]
  %tmp.36 = sext i32 %k.1 to i64, !dbg !180       ; [#uses=1 type=i64] [debug line = 168:5]
  %out.addr.1 = getelementptr inbounds i8* %out, i64 %tmp.36, !dbg !180 ; [#uses=2 type=i8*] [debug line = 168:5]
  %out.load.1 = load i8* %out.addr.1, align 1, !dbg !180 ; [#uses=2 type=i8] [debug line = 168:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %out.load.1) nounwind
  %tmp.37 = trunc i32 %tmp.35 to i8, !dbg !180    ; [#uses=1 type=i8] [debug line = 168:5]
  %tmp.38 = add i8 %out.load.1, %tmp.37, !dbg !180 ; [#uses=1 type=i8] [debug line = 168:5]
  store i8 %tmp.38, i8* %out.addr.1, align 1, !dbg !180 ; [debug line = 168:5]
  br label %9

; <label>:9                                       ; preds = %8, %7
  %k.2 = phi i32 [ %k.4, %7 ], [ %k.1, %8 ]       ; [#uses=1 type=i32]
  %outputBit.1 = phi i32 [ 7, %7 ], [ %outputBit, %8 ] ; [#uses=1 type=i32]
  %outputBit.2 = add nsw i32 %outputBit.1, -1, !dbg !182 ; [#uses=1 type=i32] [debug line = 171:4]
  call void @llvm.dbg.value(metadata !{i32 %outputBit.2}, i64 0, metadata !183), !dbg !182 ; [debug line = 171:4] [debug variable = outputBit]
  %j.4 = add nsw i32 %j, -1, !dbg !184            ; [#uses=1 type=i32] [debug line = 159:22]
  call void @llvm.dbg.value(metadata !{i32 %j.4}, i64 0, metadata !185), !dbg !184 ; [debug line = 159:22] [debug variable = j]
  br label %5, !dbg !184                          ; [debug line = 159:22]

; <label>:10                                      ; preds = %5
  %outputBit.0.lcssa = phi i32 [ %outputBit, %5 ] ; [#uses=1 type=i32]
  %k.1.lcssa = phi i32 [ %k.1, %5 ]               ; [#uses=2 type=i32]
  %tmp.25 = icmp eq i32 %outputBit.0.lcssa, 0, !dbg !186 ; [#uses=1 type=i1] [debug line = 175:3]
  %k.3 = add nsw i32 %k.1.lcssa, 1, !dbg !187     ; [#uses=1 type=i32] [debug line = 176:4]
  call void @llvm.dbg.value(metadata !{i32 %k.3}, i64 0, metadata !177), !dbg !187 ; [debug line = 176:4] [debug variable = k]
  %.k.1 = select i1 %tmp.25, i32 %k.3, i32 %k.1.lcssa, !dbg !186 ; [#uses=1 type=i32] [debug line = 175:3]
  %i.3 = add nsw i32 %i, 1, !dbg !189             ; [#uses=1 type=i32] [debug line = 157:22]
  call void @llvm.dbg.value(metadata !{i32 %i.3}, i64 0, metadata !190), !dbg !189 ; [debug line = 157:22] [debug variable = i]
  br label %3, !dbg !189                          ; [debug line = 157:22]

.loopexit.loopexit:                               ; preds = %3
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %1
  ret void, !dbg !191                             ; [debug line = 180:1]
}

; [#uses=3]
define internal fastcc void @bigint_mul(i8* %out, i8* %a, i8* %b) nounwind uwtable {
  %sum = alloca [256 x i8], align 16              ; [#uses=5 type=[256 x i8]*]
  %tempA = alloca [256 x i8], align 16            ; [#uses=2 type=[256 x i8]*]
  %tempB = alloca [256 x i8], align 16            ; [#uses=2 type=[256 x i8]*]
  call void @llvm.dbg.value(metadata !{i8* %out}, i64 0, metadata !192), !dbg !193 ; [debug line = 280:31] [debug variable = out]
  call void @llvm.dbg.value(metadata !{i8* %a}, i64 0, metadata !194), !dbg !195 ; [debug line = 280:55] [debug variable = a]
  call void @llvm.dbg.value(metadata !{i8* %b}, i64 0, metadata !196), !dbg !197 ; [debug line = 280:77] [debug variable = b]
  call void (...)* @_ssdm_SpecArrayDimSize(i8* %a, i32 256) nounwind, !dbg !198 ; [debug line = 280:85]
  call void (...)* @_ssdm_SpecArrayDimSize(i8* %b, i32 256) nounwind, !dbg !200 ; [debug line = 280:115]
  call void (...)* @_ssdm_SpecArrayDimSize(i8* %out, i32 256) nounwind, !dbg !201 ; [debug line = 280:145]
  call void @llvm.dbg.declare(metadata !{[256 x i8]* %sum}, metadata !202), !dbg !203 ; [debug line = 287:16] [debug variable = sum]
  call void @llvm.dbg.declare(metadata !{[256 x i8]* %tempA}, metadata !204), !dbg !205 ; [debug line = 289:16] [debug variable = tempA]
  call void @llvm.dbg.declare(metadata !{[256 x i8]* %tempB}, metadata !206), !dbg !207 ; [debug line = 290:16] [debug variable = tempB]
  %tempA.addr = getelementptr inbounds [256 x i8]* %tempA, i64 0, i64 0, !dbg !208 ; [#uses=2 type=i8*] [debug line = 299:2]
  call fastcc void @bigint_zero(i8* %tempA.addr), !dbg !208 ; [debug line = 299:2]
  %tempB.addr = getelementptr inbounds [256 x i8]* %tempB, i64 0, i64 0, !dbg !209 ; [#uses=2 type=i8*] [debug line = 300:2]
  call fastcc void @bigint_zero(i8* %tempB.addr), !dbg !209 ; [debug line = 300:2]
  call fastcc void @bigint_copy(i8* %tempA.addr, i8* %a), !dbg !210 ; [debug line = 302:2]
  call fastcc void @bigint_copy(i8* %tempB.addr, i8* %b), !dbg !211 ; [debug line = 303:2]
  call fastcc void @bigint_zero(i8* %out), !dbg !212 ; [debug line = 305:2]
  %sum.addr = getelementptr inbounds [256 x i8]* %sum, i64 0, i64 0, !dbg !213 ; [#uses=3 type=i8*] [debug line = 306:2]
  call fastcc void @bigint_zero(i8* %sum.addr), !dbg !213 ; [debug line = 306:2]
  br label %1, !dbg !214                          ; [debug line = 309:6]

; <label>:1                                       ; preds = %8, %0
  %i = phi i32 [ 0, %0 ], [ %i.4, %8 ]            ; [#uses=3 type=i32]
  %exitcond1 = icmp eq i32 %i, 256, !dbg !214     ; [#uses=1 type=i1] [debug line = 309:6]
  br i1 %exitcond1, label %9, label %2, !dbg !214 ; [debug line = 309:6]

; <label>:2                                       ; preds = %1
  %k = sub nsw i32 255, %i, !dbg !216             ; [#uses=2 type=i32] [debug line = 312:7]
  call void @llvm.dbg.value(metadata !{i32 %k}, i64 0, metadata !219), !dbg !216 ; [debug line = 312:7] [debug variable = k]
  %tmp = sext i32 %k to i64, !dbg !220            ; [#uses=1 type=i64] [debug line = 315:4]
  %tempB.addr.2 = getelementptr inbounds [256 x i8]* %tempB, i64 0, i64 %tmp, !dbg !220 ; [#uses=1 type=i8*] [debug line = 315:4]
  %tempB.load = load i8* %tempB.addr.2, align 1, !dbg !220 ; [#uses=4 type=i8] [debug line = 315:4]
  %tmp.41 = zext i8 %tempB.load to i32, !dbg !222 ; [#uses=1 type=i32] [debug line = 316:4]
  br label %3, !dbg !216                          ; [debug line = 312:7]

; <label>:3                                       ; preds = %._crit_edge, %2
  %j = phi i32 [ 0, %2 ], [ %j.5, %._crit_edge ]  ; [#uses=3 type=i32]
  %k5 = phi i32 [ %k, %2 ], [ %k.6, %._crit_edge ] ; [#uses=5 type=i32]
  %exitcond = icmp eq i32 %j, 256, !dbg !216      ; [#uses=1 type=i1] [debug line = 312:7]
  br i1 %exitcond, label %8, label %4, !dbg !216  ; [debug line = 312:7]

; <label>:4                                       ; preds = %3
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %tempB.load) nounwind
  %tmp.43 = sub nsw i32 255, %j, !dbg !220        ; [#uses=1 type=i32] [debug line = 315:4]
  %tmp.44 = sext i32 %tmp.43 to i64, !dbg !220    ; [#uses=1 type=i64] [debug line = 315:4]
  %tempA.addr.6 = getelementptr inbounds [256 x i8]* %tempA, i64 0, i64 %tmp.44, !dbg !220 ; [#uses=1 type=i8*] [debug line = 315:4]
  %tempA.load = load i8* %tempA.addr.6, align 1, !dbg !220 ; [#uses=4 type=i8] [debug line = 315:4]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %tempA.load) nounwind
  %prod = mul i8 %tempA.load, %tempB.load, !dbg !220 ; [#uses=3 type=i8] [debug line = 315:4]
  call void @llvm.dbg.value(metadata !{i8 %prod}, i64 0, metadata !223), !dbg !220 ; [debug line = 315:4] [debug variable = prod]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %tempB.load) nounwind
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %tempA.load) nounwind
  %tmp.46 = zext i8 %tempA.load to i32, !dbg !222 ; [#uses=1 type=i32] [debug line = 316:4]
  %tmp.47 = mul nsw i32 %tmp.46, %tmp.41, !dbg !222 ; [#uses=1 type=i32] [debug line = 316:4]
  %tmp.48 = lshr i32 %tmp.47, 8, !dbg !222        ; [#uses=1 type=i32] [debug line = 316:4]
  %carry = trunc i32 %tmp.48 to i8, !dbg !222     ; [#uses=3 type=i8] [debug line = 316:4]
  call void @llvm.dbg.value(metadata !{i8 %carry}, i64 0, metadata !224), !dbg !222 ; [debug line = 316:4] [debug variable = carry]
  %tmp.49 = or i8 %carry, %prod, !dbg !225        ; [#uses=1 type=i8] [debug line = 318:4]
  %tmp.50 = icmp eq i8 %tmp.49, 0, !dbg !225      ; [#uses=1 type=i1] [debug line = 318:4]
  br i1 %tmp.50, label %._crit_edge, label %5, !dbg !225 ; [debug line = 318:4]

; <label>:5                                       ; preds = %4
  %tmp.51 = sext i32 %k5 to i64, !dbg !226        ; [#uses=1 type=i64] [debug line = 320:5]
  %sum.addr.1 = getelementptr inbounds [256 x i8]* %sum, i64 0, i64 %tmp.51, !dbg !226 ; [#uses=2 type=i8*] [debug line = 320:5]
  %sum.load = load i8* %sum.addr.1, align 1, !dbg !226 ; [#uses=5 type=i8] [debug line = 320:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %sum.load) nounwind
  %tmp.52 = zext i8 %sum.load to i32, !dbg !226   ; [#uses=1 type=i32] [debug line = 320:5]
  %tmp.53 = zext i8 %prod to i32, !dbg !226       ; [#uses=1 type=i32] [debug line = 320:5]
  %tmp.54 = add nsw i32 %tmp.52, %tmp.53, !dbg !226 ; [#uses=2 type=i32] [debug line = 320:5]
  %tmp.55 = icmp sgt i32 %tmp.54, 255, !dbg !226  ; [#uses=1 type=i1] [debug line = 320:5]
  br i1 %tmp.55, label %6, label %._crit_edge2, !dbg !226 ; [debug line = 320:5]

; <label>:6                                       ; preds = %5
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %sum.load) nounwind
  %tmp.56 = lshr i32 %tmp.54, 8, !dbg !228        ; [#uses=1 type=i32] [debug line = 321:6]
  %tmp.57 = add nsw i32 %k5, -1, !dbg !228        ; [#uses=1 type=i32] [debug line = 321:6]
  %tmp.58 = sext i32 %tmp.57 to i64, !dbg !228    ; [#uses=1 type=i64] [debug line = 321:6]
  %sum.addr.2 = getelementptr inbounds [256 x i8]* %sum, i64 0, i64 %tmp.58, !dbg !228 ; [#uses=2 type=i8*] [debug line = 321:6]
  %sum.load.1 = load i8* %sum.addr.2, align 1, !dbg !228 ; [#uses=2 type=i8] [debug line = 321:6]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %sum.load.1) nounwind
  %tmp.59 = trunc i32 %tmp.56 to i8, !dbg !228    ; [#uses=1 type=i8] [debug line = 321:6]
  %tmp.60 = add i8 %sum.load.1, %tmp.59, !dbg !228 ; [#uses=1 type=i8] [debug line = 321:6]
  store i8 %tmp.60, i8* %sum.addr.2, align 1, !dbg !228 ; [debug line = 321:6]
  br label %._crit_edge2, !dbg !230               ; [debug line = 322:5]

._crit_edge2:                                     ; preds = %6, %5
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %sum.load) nounwind
  %tmp.61 = add i8 %sum.load, %prod, !dbg !231    ; [#uses=1 type=i8] [debug line = 324:5]
  store i8 %tmp.61, i8* %sum.addr.1, align 1, !dbg !231 ; [debug line = 324:5]
  %tmp.62 = add nsw i32 %k5, -1, !dbg !232        ; [#uses=1 type=i32] [debug line = 327:5]
  %tmp.63 = sext i32 %tmp.62 to i64, !dbg !232    ; [#uses=1 type=i64] [debug line = 327:5]
  %sum.addr.3 = getelementptr inbounds [256 x i8]* %sum, i64 0, i64 %tmp.63, !dbg !232 ; [#uses=2 type=i8*] [debug line = 327:5]
  %sum.load.2 = load i8* %sum.addr.3, align 1, !dbg !232 ; [#uses=5 type=i8] [debug line = 327:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %sum.load.2) nounwind
  %tmp.64 = zext i8 %sum.load.2 to i32, !dbg !232 ; [#uses=1 type=i32] [debug line = 327:5]
  %tmp.65 = zext i8 %carry to i32, !dbg !232      ; [#uses=1 type=i32] [debug line = 327:5]
  %tmp.66 = add nsw i32 %tmp.64, %tmp.65, !dbg !232 ; [#uses=2 type=i32] [debug line = 327:5]
  %tmp.67 = icmp sgt i32 %tmp.66, 255, !dbg !232  ; [#uses=1 type=i1] [debug line = 327:5]
  br i1 %tmp.67, label %7, label %._crit_edge3, !dbg !232 ; [debug line = 327:5]

; <label>:7                                       ; preds = %._crit_edge2
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %sum.load.2) nounwind
  %tmp.68 = lshr i32 %tmp.66, 8, !dbg !233        ; [#uses=1 type=i32] [debug line = 328:6]
  %tmp.69 = add nsw i32 %k5, -2, !dbg !233        ; [#uses=1 type=i32] [debug line = 328:6]
  %tmp.70 = sext i32 %tmp.69 to i64, !dbg !233    ; [#uses=1 type=i64] [debug line = 328:6]
  %sum.addr.4 = getelementptr inbounds [256 x i8]* %sum, i64 0, i64 %tmp.70, !dbg !233 ; [#uses=2 type=i8*] [debug line = 328:6]
  %sum.load.3 = load i8* %sum.addr.4, align 1, !dbg !233 ; [#uses=2 type=i8] [debug line = 328:6]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %sum.load.3) nounwind
  %tmp.71 = trunc i32 %tmp.68 to i8, !dbg !233    ; [#uses=1 type=i8] [debug line = 328:6]
  %tmp.72 = add i8 %sum.load.3, %tmp.71, !dbg !233 ; [#uses=1 type=i8] [debug line = 328:6]
  store i8 %tmp.72, i8* %sum.addr.4, align 1, !dbg !233 ; [debug line = 328:6]
  br label %._crit_edge3, !dbg !235               ; [debug line = 329:5]

._crit_edge3:                                     ; preds = %7, %._crit_edge2
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %sum.load.2) nounwind
  %tmp.73 = add i8 %sum.load.2, %carry, !dbg !236 ; [#uses=1 type=i8] [debug line = 331:5]
  store i8 %tmp.73, i8* %sum.addr.3, align 1, !dbg !236 ; [debug line = 331:5]
  br label %._crit_edge, !dbg !237                ; [debug line = 332:4]

._crit_edge:                                      ; preds = %._crit_edge3, %4
  %j.5 = add nsw i32 %j, 1, !dbg !238             ; [#uses=1 type=i32] [debug line = 312:40]
  call void @llvm.dbg.value(metadata !{i32 %j.5}, i64 0, metadata !239), !dbg !238 ; [debug line = 312:40] [debug variable = j]
  %k.6 = add nsw i32 %k5, -1, !dbg !238           ; [#uses=1 type=i32] [debug line = 312:40]
  call void @llvm.dbg.value(metadata !{i32 %k.6}, i64 0, metadata !219), !dbg !238 ; [debug line = 312:40] [debug variable = k]
  br label %3, !dbg !238                          ; [debug line = 312:40]

; <label>:8                                       ; preds = %3
  call fastcc void @bigint_add(i8* %out, i8* %out, i8* %sum.addr), !dbg !240 ; [debug line = 336:3]
  call fastcc void @bigint_zero(i8* %sum.addr), !dbg !241 ; [debug line = 337:3]
  %i.4 = add nsw i32 %i, 1, !dbg !242             ; [#uses=1 type=i32] [debug line = 309:22]
  call void @llvm.dbg.value(metadata !{i32 %i.4}, i64 0, metadata !243), !dbg !242 ; [debug line = 309:22] [debug variable = i]
  br label %1, !dbg !242                          ; [debug line = 309:22]

; <label>:9                                       ; preds = %1
  ret void, !dbg !244                             ; [debug line = 340:1]
}

; [#uses=1]
define internal fastcc void @bigint_modexp(i8* %out, i8* %base, i8* %exp, i8* %mod) nounwind uwtable {
  %zero = alloca [256 x i8], align 16             ; [#uses=1 type=[256 x i8]*]
  %one = alloca [256 x i8], align 16              ; [#uses=2 type=[256 x i8]*]
  %two = alloca [256 x i8], align 16              ; [#uses=2 type=[256 x i8]*]
  %temp = alloca [256 x i8], align 16             ; [#uses=2 type=[256 x i8]*]
  %temp1 = alloca [256 x i8], align 16            ; [#uses=1 type=[256 x i8]*]
  %temp2 = alloca [256 x i8], align 16            ; [#uses=1 type=[256 x i8]*]
  %tempBase = alloca [256 x i8], align 16         ; [#uses=1 type=[256 x i8]*]
  %tempExp = alloca [256 x i8], align 16          ; [#uses=1 type=[256 x i8]*]
  %tempMod = alloca [256 x i8], align 16          ; [#uses=1 type=[256 x i8]*]
  %result = alloca [256 x i8], align 16           ; [#uses=2 type=[256 x i8]*]
  call void @llvm.dbg.value(metadata !{i8* %out}, i64 0, metadata !245), !dbg !246 ; [debug line = 539:34] [debug variable = out]
  call void @llvm.dbg.value(metadata !{i8* %base}, i64 0, metadata !247), !dbg !248 ; [debug line = 539:58] [debug variable = base]
  call void @llvm.dbg.value(metadata !{i8* %exp}, i64 0, metadata !249), !dbg !250 ; [debug line = 539:83] [debug variable = exp]
  call void @llvm.dbg.value(metadata !{i8* %mod}, i64 0, metadata !251), !dbg !252 ; [debug line = 539:107] [debug variable = mod]
  call void (...)* @_ssdm_SpecArrayDimSize(i8* %mod, i32 256) nounwind, !dbg !253 ; [debug line = 539:117]
  call void (...)* @_ssdm_SpecArrayDimSize(i8* %exp, i32 256) nounwind, !dbg !255 ; [debug line = 539:149]
  call void (...)* @_ssdm_SpecArrayDimSize(i8* %out, i32 256) nounwind, !dbg !256 ; [debug line = 539:181]
  call void (...)* @_ssdm_SpecArrayDimSize(i8* %base, i32 256) nounwind, !dbg !257 ; [debug line = 539:213]
  call void @llvm.dbg.declare(metadata !{[256 x i8]* %zero}, metadata !258), !dbg !259 ; [debug line = 542:16] [debug variable = zero]
  call void @llvm.dbg.declare(metadata !{[256 x i8]* %one}, metadata !260), !dbg !261 ; [debug line = 543:16] [debug variable = one]
  call void @llvm.dbg.declare(metadata !{[256 x i8]* %two}, metadata !262), !dbg !263 ; [debug line = 544:16] [debug variable = two]
  call void @llvm.dbg.declare(metadata !{[256 x i8]* %temp}, metadata !264), !dbg !265 ; [debug line = 546:16] [debug variable = temp]
  call void @llvm.dbg.declare(metadata !{[256 x i8]* %temp1}, metadata !266), !dbg !267 ; [debug line = 547:16] [debug variable = temp1]
  call void @llvm.dbg.declare(metadata !{[256 x i8]* %temp2}, metadata !268), !dbg !269 ; [debug line = 548:16] [debug variable = temp2]
  call void @llvm.dbg.declare(metadata !{[256 x i8]* %tempBase}, metadata !270), !dbg !271 ; [debug line = 550:16] [debug variable = tempBase]
  call void @llvm.dbg.declare(metadata !{[256 x i8]* %tempExp}, metadata !272), !dbg !273 ; [debug line = 551:16] [debug variable = tempExp]
  call void @llvm.dbg.declare(metadata !{[256 x i8]* %tempMod}, metadata !274), !dbg !275 ; [debug line = 552:16] [debug variable = tempMod]
  %zero.addr = getelementptr inbounds [256 x i8]* %zero, i64 0, i64 0, !dbg !276 ; [#uses=3 type=i8*] [debug line = 554:2]
  call fastcc void @bigint_zero(i8* %zero.addr), !dbg !276 ; [debug line = 554:2]
  %one.addr = getelementptr inbounds [256 x i8]* %one, i64 0, i64 0, !dbg !277 ; [#uses=3 type=i8*] [debug line = 555:2]
  call fastcc void @bigint_zero(i8* %one.addr), !dbg !277 ; [debug line = 555:2]
  %two.addr = getelementptr inbounds [256 x i8]* %two, i64 0, i64 0, !dbg !278 ; [#uses=2 type=i8*] [debug line = 556:2]
  call fastcc void @bigint_zero(i8* %two.addr), !dbg !278 ; [debug line = 556:2]
  %temp.addr = getelementptr inbounds [256 x i8]* %temp, i64 0, i64 0, !dbg !279 ; [#uses=11 type=i8*] [debug line = 558:2]
  call fastcc void @bigint_zero(i8* %temp.addr), !dbg !279 ; [debug line = 558:2]
  %temp1.addr = getelementptr inbounds [256 x i8]* %temp1, i64 0, i64 0, !dbg !280 ; [#uses=10 type=i8*] [debug line = 559:2]
  call fastcc void @bigint_zero(i8* %temp1.addr), !dbg !280 ; [debug line = 559:2]
  %temp2.addr = getelementptr inbounds [256 x i8]* %temp2, i64 0, i64 0, !dbg !281 ; [#uses=2 type=i8*] [debug line = 560:2]
  call fastcc void @bigint_zero(i8* %temp2.addr), !dbg !281 ; [debug line = 560:2]
  %tempBase.addr = getelementptr inbounds [256 x i8]* %tempBase, i64 0, i64 0, !dbg !282 ; [#uses=8 type=i8*] [debug line = 562:2]
  call fastcc void @bigint_zero(i8* %tempBase.addr), !dbg !282 ; [debug line = 562:2]
  %tempExp.addr = getelementptr inbounds [256 x i8]* %tempExp, i64 0, i64 0, !dbg !283 ; [#uses=6 type=i8*] [debug line = 563:2]
  call fastcc void @bigint_zero(i8* %tempExp.addr), !dbg !283 ; [debug line = 563:2]
  %tempMod.addr = getelementptr inbounds [256 x i8]* %tempMod, i64 0, i64 0, !dbg !284 ; [#uses=5 type=i8*] [debug line = 564:2]
  call fastcc void @bigint_zero(i8* %tempMod.addr), !dbg !284 ; [debug line = 564:2]
  call fastcc void @bigint_copy(i8* %tempBase.addr, i8* %base), !dbg !285 ; [debug line = 566:2]
  call fastcc void @bigint_copy(i8* %tempExp.addr, i8* %exp), !dbg !286 ; [debug line = 567:2]
  call fastcc void @bigint_copy(i8* %tempMod.addr, i8* %mod), !dbg !287 ; [debug line = 568:2]
  %temp.addr.1 = getelementptr inbounds [256 x i8]* %temp, i64 0, i64 255, !dbg !288 ; [#uses=1 type=i8*] [debug line = 570:2]
  store i8 1, i8* %temp.addr.1, align 1, !dbg !288 ; [debug line = 570:2]
  %one.addr.1 = getelementptr inbounds [256 x i8]* %one, i64 0, i64 255, !dbg !289 ; [#uses=2 type=i8*] [debug line = 571:2]
  store i8 1, i8* %one.addr.1, align 1, !dbg !289 ; [debug line = 571:2]
  %two.addr.1 = getelementptr inbounds [256 x i8]* %two, i64 0, i64 255, !dbg !290 ; [#uses=2 type=i8*] [debug line = 572:2]
  store i8 2, i8* %two.addr.1, align 1, !dbg !290 ; [debug line = 572:2]
  call fastcc void @bigint_zero(i8* %out), !dbg !291 ; [debug line = 574:2]
  %tmp = call fastcc i32 @bigint_compare(i8* %mod, i8* %one.addr), !dbg !292 ; [#uses=1 type=i32] [debug line = 575:5]
  %tmp.76 = icmp eq i32 %tmp, 0, !dbg !292        ; [#uses=1 type=i1] [debug line = 575:5]
  br i1 %tmp.76, label %._crit_edge, label %1, !dbg !292 ; [debug line = 575:5]

; <label>:1                                       ; preds = %0
  call void @llvm.dbg.declare(metadata !{[256 x i8]* %result}, metadata !293), !dbg !294 ; [debug line = 579:16] [debug variable = result]
  %result.addr = getelementptr inbounds [256 x i8]* %result, i64 0, i64 0, !dbg !295 ; [#uses=4 type=i8*] [debug line = 580:2]
  call fastcc void @bigint_zero(i8* %result.addr), !dbg !295 ; [debug line = 580:2]
  %out.addr = getelementptr inbounds i8* %out, i64 255, !dbg !296 ; [#uses=1 type=i8*] [debug line = 582:2]
  store i8 1, i8* %out.addr, align 1, !dbg !296   ; [debug line = 582:2]
  %result.addr.1 = getelementptr inbounds [256 x i8]* %result, i64 0, i64 255, !dbg !297 ; [#uses=1 type=i8*] [debug line = 583:2]
  store i8 1, i8* %result.addr.1, align 1, !dbg !297 ; [debug line = 583:2]
  call fastcc void @bigint_longdiv(i8* %temp.addr, i8* %temp1.addr, i8* %tempBase.addr, i8* %tempMod.addr), !dbg !298 ; [debug line = 585:2]
  call fastcc void @bigint_copy(i8* %tempBase.addr, i8* %temp1.addr), !dbg !299 ; [debug line = 586:2]
  br label %2, !dbg !300                          ; [debug line = 588:2]

; <label>:2                                       ; preds = %._crit_edge1, %1
  %tmp.77 = call fastcc i32 @bigint_compare(i8* %tempExp.addr, i8* %zero.addr), !dbg !301 ; [#uses=1 type=i32] [debug line = 588:8]
  %tmp.78 = icmp eq i32 %tmp.77, 1, !dbg !301     ; [#uses=1 type=i1] [debug line = 588:8]
  br i1 %tmp.78, label %3, label %5, !dbg !301    ; [debug line = 588:8]

; <label>:3                                       ; preds = %2
  call fastcc void @bigint_zero(i8* %temp.addr), !dbg !302 ; [debug line = 589:3]
  call fastcc void @bigint_zero(i8* %temp1.addr), !dbg !304 ; [debug line = 590:3]
  call fastcc void @bigint_longdiv(i8* %temp.addr, i8* %temp1.addr, i8* %tempExp.addr, i8* %two.addr), !dbg !305 ; [debug line = 591:3]
  %tmp.79 = call fastcc i32 @bigint_compare(i8* %temp1.addr, i8* %one.addr), !dbg !306 ; [#uses=1 type=i32] [debug line = 593:6]
  %tmp.80 = icmp eq i32 %tmp.79, 0, !dbg !306     ; [#uses=1 type=i1] [debug line = 593:6]
  br i1 %tmp.80, label %4, label %._crit_edge1, !dbg !306 ; [debug line = 593:6]

; <label>:4                                       ; preds = %3
  call fastcc void @bigint_mul(i8* %temp.addr, i8* %result.addr, i8* %tempBase.addr), !dbg !307 ; [debug line = 594:4]
  call fastcc void @bigint_zero(i8* %temp1.addr), !dbg !309 ; [debug line = 596:4]
  call fastcc void @bigint_longdiv(i8* %temp1.addr, i8* %result.addr, i8* %temp.addr, i8* %tempMod.addr), !dbg !310 ; [debug line = 598:4]
  br label %._crit_edge1, !dbg !311               ; [debug line = 600:3]

._crit_edge1:                                     ; preds = %4, %3
  call fastcc void @bigint_rightshift(i8* %temp.addr, i8* %tempExp.addr), !dbg !312 ; [debug line = 602:3]
  call fastcc void @bigint_copy(i8* %tempExp.addr, i8* %temp.addr), !dbg !313 ; [debug line = 603:3]
  call fastcc void @bigint_zero(i8* %temp.addr), !dbg !314 ; [debug line = 605:3]
  call fastcc void @bigint_mul(i8* %temp.addr, i8* %tempBase.addr, i8* %tempBase.addr), !dbg !315 ; [debug line = 606:3]
  call fastcc void @bigint_zero(i8* %temp1.addr), !dbg !316 ; [debug line = 608:3]
  call fastcc void @bigint_zero(i8* %temp2.addr), !dbg !317 ; [debug line = 609:3]
  call fastcc void @bigint_longdiv(i8* %temp1.addr, i8* %tempBase.addr, i8* %temp.addr, i8* %tempMod.addr), !dbg !318 ; [debug line = 610:3]
  call fastcc void @bigint_zero(i8* %zero.addr), !dbg !319 ; [debug line = 612:3]
  store i8 1, i8* %one.addr.1, align 1, !dbg !320 ; [debug line = 613:3]
  store i8 2, i8* %two.addr.1, align 1, !dbg !321 ; [debug line = 614:3]
  br label %2, !dbg !322                          ; [debug line = 615:2]

; <label>:5                                       ; preds = %2
  call fastcc void @bigint_copy(i8* %out, i8* %result.addr), !dbg !323 ; [debug line = 617:2]
  br label %._crit_edge, !dbg !324                ; [debug line = 619:1]

._crit_edge:                                      ; preds = %5, %0
  ret void, !dbg !324                             ; [debug line = 619:1]
}

; [#uses=0]
define void @bigint_math(i8* %a, i8* %b, i8* %c, i8* %d) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecTopModule([12 x i8]* @bigint_math.str) nounwind
  call void @llvm.dbg.value(metadata !{i8* %a}, i64 0, metadata !325), !dbg !326 ; [debug line = 7:32] [debug variable = a]
  call void @llvm.dbg.value(metadata !{i8* %b}, i64 0, metadata !327), !dbg !328 ; [debug line = 7:54] [debug variable = b]
  call void @llvm.dbg.value(metadata !{i8* %c}, i64 0, metadata !329), !dbg !330 ; [debug line = 7:76] [debug variable = c]
  call void @llvm.dbg.value(metadata !{i8* %d}, i64 0, metadata !331), !dbg !332 ; [debug line = 7:98] [debug variable = d]
  call void (...)* @_ssdm_SpecArrayDimSize(i8* %a, i32 256) nounwind, !dbg !333 ; [debug line = 7:106]
  call void (...)* @_ssdm_SpecArrayDimSize(i8* %b, i32 256) nounwind, !dbg !335 ; [debug line = 7:136]
  call void (...)* @_ssdm_SpecArrayDimSize(i8* %c, i32 256) nounwind, !dbg !336 ; [debug line = 7:166]
  call void (...)* @_ssdm_SpecArrayDimSize(i8* %d, i32 256) nounwind, !dbg !337 ; [debug line = 7:196]
  call void (...)* @_ssdm_op_SpecInterface(i32 0, i8* getelementptr inbounds ([10 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str2, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str2, i64 0, i64 0)) nounwind, !dbg !338 ; [debug line = 8:1]
  call void (...)* @_ssdm_op_SpecInterface(i8* %a, i8* getelementptr inbounds ([10 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str2, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str2, i64 0, i64 0)) nounwind, !dbg !339 ; [debug line = 9:1]
  call void (...)* @_ssdm_op_SpecInterface(i8* %b, i8* getelementptr inbounds ([10 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str2, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str2, i64 0, i64 0)) nounwind, !dbg !340 ; [debug line = 10:1]
  call void (...)* @_ssdm_op_SpecInterface(i8* %c, i8* getelementptr inbounds ([10 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str2, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str2, i64 0, i64 0)) nounwind, !dbg !341 ; [debug line = 11:1]
  call void (...)* @_ssdm_op_SpecInterface(i8* %d, i8* getelementptr inbounds ([10 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str2, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str2, i64 0, i64 0)) nounwind, !dbg !342 ; [debug line = 12:1]
  call fastcc void @bigint_zero(i8* %a), !dbg !343 ; [debug line = 14:2]
  call fastcc void @bigint_modexp(i8* %a, i8* %b, i8* %c, i8* %d), !dbg !344 ; [debug line = 15:2]
  ret void, !dbg !345                             ; [debug line = 16:1]
}

; [#uses=4]
define internal fastcc void @bigint_longdiv(i8* %out, i8* %out1, i8* %a, i8* %b) nounwind uwtable {
  %tempA = alloca [256 x i8], align 16            ; [#uses=1 type=[256 x i8]*]
  %tempB = alloca [256 x i8], align 16            ; [#uses=1 type=[256 x i8]*]
  %temp = alloca [256 x i8], align 16             ; [#uses=1 type=[256 x i8]*]
  %q = alloca [256 x i8], align 16                ; [#uses=1 type=[256 x i8]*]
  %d = alloca [256 x i8], align 16                ; [#uses=1 type=[256 x i8]*]
  %quot = alloca [256 x i8], align 16             ; [#uses=1 type=[256 x i8]*]
  %bitPlace = alloca [256 x i8], align 16         ; [#uses=1 type=[256 x i8]*]
  call void @llvm.dbg.value(metadata !{i8* %out}, i64 0, metadata !346), !dbg !347 ; [debug line = 392:35] [debug variable = out]
  call void @llvm.dbg.value(metadata !{i8* %out1}, i64 0, metadata !348), !dbg !349 ; [debug line = 392:59] [debug variable = out1]
  call void @llvm.dbg.value(metadata !{i8* %a}, i64 0, metadata !350), !dbg !351 ; [debug line = 392:84] [debug variable = a]
  call void @llvm.dbg.value(metadata !{i8* %b}, i64 0, metadata !352), !dbg !353 ; [debug line = 392:106] [debug variable = b]
  call void (...)* @_ssdm_SpecArrayDimSize(i8* %a, i32 256) nounwind, !dbg !354 ; [debug line = 392:114]
  call void (...)* @_ssdm_SpecArrayDimSize(i8* %b, i32 256) nounwind, !dbg !356 ; [debug line = 392:144]
  call void (...)* @_ssdm_SpecArrayDimSize(i8* %out1, i32 256) nounwind, !dbg !357 ; [debug line = 392:174]
  call void (...)* @_ssdm_SpecArrayDimSize(i8* %out, i32 256) nounwind, !dbg !358 ; [debug line = 392:207]
  call void @llvm.dbg.declare(metadata !{[256 x i8]* %tempA}, metadata !359), !dbg !360 ; [debug line = 398:16] [debug variable = tempA]
  call void @llvm.dbg.declare(metadata !{[256 x i8]* %tempB}, metadata !361), !dbg !362 ; [debug line = 399:16] [debug variable = tempB]
  %tempA.addr = getelementptr inbounds [256 x i8]* %tempA, i64 0, i64 0, !dbg !363 ; [#uses=8 type=i8*] [debug line = 407:2]
  call fastcc void @bigint_zero(i8* %tempA.addr), !dbg !363 ; [debug line = 407:2]
  %tempB.addr = getelementptr inbounds [256 x i8]* %tempB, i64 0, i64 0, !dbg !364 ; [#uses=7 type=i8*] [debug line = 408:2]
  call fastcc void @bigint_zero(i8* %tempB.addr), !dbg !364 ; [debug line = 408:2]
  call fastcc void @bigint_copy(i8* %tempA.addr, i8* %a), !dbg !365 ; [debug line = 412:2]
  call fastcc void @bigint_copy(i8* %tempB.addr, i8* %b), !dbg !366 ; [debug line = 413:2]
  call fastcc void @bigint_zero(i8* %out), !dbg !367 ; [debug line = 418:2]
  call fastcc void @bigint_zero(i8* %out1), !dbg !368 ; [debug line = 419:2]
  %tmp = call fastcc i32 @bigint_compare(i8* %tempB.addr, i8* getelementptr inbounds ([256 x i8]* @zero, i64 0, i64 0)), !dbg !369 ; [#uses=1 type=i32] [debug line = 421:5]
  %tmp.81 = icmp eq i32 %tmp, 0, !dbg !369        ; [#uses=1 type=i1] [debug line = 421:5]
  br i1 %tmp.81, label %._crit_edge, label %1, !dbg !369 ; [debug line = 421:5]

; <label>:1                                       ; preds = %0
  %tmp.82 = call fastcc i32 @bigint_compare(i8* %tempB.addr, i8* getelementptr inbounds ([256 x i8]* @one, i64 0, i64 0)), !dbg !370 ; [#uses=1 type=i32] [debug line = 425:5]
  %tmp.83 = icmp eq i32 %tmp.82, 0, !dbg !370     ; [#uses=1 type=i1] [debug line = 425:5]
  br i1 %tmp.83, label %2, label %3, !dbg !370    ; [debug line = 425:5]

; <label>:2                                       ; preds = %1
  call fastcc void @bigint_copy(i8* %out, i8* %tempA.addr), !dbg !371 ; [debug line = 426:3]
  call fastcc void @bigint_copy(i8* %out1, i8* getelementptr inbounds ([256 x i8]* @zero, i64 0, i64 0)), !dbg !373 ; [debug line = 427:3]
  br label %._crit_edge, !dbg !374                ; [debug line = 428:3]

; <label>:3                                       ; preds = %1
  %i = call fastcc i32 @bigint_compare(i8* %tempA.addr, i8* %tempB.addr), !dbg !375 ; [#uses=2 type=i32] [debug line = 432:6]
  call void @llvm.dbg.value(metadata !{i32 %i}, i64 0, metadata !376), !dbg !375 ; [debug line = 432:6] [debug variable = i]
  %tmp.85 = icmp eq i32 %i, -1, !dbg !377         ; [#uses=1 type=i1] [debug line = 433:2]
  br i1 %tmp.85, label %4, label %5, !dbg !377    ; [debug line = 433:2]

; <label>:4                                       ; preds = %3
  call fastcc void @bigint_copy(i8* %out1, i8* %tempA.addr), !dbg !378 ; [debug line = 434:3]
  call fastcc void @bigint_copy(i8* %out, i8* getelementptr inbounds ([256 x i8]* @zero, i64 0, i64 0)), !dbg !380 ; [debug line = 435:3]
  br label %._crit_edge, !dbg !381                ; [debug line = 436:3]

; <label>:5                                       ; preds = %3
  %tmp.86 = icmp eq i32 %i, 0, !dbg !382          ; [#uses=1 type=i1] [debug line = 439:2]
  br i1 %tmp.86, label %6, label %.preheader11.preheader, !dbg !382 ; [debug line = 439:2]

.preheader11.preheader:                           ; preds = %5
  br label %.preheader11, !dbg !383               ; [debug line = 448:6]

; <label>:6                                       ; preds = %5
  %out.addr = getelementptr inbounds i8* %out, i64 255, !dbg !385 ; [#uses=1 type=i8*] [debug line = 440:3]
  store i8 1, i8* %out.addr, align 1, !dbg !385   ; [debug line = 440:3]
  %out1.addr = getelementptr inbounds i8* %out1, i64 255, !dbg !387 ; [#uses=1 type=i8*] [debug line = 441:3]
  store i8 0, i8* %out1.addr, align 1, !dbg !387  ; [debug line = 441:3]
  br label %._crit_edge, !dbg !388                ; [debug line = 442:3]

.preheader11:                                     ; preds = %11, %.preheader11.preheader
  %i5 = phi i32 [ %i.6, %11 ], [ 0, %.preheader11.preheader ] ; [#uses=3 type=i32]
  %flag = phi i32 [ %flag.2, %11 ], [ 0, %.preheader11.preheader ] ; [#uses=2 type=i32]
  %aMSB = phi i32 [ %aMSB.5, %11 ], [ 0, %.preheader11.preheader ] ; [#uses=3 type=i32]
  %tmp.87 = icmp slt i32 %i5, 256, !dbg !383      ; [#uses=1 type=i1] [debug line = 448:6]
  br i1 %tmp.87, label %7, label %.loopexit8, !dbg !383 ; [debug line = 448:6]

; <label>:7                                       ; preds = %.preheader11
  %tmp.88 = sext i32 %i5 to i64, !dbg !389        ; [#uses=1 type=i64] [debug line = 449:3]
  %a.addr = getelementptr inbounds i8* %a, i64 %tmp.88, !dbg !389 ; [#uses=1 type=i8*] [debug line = 449:3]
  %a.load = load i8* %a.addr, align 1, !dbg !389  ; [#uses=4 type=i8] [debug line = 449:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %a.load) nounwind
  %tmp.89 = icmp eq i8 %a.load, 0, !dbg !389      ; [#uses=1 type=i1] [debug line = 449:3]
  br i1 %tmp.89, label %.loopexit5, label %.preheader10, !dbg !389 ; [debug line = 449:3]

.preheader10:                                     ; preds = %7
  %tmp.90 = zext i8 %a.load to i32, !dbg !391     ; [#uses=1 type=i32] [debug line = 451:5]
  br label %8, !dbg !395                          ; [debug line = 450:8]

; <label>:8                                       ; preds = %10, %.preheader10
  %j = phi i32 [ %j.6, %10 ], [ 0, %.preheader10 ] ; [#uses=4 type=i32]
  %aMSB.1 = phi i32 [ %aMSB.4, %10 ], [ %aMSB, %.preheader10 ] ; [#uses=3 type=i32]
  %tmp.91 = icmp slt i32 %j, 8, !dbg !395         ; [#uses=1 type=i1] [debug line = 450:8]
  br i1 %tmp.91, label %9, label %.loopexit5.loopexit, !dbg !395 ; [debug line = 450:8]

; <label>:9                                       ; preds = %8
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %a.load) nounwind
  %tmp.92 = lshr i32 128, %j, !dbg !391           ; [#uses=1 type=i32] [debug line = 451:5]
  %tmp.93 = and i32 %tmp.92, %tmp.90, !dbg !391   ; [#uses=1 type=i32] [debug line = 451:5]
  %tmp.94 = sub nsw i32 7, %j, !dbg !391          ; [#uses=1 type=i32] [debug line = 451:5]
  %tmp.95 = lshr i32 %tmp.93, %tmp.94, !dbg !391  ; [#uses=1 type=i32] [debug line = 451:5]
  %tmp.96 = icmp eq i32 %tmp.95, 1, !dbg !391     ; [#uses=1 type=i1] [debug line = 451:5]
  br i1 %tmp.96, label %.loopexit5.loopexit, label %10, !dbg !391 ; [debug line = 451:5]

; <label>:10                                      ; preds = %9
  %aMSB.4 = add nsw i32 %aMSB.1, 1, !dbg !396     ; [#uses=1 type=i32] [debug line = 456:5]
  call void @llvm.dbg.value(metadata !{i32 %aMSB.4}, i64 0, metadata !397), !dbg !396 ; [debug line = 456:5] [debug variable = aMSB]
  %j.6 = add nsw i32 %j, 1, !dbg !398             ; [#uses=1 type=i32] [debug line = 450:22]
  call void @llvm.dbg.value(metadata !{i32 %j.6}, i64 0, metadata !399), !dbg !398 ; [debug line = 450:22] [debug variable = j]
  br label %8, !dbg !398                          ; [debug line = 450:22]

.loopexit5.loopexit:                              ; preds = %9, %8
  %aMSB.1.lcssa = phi i32 [ %aMSB.1, %9 ], [ %aMSB.1, %8 ] ; [#uses=1 type=i32]
  %flag.2.ph = phi i32 [ %flag, %8 ], [ 1, %9 ]   ; [#uses=1 type=i32]
  br label %.loopexit5

.loopexit5:                                       ; preds = %.loopexit5.loopexit, %7
  %flag.2 = phi i32 [ %flag, %7 ], [ %flag.2.ph, %.loopexit5.loopexit ] ; [#uses=2 type=i32]
  %aMSB.2 = phi i32 [ %aMSB, %7 ], [ %aMSB.1.lcssa, %.loopexit5.loopexit ] ; [#uses=2 type=i32]
  %tmp.99 = icmp eq i32 %flag.2, 1, !dbg !400     ; [#uses=1 type=i1] [debug line = 460:3]
  br i1 %tmp.99, label %.loopexit8, label %11, !dbg !400 ; [debug line = 460:3]

; <label>:11                                      ; preds = %.loopexit5
  %aMSB.5 = add nsw i32 %aMSB.2, 8, !dbg !401     ; [#uses=1 type=i32] [debug line = 465:3]
  call void @llvm.dbg.value(metadata !{i32 %aMSB.5}, i64 0, metadata !397), !dbg !401 ; [debug line = 465:3] [debug variable = aMSB]
  %i.6 = add nsw i32 %i5, 1, !dbg !402            ; [#uses=1 type=i32] [debug line = 448:22]
  call void @llvm.dbg.value(metadata !{i32 %i.6}, i64 0, metadata !376), !dbg !402 ; [debug line = 448:22] [debug variable = i]
  br label %.preheader11, !dbg !402               ; [debug line = 448:22]

.loopexit8:                                       ; preds = %.loopexit5, %.preheader11
  %aMSB.3 = phi i32 [ %aMSB, %.preheader11 ], [ %aMSB.2, %.loopexit5 ] ; [#uses=2 type=i32]
  br label %12, !dbg !403                         ; [debug line = 471:6]

; <label>:12                                      ; preds = %17, %.loopexit8
  %i.1 = phi i32 [ 0, %.loopexit8 ], [ %i.7, %17 ] ; [#uses=3 type=i32]
  %flag.3 = phi i32 [ 0, %.loopexit8 ], [ %flag.5, %17 ] ; [#uses=2 type=i32]
  %bMSB = phi i32 [ 0, %.loopexit8 ], [ %bMSB.5, %17 ] ; [#uses=3 type=i32]
  %tmp.102 = icmp slt i32 %i.1, 256, !dbg !403    ; [#uses=1 type=i1] [debug line = 471:6]
  br i1 %tmp.102, label %13, label %.loopexit3, !dbg !403 ; [debug line = 471:6]

; <label>:13                                      ; preds = %12
  %tmp.103 = sext i32 %i.1 to i64, !dbg !405      ; [#uses=1 type=i64] [debug line = 473:3]
  %b.addr = getelementptr inbounds i8* %b, i64 %tmp.103, !dbg !405 ; [#uses=1 type=i8*] [debug line = 473:3]
  %b.load = load i8* %b.addr, align 1, !dbg !405  ; [#uses=4 type=i8] [debug line = 473:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %b.load) nounwind
  %tmp.104 = icmp eq i8 %b.load, 0, !dbg !405     ; [#uses=1 type=i1] [debug line = 473:3]
  br i1 %tmp.104, label %.loopexit, label %.preheader, !dbg !405 ; [debug line = 473:3]

.preheader:                                       ; preds = %13
  %tmp.105 = zext i8 %b.load to i32, !dbg !407    ; [#uses=1 type=i32] [debug line = 475:5]
  br label %14, !dbg !411                         ; [debug line = 474:8]

; <label>:14                                      ; preds = %16, %.preheader
  %j.1 = phi i32 [ %j.7, %16 ], [ 0, %.preheader ] ; [#uses=4 type=i32]
  %bMSB.1 = phi i32 [ %bMSB.4, %16 ], [ %bMSB, %.preheader ] ; [#uses=3 type=i32]
  %tmp.106 = icmp slt i32 %j.1, 8, !dbg !411      ; [#uses=1 type=i1] [debug line = 474:8]
  br i1 %tmp.106, label %15, label %.loopexit.loopexit, !dbg !411 ; [debug line = 474:8]

; <label>:15                                      ; preds = %14
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %b.load) nounwind
  %tmp.107 = lshr i32 128, %j.1, !dbg !407        ; [#uses=1 type=i32] [debug line = 475:5]
  %tmp.108 = and i32 %tmp.107, %tmp.105, !dbg !407 ; [#uses=1 type=i32] [debug line = 475:5]
  %tmp.109 = sub nsw i32 7, %j.1, !dbg !407       ; [#uses=1 type=i32] [debug line = 475:5]
  %tmp.110 = lshr i32 %tmp.108, %tmp.109, !dbg !407 ; [#uses=1 type=i32] [debug line = 475:5]
  %tmp.111 = icmp eq i32 %tmp.110, 1, !dbg !407   ; [#uses=1 type=i1] [debug line = 475:5]
  br i1 %tmp.111, label %.loopexit.loopexit, label %16, !dbg !407 ; [debug line = 475:5]

; <label>:16                                      ; preds = %15
  %bMSB.4 = add nsw i32 %bMSB.1, 1, !dbg !412     ; [#uses=1 type=i32] [debug line = 479:6]
  call void @llvm.dbg.value(metadata !{i32 %bMSB.4}, i64 0, metadata !413), !dbg !412 ; [debug line = 479:6] [debug variable = bMSB]
  %j.7 = add nsw i32 %j.1, 1, !dbg !414           ; [#uses=1 type=i32] [debug line = 474:22]
  call void @llvm.dbg.value(metadata !{i32 %j.7}, i64 0, metadata !399), !dbg !414 ; [debug line = 474:22] [debug variable = j]
  br label %14, !dbg !414                         ; [debug line = 474:22]

.loopexit.loopexit:                               ; preds = %15, %14
  %bMSB.1.lcssa = phi i32 [ %bMSB.1, %15 ], [ %bMSB.1, %14 ] ; [#uses=1 type=i32]
  %flag.5.ph = phi i32 [ %flag.3, %14 ], [ 1, %15 ] ; [#uses=1 type=i32]
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %13
  %flag.5 = phi i32 [ %flag.3, %13 ], [ %flag.5.ph, %.loopexit.loopexit ] ; [#uses=2 type=i32]
  %bMSB.2 = phi i32 [ %bMSB, %13 ], [ %bMSB.1.lcssa, %.loopexit.loopexit ] ; [#uses=2 type=i32]
  %tmp.114 = icmp eq i32 %flag.5, 1, !dbg !415    ; [#uses=1 type=i1] [debug line = 482:3]
  br i1 %tmp.114, label %.loopexit3, label %17, !dbg !415 ; [debug line = 482:3]

; <label>:17                                      ; preds = %.loopexit
  %bMSB.5 = add nsw i32 %bMSB.2, 8, !dbg !416     ; [#uses=1 type=i32] [debug line = 485:3]
  call void @llvm.dbg.value(metadata !{i32 %bMSB.5}, i64 0, metadata !413), !dbg !416 ; [debug line = 485:3] [debug variable = bMSB]
  %i.7 = add nsw i32 %i.1, 1, !dbg !417           ; [#uses=1 type=i32] [debug line = 471:22]
  call void @llvm.dbg.value(metadata !{i32 %i.7}, i64 0, metadata !376), !dbg !417 ; [debug line = 471:22] [debug variable = i]
  br label %12, !dbg !417                         ; [debug line = 471:22]

.loopexit3:                                       ; preds = %.loopexit, %12
  %bMSB.3 = phi i32 [ %bMSB, %12 ], [ %bMSB.2, %.loopexit ] ; [#uses=2 type=i32]
  call void @llvm.dbg.declare(metadata !{[256 x i8]* %temp}, metadata !418), !dbg !419 ; [debug line = 489:16] [debug variable = temp]
  call void @llvm.dbg.declare(metadata !{[256 x i8]* %d}, metadata !420), !dbg !421 ; [debug line = 492:16] [debug variable = d]
  %q.addr = getelementptr inbounds [256 x i8]* %q, i64 0, i64 0, !dbg !422 ; [#uses=1 type=i8*] [debug line = 493:2]
  call fastcc void @bigint_zero(i8* %q.addr), !dbg !422 ; [debug line = 493:2]
  %d.addr = getelementptr inbounds [256 x i8]* %d, i64 0, i64 0, !dbg !423 ; [#uses=6 type=i8*] [debug line = 494:2]
  call fastcc void @bigint_zero(i8* %d.addr), !dbg !423 ; [debug line = 494:2]
  %temp.addr = getelementptr inbounds [256 x i8]* %temp, i64 0, i64 0, !dbg !424 ; [#uses=11 type=i8*] [debug line = 496:2]
  call fastcc void @bigint_zero(i8* %temp.addr), !dbg !424 ; [debug line = 496:2]
  %tmp.115 = sub nsw i32 %bMSB.3, %aMSB.3, !dbg !425 ; [#uses=2 type=i32] [debug line = 497:2]
  call fastcc void @bigint_leftshift(i8* %d.addr, i8* %tempB.addr, i32 %tmp.115), !dbg !425 ; [debug line = 497:2]
  call void @llvm.dbg.declare(metadata !{[256 x i8]* %quot}, metadata !426), !dbg !427 ; [debug line = 499:16] [debug variable = quot]
  %quot.addr = getelementptr inbounds [256 x i8]* %quot, i64 0, i64 0, !dbg !428 ; [#uses=4 type=i8*] [debug line = 500:2]
  call fastcc void @bigint_zero(i8* %quot.addr), !dbg !428 ; [debug line = 500:2]
  call void @llvm.dbg.declare(metadata !{[256 x i8]* %bitPlace}, metadata !429), !dbg !430 ; [debug line = 502:16] [debug variable = bitPlace]
  %bitPlace.addr = getelementptr inbounds [256 x i8]* %bitPlace, i64 0, i64 0, !dbg !431 ; [#uses=5 type=i8*] [debug line = 503:2]
  call fastcc void @bigint_zero(i8* %bitPlace.addr), !dbg !431 ; [debug line = 503:2]
  call fastcc void @bigint_leftshift(i8* %bitPlace.addr, i8* getelementptr inbounds ([256 x i8]* @one, i64 0, i64 0), i32 %tmp.115), !dbg !432 ; [debug line = 505:2]
  %aMSB.3.neg = sub i32 0, %aMSB.3                ; [#uses=1 type=i32]
  %tmp.116 = add i32 %aMSB.3.neg, 1, !dbg !433    ; [#uses=1 type=i32] [debug line = 507:6]
  %tmp.117 = add i32 %tmp.116, %bMSB.3, !dbg !433 ; [#uses=1 type=i32] [debug line = 507:6]
  br label %18, !dbg !433                         ; [debug line = 507:6]

; <label>:18                                      ; preds = %._crit_edge14, %.loopexit3
  %j.2 = phi i32 [ 0, %.loopexit3 ], [ %j.8, %._crit_edge14 ] ; [#uses=2 type=i32]
  %tmp.120 = icmp slt i32 %j.2, %tmp.117, !dbg !433 ; [#uses=1 type=i1] [debug line = 507:6]
  br i1 %tmp.120, label %19, label %21, !dbg !433 ; [debug line = 507:6]

; <label>:19                                      ; preds = %18
  %i.8 = call fastcc i32 @bigint_compare(i8* %tempA.addr, i8* %d.addr), !dbg !435 ; [#uses=1 type=i32] [debug line = 508:7]
  call void @llvm.dbg.value(metadata !{i32 %i.8}, i64 0, metadata !376), !dbg !435 ; [debug line = 508:7] [debug variable = i]
  %switch = icmp ult i32 %i.8, 2, !dbg !437       ; [#uses=1 type=i1] [debug line = 510:3]
  br i1 %switch, label %20, label %._crit_edge14, !dbg !437 ; [debug line = 510:3]

; <label>:20                                      ; preds = %19
  call fastcc void @bigint_add(i8* %temp.addr, i8* %quot.addr, i8* %bitPlace.addr), !dbg !438 ; [debug line = 511:4]
  call fastcc void @bigint_copy(i8* %quot.addr, i8* %temp.addr), !dbg !440 ; [debug line = 512:4]
  call fastcc void @bigint_sub(i8* %temp.addr, i8* %tempA.addr, i8* %d.addr), !dbg !441 ; [debug line = 514:4]
  call fastcc void @bigint_copy(i8* %tempA.addr, i8* %temp.addr), !dbg !442 ; [debug line = 515:4]
  br label %._crit_edge14, !dbg !443              ; [debug line = 518:3]

._crit_edge14:                                    ; preds = %20, %19
  call fastcc void @bigint_rightshift(i8* %temp.addr, i8* %bitPlace.addr), !dbg !444 ; [debug line = 520:3]
  call fastcc void @bigint_copy(i8* %bitPlace.addr, i8* %temp.addr), !dbg !445 ; [debug line = 521:3]
  call fastcc void @bigint_rightshift(i8* %temp.addr, i8* %d.addr), !dbg !446 ; [debug line = 523:3]
  call fastcc void @bigint_copy(i8* %d.addr, i8* %temp.addr), !dbg !447 ; [debug line = 524:3]
  %j.8 = add nsw i32 %j.2, 1, !dbg !448           ; [#uses=1 type=i32] [debug line = 507:30]
  call void @llvm.dbg.value(metadata !{i32 %j.8}, i64 0, metadata !399), !dbg !448 ; [debug line = 507:30] [debug variable = j]
  br label %18, !dbg !448                         ; [debug line = 507:30]

; <label>:21                                      ; preds = %18
  call fastcc void @bigint_copy(i8* %out, i8* %quot.addr), !dbg !449 ; [debug line = 528:2]
  call fastcc void @bigint_mul(i8* %temp.addr, i8* %out, i8* %tempB.addr), !dbg !450 ; [debug line = 529:2]
  call fastcc void @bigint_sub(i8* %out1, i8* %a, i8* %temp.addr), !dbg !451 ; [debug line = 530:2]
  br label %._crit_edge, !dbg !452                ; [debug line = 533:1]

._crit_edge:                                      ; preds = %21, %6, %4, %2, %0
  ret void, !dbg !452                             ; [debug line = 533:1]
}

; [#uses=2]
define internal fastcc void @bigint_leftshift(i8* %out, i8* %a, i32 %shift) nounwind uwtable {
  call void @llvm.dbg.value(metadata !{i8* %out}, i64 0, metadata !453), !dbg !454 ; [debug line = 93:37] [debug variable = out]
  call void @llvm.dbg.value(metadata !{i8* %a}, i64 0, metadata !455), !dbg !456 ; [debug line = 93:61] [debug variable = a]
  call void @llvm.dbg.value(metadata !{i32 %shift}, i64 0, metadata !457), !dbg !458 ; [debug line = 93:73] [debug variable = shift]
  call void (...)* @_ssdm_SpecArrayDimSize(i8* %a, i32 256) nounwind, !dbg !459 ; [debug line = 93:80]
  call void (...)* @_ssdm_SpecArrayDimSize(i8* %out, i32 256) nounwind, !dbg !461 ; [debug line = 93:110]
  %tmp = icmp eq i32 %shift, 0, !dbg !462         ; [#uses=1 type=i1] [debug line = 101:2]
  br i1 %tmp, label %1, label %2, !dbg !462       ; [debug line = 101:2]

; <label>:1                                       ; preds = %0
  call fastcc void @bigint_copy(i8* %out, i8* %a), !dbg !463 ; [debug line = 102:3]
  br label %.loopexit, !dbg !465                  ; [debug line = 103:3]

; <label>:2                                       ; preds = %0
  %start = sdiv i32 %shift, 8, !dbg !466          ; [#uses=1 type=i32] [debug line = 106:21]
  call void @llvm.dbg.value(metadata !{i32 %start}, i64 0, metadata !467), !dbg !466 ; [debug line = 106:21] [debug variable = start]
  %outputBit.4 = srem i32 %shift, 8, !dbg !468    ; [#uses=1 type=i32] [debug line = 107:26]
  call void @llvm.dbg.value(metadata !{i32 %outputBit.4}, i64 0, metadata !469), !dbg !470 ; [debug line = 114:3] [debug variable = outputBit]
  call void @llvm.dbg.value(metadata !{i32 %outputBit.4}, i64 0, metadata !473), !dbg !468 ; [debug line = 107:26] [debug variable = bitStart]
  %k = sub nsw i32 255, %start, !dbg !474         ; [#uses=1 type=i32] [debug line = 110:2]
  call void @llvm.dbg.value(metadata !{i32 %k}, i64 0, metadata !475), !dbg !474 ; [debug line = 110:2] [debug variable = k]
  call fastcc void @bigint_zero(i8* %out), !dbg !476 ; [debug line = 111:2]
  br label %3, !dbg !477                          ; [debug line = 113:6]

; <label>:3                                       ; preds = %8, %2
  %i = phi i32 [ 255, %2 ], [ %i.9, %8 ]          ; [#uses=3 type=i32]
  %k7 = phi i32 [ %k, %2 ], [ %.k.1, %8 ]         ; [#uses=1 type=i32]
  %tmp.124 = icmp sgt i32 %i, -1, !dbg !477       ; [#uses=1 type=i1] [debug line = 113:6]
  br i1 %tmp.124, label %.preheader.preheader, label %.loopexit.loopexit, !dbg !477 ; [debug line = 113:6]

.preheader.preheader:                             ; preds = %3
  %tmp.125 = sext i32 %i to i64, !dbg !478        ; [#uses=1 type=i64] [debug line = 116:4]
  %a.addr = getelementptr inbounds i8* %a, i64 %tmp.125, !dbg !478 ; [#uses=1 type=i8*] [debug line = 116:4]
  br label %.preheader, !dbg !481                 ; [debug line = 115:7]

.preheader:                                       ; preds = %7, %.preheader.preheader
  %j = phi i32 [ %j.9, %7 ], [ 0, %.preheader.preheader ] ; [#uses=4 type=i32]
  %k.1 = phi i32 [ %k.2, %7 ], [ %k7, %.preheader.preheader ] ; [#uses=4 type=i32]
  %outputBit = phi i32 [ %outputBit.3, %7 ], [ %outputBit.4, %.preheader.preheader ] ; [#uses=4 type=i32]
  %exitcond = icmp eq i32 %j, 8, !dbg !481        ; [#uses=1 type=i1] [debug line = 115:7]
  br i1 %exitcond, label %8, label %4, !dbg !481  ; [debug line = 115:7]

; <label>:4                                       ; preds = %.preheader
  %a.load = load i8* %a.addr, align 1, !dbg !478  ; [#uses=2 type=i8] [debug line = 116:4]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %a.load) nounwind
  %tmp.129 = zext i8 %a.load to i32, !dbg !478    ; [#uses=1 type=i32] [debug line = 116:4]
  %tmp.130 = shl i32 1, %j, !dbg !478             ; [#uses=1 type=i32] [debug line = 116:4]
  %tmp.131 = and i32 %tmp.129, %tmp.130, !dbg !478 ; [#uses=1 type=i32] [debug line = 116:4]
  %tmp.132 = lshr i32 %tmp.131, %j, !dbg !478     ; [#uses=1 type=i32] [debug line = 116:4]
  %b = trunc i32 %tmp.132 to i8, !dbg !478        ; [#uses=2 type=i8] [debug line = 116:4]
  call void @llvm.dbg.value(metadata !{i8 %b}, i64 0, metadata !482), !dbg !478 ; [debug line = 116:4] [debug variable = b]
  %tmp.133 = icmp eq i32 %outputBit, 8, !dbg !483 ; [#uses=1 type=i1] [debug line = 118:4]
  br i1 %tmp.133, label %5, label %6, !dbg !483   ; [debug line = 118:4]

; <label>:5                                       ; preds = %4
  %k.9 = add nsw i32 %k.1, -1, !dbg !484          ; [#uses=2 type=i32] [debug line = 119:5]
  call void @llvm.dbg.value(metadata !{i32 %k.9}, i64 0, metadata !475), !dbg !484 ; [debug line = 119:5] [debug variable = k]
  %tmp.135 = sext i32 %k.9 to i64, !dbg !486      ; [#uses=1 type=i64] [debug line = 121:5]
  %out.addr = getelementptr inbounds i8* %out, i64 %tmp.135, !dbg !486 ; [#uses=2 type=i8*] [debug line = 121:5]
  %out.load = load i8* %out.addr, align 1, !dbg !486 ; [#uses=2 type=i8] [debug line = 121:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %out.load) nounwind
  %tmp.136 = add i8 %out.load, %b, !dbg !486      ; [#uses=1 type=i8] [debug line = 121:5]
  store i8 %tmp.136, i8* %out.addr, align 1, !dbg !486 ; [debug line = 121:5]
  br label %7, !dbg !487                          ; [debug line = 122:4]

; <label>:6                                       ; preds = %4
  %tmp.137 = zext i8 %b to i32, !dbg !488         ; [#uses=1 type=i32] [debug line = 123:5]
  %tmp.138 = shl i32 %tmp.137, %outputBit, !dbg !488 ; [#uses=1 type=i32] [debug line = 123:5]
  %tmp.139 = sext i32 %k.1 to i64, !dbg !488      ; [#uses=1 type=i64] [debug line = 123:5]
  %out.addr.2 = getelementptr inbounds i8* %out, i64 %tmp.139, !dbg !488 ; [#uses=2 type=i8*] [debug line = 123:5]
  %out.load.2 = load i8* %out.addr.2, align 1, !dbg !488 ; [#uses=2 type=i8] [debug line = 123:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %out.load.2) nounwind
  %tmp.140 = trunc i32 %tmp.138 to i8, !dbg !488  ; [#uses=1 type=i8] [debug line = 123:5]
  %tmp.141 = add i8 %out.load.2, %tmp.140, !dbg !488 ; [#uses=1 type=i8] [debug line = 123:5]
  store i8 %tmp.141, i8* %out.addr.2, align 1, !dbg !488 ; [debug line = 123:5]
  br label %7

; <label>:7                                       ; preds = %6, %5
  %k.2 = phi i32 [ %k.9, %5 ], [ %k.1, %6 ]       ; [#uses=1 type=i32]
  %outputBit.1 = phi i32 [ 0, %5 ], [ %outputBit, %6 ] ; [#uses=1 type=i32]
  %outputBit.3 = add nsw i32 %outputBit.1, 1, !dbg !490 ; [#uses=1 type=i32] [debug line = 126:4]
  call void @llvm.dbg.value(metadata !{i32 %outputBit.3}, i64 0, metadata !469), !dbg !490 ; [debug line = 126:4] [debug variable = outputBit]
  %j.9 = add nsw i32 %j, 1, !dbg !491             ; [#uses=1 type=i32] [debug line = 115:21]
  call void @llvm.dbg.value(metadata !{i32 %j.9}, i64 0, metadata !492), !dbg !491 ; [debug line = 115:21] [debug variable = j]
  br label %.preheader, !dbg !491                 ; [debug line = 115:21]

; <label>:8                                       ; preds = %.preheader
  %outputBit.0.lcssa = phi i32 [ %outputBit, %.preheader ] ; [#uses=1 type=i32]
  %k.1.lcssa = phi i32 [ %k.1, %.preheader ]      ; [#uses=2 type=i32]
  %tmp.126 = icmp eq i32 %outputBit.0.lcssa, 8, !dbg !493 ; [#uses=1 type=i1] [debug line = 130:3]
  %k.8 = add nsw i32 %k.1.lcssa, -1, !dbg !494    ; [#uses=1 type=i32] [debug line = 131:4]
  call void @llvm.dbg.value(metadata !{i32 %k.8}, i64 0, metadata !475), !dbg !494 ; [debug line = 131:4] [debug variable = k]
  %.k.1 = select i1 %tmp.126, i32 %k.8, i32 %k.1.lcssa, !dbg !493 ; [#uses=1 type=i32] [debug line = 130:3]
  %i.9 = add nsw i32 %i, -1, !dbg !496            ; [#uses=1 type=i32] [debug line = 113:26]
  call void @llvm.dbg.value(metadata !{i32 %i.9}, i64 0, metadata !497), !dbg !496 ; [debug line = 113:26] [debug variable = i]
  br label %3, !dbg !496                          ; [debug line = 113:26]

.loopexit.loopexit:                               ; preds = %3
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %1
  ret void, !dbg !498                             ; [debug line = 136:1]
}

; [#uses=25]
define internal fastcc void @bigint_copy(i8* %to, i8* %from) nounwind uwtable {
  call void @llvm.dbg.value(metadata !{i8* %to}, i64 0, metadata !499), !dbg !500 ; [debug line = 41:32] [debug variable = to]
  call void @llvm.dbg.value(metadata !{i8* %from}, i64 0, metadata !501), !dbg !502 ; [debug line = 41:55] [debug variable = from]
  call void (...)* @_ssdm_SpecArrayDimSize(i8* %from, i32 256) nounwind, !dbg !503 ; [debug line = 41:66]
  call void (...)* @_ssdm_SpecArrayDimSize(i8* %to, i32 256) nounwind, !dbg !505 ; [debug line = 41:99]
  br label %1, !dbg !506                          ; [debug line = 44:6]

; <label>:1                                       ; preds = %2, %0
  %i = phi i32 [ 0, %0 ], [ %i.10, %2 ]           ; [#uses=3 type=i32]
  %exitcond = icmp eq i32 %i, 256, !dbg !506      ; [#uses=1 type=i1] [debug line = 44:6]
  br i1 %exitcond, label %3, label %2, !dbg !506  ; [debug line = 44:6]

; <label>:2                                       ; preds = %1
  %tmp = sext i32 %i to i64, !dbg !508            ; [#uses=2 type=i64] [debug line = 45:3]
  %from.addr = getelementptr inbounds i8* %from, i64 %tmp, !dbg !508 ; [#uses=1 type=i8*] [debug line = 45:3]
  %from.load = load i8* %from.addr, align 1, !dbg !508 ; [#uses=2 type=i8] [debug line = 45:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %from.load) nounwind
  %to.addr = getelementptr inbounds i8* %to, i64 %tmp, !dbg !508 ; [#uses=1 type=i8*] [debug line = 45:3]
  store i8 %from.load, i8* %to.addr, align 1, !dbg !508 ; [debug line = 45:3]
  %i.10 = add nsw i32 %i, 1, !dbg !510            ; [#uses=1 type=i32] [debug line = 44:22]
  call void @llvm.dbg.value(metadata !{i32 %i.10}, i64 0, metadata !511), !dbg !510 ; [debug line = 44:22] [debug variable = i]
  br label %1, !dbg !510                          ; [debug line = 44:22]

; <label>:3                                       ; preds = %1
  ret void, !dbg !512                             ; [debug line = 49:1]
}

; [#uses=8]
define internal fastcc i32 @bigint_compare(i8* %a, i8* %b) nounwind uwtable {
  %state = alloca [256 x i32], align 16           ; [#uses=5 type=[256 x i32]*]
  call void @llvm.dbg.value(metadata !{i8* %a}, i64 0, metadata !513), !dbg !514 ; [debug line = 55:34] [debug variable = a]
  call void @llvm.dbg.value(metadata !{i8* %b}, i64 0, metadata !515), !dbg !516 ; [debug line = 55:56] [debug variable = b]
  call void (...)* @_ssdm_SpecArrayDimSize(i8* %a, i32 256) nounwind, !dbg !517 ; [debug line = 55:64]
  call void (...)* @_ssdm_SpecArrayDimSize(i8* %b, i32 256) nounwind, !dbg !519 ; [debug line = 55:94]
  call void @llvm.dbg.declare(metadata !{[256 x i32]* %state}, metadata !520), !dbg !522 ; [debug line = 59:6] [debug variable = state]
  br label %1, !dbg !523                          ; [debug line = 60:6]

; <label>:1                                       ; preds = %9, %0
  %i = phi i32 [ 0, %0 ], [ %i.12, %9 ]           ; [#uses=3 type=i32]
  %exitcond = icmp eq i32 %i, 256, !dbg !523      ; [#uses=1 type=i1] [debug line = 60:6]
  br i1 %exitcond, label %10, label %2, !dbg !523 ; [debug line = 60:6]

; <label>:2                                       ; preds = %1
  %tmp.145 = sext i32 %i to i64, !dbg !525        ; [#uses=5 type=i64] [debug line = 61:3]
  %a.addr = getelementptr inbounds i8* %a, i64 %tmp.145, !dbg !525 ; [#uses=1 type=i8*] [debug line = 61:3]
  %a.load = load i8* %a.addr, align 1, !dbg !525  ; [#uses=6 type=i8] [debug line = 61:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %a.load) nounwind
  %b.addr = getelementptr inbounds i8* %b, i64 %tmp.145, !dbg !525 ; [#uses=1 type=i8*] [debug line = 61:3]
  %b.load = load i8* %b.addr, align 1, !dbg !525  ; [#uses=6 type=i8] [debug line = 61:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %b.load) nounwind
  %tmp.146 = icmp ugt i8 %a.load, %b.load, !dbg !525 ; [#uses=1 type=i1] [debug line = 61:3]
  br i1 %tmp.146, label %3, label %4, !dbg !525   ; [debug line = 61:3]

; <label>:3                                       ; preds = %2
  %state.addr.1 = getelementptr inbounds [256 x i32]* %state, i64 0, i64 %tmp.145, !dbg !527 ; [#uses=1 type=i32*] [debug line = 62:4]
  store i32 1, i32* %state.addr.1, align 4, !dbg !527 ; [debug line = 62:4]
  br label %9, !dbg !529                          ; [debug line = 63:3]

; <label>:4                                       ; preds = %2
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %a.load) nounwind
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %b.load) nounwind
  %tmp.147 = icmp ult i8 %a.load, %b.load, !dbg !530 ; [#uses=1 type=i1] [debug line = 63:9]
  br i1 %tmp.147, label %5, label %6, !dbg !530   ; [debug line = 63:9]

; <label>:5                                       ; preds = %4
  %state.addr.2 = getelementptr inbounds [256 x i32]* %state, i64 0, i64 %tmp.145, !dbg !531 ; [#uses=1 type=i32*] [debug line = 64:4]
  store i32 -1, i32* %state.addr.2, align 4, !dbg !531 ; [debug line = 64:4]
  br label %8, !dbg !533                          ; [debug line = 65:3]

; <label>:6                                       ; preds = %4
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %a.load) nounwind
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %b.load) nounwind
  %tmp.149 = icmp eq i8 %a.load, %b.load, !dbg !534 ; [#uses=1 type=i1] [debug line = 65:9]
  br i1 %tmp.149, label %7, label %._crit_edge, !dbg !534 ; [debug line = 65:9]

; <label>:7                                       ; preds = %6
  %state.addr.4 = getelementptr inbounds [256 x i32]* %state, i64 0, i64 %tmp.145, !dbg !535 ; [#uses=1 type=i32*] [debug line = 66:4]
  store i32 0, i32* %state.addr.4, align 4, !dbg !535 ; [debug line = 66:4]
  br label %._crit_edge, !dbg !537                ; [debug line = 67:3]

._crit_edge:                                      ; preds = %7, %6
  br label %8

; <label>:8                                       ; preds = %._crit_edge, %5
  br label %9

; <label>:9                                       ; preds = %8, %3
  %i.12 = add nsw i32 %i, 1, !dbg !538            ; [#uses=1 type=i32] [debug line = 60:22]
  call void @llvm.dbg.value(metadata !{i32 %i.12}, i64 0, metadata !539), !dbg !538 ; [debug line = 60:22] [debug variable = i]
  br label %1, !dbg !538                          ; [debug line = 60:22]

; <label>:10                                      ; preds = %1
  %state.addr = getelementptr inbounds [256 x i32]* %state, i64 0, i64 0, !dbg !540 ; [#uses=1 type=i32*] [debug line = 70:2]
  %state.load = load i32* %state.addr, align 16, !dbg !540 ; [#uses=4 type=i32] [debug line = 70:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %state.load) nounwind
  %tmp = icmp eq i32 %state.load, 0, !dbg !540    ; [#uses=1 type=i1] [debug line = 70:2]
  br i1 %tmp, label %.preheader.preheader, label %11, !dbg !540 ; [debug line = 70:2]

.preheader.preheader:                             ; preds = %10
  br label %.preheader, !dbg !541                 ; [debug line = 74:6]

; <label>:11                                      ; preds = %10
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %state.load) nounwind
  br label %.loopexit, !dbg !543                  ; [debug line = 71:4]

.preheader:                                       ; preds = %14, %.preheader.preheader
  %i.1 = phi i32 [ %i.11, %14 ], [ 0, %.preheader.preheader ] ; [#uses=3 type=i32]
  %flag = phi i32 [ %.flag, %14 ], [ 0, %.preheader.preheader ] ; [#uses=1 type=i32]
  %tmp.148 = icmp slt i32 %i.1, 256, !dbg !541    ; [#uses=1 type=i1] [debug line = 74:6]
  br i1 %tmp.148, label %12, label %.loopexit.loopexit, !dbg !541 ; [debug line = 74:6]

; <label>:12                                      ; preds = %.preheader
  %tmp.150 = sext i32 %i.1 to i64, !dbg !545      ; [#uses=1 type=i64] [debug line = 75:4]
  %state.addr.3 = getelementptr inbounds [256 x i32]* %state, i64 0, i64 %tmp.150, !dbg !545 ; [#uses=1 type=i32*] [debug line = 75:4]
  %state.load.1 = load i32* %state.addr.3, align 4, !dbg !545 ; [#uses=6 type=i32] [debug line = 75:4]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %state.load.1) nounwind
  %tmp.151 = icmp eq i32 %state.load.1, 0, !dbg !545 ; [#uses=1 type=i1] [debug line = 75:4]
  %.flag = select i1 %tmp.151, i32 1, i32 %flag, !dbg !545 ; [#uses=2 type=i32] [debug line = 75:4]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %state.load.1) nounwind
  %tmp.152 = icmp eq i32 %state.load.1, 1, !dbg !547 ; [#uses=1 type=i1] [debug line = 79:4]
  %tmp.153 = icmp eq i32 %.flag, 1, !dbg !547     ; [#uses=2 type=i1] [debug line = 79:4]
  %or.cond = and i1 %tmp.152, %tmp.153, !dbg !547 ; [#uses=1 type=i1] [debug line = 79:4]
  br i1 %or.cond, label %.loopexit.loopexit, label %13, !dbg !547 ; [debug line = 79:4]

; <label>:13                                      ; preds = %12
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %state.load.1) nounwind
  %tmp.154 = icmp eq i32 %state.load.1, -1, !dbg !548 ; [#uses=1 type=i1] [debug line = 83:4]
  %or.cond1 = and i1 %tmp.154, %tmp.153, !dbg !548 ; [#uses=1 type=i1] [debug line = 83:4]
  br i1 %or.cond1, label %.loopexit.loopexit, label %14, !dbg !548 ; [debug line = 83:4]

; <label>:14                                      ; preds = %13
  %i.11 = add nsw i32 %i.1, 1, !dbg !549          ; [#uses=1 type=i32] [debug line = 74:22]
  call void @llvm.dbg.value(metadata !{i32 %i.11}, i64 0, metadata !539), !dbg !549 ; [debug line = 74:22] [debug variable = i]
  br label %.preheader, !dbg !549                 ; [debug line = 74:22]

.loopexit.loopexit:                               ; preds = %13, %12, %.preheader
  %.0.ph = phi i32 [ 0, %.preheader ], [ 1, %12 ], [ -1, %13 ] ; [#uses=1 type=i32]
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %11
  %.0 = phi i32 [ %state.load, %11 ], [ %.0.ph, %.loopexit.loopexit ] ; [#uses=1 type=i32]
  ret i32 %.0, !dbg !550                          ; [debug line = 90:1]
}

; [#uses=2]
define internal fastcc void @bigint_add(i8* %out, i8* %a, i8* %b) nounwind uwtable {
  %tempA = alloca [256 x i8], align 16            ; [#uses=2 type=[256 x i8]*]
  %tempB = alloca [256 x i8], align 16            ; [#uses=2 type=[256 x i8]*]
  call void @llvm.dbg.value(metadata !{i8* %out}, i64 0, metadata !551), !dbg !552 ; [debug line = 182:31] [debug variable = out]
  call void @llvm.dbg.value(metadata !{i8* %a}, i64 0, metadata !553), !dbg !554 ; [debug line = 182:55] [debug variable = a]
  call void @llvm.dbg.value(metadata !{i8* %b}, i64 0, metadata !555), !dbg !556 ; [debug line = 182:77] [debug variable = b]
  call void (...)* @_ssdm_SpecArrayDimSize(i8* %a, i32 256) nounwind, !dbg !557 ; [debug line = 182:85]
  call void (...)* @_ssdm_SpecArrayDimSize(i8* %b, i32 256) nounwind, !dbg !559 ; [debug line = 182:115]
  call void (...)* @_ssdm_SpecArrayDimSize(i8* %out, i32 256) nounwind, !dbg !560 ; [debug line = 182:145]
  call void @llvm.dbg.declare(metadata !{[256 x i8]* %tempA}, metadata !561), !dbg !562 ; [debug line = 189:16] [debug variable = tempA]
  call void @llvm.dbg.declare(metadata !{[256 x i8]* %tempB}, metadata !563), !dbg !564 ; [debug line = 190:16] [debug variable = tempB]
  %tempA.addr = getelementptr inbounds [256 x i8]* %tempA, i64 0, i64 0, !dbg !565 ; [#uses=2 type=i8*] [debug line = 193:2]
  call fastcc void @bigint_zero(i8* %tempA.addr), !dbg !565 ; [debug line = 193:2]
  %tempB.addr = getelementptr inbounds [256 x i8]* %tempB, i64 0, i64 0, !dbg !566 ; [#uses=2 type=i8*] [debug line = 194:2]
  call fastcc void @bigint_zero(i8* %tempB.addr), !dbg !566 ; [debug line = 194:2]
  call fastcc void @bigint_copy(i8* %tempA.addr, i8* %a), !dbg !567 ; [debug line = 197:2]
  call fastcc void @bigint_copy(i8* %tempB.addr, i8* %b), !dbg !568 ; [debug line = 198:2]
  call fastcc void @bigint_zero(i8* %out), !dbg !569 ; [debug line = 200:2]
  br label %1, !dbg !570                          ; [debug line = 202:6]

; <label>:1                                       ; preds = %._crit_edge1, %0
  %i = phi i32 [ 255, %0 ], [ %i.13, %._crit_edge1 ] ; [#uses=5 type=i32]
  %tmp = icmp sgt i32 %i, -1, !dbg !570           ; [#uses=1 type=i1] [debug line = 202:6]
  br i1 %tmp, label %2, label %5, !dbg !570       ; [debug line = 202:6]

; <label>:2                                       ; preds = %1
  %tmp.157 = sext i32 %i to i64, !dbg !572        ; [#uses=3 type=i64] [debug line = 204:3]
  %tempA.addr.7 = getelementptr inbounds [256 x i8]* %tempA, i64 0, i64 %tmp.157, !dbg !572 ; [#uses=1 type=i8*] [debug line = 204:3]
  %tempA.load = load i8* %tempA.addr.7, align 1, !dbg !572 ; [#uses=4 type=i8] [debug line = 204:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %tempA.load) nounwind
  %tempB.addr.3 = getelementptr inbounds [256 x i8]* %tempB, i64 0, i64 %tmp.157, !dbg !572 ; [#uses=1 type=i8*] [debug line = 204:3]
  %tempB.load = load i8* %tempB.addr.3, align 1, !dbg !572 ; [#uses=4 type=i8] [debug line = 204:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %tempB.load) nounwind
  %sum = add i8 %tempB.load, %tempA.load, !dbg !572 ; [#uses=2 type=i8] [debug line = 204:3]
  call void @llvm.dbg.value(metadata !{i8 %sum}, i64 0, metadata !574), !dbg !572 ; [debug line = 204:3] [debug variable = sum]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %tempA.load) nounwind
  %tmp.159 = zext i8 %tempA.load to i32, !dbg !575 ; [#uses=1 type=i32] [debug line = 205:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %tempB.load) nounwind
  %tmp.160 = zext i8 %tempB.load to i32, !dbg !575 ; [#uses=1 type=i32] [debug line = 205:3]
  %tmp.161 = add nsw i32 %tmp.160, %tmp.159, !dbg !575 ; [#uses=1 type=i32] [debug line = 205:3]
  %tmp.162 = lshr i32 %tmp.161, 8, !dbg !575      ; [#uses=1 type=i32] [debug line = 205:3]
  %carry = trunc i32 %tmp.162 to i8, !dbg !575    ; [#uses=2 type=i8] [debug line = 205:3]
  call void @llvm.dbg.value(metadata !{i8 %carry}, i64 0, metadata !576), !dbg !575 ; [debug line = 205:3] [debug variable = carry]
  %out.addr = getelementptr inbounds i8* %out, i64 %tmp.157, !dbg !577 ; [#uses=2 type=i8*] [debug line = 208:3]
  %out.load = load i8* %out.addr, align 1, !dbg !577 ; [#uses=5 type=i8] [debug line = 208:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %out.load) nounwind
  %tmp.163 = zext i8 %out.load to i32, !dbg !577  ; [#uses=1 type=i32] [debug line = 208:3]
  %tmp.164 = zext i8 %sum to i32, !dbg !577       ; [#uses=1 type=i32] [debug line = 208:3]
  %tmp.165 = add nsw i32 %tmp.163, %tmp.164, !dbg !577 ; [#uses=2 type=i32] [debug line = 208:3]
  %tmp.166 = icmp sgt i32 %tmp.165, 255, !dbg !577 ; [#uses=1 type=i1] [debug line = 208:3]
  br i1 %tmp.166, label %3, label %._crit_edge, !dbg !577 ; [debug line = 208:3]

; <label>:3                                       ; preds = %2
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %out.load) nounwind
  %tmp.167 = lshr i32 %tmp.165, 8, !dbg !578      ; [#uses=1 type=i32] [debug line = 209:4]
  %tmp.168 = add nsw i32 %i, -1, !dbg !578        ; [#uses=1 type=i32] [debug line = 209:4]
  %tmp.169 = sext i32 %tmp.168 to i64, !dbg !578  ; [#uses=1 type=i64] [debug line = 209:4]
  %out.addr.3 = getelementptr inbounds i8* %out, i64 %tmp.169, !dbg !578 ; [#uses=2 type=i8*] [debug line = 209:4]
  %out.load.3 = load i8* %out.addr.3, align 1, !dbg !578 ; [#uses=2 type=i8] [debug line = 209:4]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %out.load.3) nounwind
  %tmp.170 = trunc i32 %tmp.167 to i8, !dbg !578  ; [#uses=1 type=i8] [debug line = 209:4]
  %tmp.171 = add i8 %out.load.3, %tmp.170, !dbg !578 ; [#uses=1 type=i8] [debug line = 209:4]
  store i8 %tmp.171, i8* %out.addr.3, align 1, !dbg !578 ; [debug line = 209:4]
  br label %._crit_edge, !dbg !580                ; [debug line = 210:3]

._crit_edge:                                      ; preds = %3, %2
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %out.load) nounwind
  %tmp.172 = add i8 %out.load, %sum, !dbg !581    ; [#uses=1 type=i8] [debug line = 211:3]
  store i8 %tmp.172, i8* %out.addr, align 1, !dbg !581 ; [debug line = 211:3]
  %i.13 = add nsw i32 %i, -1, !dbg !582           ; [#uses=2 type=i32] [debug line = 214:3]
  %tmp.174 = sext i32 %i.13 to i64, !dbg !582     ; [#uses=1 type=i64] [debug line = 214:3]
  %out.addr.4 = getelementptr inbounds i8* %out, i64 %tmp.174, !dbg !582 ; [#uses=2 type=i8*] [debug line = 214:3]
  %out.load.4 = load i8* %out.addr.4, align 1, !dbg !582 ; [#uses=5 type=i8] [debug line = 214:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %out.load.4) nounwind
  %tmp.175 = zext i8 %out.load.4 to i32, !dbg !582 ; [#uses=1 type=i32] [debug line = 214:3]
  %tmp.176 = zext i8 %carry to i32, !dbg !582     ; [#uses=1 type=i32] [debug line = 214:3]
  %tmp.177 = add nsw i32 %tmp.175, %tmp.176, !dbg !582 ; [#uses=2 type=i32] [debug line = 214:3]
  %tmp.178 = icmp sgt i32 %tmp.177, 255, !dbg !582 ; [#uses=1 type=i1] [debug line = 214:3]
  br i1 %tmp.178, label %4, label %._crit_edge1, !dbg !582 ; [debug line = 214:3]

; <label>:4                                       ; preds = %._crit_edge
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %out.load.4) nounwind
  %tmp.179 = lshr i32 %tmp.177, 8, !dbg !583      ; [#uses=1 type=i32] [debug line = 215:4]
  %tmp.180 = add nsw i32 %i, -2, !dbg !583        ; [#uses=1 type=i32] [debug line = 215:4]
  %tmp.181 = sext i32 %tmp.180 to i64, !dbg !583  ; [#uses=1 type=i64] [debug line = 215:4]
  %out.addr.5 = getelementptr inbounds i8* %out, i64 %tmp.181, !dbg !583 ; [#uses=2 type=i8*] [debug line = 215:4]
  %out.load.5 = load i8* %out.addr.5, align 1, !dbg !583 ; [#uses=2 type=i8] [debug line = 215:4]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %out.load.5) nounwind
  %tmp.182 = trunc i32 %tmp.179 to i8, !dbg !583  ; [#uses=1 type=i8] [debug line = 215:4]
  %tmp.183 = add i8 %out.load.5, %tmp.182, !dbg !583 ; [#uses=1 type=i8] [debug line = 215:4]
  store i8 %tmp.183, i8* %out.addr.5, align 1, !dbg !583 ; [debug line = 215:4]
  br label %._crit_edge1, !dbg !585               ; [debug line = 216:3]

._crit_edge1:                                     ; preds = %4, %._crit_edge
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %out.load.4) nounwind
  %tmp.184 = add i8 %out.load.4, %carry, !dbg !586 ; [#uses=1 type=i8] [debug line = 217:3]
  store i8 %tmp.184, i8* %out.addr.4, align 1, !dbg !586 ; [debug line = 217:3]
  call void @llvm.dbg.value(metadata !{i32 %i.13}, i64 0, metadata !587), !dbg !588 ; [debug line = 202:26] [debug variable = i]
  br label %1, !dbg !588                          ; [debug line = 202:26]

; <label>:5                                       ; preds = %1
  ret void, !dbg !589                             ; [debug line = 219:1]
}

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=5]
declare void @_ssdm_op_SpecInterface(...) nounwind

; [#uses=57]
declare void @_ssdm_SpecKeepArrayLoad(...)

; [#uses=30]
declare void @_ssdm_SpecArrayDimSize(...) nounwind

!llvm.dbg.cu = !{!0, !23}
!opencl.kernels = !{!49, !56, !62, !63, !69, !71, !77, !78, !82, !83, !84, !86, !87}
!hls.encrypted.func = !{}

!0 = metadata !{i32 786449, i32 0, i32 1, metadata !"/home/linux/Documents/DLA/fw/hls/BigInt/solution1/.autopilot/db/main.pragma.2.c", metadata !"/home/linux/Documents/DLA/fw/hls", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !13} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"bigint_math", metadata !"bigint_math", metadata !"", metadata !6, i32 7, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i8*, i8*, i8*, i8*)* @bigint_math, null, null, metadata !11, i32 7} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"BigInt/solution1/main.c", metadata !"/home/linux/Documents/DLA/fw/hls", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{null, metadata !9, metadata !9, metadata !9, metadata !9}
!9 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ]
!10 = metadata !{i32 786468, null, metadata !"unsigned char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ]
!11 = metadata !{metadata !12}
!12 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!13 = metadata !{metadata !14}
!14 = metadata !{metadata !15, metadata !18, metadata !19, metadata !20}
!15 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stdin_", metadata !"_IO_2_1_stdin_", metadata !"", metadata !16, i32 320, metadata !17, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!16 = metadata !{i32 786473, metadata !"/usr/include/libio.h", metadata !"/home/linux/Documents/DLA/fw/hls", null} ; [ DW_TAG_file_type ]
!17 = metadata !{i32 786451, null, metadata !"_IO_FILE_plus", metadata !16, i32 318, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_structure_type ]
!18 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stdout_", metadata !"_IO_2_1_stdout_", metadata !"", metadata !16, i32 321, metadata !17, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!19 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stderr_", metadata !"_IO_2_1_stderr_", metadata !"", metadata !16, i32 322, metadata !17, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!20 = metadata !{i32 786484, i32 0, null, metadata !"sys_nerr", metadata !"sys_nerr", metadata !"", metadata !21, i32 26, metadata !22, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!21 = metadata !{i32 786473, metadata !"/usr/include/x86_64-linux-gnu/bits/sys_errlist.h", metadata !"/home/linux/Documents/DLA/fw/hls", null} ; [ DW_TAG_file_type ]
!22 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!23 = metadata !{i32 786449, i32 0, i32 1, metadata !"/home/linux/Documents/DLA/fw/hls/BigInt/solution1/.autopilot/db/bigint.pragma.2.c", metadata !"/home/linux/Documents/DLA/fw/hls", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !24, metadata !13} ; [ DW_TAG_compile_unit ]
!24 = metadata !{metadata !25}
!25 = metadata !{metadata !26, metadata !30, metadata !31, metadata !34, metadata !37, metadata !40, metadata !41, metadata !44, metadata !45, metadata !46, metadata !47, metadata !48}
!26 = metadata !{i32 786478, i32 0, metadata !27, metadata !"bigint_zero", metadata !"bigint_zero", metadata !"", metadata !27, i32 6, metadata !28, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i8*)* @bigint_zero, null, null, metadata !11, i32 6} ; [ DW_TAG_subprogram ]
!27 = metadata !{i32 786473, metadata !"../../bigint/bigint.c", metadata !"/home/linux/Documents/DLA/fw/hls", null} ; [ DW_TAG_file_type ]
!28 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !29, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!29 = metadata !{null, metadata !9}
!30 = metadata !{i32 786478, i32 0, metadata !27, metadata !"bigint_print", metadata !"bigint_print", metadata !"", metadata !27, i32 16, metadata !28, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !11, i32 16} ; [ DW_TAG_subprogram ]
!31 = metadata !{i32 786478, i32 0, metadata !27, metadata !"bigint_copy", metadata !"bigint_copy", metadata !"", metadata !27, i32 41, metadata !32, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i8*, i8*)* @bigint_copy, null, null, metadata !11, i32 41} ; [ DW_TAG_subprogram ]
!32 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !33, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!33 = metadata !{null, metadata !9, metadata !9}
!34 = metadata !{i32 786478, i32 0, metadata !27, metadata !"bigint_compare", metadata !"bigint_compare", metadata !"", metadata !27, i32 55, metadata !35, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i8*, i8*)* @bigint_compare, null, null, metadata !11, i32 55} ; [ DW_TAG_subprogram ]
!35 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !36, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!36 = metadata !{metadata !22, metadata !9, metadata !9}
!37 = metadata !{i32 786478, i32 0, metadata !27, metadata !"bigint_leftshift", metadata !"bigint_leftshift", metadata !"", metadata !27, i32 93, metadata !38, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i8*, i8*, i32)* @bigint_leftshift, null, null, metadata !11, i32 93} ; [ DW_TAG_subprogram ]
!38 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !39, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!39 = metadata !{null, metadata !9, metadata !9, metadata !22}
!40 = metadata !{i32 786478, i32 0, metadata !27, metadata !"bigint_rightshift", metadata !"bigint_rightshift", metadata !"", metadata !27, i32 139, metadata !38, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !11, i32 139} ; [ DW_TAG_subprogram ]
!41 = metadata !{i32 786478, i32 0, metadata !27, metadata !"bigint_add", metadata !"bigint_add", metadata !"", metadata !27, i32 182, metadata !42, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i8*, i8*, i8*)* @bigint_add, null, null, metadata !11, i32 182} ; [ DW_TAG_subprogram ]
!42 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !43, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!43 = metadata !{null, metadata !9, metadata !9, metadata !9}
!44 = metadata !{i32 786478, i32 0, metadata !27, metadata !"bigint_sub", metadata !"bigint_sub", metadata !"", metadata !27, i32 222, metadata !42, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i8*, i8*, i8*)* @bigint_sub, null, null, metadata !11, i32 222} ; [ DW_TAG_subprogram ]
!45 = metadata !{i32 786478, i32 0, metadata !27, metadata !"bigint_mul", metadata !"bigint_mul", metadata !"", metadata !27, i32 280, metadata !42, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i8*, i8*, i8*)* @bigint_mul, null, null, metadata !11, i32 280} ; [ DW_TAG_subprogram ]
!46 = metadata !{i32 786478, i32 0, metadata !27, metadata !"bigint_div", metadata !"bigint_div", metadata !"", metadata !27, i32 343, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !11, i32 343} ; [ DW_TAG_subprogram ]
!47 = metadata !{i32 786478, i32 0, metadata !27, metadata !"bigint_longdiv", metadata !"bigint_longdiv", metadata !"", metadata !27, i32 392, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i8*, i8*, i8*, i8*)* @bigint_longdiv, null, null, metadata !11, i32 392} ; [ DW_TAG_subprogram ]
!48 = metadata !{i32 786478, i32 0, metadata !27, metadata !"bigint_modexp", metadata !"bigint_modexp", metadata !"", metadata !27, i32 539, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i8*, i8*, i8*, i8*)* @bigint_modexp, null, null, metadata !11, i32 539} ; [ DW_TAG_subprogram ]
!49 = metadata !{void (i8*, i8*, i8*, i8*)* @bigint_math, metadata !50, metadata !51, metadata !52, metadata !53, metadata !54, metadata !55}
!50 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 1, i32 1}
!51 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!52 = metadata !{metadata !"kernel_arg_type", metadata !"uchar*", metadata !"uchar*", metadata !"uchar*", metadata !"uchar*"}
!53 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !""}
!54 = metadata !{metadata !"kernel_arg_name", metadata !"a", metadata !"b", metadata !"c", metadata !"d"}
!55 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!56 = metadata !{void (i8*)* @bigint_zero, metadata !57, metadata !58, metadata !59, metadata !60, metadata !61, metadata !55}
!57 = metadata !{metadata !"kernel_arg_addr_space", i32 1}
!58 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!59 = metadata !{metadata !"kernel_arg_type", metadata !"uchar*"}
!60 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!61 = metadata !{metadata !"kernel_arg_name", metadata !"in"}
!62 = metadata !{null, metadata !57, metadata !58, metadata !59, metadata !60, metadata !61, metadata !55}
!63 = metadata !{void (i8*, i8*)* @bigint_copy, metadata !64, metadata !65, metadata !66, metadata !67, metadata !68, metadata !55}
!64 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1}
!65 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!66 = metadata !{metadata !"kernel_arg_type", metadata !"uchar*", metadata !"uchar*"}
!67 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!68 = metadata !{metadata !"kernel_arg_name", metadata !"to", metadata !"from"}
!69 = metadata !{i32 (i8*, i8*)* @bigint_compare, metadata !64, metadata !65, metadata !66, metadata !67, metadata !70, metadata !55}
!70 = metadata !{metadata !"kernel_arg_name", metadata !"a", metadata !"b"}
!71 = metadata !{void (i8*, i8*, i32)* @bigint_leftshift, metadata !72, metadata !73, metadata !74, metadata !75, metadata !76, metadata !55}
!72 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 0}
!73 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!74 = metadata !{metadata !"kernel_arg_type", metadata !"uchar*", metadata !"uchar*", metadata !"int"}
!75 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!76 = metadata !{metadata !"kernel_arg_name", metadata !"out", metadata !"a", metadata !"shift"}
!77 = metadata !{null, metadata !72, metadata !73, metadata !74, metadata !75, metadata !76, metadata !55}
!78 = metadata !{void (i8*, i8*, i8*)* @bigint_add, metadata !79, metadata !73, metadata !80, metadata !75, metadata !81, metadata !55}
!79 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 1}
!80 = metadata !{metadata !"kernel_arg_type", metadata !"uchar*", metadata !"uchar*", metadata !"uchar*"}
!81 = metadata !{metadata !"kernel_arg_name", metadata !"out", metadata !"a", metadata !"b"}
!82 = metadata !{void (i8*, i8*, i8*)* @bigint_sub, metadata !79, metadata !73, metadata !80, metadata !75, metadata !81, metadata !55}
!83 = metadata !{void (i8*, i8*, i8*)* @bigint_mul, metadata !79, metadata !73, metadata !80, metadata !75, metadata !81, metadata !55}
!84 = metadata !{null, metadata !50, metadata !51, metadata !52, metadata !53, metadata !85, metadata !55}
!85 = metadata !{metadata !"kernel_arg_name", metadata !"out", metadata !"out1", metadata !"a", metadata !"b"}
!86 = metadata !{void (i8*, i8*, i8*, i8*)* @bigint_longdiv, metadata !50, metadata !51, metadata !52, metadata !53, metadata !85, metadata !55}
!87 = metadata !{void (i8*, i8*, i8*, i8*)* @bigint_modexp, metadata !50, metadata !51, metadata !52, metadata !53, metadata !88, metadata !55}
!88 = metadata !{metadata !"kernel_arg_name", metadata !"out", metadata !"base", metadata !"exp", metadata !"mod"}
!89 = metadata !{i32 786689, metadata !26, metadata !"in", metadata !27, i32 16777222, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!90 = metadata !{i32 6, i32 32, metadata !26, null}
!91 = metadata !{i32 6, i32 41, metadata !92, null}
!92 = metadata !{i32 786443, metadata !26, i32 6, i32 40, metadata !27, i32 0} ; [ DW_TAG_lexical_block ]
!93 = metadata !{i32 8, i32 6, metadata !94, null}
!94 = metadata !{i32 786443, metadata !92, i32 8, i32 2, metadata !27, i32 1} ; [ DW_TAG_lexical_block ]
!95 = metadata !{i32 10, i32 3, metadata !96, null}
!96 = metadata !{i32 786443, metadata !94, i32 8, i32 26, metadata !27, i32 2} ; [ DW_TAG_lexical_block ]
!97 = metadata !{i32 8, i32 22, metadata !94, null}
!98 = metadata !{i32 786688, metadata !92, metadata !"i", metadata !27, i32 7, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!99 = metadata !{i32 13, i32 1, metadata !92, null}
!100 = metadata !{i32 786689, metadata !44, metadata !"out", metadata !27, i32 16777438, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!101 = metadata !{i32 222, i32 31, metadata !44, null}
!102 = metadata !{i32 786689, metadata !44, metadata !"a", metadata !27, i32 33554654, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!103 = metadata !{i32 222, i32 55, metadata !44, null}
!104 = metadata !{i32 786689, metadata !44, metadata !"b", metadata !27, i32 50331870, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!105 = metadata !{i32 222, i32 77, metadata !44, null}
!106 = metadata !{i32 222, i32 85, metadata !107, null}
!107 = metadata !{i32 786443, metadata !44, i32 222, i32 84, metadata !27, i32 48} ; [ DW_TAG_lexical_block ]
!108 = metadata !{i32 222, i32 115, metadata !107, null}
!109 = metadata !{i32 222, i32 145, metadata !107, null}
!110 = metadata !{i32 786688, metadata !107, metadata !"tempA", metadata !27, i32 228, metadata !111, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!111 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 2048, i64 8, i32 0, i32 0, metadata !10, metadata !112, i32 0, i32 0} ; [ DW_TAG_array_type ]
!112 = metadata !{metadata !113}
!113 = metadata !{i32 786465, i64 0, i64 255}     ; [ DW_TAG_subrange_type ]
!114 = metadata !{i32 228, i32 16, metadata !107, null}
!115 = metadata !{i32 786688, metadata !107, metadata !"tempB", metadata !27, i32 229, metadata !111, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!116 = metadata !{i32 229, i32 16, metadata !107, null}
!117 = metadata !{i32 786688, metadata !107, metadata !"carry", metadata !27, i32 231, metadata !111, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!118 = metadata !{i32 231, i32 16, metadata !107, null}
!119 = metadata !{i32 233, i32 2, metadata !107, null}
!120 = metadata !{i32 234, i32 2, metadata !107, null}
!121 = metadata !{i32 236, i32 2, metadata !107, null}
!122 = metadata !{i32 238, i32 2, metadata !107, null}
!123 = metadata !{i32 239, i32 2, metadata !107, null}
!124 = metadata !{i32 241, i32 2, metadata !107, null}
!125 = metadata !{i32 243, i32 5, metadata !107, null}
!126 = metadata !{i32 247, i32 6, metadata !127, null}
!127 = metadata !{i32 786443, metadata !107, i32 247, i32 2, metadata !27, i32 50} ; [ DW_TAG_lexical_block ]
!128 = metadata !{i32 248, i32 3, metadata !129, null}
!129 = metadata !{i32 786443, metadata !127, i32 247, i32 30, metadata !27, i32 51} ; [ DW_TAG_lexical_block ]
!130 = metadata !{i32 249, i32 4, metadata !131, null}
!131 = metadata !{i32 786443, metadata !129, i32 248, i32 26, metadata !27, i32 52} ; [ DW_TAG_lexical_block ]
!132 = metadata !{i32 250, i32 5, metadata !133, null}
!133 = metadata !{i32 786443, metadata !131, i32 249, i32 23, metadata !27, i32 53} ; [ DW_TAG_lexical_block ]
!134 = metadata !{i32 786688, metadata !107, metadata !"j", metadata !27, i32 226, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!135 = metadata !{i32 251, i32 5, metadata !133, null}
!136 = metadata !{i32 258, i32 5, metadata !133, null}
!137 = metadata !{i32 259, i32 5, metadata !133, null}
!138 = metadata !{i32 260, i32 5, metadata !133, null}
!139 = metadata !{i32 261, i32 6, metadata !140, null}
!140 = metadata !{i32 786443, metadata !133, i32 260, i32 20, metadata !27, i32 55} ; [ DW_TAG_lexical_block ]
!141 = metadata !{i32 262, i32 6, metadata !140, null}
!142 = metadata !{i32 263, i32 5, metadata !140, null}
!143 = metadata !{i32 265, i32 5, metadata !133, null}
!144 = metadata !{i32 266, i32 5, metadata !133, null}
!145 = metadata !{i32 268, i32 4, metadata !133, null}
!146 = metadata !{i32 269, i32 5, metadata !147, null}
!147 = metadata !{i32 786443, metadata !131, i32 268, i32 9, metadata !27, i32 56} ; [ DW_TAG_lexical_block ]
!148 = metadata !{i32 270, i32 5, metadata !147, null}
!149 = metadata !{i32 272, i32 3, metadata !131, null}
!150 = metadata !{i32 274, i32 3, metadata !129, null}
!151 = metadata !{i32 247, i32 26, metadata !127, null}
!152 = metadata !{i32 786688, metadata !107, metadata !"i", metadata !27, i32 225, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!153 = metadata !{i32 277, i32 1, metadata !107, null}
!154 = metadata !{i32 786689, metadata !40, metadata !"out", metadata !27, i32 16777355, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!155 = metadata !{i32 139, i32 38, metadata !40, null}
!156 = metadata !{i32 786689, metadata !40, metadata !"a", metadata !27, i32 33554571, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!157 = metadata !{i32 139, i32 62, metadata !40, null}
!158 = metadata !{i32 139, i32 81, metadata !159, null}
!159 = metadata !{i32 786443, metadata !40, i32 139, i32 80, metadata !27, i32 34} ; [ DW_TAG_lexical_block ]
!160 = metadata !{i32 139, i32 111, metadata !159, null}
!161 = metadata !{i32 145, i32 2, metadata !159, null}
!162 = metadata !{i32 146, i32 3, metadata !163, null}
!163 = metadata !{i32 786443, metadata !159, i32 145, i32 16, metadata !27, i32 35} ; [ DW_TAG_lexical_block ]
!164 = metadata !{i32 147, i32 3, metadata !163, null}
!165 = metadata !{i32 155, i32 2, metadata !159, null}
!166 = metadata !{i32 157, i32 6, metadata !167, null}
!167 = metadata !{i32 786443, metadata !159, i32 157, i32 2, metadata !27, i32 36} ; [ DW_TAG_lexical_block ]
!168 = metadata !{i32 160, i32 4, metadata !169, null}
!169 = metadata !{i32 786443, metadata !170, i32 159, i32 26, metadata !27, i32 39} ; [ DW_TAG_lexical_block ]
!170 = metadata !{i32 786443, metadata !171, i32 159, i32 3, metadata !27, i32 38} ; [ DW_TAG_lexical_block ]
!171 = metadata !{i32 786443, metadata !167, i32 157, i32 26, metadata !27, i32 37} ; [ DW_TAG_lexical_block ]
!172 = metadata !{i32 159, i32 7, metadata !170, null}
!173 = metadata !{i32 786688, metadata !159, metadata !"b", metadata !27, i32 142, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!174 = metadata !{i32 163, i32 4, metadata !169, null}
!175 = metadata !{i32 164, i32 5, metadata !176, null}
!176 = metadata !{i32 786443, metadata !169, i32 163, i32 23, metadata !27, i32 40} ; [ DW_TAG_lexical_block ]
!177 = metadata !{i32 786688, metadata !159, metadata !"k", metadata !27, i32 140, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!178 = metadata !{i32 166, i32 5, metadata !176, null}
!179 = metadata !{i32 167, i32 4, metadata !176, null}
!180 = metadata !{i32 168, i32 5, metadata !181, null}
!181 = metadata !{i32 786443, metadata !169, i32 167, i32 9, metadata !27, i32 41} ; [ DW_TAG_lexical_block ]
!182 = metadata !{i32 171, i32 4, metadata !169, null}
!183 = metadata !{i32 786688, metadata !159, metadata !"outputBit", metadata !27, i32 152, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!184 = metadata !{i32 159, i32 22, metadata !170, null}
!185 = metadata !{i32 786688, metadata !159, metadata !"j", metadata !27, i32 140, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!186 = metadata !{i32 175, i32 3, metadata !171, null}
!187 = metadata !{i32 176, i32 4, metadata !188, null}
!188 = metadata !{i32 786443, metadata !171, i32 175, i32 21, metadata !27, i32 42} ; [ DW_TAG_lexical_block ]
!189 = metadata !{i32 157, i32 22, metadata !167, null}
!190 = metadata !{i32 786688, metadata !159, metadata !"i", metadata !27, i32 140, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!191 = metadata !{i32 180, i32 1, metadata !159, null}
!192 = metadata !{i32 786689, metadata !45, metadata !"out", metadata !27, i32 16777496, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!193 = metadata !{i32 280, i32 31, metadata !45, null}
!194 = metadata !{i32 786689, metadata !45, metadata !"a", metadata !27, i32 33554712, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!195 = metadata !{i32 280, i32 55, metadata !45, null}
!196 = metadata !{i32 786689, metadata !45, metadata !"b", metadata !27, i32 50331928, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!197 = metadata !{i32 280, i32 77, metadata !45, null}
!198 = metadata !{i32 280, i32 85, metadata !199, null}
!199 = metadata !{i32 786443, metadata !45, i32 280, i32 84, metadata !27, i32 57} ; [ DW_TAG_lexical_block ]
!200 = metadata !{i32 280, i32 115, metadata !199, null}
!201 = metadata !{i32 280, i32 145, metadata !199, null}
!202 = metadata !{i32 786688, metadata !199, metadata !"sum", metadata !27, i32 287, metadata !111, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!203 = metadata !{i32 287, i32 16, metadata !199, null}
!204 = metadata !{i32 786688, metadata !199, metadata !"tempA", metadata !27, i32 289, metadata !111, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!205 = metadata !{i32 289, i32 16, metadata !199, null}
!206 = metadata !{i32 786688, metadata !199, metadata !"tempB", metadata !27, i32 290, metadata !111, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!207 = metadata !{i32 290, i32 16, metadata !199, null}
!208 = metadata !{i32 299, i32 2, metadata !199, null}
!209 = metadata !{i32 300, i32 2, metadata !199, null}
!210 = metadata !{i32 302, i32 2, metadata !199, null}
!211 = metadata !{i32 303, i32 2, metadata !199, null}
!212 = metadata !{i32 305, i32 2, metadata !199, null}
!213 = metadata !{i32 306, i32 2, metadata !199, null}
!214 = metadata !{i32 309, i32 6, metadata !215, null}
!215 = metadata !{i32 786443, metadata !199, i32 309, i32 2, metadata !27, i32 58} ; [ DW_TAG_lexical_block ]
!216 = metadata !{i32 312, i32 7, metadata !217, null}
!217 = metadata !{i32 786443, metadata !218, i32 312, i32 3, metadata !27, i32 60} ; [ DW_TAG_lexical_block ]
!218 = metadata !{i32 786443, metadata !215, i32 309, i32 26, metadata !27, i32 59} ; [ DW_TAG_lexical_block ]
!219 = metadata !{i32 786688, metadata !199, metadata !"k", metadata !27, i32 297, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!220 = metadata !{i32 315, i32 4, metadata !221, null}
!221 = metadata !{i32 786443, metadata !217, i32 312, i32 49, metadata !27, i32 61} ; [ DW_TAG_lexical_block ]
!222 = metadata !{i32 316, i32 4, metadata !221, null}
!223 = metadata !{i32 786688, metadata !199, metadata !"prod", metadata !27, i32 283, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!224 = metadata !{i32 786688, metadata !199, metadata !"carry", metadata !27, i32 284, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!225 = metadata !{i32 318, i32 4, metadata !221, null}
!226 = metadata !{i32 320, i32 5, metadata !227, null}
!227 = metadata !{i32 786443, metadata !221, i32 318, i32 40, metadata !27, i32 62} ; [ DW_TAG_lexical_block ]
!228 = metadata !{i32 321, i32 6, metadata !229, null}
!229 = metadata !{i32 786443, metadata !227, i32 320, i32 29, metadata !27, i32 63} ; [ DW_TAG_lexical_block ]
!230 = metadata !{i32 322, i32 5, metadata !229, null}
!231 = metadata !{i32 324, i32 5, metadata !227, null}
!232 = metadata !{i32 327, i32 5, metadata !227, null}
!233 = metadata !{i32 328, i32 6, metadata !234, null}
!234 = metadata !{i32 786443, metadata !227, i32 327, i32 32, metadata !27, i32 64} ; [ DW_TAG_lexical_block ]
!235 = metadata !{i32 329, i32 5, metadata !234, null}
!236 = metadata !{i32 331, i32 5, metadata !227, null}
!237 = metadata !{i32 332, i32 4, metadata !227, null}
!238 = metadata !{i32 312, i32 40, metadata !217, null}
!239 = metadata !{i32 786688, metadata !199, metadata !"j", metadata !27, i32 294, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!240 = metadata !{i32 336, i32 3, metadata !218, null}
!241 = metadata !{i32 337, i32 3, metadata !218, null}
!242 = metadata !{i32 309, i32 22, metadata !215, null}
!243 = metadata !{i32 786688, metadata !199, metadata !"i", metadata !27, i32 293, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!244 = metadata !{i32 340, i32 1, metadata !199, null}
!245 = metadata !{i32 786689, metadata !48, metadata !"out", metadata !27, i32 16777755, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!246 = metadata !{i32 539, i32 34, metadata !48, null}
!247 = metadata !{i32 786689, metadata !48, metadata !"base", metadata !27, i32 33554971, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!248 = metadata !{i32 539, i32 58, metadata !48, null}
!249 = metadata !{i32 786689, metadata !48, metadata !"exp", metadata !27, i32 50332187, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!250 = metadata !{i32 539, i32 83, metadata !48, null}
!251 = metadata !{i32 786689, metadata !48, metadata !"mod", metadata !27, i32 67109403, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!252 = metadata !{i32 539, i32 107, metadata !48, null}
!253 = metadata !{i32 539, i32 117, metadata !254, null}
!254 = metadata !{i32 786443, metadata !48, i32 539, i32 116, metadata !27, i32 91} ; [ DW_TAG_lexical_block ]
!255 = metadata !{i32 539, i32 149, metadata !254, null}
!256 = metadata !{i32 539, i32 181, metadata !254, null}
!257 = metadata !{i32 539, i32 213, metadata !254, null}
!258 = metadata !{i32 786688, metadata !254, metadata !"zero", metadata !27, i32 542, metadata !111, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!259 = metadata !{i32 542, i32 16, metadata !254, null}
!260 = metadata !{i32 786688, metadata !254, metadata !"one", metadata !27, i32 543, metadata !111, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!261 = metadata !{i32 543, i32 16, metadata !254, null}
!262 = metadata !{i32 786688, metadata !254, metadata !"two", metadata !27, i32 544, metadata !111, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!263 = metadata !{i32 544, i32 16, metadata !254, null}
!264 = metadata !{i32 786688, metadata !254, metadata !"temp", metadata !27, i32 546, metadata !111, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!265 = metadata !{i32 546, i32 16, metadata !254, null}
!266 = metadata !{i32 786688, metadata !254, metadata !"temp1", metadata !27, i32 547, metadata !111, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!267 = metadata !{i32 547, i32 16, metadata !254, null}
!268 = metadata !{i32 786688, metadata !254, metadata !"temp2", metadata !27, i32 548, metadata !111, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!269 = metadata !{i32 548, i32 16, metadata !254, null}
!270 = metadata !{i32 786688, metadata !254, metadata !"tempBase", metadata !27, i32 550, metadata !111, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!271 = metadata !{i32 550, i32 16, metadata !254, null}
!272 = metadata !{i32 786688, metadata !254, metadata !"tempExp", metadata !27, i32 551, metadata !111, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!273 = metadata !{i32 551, i32 16, metadata !254, null}
!274 = metadata !{i32 786688, metadata !254, metadata !"tempMod", metadata !27, i32 552, metadata !111, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!275 = metadata !{i32 552, i32 16, metadata !254, null}
!276 = metadata !{i32 554, i32 2, metadata !254, null}
!277 = metadata !{i32 555, i32 2, metadata !254, null}
!278 = metadata !{i32 556, i32 2, metadata !254, null}
!279 = metadata !{i32 558, i32 2, metadata !254, null}
!280 = metadata !{i32 559, i32 2, metadata !254, null}
!281 = metadata !{i32 560, i32 2, metadata !254, null}
!282 = metadata !{i32 562, i32 2, metadata !254, null}
!283 = metadata !{i32 563, i32 2, metadata !254, null}
!284 = metadata !{i32 564, i32 2, metadata !254, null}
!285 = metadata !{i32 566, i32 2, metadata !254, null}
!286 = metadata !{i32 567, i32 2, metadata !254, null}
!287 = metadata !{i32 568, i32 2, metadata !254, null}
!288 = metadata !{i32 570, i32 2, metadata !254, null}
!289 = metadata !{i32 571, i32 2, metadata !254, null}
!290 = metadata !{i32 572, i32 2, metadata !254, null}
!291 = metadata !{i32 574, i32 2, metadata !254, null}
!292 = metadata !{i32 575, i32 5, metadata !254, null}
!293 = metadata !{i32 786688, metadata !254, metadata !"result", metadata !27, i32 579, metadata !111, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!294 = metadata !{i32 579, i32 16, metadata !254, null}
!295 = metadata !{i32 580, i32 2, metadata !254, null}
!296 = metadata !{i32 582, i32 2, metadata !254, null}
!297 = metadata !{i32 583, i32 2, metadata !254, null}
!298 = metadata !{i32 585, i32 2, metadata !254, null}
!299 = metadata !{i32 586, i32 2, metadata !254, null}
!300 = metadata !{i32 588, i32 2, metadata !254, null}
!301 = metadata !{i32 588, i32 8, metadata !254, null}
!302 = metadata !{i32 589, i32 3, metadata !303, null}
!303 = metadata !{i32 786443, metadata !254, i32 588, i32 43, metadata !27, i32 93} ; [ DW_TAG_lexical_block ]
!304 = metadata !{i32 590, i32 3, metadata !303, null}
!305 = metadata !{i32 591, i32 3, metadata !303, null}
!306 = metadata !{i32 593, i32 6, metadata !303, null}
!307 = metadata !{i32 594, i32 4, metadata !308, null}
!308 = metadata !{i32 786443, metadata !303, i32 593, i32 38, metadata !27, i32 94} ; [ DW_TAG_lexical_block ]
!309 = metadata !{i32 596, i32 4, metadata !308, null}
!310 = metadata !{i32 598, i32 4, metadata !308, null}
!311 = metadata !{i32 600, i32 3, metadata !308, null}
!312 = metadata !{i32 602, i32 3, metadata !303, null}
!313 = metadata !{i32 603, i32 3, metadata !303, null}
!314 = metadata !{i32 605, i32 3, metadata !303, null}
!315 = metadata !{i32 606, i32 3, metadata !303, null}
!316 = metadata !{i32 608, i32 3, metadata !303, null}
!317 = metadata !{i32 609, i32 3, metadata !303, null}
!318 = metadata !{i32 610, i32 3, metadata !303, null}
!319 = metadata !{i32 612, i32 3, metadata !303, null}
!320 = metadata !{i32 613, i32 3, metadata !303, null}
!321 = metadata !{i32 614, i32 3, metadata !303, null}
!322 = metadata !{i32 615, i32 2, metadata !303, null}
!323 = metadata !{i32 617, i32 2, metadata !254, null}
!324 = metadata !{i32 619, i32 1, metadata !254, null}
!325 = metadata !{i32 786689, metadata !5, metadata !"a", metadata !6, i32 16777223, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!326 = metadata !{i32 7, i32 32, metadata !5, null}
!327 = metadata !{i32 786689, metadata !5, metadata !"b", metadata !6, i32 33554439, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!328 = metadata !{i32 7, i32 54, metadata !5, null}
!329 = metadata !{i32 786689, metadata !5, metadata !"c", metadata !6, i32 50331655, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!330 = metadata !{i32 7, i32 76, metadata !5, null}
!331 = metadata !{i32 786689, metadata !5, metadata !"d", metadata !6, i32 67108871, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!332 = metadata !{i32 7, i32 98, metadata !5, null}
!333 = metadata !{i32 7, i32 106, metadata !334, null}
!334 = metadata !{i32 786443, metadata !5, i32 7, i32 105, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!335 = metadata !{i32 7, i32 136, metadata !334, null}
!336 = metadata !{i32 7, i32 166, metadata !334, null}
!337 = metadata !{i32 7, i32 196, metadata !334, null}
!338 = metadata !{i32 8, i32 1, metadata !334, null}
!339 = metadata !{i32 9, i32 1, metadata !334, null}
!340 = metadata !{i32 10, i32 1, metadata !334, null}
!341 = metadata !{i32 11, i32 1, metadata !334, null}
!342 = metadata !{i32 12, i32 1, metadata !334, null}
!343 = metadata !{i32 14, i32 2, metadata !334, null}
!344 = metadata !{i32 15, i32 2, metadata !334, null}
!345 = metadata !{i32 16, i32 1, metadata !334, null}
!346 = metadata !{i32 786689, metadata !47, metadata !"out", metadata !27, i32 16777608, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!347 = metadata !{i32 392, i32 35, metadata !47, null}
!348 = metadata !{i32 786689, metadata !47, metadata !"out1", metadata !27, i32 33554824, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!349 = metadata !{i32 392, i32 59, metadata !47, null}
!350 = metadata !{i32 786689, metadata !47, metadata !"a", metadata !27, i32 50332040, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!351 = metadata !{i32 392, i32 84, metadata !47, null}
!352 = metadata !{i32 786689, metadata !47, metadata !"b", metadata !27, i32 67109256, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!353 = metadata !{i32 392, i32 106, metadata !47, null}
!354 = metadata !{i32 392, i32 114, metadata !355, null}
!355 = metadata !{i32 786443, metadata !47, i32 392, i32 113, metadata !27, i32 69} ; [ DW_TAG_lexical_block ]
!356 = metadata !{i32 392, i32 144, metadata !355, null}
!357 = metadata !{i32 392, i32 174, metadata !355, null}
!358 = metadata !{i32 392, i32 207, metadata !355, null}
!359 = metadata !{i32 786688, metadata !355, metadata !"tempA", metadata !27, i32 398, metadata !111, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!360 = metadata !{i32 398, i32 16, metadata !355, null}
!361 = metadata !{i32 786688, metadata !355, metadata !"tempB", metadata !27, i32 399, metadata !111, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!362 = metadata !{i32 399, i32 16, metadata !355, null}
!363 = metadata !{i32 407, i32 2, metadata !355, null}
!364 = metadata !{i32 408, i32 2, metadata !355, null}
!365 = metadata !{i32 412, i32 2, metadata !355, null}
!366 = metadata !{i32 413, i32 2, metadata !355, null}
!367 = metadata !{i32 418, i32 2, metadata !355, null}
!368 = metadata !{i32 419, i32 2, metadata !355, null}
!369 = metadata !{i32 421, i32 5, metadata !355, null}
!370 = metadata !{i32 425, i32 5, metadata !355, null}
!371 = metadata !{i32 426, i32 3, metadata !372, null}
!372 = metadata !{i32 786443, metadata !355, i32 425, i32 37, metadata !27, i32 71} ; [ DW_TAG_lexical_block ]
!373 = metadata !{i32 427, i32 3, metadata !372, null}
!374 = metadata !{i32 428, i32 3, metadata !372, null}
!375 = metadata !{i32 432, i32 6, metadata !355, null}
!376 = metadata !{i32 786688, metadata !355, metadata !"i", metadata !27, i32 395, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!377 = metadata !{i32 433, i32 2, metadata !355, null}
!378 = metadata !{i32 434, i32 3, metadata !379, null}
!379 = metadata !{i32 786443, metadata !355, i32 433, i32 13, metadata !27, i32 72} ; [ DW_TAG_lexical_block ]
!380 = metadata !{i32 435, i32 3, metadata !379, null}
!381 = metadata !{i32 436, i32 3, metadata !379, null}
!382 = metadata !{i32 439, i32 2, metadata !355, null}
!383 = metadata !{i32 448, i32 6, metadata !384, null}
!384 = metadata !{i32 786443, metadata !355, i32 448, i32 2, metadata !27, i32 74} ; [ DW_TAG_lexical_block ]
!385 = metadata !{i32 440, i32 3, metadata !386, null}
!386 = metadata !{i32 786443, metadata !355, i32 439, i32 12, metadata !27, i32 73} ; [ DW_TAG_lexical_block ]
!387 = metadata !{i32 441, i32 3, metadata !386, null}
!388 = metadata !{i32 442, i32 3, metadata !386, null}
!389 = metadata !{i32 449, i32 3, metadata !390, null}
!390 = metadata !{i32 786443, metadata !384, i32 448, i32 26, metadata !27, i32 75} ; [ DW_TAG_lexical_block ]
!391 = metadata !{i32 451, i32 5, metadata !392, null}
!392 = metadata !{i32 786443, metadata !393, i32 450, i32 26, metadata !27, i32 78} ; [ DW_TAG_lexical_block ]
!393 = metadata !{i32 786443, metadata !394, i32 450, i32 4, metadata !27, i32 77} ; [ DW_TAG_lexical_block ]
!394 = metadata !{i32 786443, metadata !390, i32 449, i32 16, metadata !27, i32 76} ; [ DW_TAG_lexical_block ]
!395 = metadata !{i32 450, i32 8, metadata !393, null}
!396 = metadata !{i32 456, i32 5, metadata !392, null}
!397 = metadata !{i32 786688, metadata !355, metadata !"aMSB", metadata !27, i32 445, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!398 = metadata !{i32 450, i32 22, metadata !393, null}
!399 = metadata !{i32 786688, metadata !355, metadata !"j", metadata !27, i32 395, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!400 = metadata !{i32 460, i32 3, metadata !390, null}
!401 = metadata !{i32 465, i32 3, metadata !390, null}
!402 = metadata !{i32 448, i32 22, metadata !384, null}
!403 = metadata !{i32 471, i32 6, metadata !404, null}
!404 = metadata !{i32 786443, metadata !355, i32 471, i32 2, metadata !27, i32 81} ; [ DW_TAG_lexical_block ]
!405 = metadata !{i32 473, i32 3, metadata !406, null}
!406 = metadata !{i32 786443, metadata !404, i32 471, i32 26, metadata !27, i32 82} ; [ DW_TAG_lexical_block ]
!407 = metadata !{i32 475, i32 5, metadata !408, null}
!408 = metadata !{i32 786443, metadata !409, i32 474, i32 26, metadata !27, i32 85} ; [ DW_TAG_lexical_block ]
!409 = metadata !{i32 786443, metadata !410, i32 474, i32 4, metadata !27, i32 84} ; [ DW_TAG_lexical_block ]
!410 = metadata !{i32 786443, metadata !406, i32 473, i32 16, metadata !27, i32 83} ; [ DW_TAG_lexical_block ]
!411 = metadata !{i32 474, i32 8, metadata !409, null}
!412 = metadata !{i32 479, i32 6, metadata !408, null}
!413 = metadata !{i32 786688, metadata !355, metadata !"bMSB", metadata !27, i32 446, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!414 = metadata !{i32 474, i32 22, metadata !409, null}
!415 = metadata !{i32 482, i32 3, metadata !406, null}
!416 = metadata !{i32 485, i32 3, metadata !406, null}
!417 = metadata !{i32 471, i32 22, metadata !404, null}
!418 = metadata !{i32 786688, metadata !355, metadata !"temp", metadata !27, i32 489, metadata !111, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!419 = metadata !{i32 489, i32 16, metadata !355, null}
!420 = metadata !{i32 786688, metadata !355, metadata !"d", metadata !27, i32 492, metadata !111, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!421 = metadata !{i32 492, i32 16, metadata !355, null}
!422 = metadata !{i32 493, i32 2, metadata !355, null}
!423 = metadata !{i32 494, i32 2, metadata !355, null}
!424 = metadata !{i32 496, i32 2, metadata !355, null}
!425 = metadata !{i32 497, i32 2, metadata !355, null}
!426 = metadata !{i32 786688, metadata !355, metadata !"quot", metadata !27, i32 499, metadata !111, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!427 = metadata !{i32 499, i32 16, metadata !355, null}
!428 = metadata !{i32 500, i32 2, metadata !355, null}
!429 = metadata !{i32 786688, metadata !355, metadata !"bitPlace", metadata !27, i32 502, metadata !111, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!430 = metadata !{i32 502, i32 16, metadata !355, null}
!431 = metadata !{i32 503, i32 2, metadata !355, null}
!432 = metadata !{i32 505, i32 2, metadata !355, null}
!433 = metadata !{i32 507, i32 6, metadata !434, null}
!434 = metadata !{i32 786443, metadata !355, i32 507, i32 2, metadata !27, i32 88} ; [ DW_TAG_lexical_block ]
!435 = metadata !{i32 508, i32 7, metadata !436, null}
!436 = metadata !{i32 786443, metadata !434, i32 507, i32 34, metadata !27, i32 89} ; [ DW_TAG_lexical_block ]
!437 = metadata !{i32 510, i32 3, metadata !436, null}
!438 = metadata !{i32 511, i32 4, metadata !439, null}
!439 = metadata !{i32 786443, metadata !436, i32 510, i32 23, metadata !27, i32 90} ; [ DW_TAG_lexical_block ]
!440 = metadata !{i32 512, i32 4, metadata !439, null}
!441 = metadata !{i32 514, i32 4, metadata !439, null}
!442 = metadata !{i32 515, i32 4, metadata !439, null}
!443 = metadata !{i32 518, i32 3, metadata !439, null}
!444 = metadata !{i32 520, i32 3, metadata !436, null}
!445 = metadata !{i32 521, i32 3, metadata !436, null}
!446 = metadata !{i32 523, i32 3, metadata !436, null}
!447 = metadata !{i32 524, i32 3, metadata !436, null}
!448 = metadata !{i32 507, i32 30, metadata !434, null}
!449 = metadata !{i32 528, i32 2, metadata !355, null}
!450 = metadata !{i32 529, i32 2, metadata !355, null}
!451 = metadata !{i32 530, i32 2, metadata !355, null}
!452 = metadata !{i32 533, i32 1, metadata !355, null}
!453 = metadata !{i32 786689, metadata !37, metadata !"out", metadata !27, i32 16777309, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!454 = metadata !{i32 93, i32 37, metadata !37, null}
!455 = metadata !{i32 786689, metadata !37, metadata !"a", metadata !27, i32 33554525, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!456 = metadata !{i32 93, i32 61, metadata !37, null}
!457 = metadata !{i32 786689, metadata !37, metadata !"shift", metadata !27, i32 50331741, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!458 = metadata !{i32 93, i32 73, metadata !37, null}
!459 = metadata !{i32 93, i32 80, metadata !460, null}
!460 = metadata !{i32 786443, metadata !37, i32 93, i32 79, metadata !27, i32 25} ; [ DW_TAG_lexical_block ]
!461 = metadata !{i32 93, i32 110, metadata !460, null}
!462 = metadata !{i32 101, i32 2, metadata !460, null}
!463 = metadata !{i32 102, i32 3, metadata !464, null}
!464 = metadata !{i32 786443, metadata !460, i32 101, i32 16, metadata !27, i32 26} ; [ DW_TAG_lexical_block ]
!465 = metadata !{i32 103, i32 3, metadata !464, null}
!466 = metadata !{i32 106, i32 21, metadata !460, null}
!467 = metadata !{i32 786688, metadata !460, metadata !"start", metadata !27, i32 106, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!468 = metadata !{i32 107, i32 26, metadata !460, null}
!469 = metadata !{i32 786688, metadata !460, metadata !"outputBit", metadata !27, i32 108, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!470 = metadata !{i32 114, i32 3, metadata !471, null}
!471 = metadata !{i32 786443, metadata !472, i32 113, i32 30, metadata !27, i32 28} ; [ DW_TAG_lexical_block ]
!472 = metadata !{i32 786443, metadata !460, i32 113, i32 2, metadata !27, i32 27} ; [ DW_TAG_lexical_block ]
!473 = metadata !{i32 786688, metadata !460, metadata !"bitStart", metadata !27, i32 107, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!474 = metadata !{i32 110, i32 2, metadata !460, null}
!475 = metadata !{i32 786688, metadata !460, metadata !"k", metadata !27, i32 94, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!476 = metadata !{i32 111, i32 2, metadata !460, null}
!477 = metadata !{i32 113, i32 6, metadata !472, null}
!478 = metadata !{i32 116, i32 4, metadata !479, null}
!479 = metadata !{i32 786443, metadata !480, i32 115, i32 25, metadata !27, i32 30} ; [ DW_TAG_lexical_block ]
!480 = metadata !{i32 786443, metadata !471, i32 115, i32 3, metadata !27, i32 29} ; [ DW_TAG_lexical_block ]
!481 = metadata !{i32 115, i32 7, metadata !480, null}
!482 = metadata !{i32 786688, metadata !460, metadata !"b", metadata !27, i32 96, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!483 = metadata !{i32 118, i32 4, metadata !479, null}
!484 = metadata !{i32 119, i32 5, metadata !485, null}
!485 = metadata !{i32 786443, metadata !479, i32 118, i32 22, metadata !27, i32 31} ; [ DW_TAG_lexical_block ]
!486 = metadata !{i32 121, i32 5, metadata !485, null}
!487 = metadata !{i32 122, i32 4, metadata !485, null}
!488 = metadata !{i32 123, i32 5, metadata !489, null}
!489 = metadata !{i32 786443, metadata !479, i32 122, i32 9, metadata !27, i32 32} ; [ DW_TAG_lexical_block ]
!490 = metadata !{i32 126, i32 4, metadata !479, null}
!491 = metadata !{i32 115, i32 21, metadata !480, null}
!492 = metadata !{i32 786688, metadata !460, metadata !"j", metadata !27, i32 94, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!493 = metadata !{i32 130, i32 3, metadata !471, null}
!494 = metadata !{i32 131, i32 4, metadata !495, null}
!495 = metadata !{i32 786443, metadata !471, i32 130, i32 21, metadata !27, i32 33} ; [ DW_TAG_lexical_block ]
!496 = metadata !{i32 113, i32 26, metadata !472, null}
!497 = metadata !{i32 786688, metadata !460, metadata !"i", metadata !27, i32 94, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!498 = metadata !{i32 136, i32 1, metadata !460, null}
!499 = metadata !{i32 786689, metadata !31, metadata !"to", metadata !27, i32 16777257, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!500 = metadata !{i32 41, i32 32, metadata !31, null}
!501 = metadata !{i32 786689, metadata !31, metadata !"from", metadata !27, i32 33554473, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!502 = metadata !{i32 41, i32 55, metadata !31, null}
!503 = metadata !{i32 41, i32 66, metadata !504, null}
!504 = metadata !{i32 786443, metadata !31, i32 41, i32 65, metadata !27, i32 10} ; [ DW_TAG_lexical_block ]
!505 = metadata !{i32 41, i32 99, metadata !504, null}
!506 = metadata !{i32 44, i32 6, metadata !507, null}
!507 = metadata !{i32 786443, metadata !504, i32 44, i32 2, metadata !27, i32 11} ; [ DW_TAG_lexical_block ]
!508 = metadata !{i32 45, i32 3, metadata !509, null}
!509 = metadata !{i32 786443, metadata !507, i32 44, i32 26, metadata !27, i32 12} ; [ DW_TAG_lexical_block ]
!510 = metadata !{i32 44, i32 22, metadata !507, null}
!511 = metadata !{i32 786688, metadata !504, metadata !"i", metadata !27, i32 42, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!512 = metadata !{i32 49, i32 1, metadata !504, null}
!513 = metadata !{i32 786689, metadata !34, metadata !"a", metadata !27, i32 16777271, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!514 = metadata !{i32 55, i32 34, metadata !34, null}
!515 = metadata !{i32 786689, metadata !34, metadata !"b", metadata !27, i32 33554487, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!516 = metadata !{i32 55, i32 56, metadata !34, null}
!517 = metadata !{i32 55, i32 64, metadata !518, null}
!518 = metadata !{i32 786443, metadata !34, i32 55, i32 63, metadata !27, i32 13} ; [ DW_TAG_lexical_block ]
!519 = metadata !{i32 55, i32 94, metadata !518, null}
!520 = metadata !{i32 786688, metadata !518, metadata !"state", metadata !27, i32 59, metadata !521, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!521 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 8192, i64 32, i32 0, i32 0, metadata !22, metadata !112, i32 0, i32 0} ; [ DW_TAG_array_type ]
!522 = metadata !{i32 59, i32 6, metadata !518, null}
!523 = metadata !{i32 60, i32 6, metadata !524, null}
!524 = metadata !{i32 786443, metadata !518, i32 60, i32 2, metadata !27, i32 14} ; [ DW_TAG_lexical_block ]
!525 = metadata !{i32 61, i32 3, metadata !526, null}
!526 = metadata !{i32 786443, metadata !524, i32 60, i32 26, metadata !27, i32 15} ; [ DW_TAG_lexical_block ]
!527 = metadata !{i32 62, i32 4, metadata !528, null}
!528 = metadata !{i32 786443, metadata !526, i32 61, i32 18, metadata !27, i32 16} ; [ DW_TAG_lexical_block ]
!529 = metadata !{i32 63, i32 3, metadata !528, null}
!530 = metadata !{i32 63, i32 9, metadata !526, null}
!531 = metadata !{i32 64, i32 4, metadata !532, null}
!532 = metadata !{i32 786443, metadata !526, i32 63, i32 24, metadata !27, i32 17} ; [ DW_TAG_lexical_block ]
!533 = metadata !{i32 65, i32 3, metadata !532, null}
!534 = metadata !{i32 65, i32 9, metadata !526, null}
!535 = metadata !{i32 66, i32 4, metadata !536, null}
!536 = metadata !{i32 786443, metadata !526, i32 65, i32 25, metadata !27, i32 18} ; [ DW_TAG_lexical_block ]
!537 = metadata !{i32 67, i32 3, metadata !536, null}
!538 = metadata !{i32 60, i32 22, metadata !524, null}
!539 = metadata !{i32 786688, metadata !518, metadata !"i", metadata !27, i32 56, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!540 = metadata !{i32 70, i32 2, metadata !518, null}
!541 = metadata !{i32 74, i32 6, metadata !542, null}
!542 = metadata !{i32 786443, metadata !518, i32 74, i32 2, metadata !27, i32 20} ; [ DW_TAG_lexical_block ]
!543 = metadata !{i32 71, i32 4, metadata !544, null}
!544 = metadata !{i32 786443, metadata !518, i32 70, i32 19, metadata !27, i32 19} ; [ DW_TAG_lexical_block ]
!545 = metadata !{i32 75, i32 4, metadata !546, null}
!546 = metadata !{i32 786443, metadata !542, i32 74, i32 26, metadata !27, i32 21} ; [ DW_TAG_lexical_block ]
!547 = metadata !{i32 79, i32 4, metadata !546, null}
!548 = metadata !{i32 83, i32 4, metadata !546, null}
!549 = metadata !{i32 74, i32 22, metadata !542, null}
!550 = metadata !{i32 90, i32 1, metadata !518, null}
!551 = metadata !{i32 786689, metadata !41, metadata !"out", metadata !27, i32 16777398, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!552 = metadata !{i32 182, i32 31, metadata !41, null}
!553 = metadata !{i32 786689, metadata !41, metadata !"a", metadata !27, i32 33554614, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!554 = metadata !{i32 182, i32 55, metadata !41, null}
!555 = metadata !{i32 786689, metadata !41, metadata !"b", metadata !27, i32 50331830, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!556 = metadata !{i32 182, i32 77, metadata !41, null}
!557 = metadata !{i32 182, i32 85, metadata !558, null}
!558 = metadata !{i32 786443, metadata !41, i32 182, i32 84, metadata !27, i32 43} ; [ DW_TAG_lexical_block ]
!559 = metadata !{i32 182, i32 115, metadata !558, null}
!560 = metadata !{i32 182, i32 145, metadata !558, null}
!561 = metadata !{i32 786688, metadata !558, metadata !"tempA", metadata !27, i32 189, metadata !111, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!562 = metadata !{i32 189, i32 16, metadata !558, null}
!563 = metadata !{i32 786688, metadata !558, metadata !"tempB", metadata !27, i32 190, metadata !111, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!564 = metadata !{i32 190, i32 16, metadata !558, null}
!565 = metadata !{i32 193, i32 2, metadata !558, null}
!566 = metadata !{i32 194, i32 2, metadata !558, null}
!567 = metadata !{i32 197, i32 2, metadata !558, null}
!568 = metadata !{i32 198, i32 2, metadata !558, null}
!569 = metadata !{i32 200, i32 2, metadata !558, null}
!570 = metadata !{i32 202, i32 6, metadata !571, null}
!571 = metadata !{i32 786443, metadata !558, i32 202, i32 2, metadata !27, i32 44} ; [ DW_TAG_lexical_block ]
!572 = metadata !{i32 204, i32 3, metadata !573, null}
!573 = metadata !{i32 786443, metadata !571, i32 202, i32 30, metadata !27, i32 45} ; [ DW_TAG_lexical_block ]
!574 = metadata !{i32 786688, metadata !558, metadata !"sum", metadata !27, i32 184, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!575 = metadata !{i32 205, i32 3, metadata !573, null}
!576 = metadata !{i32 786688, metadata !558, metadata !"carry", metadata !27, i32 185, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!577 = metadata !{i32 208, i32 3, metadata !573, null}
!578 = metadata !{i32 209, i32 4, metadata !579, null}
!579 = metadata !{i32 786443, metadata !573, i32 208, i32 26, metadata !27, i32 46} ; [ DW_TAG_lexical_block ]
!580 = metadata !{i32 210, i32 3, metadata !579, null}
!581 = metadata !{i32 211, i32 3, metadata !573, null}
!582 = metadata !{i32 214, i32 3, metadata !573, null}
!583 = metadata !{i32 215, i32 4, metadata !584, null}
!584 = metadata !{i32 786443, metadata !573, i32 214, i32 30, metadata !27, i32 47} ; [ DW_TAG_lexical_block ]
!585 = metadata !{i32 216, i32 3, metadata !584, null}
!586 = metadata !{i32 217, i32 3, metadata !573, null}
!587 = metadata !{i32 786688, metadata !558, metadata !"i", metadata !27, i32 187, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!588 = metadata !{i32 202, i32 26, metadata !571, null}
!589 = metadata !{i32 219, i32 1, metadata !558, null}
