; ModuleID = '/home/linux/Documents/DLA/fw/hls/BigInt/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@zero = internal constant [256 x i8] zeroinitializer ; [#uses=3 type=[256 x i8]*]
@one = internal constant [256 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01" ; [#uses=2 type=[256 x i8]*]
@bigint_math.str = internal unnamed_addr constant [12 x i8] c"bigint_math\00" ; [#uses=1 type=[12 x i8]*]
@.str2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=15 type=[1 x i8]*]
@.str1 = private unnamed_addr constant [11 x i8] c"PERIPH_BUS\00", align 1 ; [#uses=5 type=[11 x i8]*]
@.str = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1 ; [#uses=5 type=[10 x i8]*]

; [#uses=120]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=30]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=47]
define internal fastcc void @bigint_zero([256 x i8]* nocapture %in) {
  call void @llvm.dbg.value(metadata !{[256 x i8]* %in}, i64 0, metadata !84), !dbg !88 ; [debug line = 6:32] [debug variable = in]
  br label %1, !dbg !89                           ; [debug line = 8:6]

; <label>:1                                       ; preds = %3, %0
  %i = phi i9 [ 0, %0 ], [ %i.1, %3 ]             ; [#uses=3 type=i9]
  %exitcond = icmp eq i9 %i, -256, !dbg !89       ; [#uses=1 type=i1] [debug line = 8:6]
  %2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 256, i64 256, i64 256) ; [#uses=0 type=i32]
  br i1 %exitcond, label %4, label %3, !dbg !89   ; [debug line = 8:6]

; <label>:3                                       ; preds = %1
  %tmp = zext i9 %i to i64, !dbg !92              ; [#uses=1 type=i64] [debug line = 10:3]
  %in.addr = getelementptr [256 x i8]* %in, i64 0, i64 %tmp, !dbg !92 ; [#uses=1 type=i8*] [debug line = 10:3]
  store i8 0, i8* %in.addr, align 1, !dbg !92     ; [debug line = 10:3]
  %i.1 = add i9 %i, 1, !dbg !94                   ; [#uses=1 type=i9] [debug line = 8:22]
  call void @llvm.dbg.value(metadata !{i9 %i.1}, i64 0, metadata !95), !dbg !94 ; [debug line = 8:22] [debug variable = i]
  br label %1, !dbg !94                           ; [debug line = 8:22]

; <label>:4                                       ; preds = %1
  ret void, !dbg !96                              ; [debug line = 13:1]
}

; [#uses=2]
define internal fastcc void @bigint_sub([256 x i8]* nocapture %out, [256 x i8]* nocapture %a, [256 x i8]* nocapture %b) {
  %tempA = alloca [256 x i8], align 16            ; [#uses=7 type=[256 x i8]*]
  %tempB = alloca [256 x i8], align 16            ; [#uses=4 type=[256 x i8]*]
  call void @llvm.dbg.value(metadata !{[256 x i8]* %tempB}, i64 0, metadata !97), !dbg !100 ; [debug line = 41:32@239:2] [debug variable = to]
  %carry = alloca [256 x i8], align 16            ; [#uses=3 type=[256 x i8]*]
  call void @llvm.dbg.value(metadata !{[256 x i8]* %out}, i64 0, metadata !101), !dbg !102 ; [debug line = 222:31] [debug variable = out]
  call void @llvm.dbg.value(metadata !{[256 x i8]* %a}, i64 0, metadata !103), !dbg !104 ; [debug line = 222:55] [debug variable = a]
  call void @llvm.dbg.value(metadata !{[256 x i8]* %b}, i64 0, metadata !105), !dbg !106 ; [debug line = 222:77] [debug variable = b]
  call void @llvm.dbg.declare(metadata !{[256 x i8]* %tempA}, metadata !107), !dbg !108 ; [debug line = 228:16] [debug variable = tempA]
  call void @llvm.dbg.declare(metadata !{[256 x i8]* %tempB}, metadata !109), !dbg !110 ; [debug line = 229:16] [debug variable = tempB]
  call void @llvm.dbg.declare(metadata !{[256 x i8]* %carry}, metadata !111), !dbg !112 ; [debug line = 231:16] [debug variable = carry]
  call fastcc void @bigint_zero([256 x i8]* %tempA), !dbg !113 ; [debug line = 233:2]
  call fastcc void @bigint_zero([256 x i8]* %tempB), !dbg !114 ; [debug line = 234:2]
  call fastcc void @bigint_zero([256 x i8]* %carry), !dbg !115 ; [debug line = 236:2]
  call void @llvm.dbg.value(metadata !{[256 x i8]* %tempA}, i64 0, metadata !116), !dbg !118 ; [debug line = 41:32@238:2] [debug variable = to]
  call void @llvm.dbg.value(metadata !{[256 x i8]* %a}, i64 0, metadata !119), !dbg !120 ; [debug line = 41:55@238:2] [debug variable = from]
  br label %1, !dbg !121                          ; [debug line = 44:6@238:2]

; <label>:1                                       ; preds = %3, %0
  %i.i = phi i9 [ 0, %0 ], [ %i.3, %3 ]           ; [#uses=3 type=i9]
  %exitcond.i = icmp eq i9 %i.i, -256, !dbg !121  ; [#uses=1 type=i1] [debug line = 44:6@238:2]
  %2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 256, i64 256, i64 256) ; [#uses=0 type=i32]
  br i1 %exitcond.i, label %bigint_copy.exit.preheader, label %3, !dbg !121 ; [debug line = 44:6@238:2]

bigint_copy.exit.preheader:                       ; preds = %1
  br label %bigint_copy.exit, !dbg !124           ; [debug line = 44:6@239:2]

; <label>:3                                       ; preds = %1
  %tmp.i = zext i9 %i.i to i64, !dbg !125         ; [#uses=2 type=i64] [debug line = 45:3@238:2]
  %a.addr = getelementptr [256 x i8]* %a, i64 0, i64 %tmp.i, !dbg !125 ; [#uses=1 type=i8*] [debug line = 45:3@238:2]
  %a.load = load i8* %a.addr, align 1, !dbg !125  ; [#uses=1 type=i8] [debug line = 45:3@238:2]
  %to.assign.addr = getelementptr [256 x i8]* %tempA, i64 0, i64 %tmp.i, !dbg !125 ; [#uses=1 type=i8*] [debug line = 45:3@238:2]
  store i8 %a.load, i8* %to.assign.addr, align 1, !dbg !125 ; [debug line = 45:3@238:2]
  %i.3 = add i9 %i.i, 1, !dbg !127                ; [#uses=1 type=i9] [debug line = 44:22@238:2]
  call void @llvm.dbg.value(metadata !{i9 %i.3}, i64 0, metadata !128), !dbg !127 ; [debug line = 44:22@238:2] [debug variable = i]
  br label %1, !dbg !127                          ; [debug line = 44:22@238:2]

bigint_copy.exit:                                 ; preds = %5, %bigint_copy.exit.preheader
  %i.i4 = phi i9 [ %i.4, %5 ], [ 0, %bigint_copy.exit.preheader ] ; [#uses=3 type=i9]
  %exitcond.i5 = icmp eq i9 %i.i4, -256, !dbg !124 ; [#uses=1 type=i1] [debug line = 44:6@239:2]
  %4 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 256, i64 256, i64 256) ; [#uses=0 type=i32]
  br i1 %exitcond.i5, label %bigint_copy.exit11, label %5, !dbg !124 ; [debug line = 44:6@239:2]

; <label>:5                                       ; preds = %bigint_copy.exit
  %tmp.i6 = zext i9 %i.i4 to i64, !dbg !129       ; [#uses=2 type=i64] [debug line = 45:3@239:2]
  %b.addr = getelementptr [256 x i8]* %b, i64 0, i64 %tmp.i6, !dbg !129 ; [#uses=1 type=i8*] [debug line = 45:3@239:2]
  %b.load = load i8* %b.addr, align 1, !dbg !129  ; [#uses=1 type=i8] [debug line = 45:3@239:2]
  %tempB.addr.1 = getelementptr [256 x i8]* %tempB, i64 0, i64 %tmp.i6, !dbg !129 ; [#uses=1 type=i8*] [debug line = 45:3@239:2]
  store i8 %b.load, i8* %tempB.addr.1, align 1, !dbg !129 ; [debug line = 45:3@239:2]
  %i.4 = add i9 %i.i4, 1, !dbg !130               ; [#uses=1 type=i9] [debug line = 44:22@239:2]
  call void @llvm.dbg.value(metadata !{i9 %i.4}, i64 0, metadata !131), !dbg !130 ; [debug line = 44:22@239:2] [debug variable = i]
  br label %bigint_copy.exit, !dbg !130           ; [debug line = 44:22@239:2]

bigint_copy.exit11:                               ; preds = %bigint_copy.exit
  call fastcc void @bigint_zero([256 x i8]* %out), !dbg !132 ; [debug line = 241:2]
  %tmp = call fastcc i2 @bigint_compare([256 x i8]* %tempA, [256 x i8]* %tempB), !dbg !133 ; [#uses=1 type=i2] [debug line = 243:5]
  %tmp.2 = icmp eq i2 %tmp, -1, !dbg !133         ; [#uses=1 type=i1] [debug line = 243:5]
  br i1 %tmp.2, label %.loopexit, label %.preheader1.preheader, !dbg !133 ; [debug line = 243:5]

.preheader1.preheader:                            ; preds = %bigint_copy.exit11
  br label %.preheader1, !dbg !134                ; [debug line = 247:6]

.preheader1:                                      ; preds = %._crit_edge, %.preheader1.preheader
  %indvars.iv = phi i9 [ %indvars.iv.next, %._crit_edge ], [ 254, %.preheader1.preheader ] ; [#uses=2 type=i9]
  %i = phi i9 [ %i.2, %._crit_edge ], [ 255, %.preheader1.preheader ] ; [#uses=4 type=i9]
  %indvars.iv.cast = sext i9 %indvars.iv to i32, !dbg !134 ; [#uses=1 type=i32] [debug line = 247:6]
  %i.cast = sext i9 %i to i32, !dbg !134          ; [#uses=2 type=i32] [debug line = 247:6]
  %tmp.3 = icmp sgt i9 %i, -1, !dbg !134          ; [#uses=1 type=i1] [debug line = 247:6]
  %6 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 256, i64 256, i64 256) ; [#uses=0 type=i32]
  br i1 %tmp.3, label %7, label %.loopexit.loopexit, !dbg !134 ; [debug line = 247:6]

; <label>:7                                       ; preds = %.preheader1
  %tmp.4 = zext i32 %i.cast to i64, !dbg !136     ; [#uses=5 type=i64] [debug line = 248:3]
  %to.assign.addr.1 = getelementptr inbounds [256 x i8]* %tempA, i64 0, i64 %tmp.4, !dbg !136 ; [#uses=2 type=i8*] [debug line = 248:3]
  %to.assign.load = load i8* %to.assign.addr.1, align 1, !dbg !136 ; [#uses=1 type=i8] [debug line = 248:3]
  %tempB.addr = getelementptr inbounds [256 x i8]* %tempB, i64 0, i64 %tmp.4, !dbg !136 ; [#uses=1 type=i8*] [debug line = 248:3]
  %tempB.load = load i8* %tempB.addr, align 1, !dbg !136 ; [#uses=2 type=i8] [debug line = 248:3]
  %tmp.5 = icmp ult i8 %to.assign.load, %tempB.load, !dbg !136 ; [#uses=1 type=i1] [debug line = 248:3]
  br i1 %tmp.5, label %8, label %._crit_edge, !dbg !136 ; [debug line = 248:3]

; <label>:8                                       ; preds = %7
  %tmp.6 = add i9 %i, -1, !dbg !138               ; [#uses=1 type=i9] [debug line = 249:4]
  %tmp.7 = sext i9 %tmp.6 to i64, !dbg !138       ; [#uses=1 type=i64] [debug line = 249:4]
  %to.assign.addr.2 = getelementptr inbounds [256 x i8]* %tempA, i64 0, i64 %tmp.7, !dbg !138 ; [#uses=3 type=i8*] [debug line = 249:4]
  %to.assign.load.1 = load i8* %to.assign.addr.2, align 1, !dbg !138 ; [#uses=2 type=i8] [debug line = 249:4]
  %tmp.8 = icmp eq i8 %to.assign.load.1, 0, !dbg !138 ; [#uses=1 type=i1] [debug line = 249:4]
  br i1 %tmp.8, label %.preheader.preheader, label %13, !dbg !138 ; [debug line = 249:4]

.preheader.preheader:                             ; preds = %8
  br label %.preheader, !dbg !140                 ; [debug line = 250:5]

.preheader:                                       ; preds = %.preheader, %.preheader.preheader
  %j.2 = phi i32 [ %j, %.preheader ], [ %i.cast, %.preheader.preheader ] ; [#uses=2 type=i32]
  %j = add nsw i32 %j.2, -1, !dbg !140            ; [#uses=2 type=i32] [debug line = 250:5]
  call void @llvm.dbg.value(metadata !{i32 %j}, i64 0, metadata !142), !dbg !140 ; [debug line = 250:5] [debug variable = j]
  %tmp.1 = sext i32 %j to i64, !dbg !143          ; [#uses=1 type=i64] [debug line = 251:5]
  %to.assign.addr.3 = getelementptr inbounds [256 x i8]* %tempA, i64 0, i64 %tmp.1, !dbg !143 ; [#uses=2 type=i8*] [debug line = 251:5]
  %to.assign.load.2 = load i8* %to.assign.addr.3, align 1, !dbg !143 ; [#uses=2 type=i8] [debug line = 251:5]
  %tmp.10 = icmp eq i8 %to.assign.load.2, 0, !dbg !143 ; [#uses=1 type=i1] [debug line = 251:5]
  br i1 %tmp.10, label %.preheader, label %9, !dbg !143 ; [debug line = 251:5]

; <label>:9                                       ; preds = %.preheader
  %to.assign.load.2.lcssa = phi i8 [ %to.assign.load.2, %.preheader ] ; [#uses=1 type=i8]
  %to.assign.addr.3.lcssa = phi i8* [ %to.assign.addr.3, %.preheader ] ; [#uses=1 type=i8*]
  %j.2.lcssa = phi i32 [ %j.2, %.preheader ]      ; [#uses=1 type=i32]
  %tmp.11 = add i8 %to.assign.load.2.lcssa, -1, !dbg !144 ; [#uses=1 type=i8] [debug line = 258:5]
  store i8 %tmp.11, i8* %to.assign.addr.3.lcssa, align 1, !dbg !144 ; [debug line = 258:5]
  call void @llvm.dbg.value(metadata !{i32 %j.2}, i64 0, metadata !142), !dbg !145 ; [debug line = 259:5] [debug variable = j]
  br label %10, !dbg !146                         ; [debug line = 260:5]

; <label>:10                                      ; preds = %11, %9
  %j.1 = phi i32 [ %j.2.lcssa, %9 ], [ %j.3, %11 ] ; [#uses=3 type=i32]
  %exitcond = icmp eq i32 %j.1, %indvars.iv.cast, !dbg !146 ; [#uses=1 type=i1] [debug line = 260:5]
  br i1 %exitcond, label %12, label %11, !dbg !146 ; [debug line = 260:5]

; <label>:11                                      ; preds = %10
  %tmp.13 = sext i32 %j.1 to i64, !dbg !147       ; [#uses=1 type=i64] [debug line = 261:6]
  %to.assign.addr.4 = getelementptr inbounds [256 x i8]* %tempA, i64 0, i64 %tmp.13, !dbg !147 ; [#uses=1 type=i8*] [debug line = 261:6]
  store i8 -1, i8* %to.assign.addr.4, align 1, !dbg !147 ; [debug line = 261:6]
  %j.3 = add nsw i32 %j.1, 1, !dbg !149           ; [#uses=1 type=i32] [debug line = 262:6]
  call void @llvm.dbg.value(metadata !{i32 %j.3}, i64 0, metadata !142), !dbg !149 ; [debug line = 262:6] [debug variable = j]
  br label %10, !dbg !150                         ; [debug line = 263:5]

; <label>:12                                      ; preds = %10
  store i8 -1, i8* %to.assign.addr.2, align 1, !dbg !151 ; [debug line = 265:5]
  %carry.addr.1 = getelementptr inbounds [256 x i8]* %carry, i64 0, i64 %tmp.4, !dbg !152 ; [#uses=2 type=i8*] [debug line = 266:5]
  %carry.load.1 = load i8* %carry.addr.1, align 1, !dbg !152 ; [#uses=1 type=i8] [debug line = 266:5]
  %tmp.12 = add i8 %carry.load.1, 1, !dbg !152    ; [#uses=1 type=i8] [debug line = 266:5]
  store i8 %tmp.12, i8* %carry.addr.1, align 1, !dbg !152 ; [debug line = 266:5]
  br label %14, !dbg !153                         ; [debug line = 268:4]

; <label>:13                                      ; preds = %8
  %tmp.9 = add i8 %to.assign.load.1, -1, !dbg !154 ; [#uses=1 type=i8] [debug line = 269:5]
  store i8 %tmp.9, i8* %to.assign.addr.2, align 1, !dbg !154 ; [debug line = 269:5]
  %carry.addr = getelementptr inbounds [256 x i8]* %carry, i64 0, i64 %tmp.4, !dbg !156 ; [#uses=2 type=i8*] [debug line = 270:5]
  %carry.load = load i8* %carry.addr, align 1, !dbg !156 ; [#uses=1 type=i8] [debug line = 270:5]
  %tmp. = add i8 %carry.load, 1, !dbg !156        ; [#uses=1 type=i8] [debug line = 270:5]
  store i8 %tmp., i8* %carry.addr, align 1, !dbg !156 ; [debug line = 270:5]
  br label %14

; <label>:14                                      ; preds = %13, %12
  br label %._crit_edge, !dbg !157                ; [debug line = 272:3]

._crit_edge:                                      ; preds = %14, %7
  %to.assign.load.3 = load i8* %to.assign.addr.1, align 1, !dbg !158 ; [#uses=1 type=i8] [debug line = 274:3]
  %tmp.14 = sub i8 %to.assign.load.3, %tempB.load, !dbg !158 ; [#uses=1 type=i8] [debug line = 274:3]
  %out.addr = getelementptr [256 x i8]* %out, i64 0, i64 %tmp.4, !dbg !158 ; [#uses=1 type=i8*] [debug line = 274:3]
  store i8 %tmp.14, i8* %out.addr, align 1, !dbg !158 ; [debug line = 274:3]
  %i.2 = add i9 %i, -1, !dbg !159                 ; [#uses=1 type=i9] [debug line = 247:26]
  call void @llvm.dbg.value(metadata !{i9 %i.2}, i64 0, metadata !160), !dbg !159 ; [debug line = 247:26] [debug variable = i]
  %indvars.iv.next = add i9 %indvars.iv, -1, !dbg !159 ; [#uses=1 type=i9] [debug line = 247:26]
  br label %.preheader1, !dbg !159                ; [debug line = 247:26]

.loopexit.loopexit:                               ; preds = %.preheader1
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bigint_copy.exit11
  ret void, !dbg !161                             ; [debug line = 277:1]
}

; [#uses=3]
define internal fastcc void @bigint_rightshift([256 x i8]* nocapture %out, [256 x i8]* nocapture %a) {
  call void @llvm.dbg.value(metadata !{[256 x i8]* %out}, i64 0, metadata !162), !dbg !163 ; [debug line = 139:38] [debug variable = out]
  call void @llvm.dbg.value(metadata !{[256 x i8]* %a}, i64 0, metadata !164), !dbg !165 ; [debug line = 139:62] [debug variable = a]
  call void @llvm.dbg.value(metadata !{[256 x i8]* %out}, i64 0, metadata !166), !dbg !169 ; [debug line = 6:32@155:2] [debug variable = in]
  br label %1, !dbg !170                          ; [debug line = 8:6@155:2]

; <label>:1                                       ; preds = %3, %0
  %i.i = phi i9 [ 0, %0 ], [ %i.5, %3 ]           ; [#uses=3 type=i9]
  %exitcond.i = icmp eq i9 %i.i, -256, !dbg !170  ; [#uses=1 type=i1] [debug line = 8:6@155:2]
  %2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 256, i64 256, i64 256) ; [#uses=0 type=i32]
  br i1 %exitcond.i, label %bigint_zero.exit.preheader, label %3, !dbg !170 ; [debug line = 8:6@155:2]

bigint_zero.exit.preheader:                       ; preds = %1
  br label %bigint_zero.exit, !dbg !171           ; [debug line = 157:6]

; <label>:3                                       ; preds = %1
  %tmp.i = zext i9 %i.i to i64, !dbg !173         ; [#uses=1 type=i64] [debug line = 10:3@155:2]
  %out.addr.2 = getelementptr [256 x i8]* %out, i64 0, i64 %tmp.i, !dbg !173 ; [#uses=1 type=i8*] [debug line = 10:3@155:2]
  store i8 0, i8* %out.addr.2, align 1, !dbg !173 ; [debug line = 10:3@155:2]
  %i.5 = add i9 %i.i, 1, !dbg !174                ; [#uses=1 type=i9] [debug line = 8:22@155:2]
  call void @llvm.dbg.value(metadata !{i9 %i.5}, i64 0, metadata !175), !dbg !174 ; [debug line = 8:22@155:2] [debug variable = i]
  br label %1, !dbg !174                          ; [debug line = 8:22@155:2]

bigint_zero.exit:                                 ; preds = %12, %bigint_zero.exit.preheader
  %i = phi i9 [ %i.3, %12 ], [ 0, %bigint_zero.exit.preheader ] ; [#uses=3 type=i9]
  %k = phi i32 [ %.k.1, %12 ], [ 0, %bigint_zero.exit.preheader ] ; [#uses=1 type=i32]
  %exitcond = icmp eq i9 %i, -256, !dbg !171      ; [#uses=1 type=i1] [debug line = 157:6]
  %4 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 256, i64 256, i64 256) ; [#uses=0 type=i32]
  br i1 %exitcond, label %.loopexit, label %5, !dbg !171 ; [debug line = 157:6]

; <label>:5                                       ; preds = %bigint_zero.exit
  %tmp = zext i9 %i to i64, !dbg !176             ; [#uses=1 type=i64] [debug line = 160:4]
  %a.addr = getelementptr [256 x i8]* %a, i64 0, i64 %tmp, !dbg !176 ; [#uses=1 type=i8*] [debug line = 160:4]
  br label %6, !dbg !180                          ; [debug line = 159:7]

; <label>:6                                       ; preds = %11, %5
  %j = phi i4 [ 7, %5 ], [ %j.4, %11 ]            ; [#uses=3 type=i4]
  %k.1 = phi i32 [ %k, %5 ], [ %k.2, %11 ]        ; [#uses=4 type=i32]
  %outputBit = phi i32 [ 6, %5 ], [ %outputBit.2, %11 ] ; [#uses=4 type=i32]
  %j.cast = sext i4 %j to i8, !dbg !180           ; [#uses=2 type=i8] [debug line = 159:7]
  %outputBit.cast = trunc i32 %outputBit to i8, !dbg !180 ; [#uses=1 type=i8] [debug line = 159:7]
  %tmp. = icmp sgt i4 %j, -1, !dbg !180           ; [#uses=1 type=i1] [debug line = 159:7]
  %7 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) ; [#uses=0 type=i32]
  br i1 %tmp., label %8, label %12, !dbg !180     ; [debug line = 159:7]

; <label>:8                                       ; preds = %6
  %a.load = load i8* %a.addr, align 1, !dbg !176  ; [#uses=1 type=i8] [debug line = 160:4]
  %tmp.15 = shl i8 1, %j.cast, !dbg !176          ; [#uses=1 type=i8] [debug line = 160:4]
  %tmp.16 = and i8 %tmp.15, %a.load, !dbg !176    ; [#uses=1 type=i8] [debug line = 160:4]
  %b = lshr i8 %tmp.16, %j.cast, !dbg !176        ; [#uses=2 type=i8] [debug line = 160:4]
  call void @llvm.dbg.value(metadata !{i8 %b}, i64 0, metadata !181), !dbg !176 ; [debug line = 160:4] [debug variable = b]
  %tmp.18 = icmp eq i32 %outputBit, -1, !dbg !182 ; [#uses=1 type=i1] [debug line = 163:4]
  br i1 %tmp.18, label %9, label %10, !dbg !182   ; [debug line = 163:4]

; <label>:9                                       ; preds = %8
  %k.4 = add nsw i32 %k.1, 1, !dbg !183           ; [#uses=2 type=i32] [debug line = 164:5]
  call void @llvm.dbg.value(metadata !{i32 %k.4}, i64 0, metadata !185), !dbg !183 ; [debug line = 164:5] [debug variable = k]
  %tmp.20 = shl i8 %b, 7, !dbg !186               ; [#uses=1 type=i8] [debug line = 166:5]
  %tmp.21 = sext i32 %k.4 to i64, !dbg !186       ; [#uses=1 type=i64] [debug line = 166:5]
  %out.addr = getelementptr [256 x i8]* %out, i64 0, i64 %tmp.21, !dbg !186 ; [#uses=2 type=i8*] [debug line = 166:5]
  %out.load = load i8* %out.addr, align 1, !dbg !186 ; [#uses=1 type=i8] [debug line = 166:5]
  %tmp.22 = add i8 %tmp.20, %out.load, !dbg !186  ; [#uses=1 type=i8] [debug line = 166:5]
  store i8 %tmp.22, i8* %out.addr, align 1, !dbg !186 ; [debug line = 166:5]
  br label %11, !dbg !187                         ; [debug line = 167:4]

; <label>:10                                      ; preds = %8
  %tmp.23 = shl i8 %b, %outputBit.cast, !dbg !188 ; [#uses=1 type=i8] [debug line = 168:5]
  %tmp.24 = sext i32 %k.1 to i64, !dbg !188       ; [#uses=1 type=i64] [debug line = 168:5]
  %out.addr.1 = getelementptr [256 x i8]* %out, i64 0, i64 %tmp.24, !dbg !188 ; [#uses=2 type=i8*] [debug line = 168:5]
  %out.load.1 = load i8* %out.addr.1, align 1, !dbg !188 ; [#uses=1 type=i8] [debug line = 168:5]
  %tmp.25 = add i8 %tmp.23, %out.load.1, !dbg !188 ; [#uses=1 type=i8] [debug line = 168:5]
  store i8 %tmp.25, i8* %out.addr.1, align 1, !dbg !188 ; [debug line = 168:5]
  br label %11

; <label>:11                                      ; preds = %10, %9
  %k.2 = phi i32 [ %k.4, %9 ], [ %k.1, %10 ]      ; [#uses=1 type=i32]
  %outputBit.1 = phi i32 [ 7, %9 ], [ %outputBit, %10 ] ; [#uses=1 type=i32]
  %outputBit.2 = add nsw i32 %outputBit.1, -1, !dbg !190 ; [#uses=1 type=i32] [debug line = 171:4]
  call void @llvm.dbg.value(metadata !{i32 %outputBit.2}, i64 0, metadata !191), !dbg !190 ; [debug line = 171:4] [debug variable = outputBit]
  %j.4 = add i4 %j, -1, !dbg !192                 ; [#uses=1 type=i4] [debug line = 159:22]
  call void @llvm.dbg.value(metadata !{i4 %j.4}, i64 0, metadata !193), !dbg !192 ; [debug line = 159:22] [debug variable = j]
  br label %6, !dbg !192                          ; [debug line = 159:22]

; <label>:12                                      ; preds = %6
  %outputBit.lcssa = phi i32 [ %outputBit, %6 ]   ; [#uses=1 type=i32]
  %k.1.lcssa = phi i32 [ %k.1, %6 ]               ; [#uses=2 type=i32]
  %tmp.19 = icmp eq i32 %outputBit.lcssa, 0, !dbg !194 ; [#uses=1 type=i1] [debug line = 175:3]
  %k.3 = add nsw i32 %k.1.lcssa, 1, !dbg !195     ; [#uses=1 type=i32] [debug line = 176:4]
  call void @llvm.dbg.value(metadata !{i32 %k.3}, i64 0, metadata !185), !dbg !195 ; [debug line = 176:4] [debug variable = k]
  %.k.1 = select i1 %tmp.19, i32 %k.3, i32 %k.1.lcssa, !dbg !194 ; [#uses=1 type=i32] [debug line = 175:3]
  %i.3 = add i9 %i, 1, !dbg !197                  ; [#uses=1 type=i9] [debug line = 157:22]
  call void @llvm.dbg.value(metadata !{i9 %i.3}, i64 0, metadata !198), !dbg !197 ; [debug line = 157:22] [debug variable = i]
  br label %bigint_zero.exit, !dbg !197           ; [debug line = 157:22]

.loopexit:                                        ; preds = %bigint_zero.exit
  ret void, !dbg !199                             ; [debug line = 180:1]
}

; [#uses=1]
define internal fastcc void @bigint_mul.1([256 x i8]* nocapture %out, [256 x i8]* nocapture %a) {
  %sum = alloca [256 x i8], align 16              ; [#uses=7 type=[256 x i8]*]
  %tempA = alloca [256 x i8], align 16            ; [#uses=3 type=[256 x i8]*]
  %tempB = alloca [256 x i8], align 16            ; [#uses=3 type=[256 x i8]*]
  call void @llvm.dbg.value(metadata !{[256 x i8]* %tempB}, i64 0, metadata !200), !dbg !203 ; [debug line = 41:32@303:2] [debug variable = to]
  call void @llvm.dbg.value(metadata !{[256 x i8]* %out}, i64 0, metadata !204), !dbg !205 ; [debug line = 280:31] [debug variable = out]
  call void @llvm.dbg.value(metadata !{[256 x i8]* %a}, i64 0, metadata !206), !dbg !207 ; [debug line = 280:55] [debug variable = a]
  call void @llvm.dbg.value(metadata !{[256 x i8]* %a}, i64 0, metadata !208), !dbg !209 ; [debug line = 280:77] [debug variable = b]
  call void @llvm.dbg.declare(metadata !{[256 x i8]* %sum}, metadata !210), !dbg !211 ; [debug line = 287:16] [debug variable = sum]
  call void @llvm.dbg.declare(metadata !{[256 x i8]* %tempA}, metadata !212), !dbg !213 ; [debug line = 289:16] [debug variable = tempA]
  call void @llvm.dbg.declare(metadata !{[256 x i8]* %tempB}, metadata !214), !dbg !215 ; [debug line = 290:16] [debug variable = tempB]
  call fastcc void @bigint_zero([256 x i8]* %tempA), !dbg !216 ; [debug line = 299:2]
  call fastcc void @bigint_zero([256 x i8]* %tempB), !dbg !217 ; [debug line = 300:2]
  call void @llvm.dbg.value(metadata !{[256 x i8]* %tempA}, i64 0, metadata !218), !dbg !220 ; [debug line = 41:32@302:2] [debug variable = to]
  call void @llvm.dbg.value(metadata !{[256 x i8]* %a}, i64 0, metadata !221), !dbg !222 ; [debug line = 41:55@302:2] [debug variable = from]
  br label %1, !dbg !223                          ; [debug line = 44:6@302:2]

; <label>:1                                       ; preds = %3, %0
  %i.i = phi i9 [ 0, %0 ], [ %i.6, %3 ]           ; [#uses=3 type=i9]
  %exitcond.i = icmp eq i9 %i.i, -256, !dbg !223  ; [#uses=1 type=i1] [debug line = 44:6@302:2]
  %2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 256, i64 256, i64 256) ; [#uses=0 type=i32]
  br i1 %exitcond.i, label %bigint_copy.exit.preheader, label %3, !dbg !223 ; [debug line = 44:6@302:2]

bigint_copy.exit.preheader:                       ; preds = %1
  br label %bigint_copy.exit, !dbg !224           ; [debug line = 44:6@303:2]

; <label>:3                                       ; preds = %1
  %tmp.i = zext i9 %i.i to i64, !dbg !225         ; [#uses=2 type=i64] [debug line = 45:3@302:2]
  %b.addr = getelementptr [256 x i8]* %a, i64 0, i64 %tmp.i, !dbg !225 ; [#uses=1 type=i8*] [debug line = 45:3@302:2]
  %b.load = load i8* %b.addr, align 1, !dbg !225  ; [#uses=1 type=i8] [debug line = 45:3@302:2]
  %to.assign.addr = getelementptr [256 x i8]* %tempA, i64 0, i64 %tmp.i, !dbg !225 ; [#uses=1 type=i8*] [debug line = 45:3@302:2]
  store i8 %b.load, i8* %to.assign.addr, align 1, !dbg !225 ; [debug line = 45:3@302:2]
  %i.6 = add i9 %i.i, 1, !dbg !226                ; [#uses=1 type=i9] [debug line = 44:22@302:2]
  call void @llvm.dbg.value(metadata !{i9 %i.6}, i64 0, metadata !227), !dbg !226 ; [debug line = 44:22@302:2] [debug variable = i]
  br label %1, !dbg !226                          ; [debug line = 44:22@302:2]

bigint_copy.exit:                                 ; preds = %5, %bigint_copy.exit.preheader
  %i.i1 = phi i9 [ %i.7, %5 ], [ 0, %bigint_copy.exit.preheader ] ; [#uses=3 type=i9]
  %exitcond.i2 = icmp eq i9 %i.i1, -256, !dbg !224 ; [#uses=1 type=i1] [debug line = 44:6@303:2]
  %4 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 256, i64 256, i64 256) ; [#uses=0 type=i32]
  br i1 %exitcond.i2, label %bigint_copy.exit8, label %5, !dbg !224 ; [debug line = 44:6@303:2]

; <label>:5                                       ; preds = %bigint_copy.exit
  %tmp.i3 = zext i9 %i.i1 to i64, !dbg !228       ; [#uses=2 type=i64] [debug line = 45:3@303:2]
  %b.addr.1 = getelementptr [256 x i8]* %a, i64 0, i64 %tmp.i3, !dbg !228 ; [#uses=1 type=i8*] [debug line = 45:3@303:2]
  %b.load.1 = load i8* %b.addr.1, align 1, !dbg !228 ; [#uses=1 type=i8] [debug line = 45:3@303:2]
  %tempB.addr.2 = getelementptr [256 x i8]* %tempB, i64 0, i64 %tmp.i3, !dbg !228 ; [#uses=1 type=i8*] [debug line = 45:3@303:2]
  store i8 %b.load.1, i8* %tempB.addr.2, align 1, !dbg !228 ; [debug line = 45:3@303:2]
  %i.7 = add i9 %i.i1, 1, !dbg !229               ; [#uses=1 type=i9] [debug line = 44:22@303:2]
  call void @llvm.dbg.value(metadata !{i9 %i.7}, i64 0, metadata !230), !dbg !229 ; [debug line = 44:22@303:2] [debug variable = i]
  br label %bigint_copy.exit, !dbg !229           ; [debug line = 44:22@303:2]

bigint_copy.exit8:                                ; preds = %bigint_copy.exit
  call fastcc void @bigint_zero([256 x i8]* %out), !dbg !231 ; [debug line = 305:2]
  call fastcc void @bigint_zero([256 x i8]* %sum), !dbg !232 ; [debug line = 306:2]
  br label %6, !dbg !233                          ; [debug line = 309:6]

; <label>:6                                       ; preds = %15, %bigint_copy.exit8
  %i = phi i9 [ 0, %bigint_copy.exit8 ], [ %i.4, %15 ] ; [#uses=3 type=i9]
  %exitcond1 = icmp eq i9 %i, -256, !dbg !233     ; [#uses=1 type=i1] [debug line = 309:6]
  %7 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 256, i64 256, i64 256) ; [#uses=0 type=i32]
  br i1 %exitcond1, label %16, label %8, !dbg !233 ; [debug line = 309:6]

; <label>:8                                       ; preds = %6
  %k = sub i9 255, %i, !dbg !235                  ; [#uses=2 type=i9] [debug line = 312:7]
  call void @llvm.dbg.value(metadata !{i9 %k}, i64 0, metadata !238), !dbg !235 ; [debug line = 312:7] [debug variable = k]
  %tmp = zext i9 %k to i64, !dbg !239             ; [#uses=1 type=i64] [debug line = 315:4]
  %tempB.addr = getelementptr inbounds [256 x i8]* %tempB, i64 0, i64 %tmp, !dbg !239 ; [#uses=1 type=i8*] [debug line = 315:4]
  %tempB.load = load i8* %tempB.addr, align 1, !dbg !239 ; [#uses=2 type=i8] [debug line = 315:4]
  %tmp..cast = zext i8 %tempB.load to i16, !dbg !235 ; [#uses=1 type=i16] [debug line = 312:7]
  br label %9, !dbg !235                          ; [debug line = 312:7]

; <label>:9                                       ; preds = %._crit_edge, %8
  %j = phi i9 [ 0, %8 ], [ %j.5, %._crit_edge ]   ; [#uses=3 type=i9]
  %k5 = phi i9 [ %k, %8 ], [ %k.5, %._crit_edge ] ; [#uses=5 type=i9]
  %k5.cast1 = sext i9 %k5 to i10, !dbg !235       ; [#uses=1 type=i10] [debug line = 312:7]
  %exitcond = icmp eq i9 %j, -256, !dbg !235      ; [#uses=1 type=i1] [debug line = 312:7]
  %10 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 256, i64 256, i64 256) ; [#uses=0 type=i32]
  br i1 %exitcond, label %15, label %11, !dbg !235 ; [debug line = 312:7]

; <label>:11                                      ; preds = %9
  %tmp. = sub i9 255, %j, !dbg !239               ; [#uses=1 type=i9] [debug line = 315:4]
  %tmp.26 = zext i9 %tmp. to i64, !dbg !239       ; [#uses=1 type=i64] [debug line = 315:4]
  %to.assign.addr.5 = getelementptr inbounds [256 x i8]* %tempA, i64 0, i64 %tmp.26, !dbg !239 ; [#uses=1 type=i8*] [debug line = 315:4]
  %to.assign.load = load i8* %to.assign.addr.5, align 1, !dbg !239 ; [#uses=2 type=i8] [debug line = 315:4]
  %prod = mul i8 %to.assign.load, %tempB.load, !dbg !239 ; [#uses=3 type=i8] [debug line = 315:4]
  call void @llvm.dbg.value(metadata !{i8 %prod}, i64 0, metadata !241), !dbg !239 ; [debug line = 315:4] [debug variable = prod]
  %tmp.31.cast = zext i8 %to.assign.load to i16, !dbg !242 ; [#uses=1 type=i16] [debug line = 316:4]
  %tmp.27 = mul i16 %tmp.31.cast, %tmp..cast, !dbg !242 ; [#uses=1 type=i16] [debug line = 316:4]
  %tmp.28 = lshr i16 %tmp.27, 8, !dbg !242        ; [#uses=1 type=i16] [debug line = 316:4]
  %carry = trunc i16 %tmp.28 to i8, !dbg !242     ; [#uses=3 type=i8] [debug line = 316:4]
  call void @llvm.dbg.value(metadata !{i8 %carry}, i64 0, metadata !243), !dbg !242 ; [debug line = 316:4] [debug variable = carry]
  %tmp.29 = or i8 %carry, %prod, !dbg !244        ; [#uses=1 type=i8] [debug line = 318:4]
  %tmp.30 = icmp eq i8 %tmp.29, 0, !dbg !244      ; [#uses=1 type=i1] [debug line = 318:4]
  br i1 %tmp.30, label %._crit_edge, label %12, !dbg !244 ; [debug line = 318:4]

; <label>:12                                      ; preds = %11
  %tmp.31 = sext i9 %k5 to i64, !dbg !245         ; [#uses=1 type=i64] [debug line = 320:5]
  %sum.addr = getelementptr inbounds [256 x i8]* %sum, i64 0, i64 %tmp.31, !dbg !245 ; [#uses=2 type=i8*] [debug line = 320:5]
  %sum.load = load i8* %sum.addr, align 1, !dbg !245 ; [#uses=2 type=i8] [debug line = 320:5]
  %tmp.37.cast = zext i8 %sum.load to i9, !dbg !245 ; [#uses=1 type=i9] [debug line = 320:5]
  %tmp.38.cast = zext i8 %prod to i9, !dbg !245   ; [#uses=1 type=i9] [debug line = 320:5]
  %tmp.32 = add i9 %tmp.38.cast, %tmp.37.cast, !dbg !245 ; [#uses=2 type=i9] [debug line = 320:5]
  %tmp.33 = icmp slt i9 %tmp.32, 0, !dbg !245     ; [#uses=1 type=i1] [debug line = 320:5]
  br i1 %tmp.33, label %13, label %._crit_edge2, !dbg !245 ; [debug line = 320:5]

; <label>:13                                      ; preds = %12
  %tmp.34 = lshr i9 %tmp.32, 8, !dbg !247         ; [#uses=1 type=i9] [debug line = 321:6]
  %tmp.35 = add i9 %k5, -1, !dbg !247             ; [#uses=1 type=i9] [debug line = 321:6]
  %tmp.36 = sext i9 %tmp.35 to i64, !dbg !247     ; [#uses=1 type=i64] [debug line = 321:6]
  %sum.addr.1 = getelementptr inbounds [256 x i8]* %sum, i64 0, i64 %tmp.36, !dbg !247 ; [#uses=2 type=i8*] [debug line = 321:6]
  %sum.load.1 = load i8* %sum.addr.1, align 1, !dbg !247 ; [#uses=1 type=i8] [debug line = 321:6]
  %tmp.37 = trunc i9 %tmp.34 to i8, !dbg !247     ; [#uses=1 type=i8] [debug line = 321:6]
  %tmp.38 = add i8 %tmp.37, %sum.load.1, !dbg !247 ; [#uses=1 type=i8] [debug line = 321:6]
  store i8 %tmp.38, i8* %sum.addr.1, align 1, !dbg !247 ; [debug line = 321:6]
  br label %._crit_edge2, !dbg !249               ; [debug line = 322:5]

._crit_edge2:                                     ; preds = %13, %12
  %tmp.39 = add i8 %prod, %sum.load, !dbg !250    ; [#uses=1 type=i8] [debug line = 324:5]
  store i8 %tmp.39, i8* %sum.addr, align 1, !dbg !250 ; [debug line = 324:5]
  %tmp.40 = add i9 %k5, -1, !dbg !251             ; [#uses=1 type=i9] [debug line = 327:5]
  %tmp.41 = sext i9 %tmp.40 to i64, !dbg !251     ; [#uses=1 type=i64] [debug line = 327:5]
  %sum.addr.2 = getelementptr inbounds [256 x i8]* %sum, i64 0, i64 %tmp.41, !dbg !251 ; [#uses=2 type=i8*] [debug line = 327:5]
  %sum.load.2 = load i8* %sum.addr.2, align 1, !dbg !251 ; [#uses=2 type=i8] [debug line = 327:5]
  %tmp.49.cast = zext i8 %sum.load.2 to i9, !dbg !251 ; [#uses=1 type=i9] [debug line = 327:5]
  %tmp.50.cast = zext i8 %carry to i9, !dbg !251  ; [#uses=1 type=i9] [debug line = 327:5]
  %tmp.42 = add i9 %tmp.50.cast, %tmp.49.cast, !dbg !251 ; [#uses=2 type=i9] [debug line = 327:5]
  %tmp.43 = icmp slt i9 %tmp.42, 0, !dbg !251     ; [#uses=1 type=i1] [debug line = 327:5]
  br i1 %tmp.43, label %14, label %._crit_edge3, !dbg !251 ; [debug line = 327:5]

; <label>:14                                      ; preds = %._crit_edge2
  %tmp.44 = lshr i9 %tmp.42, 8, !dbg !252         ; [#uses=1 type=i9] [debug line = 328:6]
  %tmp.45 = add i10 %k5.cast1, -2, !dbg !252      ; [#uses=1 type=i10] [debug line = 328:6]
  %tmp.46 = sext i10 %tmp.45 to i64, !dbg !252    ; [#uses=1 type=i64] [debug line = 328:6]
  %sum.addr.3 = getelementptr inbounds [256 x i8]* %sum, i64 0, i64 %tmp.46, !dbg !252 ; [#uses=2 type=i8*] [debug line = 328:6]
  %sum.load.3 = load i8* %sum.addr.3, align 1, !dbg !252 ; [#uses=1 type=i8] [debug line = 328:6]
  %tmp.47 = trunc i9 %tmp.44 to i8, !dbg !252     ; [#uses=1 type=i8] [debug line = 328:6]
  %tmp.48 = add i8 %tmp.47, %sum.load.3, !dbg !252 ; [#uses=1 type=i8] [debug line = 328:6]
  store i8 %tmp.48, i8* %sum.addr.3, align 1, !dbg !252 ; [debug line = 328:6]
  br label %._crit_edge3, !dbg !254               ; [debug line = 329:5]

._crit_edge3:                                     ; preds = %14, %._crit_edge2
  %tmp.49 = add i8 %carry, %sum.load.2, !dbg !255 ; [#uses=1 type=i8] [debug line = 331:5]
  store i8 %tmp.49, i8* %sum.addr.2, align 1, !dbg !255 ; [debug line = 331:5]
  br label %._crit_edge, !dbg !256                ; [debug line = 332:4]

._crit_edge:                                      ; preds = %._crit_edge3, %11
  %j.5 = add i9 %j, 1, !dbg !257                  ; [#uses=1 type=i9] [debug line = 312:40]
  call void @llvm.dbg.value(metadata !{i9 %j.5}, i64 0, metadata !258), !dbg !257 ; [debug line = 312:40] [debug variable = j]
  %k.5 = add i9 %k5, -1, !dbg !257                ; [#uses=1 type=i9] [debug line = 312:40]
  call void @llvm.dbg.value(metadata !{i9 %k.5}, i64 0, metadata !238), !dbg !257 ; [debug line = 312:40] [debug variable = k]
  br label %9, !dbg !257                          ; [debug line = 312:40]

; <label>:15                                      ; preds = %9
  call fastcc void @bigint_add.1([256 x i8]* %out, [256 x i8]* %sum)
  call fastcc void @bigint_zero([256 x i8]* %sum), !dbg !259 ; [debug line = 337:3]
  %i.4 = add i9 %i, 1, !dbg !260                  ; [#uses=1 type=i9] [debug line = 309:22]
  call void @llvm.dbg.value(metadata !{i9 %i.4}, i64 0, metadata !261), !dbg !260 ; [debug line = 309:22] [debug variable = i]
  br label %6, !dbg !260                          ; [debug line = 309:22]

; <label>:16                                      ; preds = %6
  ret void, !dbg !262                             ; [debug line = 340:1]
}

; [#uses=2]
define internal fastcc void @bigint_mul([256 x i8]* nocapture %out, [256 x i8]* nocapture %a, [256 x i8]* nocapture %b) {
  %sum = alloca [256 x i8], align 16              ; [#uses=7 type=[256 x i8]*]
  %tempA = alloca [256 x i8], align 16            ; [#uses=3 type=[256 x i8]*]
  %tempB = alloca [256 x i8], align 16            ; [#uses=3 type=[256 x i8]*]
  call void @llvm.dbg.value(metadata !{[256 x i8]* %tempB}, i64 0, metadata !200), !dbg !203 ; [debug line = 41:32@303:2] [debug variable = to]
  call void @llvm.dbg.value(metadata !{[256 x i8]* %out}, i64 0, metadata !204), !dbg !205 ; [debug line = 280:31] [debug variable = out]
  call void @llvm.dbg.value(metadata !{[256 x i8]* %a}, i64 0, metadata !206), !dbg !207 ; [debug line = 280:55] [debug variable = a]
  call void @llvm.dbg.value(metadata !{[256 x i8]* %b}, i64 0, metadata !208), !dbg !209 ; [debug line = 280:77] [debug variable = b]
  call void @llvm.dbg.declare(metadata !{[256 x i8]* %sum}, metadata !210), !dbg !211 ; [debug line = 287:16] [debug variable = sum]
  call void @llvm.dbg.declare(metadata !{[256 x i8]* %tempA}, metadata !212), !dbg !213 ; [debug line = 289:16] [debug variable = tempA]
  call void @llvm.dbg.declare(metadata !{[256 x i8]* %tempB}, metadata !214), !dbg !215 ; [debug line = 290:16] [debug variable = tempB]
  call fastcc void @bigint_zero([256 x i8]* %tempA), !dbg !216 ; [debug line = 299:2]
  call fastcc void @bigint_zero([256 x i8]* %tempB), !dbg !217 ; [debug line = 300:2]
  call void @llvm.dbg.value(metadata !{[256 x i8]* %tempA}, i64 0, metadata !218), !dbg !220 ; [debug line = 41:32@302:2] [debug variable = to]
  call void @llvm.dbg.value(metadata !{[256 x i8]* %a}, i64 0, metadata !221), !dbg !222 ; [debug line = 41:55@302:2] [debug variable = from]
  br label %1, !dbg !223                          ; [debug line = 44:6@302:2]

; <label>:1                                       ; preds = %3, %0
  %i.i = phi i9 [ 0, %0 ], [ %i.8, %3 ]           ; [#uses=3 type=i9]
  %exitcond.i = icmp eq i9 %i.i, -256, !dbg !223  ; [#uses=1 type=i1] [debug line = 44:6@302:2]
  %2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 256, i64 256, i64 256) ; [#uses=0 type=i32]
  br i1 %exitcond.i, label %bigint_copy.exit.preheader, label %3, !dbg !223 ; [debug line = 44:6@302:2]

bigint_copy.exit.preheader:                       ; preds = %1
  br label %bigint_copy.exit, !dbg !224           ; [debug line = 44:6@303:2]

; <label>:3                                       ; preds = %1
  %tmp.i = zext i9 %i.i to i64, !dbg !225         ; [#uses=2 type=i64] [debug line = 45:3@302:2]
  %a.addr = getelementptr [256 x i8]* %a, i64 0, i64 %tmp.i, !dbg !225 ; [#uses=1 type=i8*] [debug line = 45:3@302:2]
  %a.load = load i8* %a.addr, align 1, !dbg !225  ; [#uses=1 type=i8] [debug line = 45:3@302:2]
  %to.assign.addr = getelementptr [256 x i8]* %tempA, i64 0, i64 %tmp.i, !dbg !225 ; [#uses=1 type=i8*] [debug line = 45:3@302:2]
  store i8 %a.load, i8* %to.assign.addr, align 1, !dbg !225 ; [debug line = 45:3@302:2]
  %i.8 = add i9 %i.i, 1, !dbg !226                ; [#uses=1 type=i9] [debug line = 44:22@302:2]
  call void @llvm.dbg.value(metadata !{i9 %i.8}, i64 0, metadata !227), !dbg !226 ; [debug line = 44:22@302:2] [debug variable = i]
  br label %1, !dbg !226                          ; [debug line = 44:22@302:2]

bigint_copy.exit:                                 ; preds = %5, %bigint_copy.exit.preheader
  %i.i3 = phi i9 [ %i.9, %5 ], [ 0, %bigint_copy.exit.preheader ] ; [#uses=3 type=i9]
  %exitcond.i4 = icmp eq i9 %i.i3, -256, !dbg !224 ; [#uses=1 type=i1] [debug line = 44:6@303:2]
  %4 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 256, i64 256, i64 256) ; [#uses=0 type=i32]
  br i1 %exitcond.i4, label %bigint_copy.exit10, label %5, !dbg !224 ; [debug line = 44:6@303:2]

; <label>:5                                       ; preds = %bigint_copy.exit
  %tmp.i5 = zext i9 %i.i3 to i64, !dbg !228       ; [#uses=2 type=i64] [debug line = 45:3@303:2]
  %b.addr = getelementptr [256 x i8]* %b, i64 0, i64 %tmp.i5, !dbg !228 ; [#uses=1 type=i8*] [debug line = 45:3@303:2]
  %b.load = load i8* %b.addr, align 1, !dbg !228  ; [#uses=1 type=i8] [debug line = 45:3@303:2]
  %tempB.addr.3 = getelementptr [256 x i8]* %tempB, i64 0, i64 %tmp.i5, !dbg !228 ; [#uses=1 type=i8*] [debug line = 45:3@303:2]
  store i8 %b.load, i8* %tempB.addr.3, align 1, !dbg !228 ; [debug line = 45:3@303:2]
  %i.9 = add i9 %i.i3, 1, !dbg !229               ; [#uses=1 type=i9] [debug line = 44:22@303:2]
  call void @llvm.dbg.value(metadata !{i9 %i.9}, i64 0, metadata !230), !dbg !229 ; [debug line = 44:22@303:2] [debug variable = i]
  br label %bigint_copy.exit, !dbg !229           ; [debug line = 44:22@303:2]

bigint_copy.exit10:                               ; preds = %bigint_copy.exit
  call fastcc void @bigint_zero([256 x i8]* %out), !dbg !231 ; [debug line = 305:2]
  call fastcc void @bigint_zero([256 x i8]* %sum), !dbg !232 ; [debug line = 306:2]
  br label %6, !dbg !233                          ; [debug line = 309:6]

; <label>:6                                       ; preds = %15, %bigint_copy.exit10
  %i = phi i9 [ 0, %bigint_copy.exit10 ], [ %i.4, %15 ] ; [#uses=3 type=i9]
  %exitcond1 = icmp eq i9 %i, -256, !dbg !233     ; [#uses=1 type=i1] [debug line = 309:6]
  %7 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 256, i64 256, i64 256) ; [#uses=0 type=i32]
  br i1 %exitcond1, label %16, label %8, !dbg !233 ; [debug line = 309:6]

; <label>:8                                       ; preds = %6
  %k = sub i9 255, %i, !dbg !235                  ; [#uses=2 type=i9] [debug line = 312:7]
  call void @llvm.dbg.value(metadata !{i9 %k}, i64 0, metadata !238), !dbg !235 ; [debug line = 312:7] [debug variable = k]
  %tmp = zext i9 %k to i64, !dbg !239             ; [#uses=1 type=i64] [debug line = 315:4]
  %tempB.addr = getelementptr inbounds [256 x i8]* %tempB, i64 0, i64 %tmp, !dbg !239 ; [#uses=1 type=i8*] [debug line = 315:4]
  %tempB.load = load i8* %tempB.addr, align 1, !dbg !239 ; [#uses=2 type=i8] [debug line = 315:4]
  %tmp..cast = zext i8 %tempB.load to i16, !dbg !235 ; [#uses=1 type=i16] [debug line = 312:7]
  br label %9, !dbg !235                          ; [debug line = 312:7]

; <label>:9                                       ; preds = %._crit_edge, %8
  %j = phi i9 [ 0, %8 ], [ %j.5, %._crit_edge ]   ; [#uses=3 type=i9]
  %k5 = phi i9 [ %k, %8 ], [ %k.5, %._crit_edge ] ; [#uses=5 type=i9]
  %k5.cast1 = sext i9 %k5 to i10, !dbg !235       ; [#uses=1 type=i10] [debug line = 312:7]
  %exitcond = icmp eq i9 %j, -256, !dbg !235      ; [#uses=1 type=i1] [debug line = 312:7]
  %10 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 256, i64 256, i64 256) ; [#uses=0 type=i32]
  br i1 %exitcond, label %15, label %11, !dbg !235 ; [debug line = 312:7]

; <label>:11                                      ; preds = %9
  %tmp.31 = sub i9 255, %j, !dbg !239             ; [#uses=1 type=i9] [debug line = 315:4]
  %tmp.32 = zext i9 %tmp.31 to i64, !dbg !239     ; [#uses=1 type=i64] [debug line = 315:4]
  %to.assign.addr.6 = getelementptr inbounds [256 x i8]* %tempA, i64 0, i64 %tmp.32, !dbg !239 ; [#uses=1 type=i8*] [debug line = 315:4]
  %to.assign.load = load i8* %to.assign.addr.6, align 1, !dbg !239 ; [#uses=2 type=i8] [debug line = 315:4]
  %prod = mul i8 %to.assign.load, %tempB.load, !dbg !239 ; [#uses=3 type=i8] [debug line = 315:4]
  call void @llvm.dbg.value(metadata !{i8 %prod}, i64 0, metadata !241), !dbg !239 ; [debug line = 315:4] [debug variable = prod]
  %tmp.33.cast = zext i8 %to.assign.load to i16, !dbg !242 ; [#uses=1 type=i16] [debug line = 316:4]
  %tmp.34 = mul i16 %tmp.33.cast, %tmp..cast, !dbg !242 ; [#uses=1 type=i16] [debug line = 316:4]
  %tmp.35 = lshr i16 %tmp.34, 8, !dbg !242        ; [#uses=1 type=i16] [debug line = 316:4]
  %carry = trunc i16 %tmp.35 to i8, !dbg !242     ; [#uses=3 type=i8] [debug line = 316:4]
  call void @llvm.dbg.value(metadata !{i8 %carry}, i64 0, metadata !243), !dbg !242 ; [debug line = 316:4] [debug variable = carry]
  %tmp.36 = or i8 %carry, %prod, !dbg !244        ; [#uses=1 type=i8] [debug line = 318:4]
  %tmp.37 = icmp eq i8 %tmp.36, 0, !dbg !244      ; [#uses=1 type=i1] [debug line = 318:4]
  br i1 %tmp.37, label %._crit_edge, label %12, !dbg !244 ; [debug line = 318:4]

; <label>:12                                      ; preds = %11
  %tmp.38 = sext i9 %k5 to i64, !dbg !245         ; [#uses=1 type=i64] [debug line = 320:5]
  %sum.addr.1 = getelementptr inbounds [256 x i8]* %sum, i64 0, i64 %tmp.38, !dbg !245 ; [#uses=2 type=i8*] [debug line = 320:5]
  %sum.load = load i8* %sum.addr.1, align 1, !dbg !245 ; [#uses=2 type=i8] [debug line = 320:5]
  %tmp.39.cast = zext i8 %sum.load to i9, !dbg !245 ; [#uses=1 type=i9] [debug line = 320:5]
  %tmp.40.cast = zext i8 %prod to i9, !dbg !245   ; [#uses=1 type=i9] [debug line = 320:5]
  %tmp.41 = add i9 %tmp.40.cast, %tmp.39.cast, !dbg !245 ; [#uses=2 type=i9] [debug line = 320:5]
  %tmp.42 = icmp slt i9 %tmp.41, 0, !dbg !245     ; [#uses=1 type=i1] [debug line = 320:5]
  br i1 %tmp.42, label %13, label %._crit_edge2, !dbg !245 ; [debug line = 320:5]

; <label>:13                                      ; preds = %12
  %tmp.43 = lshr i9 %tmp.41, 8, !dbg !247         ; [#uses=1 type=i9] [debug line = 321:6]
  %tmp.44 = add i9 %k5, -1, !dbg !247             ; [#uses=1 type=i9] [debug line = 321:6]
  %tmp.45 = sext i9 %tmp.44 to i64, !dbg !247     ; [#uses=1 type=i64] [debug line = 321:6]
  %sum.addr.2 = getelementptr inbounds [256 x i8]* %sum, i64 0, i64 %tmp.45, !dbg !247 ; [#uses=2 type=i8*] [debug line = 321:6]
  %sum.load.1 = load i8* %sum.addr.2, align 1, !dbg !247 ; [#uses=1 type=i8] [debug line = 321:6]
  %tmp.46 = trunc i9 %tmp.43 to i8, !dbg !247     ; [#uses=1 type=i8] [debug line = 321:6]
  %tmp.47 = add i8 %tmp.46, %sum.load.1, !dbg !247 ; [#uses=1 type=i8] [debug line = 321:6]
  store i8 %tmp.47, i8* %sum.addr.2, align 1, !dbg !247 ; [debug line = 321:6]
  br label %._crit_edge2, !dbg !249               ; [debug line = 322:5]

._crit_edge2:                                     ; preds = %13, %12
  %tmp.48 = add i8 %prod, %sum.load, !dbg !250    ; [#uses=1 type=i8] [debug line = 324:5]
  store i8 %tmp.48, i8* %sum.addr.1, align 1, !dbg !250 ; [debug line = 324:5]
  %tmp.49 = add i9 %k5, -1, !dbg !251             ; [#uses=1 type=i9] [debug line = 327:5]
  %tmp. = sext i9 %tmp.49 to i64, !dbg !251       ; [#uses=1 type=i64] [debug line = 327:5]
  %sum.addr.3 = getelementptr inbounds [256 x i8]* %sum, i64 0, i64 %tmp., !dbg !251 ; [#uses=2 type=i8*] [debug line = 327:5]
  %sum.load.2 = load i8* %sum.addr.3, align 1, !dbg !251 ; [#uses=2 type=i8] [debug line = 327:5]
  %tmp.51.cast = zext i8 %sum.load.2 to i9, !dbg !251 ; [#uses=1 type=i9] [debug line = 327:5]
  %tmp.52.cast = zext i8 %carry to i9, !dbg !251  ; [#uses=1 type=i9] [debug line = 327:5]
  %tmp.50 = add i9 %tmp.52.cast, %tmp.51.cast, !dbg !251 ; [#uses=2 type=i9] [debug line = 327:5]
  %tmp.51 = icmp slt i9 %tmp.50, 0, !dbg !251     ; [#uses=1 type=i1] [debug line = 327:5]
  br i1 %tmp.51, label %14, label %._crit_edge3, !dbg !251 ; [debug line = 327:5]

; <label>:14                                      ; preds = %._crit_edge2
  %tmp.52 = lshr i9 %tmp.50, 8, !dbg !252         ; [#uses=1 type=i9] [debug line = 328:6]
  %tmp.53 = add i10 %k5.cast1, -2, !dbg !252      ; [#uses=1 type=i10] [debug line = 328:6]
  %tmp.54 = sext i10 %tmp.53 to i64, !dbg !252    ; [#uses=1 type=i64] [debug line = 328:6]
  %sum.addr = getelementptr inbounds [256 x i8]* %sum, i64 0, i64 %tmp.54, !dbg !252 ; [#uses=2 type=i8*] [debug line = 328:6]
  %sum.load.3 = load i8* %sum.addr, align 1, !dbg !252 ; [#uses=1 type=i8] [debug line = 328:6]
  %tmp.55 = trunc i9 %tmp.52 to i8, !dbg !252     ; [#uses=1 type=i8] [debug line = 328:6]
  %tmp.56 = add i8 %tmp.55, %sum.load.3, !dbg !252 ; [#uses=1 type=i8] [debug line = 328:6]
  store i8 %tmp.56, i8* %sum.addr, align 1, !dbg !252 ; [debug line = 328:6]
  br label %._crit_edge3, !dbg !254               ; [debug line = 329:5]

._crit_edge3:                                     ; preds = %14, %._crit_edge2
  %tmp.57 = add i8 %carry, %sum.load.2, !dbg !255 ; [#uses=1 type=i8] [debug line = 331:5]
  store i8 %tmp.57, i8* %sum.addr.3, align 1, !dbg !255 ; [debug line = 331:5]
  br label %._crit_edge, !dbg !256                ; [debug line = 332:4]

._crit_edge:                                      ; preds = %._crit_edge3, %11
  %j.5 = add i9 %j, 1, !dbg !257                  ; [#uses=1 type=i9] [debug line = 312:40]
  call void @llvm.dbg.value(metadata !{i9 %j.5}, i64 0, metadata !258), !dbg !257 ; [debug line = 312:40] [debug variable = j]
  %k.5 = add i9 %k5, -1, !dbg !257                ; [#uses=1 type=i9] [debug line = 312:40]
  call void @llvm.dbg.value(metadata !{i9 %k.5}, i64 0, metadata !238), !dbg !257 ; [debug line = 312:40] [debug variable = k]
  br label %9, !dbg !257                          ; [debug line = 312:40]

; <label>:15                                      ; preds = %9
  call fastcc void @bigint_add.1([256 x i8]* %out, [256 x i8]* %sum)
  call fastcc void @bigint_zero([256 x i8]* %sum), !dbg !259 ; [debug line = 337:3]
  %i.4 = add i9 %i, 1, !dbg !260                  ; [#uses=1 type=i9] [debug line = 309:22]
  call void @llvm.dbg.value(metadata !{i9 %i.4}, i64 0, metadata !261), !dbg !260 ; [debug line = 309:22] [debug variable = i]
  br label %6, !dbg !260                          ; [debug line = 309:22]

; <label>:16                                      ; preds = %6
  ret void, !dbg !262                             ; [debug line = 340:1]
}

; [#uses=1]
define internal fastcc void @bigint_modexp([256 x i8]* nocapture %out, [256 x i8]* nocapture %base, [256 x i8]* nocapture %exp, [256 x i8]* nocapture %mod) {
  %zero = alloca [256 x i8], align 16             ; [#uses=3 type=[256 x i8]*]
  %one = alloca [256 x i8], align 16              ; [#uses=4 type=[256 x i8]*]
  %two = alloca [256 x i8], align 16              ; [#uses=3 type=[256 x i8]*]
  %temp = alloca [256 x i8], align 16             ; [#uses=12 type=[256 x i8]*]
  %temp1 = alloca [256 x i8], align 16            ; [#uses=10 type=[256 x i8]*]
  %temp2 = alloca [256 x i8], align 16            ; [#uses=2 type=[256 x i8]*]
  %tempBase = alloca [256 x i8], align 16         ; [#uses=7 type=[256 x i8]*]
  %tempExp = alloca [256 x i8], align 16          ; [#uses=6 type=[256 x i8]*]
  %tempMod = alloca [256 x i8], align 16          ; [#uses=5 type=[256 x i8]*]
  %result = alloca [256 x i8], align 16           ; [#uses=5 type=[256 x i8]*]
  call void @llvm.dbg.value(metadata !{[256 x i8]* %out}, i64 0, metadata !263), !dbg !264 ; [debug line = 539:34] [debug variable = out]
  call void @llvm.dbg.value(metadata !{[256 x i8]* %base}, i64 0, metadata !265), !dbg !266 ; [debug line = 539:58] [debug variable = base]
  call void @llvm.dbg.value(metadata !{[256 x i8]* %exp}, i64 0, metadata !267), !dbg !268 ; [debug line = 539:83] [debug variable = exp]
  call void @llvm.dbg.value(metadata !{[256 x i8]* %mod}, i64 0, metadata !269), !dbg !270 ; [debug line = 539:107] [debug variable = mod]
  call void @llvm.dbg.declare(metadata !{[256 x i8]* %zero}, metadata !271), !dbg !273 ; [debug line = 542:16] [debug variable = zero]
  call void @llvm.dbg.declare(metadata !{[256 x i8]* %one}, metadata !274), !dbg !275 ; [debug line = 543:16] [debug variable = one]
  call void @llvm.dbg.declare(metadata !{[256 x i8]* %two}, metadata !276), !dbg !277 ; [debug line = 544:16] [debug variable = two]
  call void @llvm.dbg.declare(metadata !{[256 x i8]* %temp}, metadata !278), !dbg !279 ; [debug line = 546:16] [debug variable = temp]
  call void @llvm.dbg.declare(metadata !{[256 x i8]* %temp1}, metadata !280), !dbg !281 ; [debug line = 547:16] [debug variable = temp1]
  call void @llvm.dbg.declare(metadata !{[256 x i8]* %temp2}, metadata !282), !dbg !283 ; [debug line = 548:16] [debug variable = temp2]
  call void @llvm.dbg.declare(metadata !{[256 x i8]* %tempBase}, metadata !284), !dbg !285 ; [debug line = 550:16] [debug variable = tempBase]
  call void @llvm.dbg.declare(metadata !{[256 x i8]* %tempExp}, metadata !286), !dbg !287 ; [debug line = 551:16] [debug variable = tempExp]
  call void @llvm.dbg.declare(metadata !{[256 x i8]* %tempMod}, metadata !288), !dbg !289 ; [debug line = 552:16] [debug variable = tempMod]
  call fastcc void @bigint_zero([256 x i8]* %zero), !dbg !290 ; [debug line = 554:2]
  call fastcc void @bigint_zero([256 x i8]* %one), !dbg !291 ; [debug line = 555:2]
  call fastcc void @bigint_zero([256 x i8]* %two), !dbg !292 ; [debug line = 556:2]
  call fastcc void @bigint_zero([256 x i8]* %temp), !dbg !293 ; [debug line = 558:2]
  call fastcc void @bigint_zero([256 x i8]* %temp1), !dbg !294 ; [debug line = 559:2]
  call fastcc void @bigint_zero([256 x i8]* %temp2), !dbg !295 ; [debug line = 560:2]
  call fastcc void @bigint_zero([256 x i8]* %tempBase), !dbg !296 ; [debug line = 562:2]
  call fastcc void @bigint_zero([256 x i8]* %tempExp), !dbg !297 ; [debug line = 563:2]
  call fastcc void @bigint_zero([256 x i8]* %tempMod), !dbg !298 ; [debug line = 564:2]
  call fastcc void @bigint_copy([256 x i8]* %tempBase, [256 x i8]* %base), !dbg !299 ; [debug line = 566:2]
  call fastcc void @bigint_copy([256 x i8]* %tempExp, [256 x i8]* %exp), !dbg !300 ; [debug line = 567:2]
  call fastcc void @bigint_copy([256 x i8]* %tempMod, [256 x i8]* %mod), !dbg !301 ; [debug line = 568:2]
  %temp.addr = getelementptr inbounds [256 x i8]* %temp, i64 0, i64 255, !dbg !302 ; [#uses=1 type=i8*] [debug line = 570:2]
  store i8 1, i8* %temp.addr, align 1, !dbg !302  ; [debug line = 570:2]
  %one.addr = getelementptr inbounds [256 x i8]* %one, i64 0, i64 255, !dbg !303 ; [#uses=2 type=i8*] [debug line = 571:2]
  store i8 1, i8* %one.addr, align 1, !dbg !303   ; [debug line = 571:2]
  %two.addr = getelementptr inbounds [256 x i8]* %two, i64 0, i64 255, !dbg !304 ; [#uses=2 type=i8*] [debug line = 572:2]
  store i8 2, i8* %two.addr, align 1, !dbg !304   ; [debug line = 572:2]
  call fastcc void @bigint_zero([256 x i8]* %out), !dbg !305 ; [debug line = 574:2]
  %tmp = call fastcc i2 @bigint_compare([256 x i8]* %mod, [256 x i8]* %one), !dbg !306 ; [#uses=1 type=i2] [debug line = 575:5]
  %tmp. = icmp eq i2 %tmp, 0, !dbg !306           ; [#uses=1 type=i1] [debug line = 575:5]
  br i1 %tmp., label %._crit_edge, label %1, !dbg !306 ; [debug line = 575:5]

; <label>:1                                       ; preds = %0
  call void @llvm.dbg.declare(metadata !{[256 x i8]* %result}, metadata !307), !dbg !308 ; [debug line = 579:16] [debug variable = result]
  call fastcc void @bigint_zero([256 x i8]* %result), !dbg !309 ; [debug line = 580:2]
  %out.addr = getelementptr [256 x i8]* %out, i64 0, i64 255, !dbg !310 ; [#uses=1 type=i8*] [debug line = 582:2]
  store i8 1, i8* %out.addr, align 1, !dbg !310   ; [debug line = 582:2]
  %result.addr = getelementptr inbounds [256 x i8]* %result, i64 0, i64 255, !dbg !311 ; [#uses=1 type=i8*] [debug line = 583:2]
  store i8 1, i8* %result.addr, align 1, !dbg !311 ; [debug line = 583:2]
  call fastcc void @bigint_longdiv([256 x i8]* %temp, [256 x i8]* %temp1, [256 x i8]* %tempBase, [256 x i8]* %tempMod), !dbg !312 ; [debug line = 585:2]
  call fastcc void @bigint_copy([256 x i8]* %tempBase, [256 x i8]* %temp1), !dbg !313 ; [debug line = 586:2]
  br label %2, !dbg !314                          ; [debug line = 588:2]

; <label>:2                                       ; preds = %._crit_edge1, %1
  %tmp.1 = call fastcc i2 @bigint_compare([256 x i8]* %tempExp, [256 x i8]* %zero), !dbg !315 ; [#uses=1 type=i2] [debug line = 588:8]
  %tmp.58 = icmp eq i2 %tmp.1, 1, !dbg !315       ; [#uses=1 type=i1] [debug line = 588:8]
  br i1 %tmp.58, label %3, label %5, !dbg !315    ; [debug line = 588:8]

; <label>:3                                       ; preds = %2
  call fastcc void @bigint_zero([256 x i8]* %temp), !dbg !316 ; [debug line = 589:3]
  call fastcc void @bigint_zero([256 x i8]* %temp1), !dbg !318 ; [debug line = 590:3]
  call fastcc void @bigint_longdiv([256 x i8]* %temp, [256 x i8]* %temp1, [256 x i8]* %tempExp, [256 x i8]* %two), !dbg !319 ; [debug line = 591:3]
  %tmp.2 = call fastcc i2 @bigint_compare([256 x i8]* %temp1, [256 x i8]* %one), !dbg !320 ; [#uses=1 type=i2] [debug line = 593:6]
  %tmp.59 = icmp eq i2 %tmp.2, 0, !dbg !320       ; [#uses=1 type=i1] [debug line = 593:6]
  br i1 %tmp.59, label %4, label %._crit_edge1, !dbg !320 ; [debug line = 593:6]

; <label>:4                                       ; preds = %3
  call fastcc void @bigint_mul([256 x i8]* %temp, [256 x i8]* %result, [256 x i8]* %tempBase)
  call fastcc void @bigint_zero([256 x i8]* %temp1), !dbg !321 ; [debug line = 596:4]
  call fastcc void @bigint_longdiv([256 x i8]* %temp1, [256 x i8]* %result, [256 x i8]* %temp, [256 x i8]* %tempMod), !dbg !323 ; [debug line = 598:4]
  br label %._crit_edge1, !dbg !324               ; [debug line = 600:3]

._crit_edge1:                                     ; preds = %4, %3
  call fastcc void @bigint_rightshift([256 x i8]* %temp, [256 x i8]* %tempExp), !dbg !325 ; [debug line = 602:3]
  call fastcc void @bigint_copy([256 x i8]* %tempExp, [256 x i8]* %temp), !dbg !326 ; [debug line = 603:3]
  call fastcc void @bigint_zero([256 x i8]* %temp), !dbg !327 ; [debug line = 605:3]
  call fastcc void @bigint_mul.1([256 x i8]* %temp, [256 x i8]* %tempBase)
  call fastcc void @bigint_zero([256 x i8]* %temp1), !dbg !328 ; [debug line = 608:3]
  call fastcc void @bigint_zero([256 x i8]* %temp2), !dbg !329 ; [debug line = 609:3]
  call fastcc void @bigint_longdiv([256 x i8]* %temp1, [256 x i8]* %tempBase, [256 x i8]* %temp, [256 x i8]* %tempMod), !dbg !330 ; [debug line = 610:3]
  call fastcc void @bigint_zero([256 x i8]* %zero), !dbg !331 ; [debug line = 612:3]
  store i8 1, i8* %one.addr, align 1, !dbg !332   ; [debug line = 613:3]
  store i8 2, i8* %two.addr, align 1, !dbg !333   ; [debug line = 614:3]
  br label %2, !dbg !334                          ; [debug line = 615:2]

; <label>:5                                       ; preds = %2
  call fastcc void @bigint_copy([256 x i8]* %out, [256 x i8]* %result), !dbg !335 ; [debug line = 617:2]
  br label %._crit_edge, !dbg !336                ; [debug line = 619:1]

._crit_edge:                                      ; preds = %5, %0
  ret void, !dbg !336                             ; [debug line = 619:1]
}

; [#uses=0]
define void @bigint_math([256 x i8]* %a, [256 x i8]* %b, [256 x i8]* %c, [256 x i8]* %d) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap([256 x i8]* %a) nounwind, !map !337
  call void (...)* @_ssdm_op_SpecBitsMap([256 x i8]* %b) nounwind, !map !343
  call void (...)* @_ssdm_op_SpecBitsMap([256 x i8]* %c) nounwind, !map !347
  call void (...)* @_ssdm_op_SpecBitsMap([256 x i8]* %d) nounwind, !map !351
  call void (...)* @_ssdm_op_SpecTopModule([12 x i8]* @bigint_math.str) nounwind
  call void @llvm.dbg.value(metadata !{[256 x i8]* %a}, i64 0, metadata !355), !dbg !356 ; [debug line = 7:32] [debug variable = a]
  call void @llvm.dbg.value(metadata !{[256 x i8]* %b}, i64 0, metadata !357), !dbg !358 ; [debug line = 7:54] [debug variable = b]
  call void @llvm.dbg.value(metadata !{[256 x i8]* %c}, i64 0, metadata !359), !dbg !360 ; [debug line = 7:76] [debug variable = c]
  call void @llvm.dbg.value(metadata !{[256 x i8]* %d}, i64 0, metadata !361), !dbg !362 ; [debug line = 7:98] [debug variable = d]
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [10 x i8]* @.str, i32 0, i32 0, i32 0, i32 0, [11 x i8]* @.str1, [1 x i8]* @.str2, [1 x i8]* @.str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str2) nounwind, !dbg !363 ; [debug line = 8:1]
  call void (...)* @_ssdm_op_SpecInterface([256 x i8]* %a, [10 x i8]* @.str, i32 0, i32 0, i32 0, i32 0, [11 x i8]* @.str1, [1 x i8]* @.str2, [1 x i8]* @.str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str2) nounwind
  call void (...)* @_ssdm_op_SpecInterface([256 x i8]* %b, [10 x i8]* @.str, i32 0, i32 0, i32 0, i32 0, [11 x i8]* @.str1, [1 x i8]* @.str2, [1 x i8]* @.str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str2) nounwind
  call void (...)* @_ssdm_op_SpecInterface([256 x i8]* %c, [10 x i8]* @.str, i32 0, i32 0, i32 0, i32 0, [11 x i8]* @.str1, [1 x i8]* @.str2, [1 x i8]* @.str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str2) nounwind
  call void (...)* @_ssdm_op_SpecInterface([256 x i8]* %d, [10 x i8]* @.str, i32 0, i32 0, i32 0, i32 0, [11 x i8]* @.str1, [1 x i8]* @.str2, [1 x i8]* @.str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str2) nounwind
  call void @llvm.dbg.value(metadata !{[256 x i8]* %a}, i64 0, metadata !365) nounwind, !dbg !367 ; [debug line = 6:32@14:2] [debug variable = in]
  br label %1, !dbg !368                          ; [debug line = 8:6@14:2]

; <label>:1                                       ; preds = %3, %0
  %i.i = phi i9 [ 0, %0 ], [ %i, %3 ]             ; [#uses=3 type=i9]
  %exitcond.i = icmp eq i9 %i.i, -256, !dbg !368  ; [#uses=1 type=i1] [debug line = 8:6@14:2]
  %2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 256, i64 256, i64 256) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond.i, label %bigint_zero.exit, label %3, !dbg !368 ; [debug line = 8:6@14:2]

; <label>:3                                       ; preds = %1
  %tmp.i = zext i9 %i.i to i64, !dbg !369         ; [#uses=1 type=i64] [debug line = 10:3@14:2]
  %a.addr = getelementptr [256 x i8]* %a, i64 0, i64 %tmp.i, !dbg !369 ; [#uses=1 type=i8*] [debug line = 10:3@14:2]
  store i8 0, i8* %a.addr, align 1, !dbg !369     ; [debug line = 10:3@14:2]
  %i = add i9 %i.i, 1, !dbg !370                  ; [#uses=1 type=i9] [debug line = 8:22@14:2]
  call void @llvm.dbg.value(metadata !{i9 %i}, i64 0, metadata !371) nounwind, !dbg !370 ; [debug line = 8:22@14:2] [debug variable = i]
  br label %1, !dbg !370                          ; [debug line = 8:22@14:2]

bigint_zero.exit:                                 ; preds = %1
  call fastcc void @bigint_modexp([256 x i8]* %a, [256 x i8]* %b, [256 x i8]* %c, [256 x i8]* %d) nounwind, !dbg !372 ; [debug line = 15:2]
  ret void, !dbg !373                             ; [debug line = 16:1]
}

; [#uses=4]
define internal fastcc void @bigint_longdiv([256 x i8]* nocapture %out, [256 x i8]* nocapture %out1, [256 x i8]* nocapture %a, [256 x i8]* nocapture %b) {
  %tempA = alloca [256 x i8], align 16            ; [#uses=8 type=[256 x i8]*]
  %tempB = alloca [256 x i8], align 16            ; [#uses=7 type=[256 x i8]*]
  %temp = alloca [256 x i8], align 16             ; [#uses=11 type=[256 x i8]*]
  %q = alloca [256 x i8], align 16                ; [#uses=1 type=[256 x i8]*]
  %d = alloca [256 x i8], align 16                ; [#uses=6 type=[256 x i8]*]
  %quot = alloca [256 x i8], align 16             ; [#uses=4 type=[256 x i8]*]
  %bitPlace = alloca [256 x i8], align 16         ; [#uses=5 type=[256 x i8]*]
  call void @llvm.dbg.value(metadata !{[256 x i8]* %out}, i64 0, metadata !374), !dbg !375 ; [debug line = 392:35] [debug variable = out]
  call void @llvm.dbg.value(metadata !{[256 x i8]* %out1}, i64 0, metadata !376), !dbg !377 ; [debug line = 392:59] [debug variable = out1]
  call void @llvm.dbg.value(metadata !{[256 x i8]* %a}, i64 0, metadata !378), !dbg !379 ; [debug line = 392:84] [debug variable = a]
  call void @llvm.dbg.value(metadata !{[256 x i8]* %b}, i64 0, metadata !380), !dbg !381 ; [debug line = 392:106] [debug variable = b]
  call void @llvm.dbg.declare(metadata !{[256 x i8]* %tempA}, metadata !382), !dbg !384 ; [debug line = 398:16] [debug variable = tempA]
  call void @llvm.dbg.declare(metadata !{[256 x i8]* %tempB}, metadata !385), !dbg !386 ; [debug line = 399:16] [debug variable = tempB]
  call fastcc void @bigint_zero([256 x i8]* %tempA), !dbg !387 ; [debug line = 407:2]
  call fastcc void @bigint_zero([256 x i8]* %tempB), !dbg !388 ; [debug line = 408:2]
  call fastcc void @bigint_copy([256 x i8]* %tempA, [256 x i8]* %a), !dbg !389 ; [debug line = 412:2]
  call fastcc void @bigint_copy([256 x i8]* %tempB, [256 x i8]* %b), !dbg !390 ; [debug line = 413:2]
  call fastcc void @bigint_zero([256 x i8]* %out), !dbg !391 ; [debug line = 418:2]
  call fastcc void @bigint_zero([256 x i8]* %out1), !dbg !392 ; [debug line = 419:2]
  %tmp = call fastcc i2 @bigint_compare([256 x i8]* %tempB, [256 x i8]* @zero), !dbg !393 ; [#uses=1 type=i2] [debug line = 421:5]
  %tmp. = icmp eq i2 %tmp, 0, !dbg !393           ; [#uses=1 type=i1] [debug line = 421:5]
  br i1 %tmp., label %._crit_edge, label %1, !dbg !393 ; [debug line = 421:5]

; <label>:1                                       ; preds = %0
  %tmp.3 = call fastcc i2 @bigint_compare([256 x i8]* %tempB, [256 x i8]* @one), !dbg !394 ; [#uses=1 type=i2] [debug line = 425:5]
  %tmp.60 = icmp eq i2 %tmp.3, 0, !dbg !394       ; [#uses=1 type=i1] [debug line = 425:5]
  br i1 %tmp.60, label %2, label %3, !dbg !394    ; [debug line = 425:5]

; <label>:2                                       ; preds = %1
  call fastcc void @bigint_copy([256 x i8]* %out, [256 x i8]* %tempA), !dbg !395 ; [debug line = 426:3]
  call fastcc void @bigint_copy([256 x i8]* %out1, [256 x i8]* @zero), !dbg !397 ; [debug line = 427:3]
  br label %._crit_edge, !dbg !398                ; [debug line = 428:3]

; <label>:3                                       ; preds = %1
  %i = call fastcc i2 @bigint_compare([256 x i8]* %tempA, [256 x i8]* %tempB), !dbg !399 ; [#uses=2 type=i2] [debug line = 432:6]
  %tmp.61 = icmp eq i2 %i, -1, !dbg !400          ; [#uses=1 type=i1] [debug line = 433:2]
  br i1 %tmp.61, label %4, label %5, !dbg !400    ; [debug line = 433:2]

; <label>:4                                       ; preds = %3
  call fastcc void @bigint_copy([256 x i8]* %out1, [256 x i8]* %tempA), !dbg !401 ; [debug line = 434:3]
  call fastcc void @bigint_copy([256 x i8]* %out, [256 x i8]* @zero), !dbg !403 ; [debug line = 435:3]
  br label %._crit_edge, !dbg !404                ; [debug line = 436:3]

; <label>:5                                       ; preds = %3
  %tmp.62 = icmp eq i2 %i, 0, !dbg !405           ; [#uses=1 type=i1] [debug line = 439:2]
  br i1 %tmp.62, label %6, label %.preheader11.preheader, !dbg !405 ; [debug line = 439:2]

.preheader11.preheader:                           ; preds = %5
  br label %.preheader11, !dbg !406               ; [debug line = 448:6]

; <label>:6                                       ; preds = %5
  %out.addr = getelementptr [256 x i8]* %out, i64 0, i64 255, !dbg !408 ; [#uses=1 type=i8*] [debug line = 440:3]
  store i8 1, i8* %out.addr, align 1, !dbg !408   ; [debug line = 440:3]
  %out1.addr = getelementptr [256 x i8]* %out1, i64 0, i64 255, !dbg !410 ; [#uses=1 type=i8*] [debug line = 441:3]
  store i8 0, i8* %out1.addr, align 1, !dbg !410  ; [debug line = 441:3]
  br label %._crit_edge, !dbg !411                ; [debug line = 442:3]

.preheader11:                                     ; preds = %12, %.preheader11.preheader
  %i5 = phi i9 [ %i.5, %12 ], [ 0, %.preheader11.preheader ] ; [#uses=3 type=i9]
  %flag = phi i2 [ %flag.2, %12 ], [ 0, %.preheader11.preheader ] ; [#uses=2 type=i2]
  %aMSB = phi i32 [ %aMSB.5, %12 ], [ 0, %.preheader11.preheader ] ; [#uses=3 type=i32]
  %tmp.63 = icmp sgt i9 %i5, -1, !dbg !406        ; [#uses=1 type=i1] [debug line = 448:6]
  %7 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1, i64 256, i64 128) ; [#uses=0 type=i32]
  br i1 %tmp.63, label %8, label %.loopexit8, !dbg !406 ; [debug line = 448:6]

; <label>:8                                       ; preds = %.preheader11
  %tmp.64 = zext i9 %i5 to i64, !dbg !412         ; [#uses=1 type=i64] [debug line = 449:3]
  %a.addr = getelementptr [256 x i8]* %a, i64 0, i64 %tmp.64, !dbg !412 ; [#uses=1 type=i8*] [debug line = 449:3]
  %a.load = load i8* %a.addr, align 1, !dbg !412  ; [#uses=2 type=i8] [debug line = 449:3]
  %tmp.65 = icmp eq i8 %a.load, 0, !dbg !412      ; [#uses=1 type=i1] [debug line = 449:3]
  br i1 %tmp.65, label %.loopexit5, label %.preheader10.preheader, !dbg !412 ; [debug line = 449:3]

.preheader10.preheader:                           ; preds = %8
  br label %.preheader10, !dbg !414               ; [debug line = 450:8]

.preheader10:                                     ; preds = %11, %.preheader10.preheader
  %j = phi i4 [ %j.6, %11 ], [ 0, %.preheader10.preheader ] ; [#uses=4 type=i4]
  %aMSB.1 = phi i32 [ %aMSB.4, %11 ], [ %aMSB, %.preheader10.preheader ] ; [#uses=2 type=i32]
  %j.cast3 = zext i4 %j to i8, !dbg !414          ; [#uses=1 type=i8] [debug line = 450:8]
  %tmp.66 = icmp sgt i4 %j, -1, !dbg !414         ; [#uses=1 type=i1] [debug line = 450:8]
  %9 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1, i64 8, i64 4) ; [#uses=0 type=i32]
  br i1 %tmp.66, label %10, label %.loopexit5.loopexit, !dbg !414 ; [debug line = 450:8]

; <label>:10                                      ; preds = %.preheader10
  %tmp.67 = lshr i8 -128, %j.cast3, !dbg !417     ; [#uses=1 type=i8] [debug line = 451:5]
  %tmp.68 = and i8 %tmp.67, %a.load, !dbg !417    ; [#uses=1 type=i8] [debug line = 451:5]
  %tmp.69 = sub i4 7, %j, !dbg !417               ; [#uses=1 type=i4] [debug line = 451:5]
  %tmp.73.cast = zext i4 %tmp.69 to i8, !dbg !417 ; [#uses=1 type=i8] [debug line = 451:5]
  %tmp.70 = lshr i8 %tmp.68, %tmp.73.cast, !dbg !417 ; [#uses=1 type=i8] [debug line = 451:5]
  %tmp.71 = icmp eq i8 %tmp.70, 1, !dbg !417      ; [#uses=1 type=i1] [debug line = 451:5]
  br i1 %tmp.71, label %.loopexit5.loopexit, label %11, !dbg !417 ; [debug line = 451:5]

; <label>:11                                      ; preds = %10
  %aMSB.4 = add nsw i32 %aMSB.1, 1, !dbg !419     ; [#uses=1 type=i32] [debug line = 456:5]
  call void @llvm.dbg.value(metadata !{i32 %aMSB.4}, i64 0, metadata !420), !dbg !419 ; [debug line = 456:5] [debug variable = aMSB]
  %j.6 = add i4 %j, 1, !dbg !421                  ; [#uses=1 type=i4] [debug line = 450:22]
  call void @llvm.dbg.value(metadata !{i4 %j.6}, i64 0, metadata !422), !dbg !421 ; [debug line = 450:22] [debug variable = j]
  br label %.preheader10, !dbg !421               ; [debug line = 450:22]

.loopexit5.loopexit:                              ; preds = %10, %.preheader10
  %flag.2.ph = phi i2 [ %flag, %.preheader10 ], [ 1, %10 ] ; [#uses=1 type=i2]
  br label %.loopexit5

.loopexit5:                                       ; preds = %.loopexit5.loopexit, %8
  %flag.2 = phi i2 [ %flag, %8 ], [ %flag.2.ph, %.loopexit5.loopexit ] ; [#uses=2 type=i2]
  %aMSB.2 = phi i32 [ %aMSB, %8 ], [ %aMSB.1, %.loopexit5.loopexit ] ; [#uses=2 type=i32]
  %tmp.72 = icmp eq i2 %flag.2, 1, !dbg !423      ; [#uses=1 type=i1] [debug line = 460:3]
  br i1 %tmp.72, label %.loopexit8, label %12, !dbg !423 ; [debug line = 460:3]

; <label>:12                                      ; preds = %.loopexit5
  %aMSB.5 = add nsw i32 %aMSB.2, 8, !dbg !424     ; [#uses=1 type=i32] [debug line = 465:3]
  call void @llvm.dbg.value(metadata !{i32 %aMSB.5}, i64 0, metadata !420), !dbg !424 ; [debug line = 465:3] [debug variable = aMSB]
  %i.5 = add i9 %i5, 1, !dbg !425                 ; [#uses=1 type=i9] [debug line = 448:22]
  call void @llvm.dbg.value(metadata !{i9 %i.5}, i64 0, metadata !426), !dbg !425 ; [debug line = 448:22] [debug variable = i]
  br label %.preheader11, !dbg !425               ; [debug line = 448:22]

.loopexit8:                                       ; preds = %.loopexit5, %.preheader11
  %aMSB.3 = phi i32 [ %aMSB, %.preheader11 ], [ %aMSB.2, %.loopexit5 ] ; [#uses=2 type=i32]
  br label %13, !dbg !427                         ; [debug line = 471:6]

; <label>:13                                      ; preds = %19, %.loopexit8
  %i.1 = phi i9 [ 0, %.loopexit8 ], [ %i.6, %19 ] ; [#uses=3 type=i9]
  %flag.3 = phi i2 [ 0, %.loopexit8 ], [ %flag.5, %19 ] ; [#uses=2 type=i2]
  %bMSB = phi i32 [ 0, %.loopexit8 ], [ %bMSB.5, %19 ] ; [#uses=3 type=i32]
  %tmp.73 = icmp sgt i9 %i.1, -1, !dbg !427       ; [#uses=1 type=i1] [debug line = 471:6]
  %14 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1, i64 256, i64 128) ; [#uses=0 type=i32]
  br i1 %tmp.73, label %15, label %.loopexit3, !dbg !427 ; [debug line = 471:6]

; <label>:15                                      ; preds = %13
  %tmp.74 = zext i9 %i.1 to i64, !dbg !429        ; [#uses=1 type=i64] [debug line = 473:3]
  %b.addr = getelementptr [256 x i8]* %b, i64 0, i64 %tmp.74, !dbg !429 ; [#uses=1 type=i8*] [debug line = 473:3]
  %b.load = load i8* %b.addr, align 1, !dbg !429  ; [#uses=2 type=i8] [debug line = 473:3]
  %tmp.75 = icmp eq i8 %b.load, 0, !dbg !429      ; [#uses=1 type=i1] [debug line = 473:3]
  br i1 %tmp.75, label %.loopexit, label %.preheader.preheader, !dbg !429 ; [debug line = 473:3]

.preheader.preheader:                             ; preds = %15
  br label %.preheader, !dbg !431                 ; [debug line = 474:8]

.preheader:                                       ; preds = %18, %.preheader.preheader
  %j.1 = phi i4 [ %j.7, %18 ], [ 0, %.preheader.preheader ] ; [#uses=4 type=i4]
  %bMSB.1 = phi i32 [ %bMSB.4, %18 ], [ %bMSB, %.preheader.preheader ] ; [#uses=2 type=i32]
  %j.1.cast1 = zext i4 %j.1 to i8, !dbg !431      ; [#uses=1 type=i8] [debug line = 474:8]
  %tmp.76 = icmp sgt i4 %j.1, -1, !dbg !431       ; [#uses=1 type=i1] [debug line = 474:8]
  %16 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1, i64 8, i64 4) ; [#uses=0 type=i32]
  br i1 %tmp.76, label %17, label %.loopexit.loopexit, !dbg !431 ; [debug line = 474:8]

; <label>:17                                      ; preds = %.preheader
  %tmp.77 = lshr i8 -128, %j.1.cast1, !dbg !434   ; [#uses=1 type=i8] [debug line = 475:5]
  %tmp.78 = and i8 %tmp.77, %b.load, !dbg !434    ; [#uses=1 type=i8] [debug line = 475:5]
  %tmp.79 = sub i4 7, %j.1, !dbg !434             ; [#uses=1 type=i4] [debug line = 475:5]
  %tmp.84.cast = zext i4 %tmp.79 to i8, !dbg !434 ; [#uses=1 type=i8] [debug line = 475:5]
  %tmp.80 = lshr i8 %tmp.78, %tmp.84.cast, !dbg !434 ; [#uses=1 type=i8] [debug line = 475:5]
  %tmp.81 = icmp eq i8 %tmp.80, 1, !dbg !434      ; [#uses=1 type=i1] [debug line = 475:5]
  br i1 %tmp.81, label %.loopexit.loopexit, label %18, !dbg !434 ; [debug line = 475:5]

; <label>:18                                      ; preds = %17
  %bMSB.4 = add nsw i32 %bMSB.1, 1, !dbg !436     ; [#uses=1 type=i32] [debug line = 479:6]
  call void @llvm.dbg.value(metadata !{i32 %bMSB.4}, i64 0, metadata !437), !dbg !436 ; [debug line = 479:6] [debug variable = bMSB]
  %j.7 = add i4 %j.1, 1, !dbg !438                ; [#uses=1 type=i4] [debug line = 474:22]
  call void @llvm.dbg.value(metadata !{i4 %j.7}, i64 0, metadata !422), !dbg !438 ; [debug line = 474:22] [debug variable = j]
  br label %.preheader, !dbg !438                 ; [debug line = 474:22]

.loopexit.loopexit:                               ; preds = %17, %.preheader
  %flag.5.ph = phi i2 [ %flag.3, %.preheader ], [ 1, %17 ] ; [#uses=1 type=i2]
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %15
  %flag.5 = phi i2 [ %flag.3, %15 ], [ %flag.5.ph, %.loopexit.loopexit ] ; [#uses=2 type=i2]
  %bMSB.2 = phi i32 [ %bMSB, %15 ], [ %bMSB.1, %.loopexit.loopexit ] ; [#uses=2 type=i32]
  %tmp.82 = icmp eq i2 %flag.5, 1, !dbg !439      ; [#uses=1 type=i1] [debug line = 482:3]
  br i1 %tmp.82, label %.loopexit3, label %19, !dbg !439 ; [debug line = 482:3]

; <label>:19                                      ; preds = %.loopexit
  %bMSB.5 = add nsw i32 %bMSB.2, 8, !dbg !440     ; [#uses=1 type=i32] [debug line = 485:3]
  call void @llvm.dbg.value(metadata !{i32 %bMSB.5}, i64 0, metadata !437), !dbg !440 ; [debug line = 485:3] [debug variable = bMSB]
  %i.6 = add i9 %i.1, 1, !dbg !441                ; [#uses=1 type=i9] [debug line = 471:22]
  call void @llvm.dbg.value(metadata !{i9 %i.6}, i64 0, metadata !426), !dbg !441 ; [debug line = 471:22] [debug variable = i]
  br label %13, !dbg !441                         ; [debug line = 471:22]

.loopexit3:                                       ; preds = %.loopexit, %13
  %bMSB.3 = phi i32 [ %bMSB, %13 ], [ %bMSB.2, %.loopexit ] ; [#uses=2 type=i32]
  call void @llvm.dbg.declare(metadata !{[256 x i8]* %temp}, metadata !442), !dbg !443 ; [debug line = 489:16] [debug variable = temp]
  call void @llvm.dbg.declare(metadata !{[256 x i8]* %d}, metadata !444), !dbg !445 ; [debug line = 492:16] [debug variable = d]
  call fastcc void @bigint_zero([256 x i8]* %q), !dbg !446 ; [debug line = 493:2]
  call fastcc void @bigint_zero([256 x i8]* %d), !dbg !447 ; [debug line = 494:2]
  call fastcc void @bigint_zero([256 x i8]* %temp), !dbg !448 ; [debug line = 496:2]
  %tmp.83 = sub nsw i32 %bMSB.3, %aMSB.3, !dbg !449 ; [#uses=2 type=i32] [debug line = 497:2]
  call fastcc void @bigint_leftshift([256 x i8]* %d, [256 x i8]* %tempB, i32 %tmp.83), !dbg !449 ; [debug line = 497:2]
  call void @llvm.dbg.declare(metadata !{[256 x i8]* %quot}, metadata !450), !dbg !451 ; [debug line = 499:16] [debug variable = quot]
  call fastcc void @bigint_zero([256 x i8]* %quot), !dbg !452 ; [debug line = 500:2]
  call void @llvm.dbg.declare(metadata !{[256 x i8]* %bitPlace}, metadata !453), !dbg !454 ; [debug line = 502:16] [debug variable = bitPlace]
  call fastcc void @bigint_zero([256 x i8]* %bitPlace), !dbg !455 ; [debug line = 503:2]
  call fastcc void @bigint_leftshift([256 x i8]* %bitPlace, [256 x i8]* @one, i32 %tmp.83), !dbg !456 ; [debug line = 505:2]
  %tmp.84 = sub i32 1, %aMSB.3, !dbg !457         ; [#uses=1 type=i32] [debug line = 507:6]
  %tmp.85 = add i32 %bMSB.3, %tmp.84, !dbg !457   ; [#uses=1 type=i32] [debug line = 507:6]
  br label %20, !dbg !457                         ; [debug line = 507:6]

; <label>:20                                      ; preds = %._crit_edge14, %.loopexit3
  %j.2 = phi i31 [ 0, %.loopexit3 ], [ %j.8, %._crit_edge14 ] ; [#uses=2 type=i31]
  %j.2.cast = zext i31 %j.2 to i32, !dbg !457     ; [#uses=1 type=i32] [debug line = 507:6]
  %tmp.86 = icmp slt i32 %j.2.cast, %tmp.85, !dbg !457 ; [#uses=1 type=i1] [debug line = 507:6]
  br i1 %tmp.86, label %21, label %23, !dbg !457  ; [debug line = 507:6]

; <label>:21                                      ; preds = %20
  %i.7 = call fastcc i2 @bigint_compare([256 x i8]* %tempA, [256 x i8]* %d), !dbg !459 ; [#uses=1 type=i2] [debug line = 508:7]
  %switch5 = icmp sgt i2 %i.7, -1, !dbg !461      ; [#uses=1 type=i1] [debug line = 510:3]
  br i1 %switch5, label %22, label %._crit_edge14, !dbg !461 ; [debug line = 510:3]

; <label>:22                                      ; preds = %21
  call fastcc void @bigint_add([256 x i8]* %temp, [256 x i8]* %quot, [256 x i8]* %bitPlace)
  call fastcc void @bigint_copy([256 x i8]* %quot, [256 x i8]* %temp), !dbg !462 ; [debug line = 512:4]
  call fastcc void @bigint_sub([256 x i8]* %temp, [256 x i8]* %tempA, [256 x i8]* %d), !dbg !464 ; [debug line = 514:4]
  call fastcc void @bigint_copy([256 x i8]* %tempA, [256 x i8]* %temp), !dbg !465 ; [debug line = 515:4]
  br label %._crit_edge14, !dbg !466              ; [debug line = 518:3]

._crit_edge14:                                    ; preds = %22, %21
  call fastcc void @bigint_rightshift([256 x i8]* %temp, [256 x i8]* %bitPlace), !dbg !467 ; [debug line = 520:3]
  call fastcc void @bigint_copy([256 x i8]* %bitPlace, [256 x i8]* %temp), !dbg !468 ; [debug line = 521:3]
  call fastcc void @bigint_rightshift([256 x i8]* %temp, [256 x i8]* %d), !dbg !469 ; [debug line = 523:3]
  call fastcc void @bigint_copy([256 x i8]* %d, [256 x i8]* %temp), !dbg !470 ; [debug line = 524:3]
  %j.8 = add i31 %j.2, 1, !dbg !471               ; [#uses=1 type=i31] [debug line = 507:30]
  call void @llvm.dbg.value(metadata !{i31 %j.8}, i64 0, metadata !422), !dbg !471 ; [debug line = 507:30] [debug variable = j]
  br label %20, !dbg !471                         ; [debug line = 507:30]

; <label>:23                                      ; preds = %20
  call fastcc void @bigint_copy([256 x i8]* %out, [256 x i8]* %quot), !dbg !472 ; [debug line = 528:2]
  call fastcc void @bigint_mul([256 x i8]* %temp, [256 x i8]* %out, [256 x i8]* %tempB)
  call fastcc void @bigint_sub([256 x i8]* %out1, [256 x i8]* %a, [256 x i8]* %temp), !dbg !473 ; [debug line = 530:2]
  br label %._crit_edge, !dbg !474                ; [debug line = 533:1]

._crit_edge:                                      ; preds = %23, %6, %4, %2, %0
  ret void, !dbg !474                             ; [debug line = 533:1]
}

; [#uses=2]
define internal fastcc void @bigint_leftshift([256 x i8]* nocapture %out, [256 x i8]* nocapture %a, i32 %shift) {
  call void @llvm.dbg.value(metadata !{[256 x i8]* %out}, i64 0, metadata !475), !dbg !476 ; [debug line = 93:37] [debug variable = out]
  call void @llvm.dbg.value(metadata !{[256 x i8]* %a}, i64 0, metadata !477), !dbg !478 ; [debug line = 93:61] [debug variable = a]
  call void @llvm.dbg.value(metadata !{i32 %shift}, i64 0, metadata !479), !dbg !480 ; [debug line = 93:73] [debug variable = shift]
  %tmp = icmp eq i32 %shift, 0, !dbg !481         ; [#uses=1 type=i1] [debug line = 101:2]
  br i1 %tmp, label %.preheader10.preheader, label %3, !dbg !481 ; [debug line = 101:2]

.preheader10.preheader:                           ; preds = %0
  br label %.preheader10, !dbg !483               ; [debug line = 44:6@102:3]

.preheader10:                                     ; preds = %2, %.preheader10.preheader
  %i.i = phi i9 [ %i.10, %2 ], [ 0, %.preheader10.preheader ] ; [#uses=3 type=i9]
  %exitcond.i = icmp eq i9 %i.i, -256, !dbg !483  ; [#uses=1 type=i1] [debug line = 44:6@102:3]
  %1 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 256, i64 256, i64 256) ; [#uses=0 type=i32]
  br i1 %exitcond.i, label %.loopexit.loopexit5, label %2, !dbg !483 ; [debug line = 44:6@102:3]

; <label>:2                                       ; preds = %.preheader10
  %tmp.i = zext i9 %i.i to i64, !dbg !486         ; [#uses=2 type=i64] [debug line = 45:3@102:3]
  %a.addr.1 = getelementptr [256 x i8]* %a, i64 0, i64 %tmp.i, !dbg !486 ; [#uses=1 type=i8*] [debug line = 45:3@102:3]
  %a.load.1 = load i8* %a.addr.1, align 1, !dbg !486 ; [#uses=1 type=i8] [debug line = 45:3@102:3]
  %out.addr.3 = getelementptr [256 x i8]* %out, i64 0, i64 %tmp.i, !dbg !486 ; [#uses=1 type=i8*] [debug line = 45:3@102:3]
  store i8 %a.load.1, i8* %out.addr.3, align 1, !dbg !486 ; [debug line = 45:3@102:3]
  %i.10 = add i9 %i.i, 1, !dbg !487               ; [#uses=1 type=i9] [debug line = 44:22@102:3]
  call void @llvm.dbg.value(metadata !{i9 %i.10}, i64 0, metadata !488), !dbg !487 ; [debug line = 44:22@102:3] [debug variable = i]
  br label %.preheader10, !dbg !487               ; [debug line = 44:22@102:3]

; <label>:3                                       ; preds = %0
  %_signbit = lshr i32 %shift, 31, !dbg !489      ; [#uses=1 type=i32] [debug line = 106:21]
  %_cond = trunc i32 %_signbit to i1, !dbg !489   ; [#uses=1 type=i1] [debug line = 106:21]
  %_neg = sub i32 0, %shift, !dbg !489            ; [#uses=1 type=i32] [debug line = 106:21]
  %_lshr = lshr i32 %_neg, 3, !dbg !489           ; [#uses=1 type=i32] [debug line = 106:21]
  %_lshr.cast = trunc i32 %_lshr to i30, !dbg !489 ; [#uses=1 type=i30] [debug line = 106:21]
  %_neg.t = sub i30 0, %_lshr.cast, !dbg !489     ; [#uses=1 type=i30] [debug line = 106:21]
  %_lshr.f = lshr i32 %shift, 3, !dbg !489        ; [#uses=1 type=i32] [debug line = 106:21]
  %_lshr.f.cast = trunc i32 %_lshr.f to i30, !dbg !489 ; [#uses=1 type=i30] [debug line = 106:21]
  %start = select i1 %_cond, i30 %_neg.t, i30 %_lshr.f.cast, !dbg !489 ; [#uses=1 type=i30] [debug line = 106:21]
  %start.cast = sext i30 %start to i31, !dbg !489 ; [#uses=1 type=i31] [debug line = 106:21]
  call void @llvm.dbg.value(metadata !{i30 %start}, i64 0, metadata !490), !dbg !489 ; [debug line = 106:21] [debug variable = start]
  %outputBit.5 = srem i32 %shift, 8, !dbg !491    ; [#uses=1 type=i32] [debug line = 107:26]
  call void @llvm.dbg.value(metadata !{i32 %outputBit.5}, i64 0, metadata !492), !dbg !493 ; [debug line = 114:3] [debug variable = outputBit]
  call void @llvm.dbg.value(metadata !{i32 %outputBit.5}, i64 0, metadata !496), !dbg !491 ; [debug line = 107:26] [debug variable = bitStart]
  %k = sub i31 255, %start.cast, !dbg !497        ; [#uses=1 type=i31] [debug line = 110:2]
  %k.cast = sext i31 %k to i32, !dbg !497         ; [#uses=1 type=i32] [debug line = 110:2]
  call void @llvm.dbg.value(metadata !{i31 %k}, i64 0, metadata !498), !dbg !497 ; [debug line = 110:2] [debug variable = k]
  call void @llvm.dbg.value(metadata !{[256 x i8]* %out}, i64 0, metadata !499), !dbg !501 ; [debug line = 6:32@111:2] [debug variable = in]
  br label %4, !dbg !502                          ; [debug line = 8:6@111:2]

; <label>:4                                       ; preds = %6, %3
  %i.i7 = phi i9 [ 0, %3 ], [ %i.11, %6 ]         ; [#uses=3 type=i9]
  %exitcond.i8 = icmp eq i9 %i.i7, -256, !dbg !502 ; [#uses=1 type=i1] [debug line = 8:6@111:2]
  %5 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 256, i64 256, i64 256) ; [#uses=0 type=i32]
  br i1 %exitcond.i8, label %bigint_zero.exit.preheader, label %6, !dbg !502 ; [debug line = 8:6@111:2]

bigint_zero.exit.preheader:                       ; preds = %4
  br label %bigint_zero.exit, !dbg !503           ; [debug line = 113:6]

; <label>:6                                       ; preds = %4
  %tmp.i9 = zext i9 %i.i7 to i64, !dbg !504       ; [#uses=1 type=i64] [debug line = 10:3@111:2]
  %out.addr.4 = getelementptr [256 x i8]* %out, i64 0, i64 %tmp.i9, !dbg !504 ; [#uses=1 type=i8*] [debug line = 10:3@111:2]
  store i8 0, i8* %out.addr.4, align 1, !dbg !504 ; [debug line = 10:3@111:2]
  %i.11 = add i9 %i.i7, 1, !dbg !505              ; [#uses=1 type=i9] [debug line = 8:22@111:2]
  call void @llvm.dbg.value(metadata !{i9 %i.11}, i64 0, metadata !506), !dbg !505 ; [debug line = 8:22@111:2] [debug variable = i]
  br label %4, !dbg !505                          ; [debug line = 8:22@111:2]

bigint_zero.exit:                                 ; preds = %13, %bigint_zero.exit.preheader
  %i = phi i9 [ %i.8, %13 ], [ 255, %bigint_zero.exit.preheader ] ; [#uses=3 type=i9]
  %k7 = phi i32 [ %.k.1, %13 ], [ %k.cast, %bigint_zero.exit.preheader ] ; [#uses=1 type=i32]
  %i.cast = sext i9 %i to i32, !dbg !503          ; [#uses=1 type=i32] [debug line = 113:6]
  %tmp. = icmp sgt i9 %i, -1, !dbg !503           ; [#uses=1 type=i1] [debug line = 113:6]
  %7 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 256, i64 256, i64 256) ; [#uses=0 type=i32]
  br i1 %tmp., label %.preheader.preheader, label %.loopexit.loopexit, !dbg !503 ; [debug line = 113:6]

.preheader.preheader:                             ; preds = %bigint_zero.exit
  %tmp.87 = zext i32 %i.cast to i64, !dbg !507    ; [#uses=1 type=i64] [debug line = 116:4]
  %a.addr = getelementptr [256 x i8]* %a, i64 0, i64 %tmp.87, !dbg !507 ; [#uses=1 type=i8*] [debug line = 116:4]
  br label %.preheader, !dbg !510                 ; [debug line = 115:7]

.preheader:                                       ; preds = %12, %.preheader.preheader
  %j = phi i4 [ %j.9, %12 ], [ 0, %.preheader.preheader ] ; [#uses=3 type=i4]
  %k.1 = phi i32 [ %k.2, %12 ], [ %k7, %.preheader.preheader ] ; [#uses=4 type=i32]
  %outputBit = phi i32 [ %outputBit.3, %12 ], [ %outputBit.5, %.preheader.preheader ] ; [#uses=4 type=i32]
  %j.cast1 = zext i4 %j to i8, !dbg !510          ; [#uses=2 type=i8] [debug line = 115:7]
  %outputBit.cast = trunc i32 %outputBit to i8, !dbg !510 ; [#uses=1 type=i8] [debug line = 115:7]
  %exitcond = icmp eq i4 %j, -8, !dbg !510        ; [#uses=1 type=i1] [debug line = 115:7]
  %8 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) ; [#uses=0 type=i32]
  br i1 %exitcond, label %13, label %9, !dbg !510 ; [debug line = 115:7]

; <label>:9                                       ; preds = %.preheader
  %a.load = load i8* %a.addr, align 1, !dbg !507  ; [#uses=1 type=i8] [debug line = 116:4]
  %tmp.89 = shl i8 1, %j.cast1, !dbg !507         ; [#uses=1 type=i8] [debug line = 116:4]
  %tmp.90 = and i8 %tmp.89, %a.load, !dbg !507    ; [#uses=1 type=i8] [debug line = 116:4]
  %b = lshr i8 %tmp.90, %j.cast1, !dbg !507       ; [#uses=2 type=i8] [debug line = 116:4]
  call void @llvm.dbg.value(metadata !{i8 %b}, i64 0, metadata !511), !dbg !507 ; [debug line = 116:4] [debug variable = b]
  %tmp.92 = icmp eq i32 %outputBit, 8, !dbg !512  ; [#uses=1 type=i1] [debug line = 118:4]
  br i1 %tmp.92, label %10, label %11, !dbg !512  ; [debug line = 118:4]

; <label>:10                                      ; preds = %9
  %k.7 = add nsw i32 %k.1, -1, !dbg !513          ; [#uses=2 type=i32] [debug line = 119:5]
  call void @llvm.dbg.value(metadata !{i32 %k.7}, i64 0, metadata !498), !dbg !513 ; [debug line = 119:5] [debug variable = k]
  %tmp.93 = sext i32 %k.7 to i64, !dbg !515       ; [#uses=1 type=i64] [debug line = 121:5]
  %out.addr = getelementptr [256 x i8]* %out, i64 0, i64 %tmp.93, !dbg !515 ; [#uses=2 type=i8*] [debug line = 121:5]
  %out.load = load i8* %out.addr, align 1, !dbg !515 ; [#uses=1 type=i8] [debug line = 121:5]
  %tmp.94 = add i8 %b, %out.load, !dbg !515       ; [#uses=1 type=i8] [debug line = 121:5]
  store i8 %tmp.94, i8* %out.addr, align 1, !dbg !515 ; [debug line = 121:5]
  br label %12, !dbg !516                         ; [debug line = 122:4]

; <label>:11                                      ; preds = %9
  %tmp.95 = shl i8 %b, %outputBit.cast, !dbg !517 ; [#uses=1 type=i8] [debug line = 123:5]
  %tmp.96 = sext i32 %k.1 to i64, !dbg !517       ; [#uses=1 type=i64] [debug line = 123:5]
  %out.addr.2 = getelementptr [256 x i8]* %out, i64 0, i64 %tmp.96, !dbg !517 ; [#uses=2 type=i8*] [debug line = 123:5]
  %out.load.2 = load i8* %out.addr.2, align 1, !dbg !517 ; [#uses=1 type=i8] [debug line = 123:5]
  %tmp.97 = add i8 %tmp.95, %out.load.2, !dbg !517 ; [#uses=1 type=i8] [debug line = 123:5]
  store i8 %tmp.97, i8* %out.addr.2, align 1, !dbg !517 ; [debug line = 123:5]
  br label %12

; <label>:12                                      ; preds = %11, %10
  %k.2 = phi i32 [ %k.7, %10 ], [ %k.1, %11 ]     ; [#uses=1 type=i32]
  %outputBit.1 = phi i32 [ 0, %10 ], [ %outputBit, %11 ] ; [#uses=1 type=i32]
  %outputBit.3 = add nsw i32 %outputBit.1, 1, !dbg !519 ; [#uses=1 type=i32] [debug line = 126:4]
  call void @llvm.dbg.value(metadata !{i32 %outputBit.3}, i64 0, metadata !492), !dbg !519 ; [debug line = 126:4] [debug variable = outputBit]
  %j.9 = add i4 %j, 1, !dbg !520                  ; [#uses=1 type=i4] [debug line = 115:21]
  call void @llvm.dbg.value(metadata !{i4 %j.9}, i64 0, metadata !521), !dbg !520 ; [debug line = 115:21] [debug variable = j]
  br label %.preheader, !dbg !520                 ; [debug line = 115:21]

; <label>:13                                      ; preds = %.preheader
  %outputBit.lcssa = phi i32 [ %outputBit, %.preheader ] ; [#uses=1 type=i32]
  %k.1.lcssa = phi i32 [ %k.1, %.preheader ]      ; [#uses=2 type=i32]
  %tmp.88 = icmp eq i32 %outputBit.lcssa, 8, !dbg !522 ; [#uses=1 type=i1] [debug line = 130:3]
  %k.6 = add nsw i32 %k.1.lcssa, -1, !dbg !523    ; [#uses=1 type=i32] [debug line = 131:4]
  call void @llvm.dbg.value(metadata !{i32 %k.6}, i64 0, metadata !498), !dbg !523 ; [debug line = 131:4] [debug variable = k]
  %.k.1 = select i1 %tmp.88, i32 %k.6, i32 %k.1.lcssa, !dbg !522 ; [#uses=1 type=i32] [debug line = 130:3]
  %i.8 = add i9 %i, -1, !dbg !525                 ; [#uses=1 type=i9] [debug line = 113:26]
  call void @llvm.dbg.value(metadata !{i9 %i.8}, i64 0, metadata !526), !dbg !525 ; [debug line = 113:26] [debug variable = i]
  br label %bigint_zero.exit, !dbg !525           ; [debug line = 113:26]

.loopexit.loopexit:                               ; preds = %bigint_zero.exit
  br label %.loopexit

.loopexit.loopexit5:                              ; preds = %.preheader10
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit5, %.loopexit.loopexit
  ret void, !dbg !527                             ; [debug line = 136:1]
}

; [#uses=17]
define internal fastcc void @bigint_copy([256 x i8]* nocapture %to, [256 x i8]* nocapture %from) {
  call void @llvm.dbg.value(metadata !{[256 x i8]* %to}, i64 0, metadata !528), !dbg !529 ; [debug line = 41:32] [debug variable = to]
  call void @llvm.dbg.value(metadata !{[256 x i8]* %from}, i64 0, metadata !530), !dbg !531 ; [debug line = 41:55] [debug variable = from]
  br label %1, !dbg !532                          ; [debug line = 44:6]

; <label>:1                                       ; preds = %3, %0
  %i = phi i9 [ 0, %0 ], [ %i.9, %3 ]             ; [#uses=3 type=i9]
  %exitcond = icmp eq i9 %i, -256, !dbg !532      ; [#uses=1 type=i1] [debug line = 44:6]
  %2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 256, i64 256, i64 256) ; [#uses=0 type=i32]
  br i1 %exitcond, label %4, label %3, !dbg !532  ; [debug line = 44:6]

; <label>:3                                       ; preds = %1
  %tmp = zext i9 %i to i64, !dbg !533             ; [#uses=2 type=i64] [debug line = 45:3]
  %from.addr = getelementptr [256 x i8]* %from, i64 0, i64 %tmp, !dbg !533 ; [#uses=1 type=i8*] [debug line = 45:3]
  %from.load = load i8* %from.addr, align 1, !dbg !533 ; [#uses=1 type=i8] [debug line = 45:3]
  %to.addr = getelementptr [256 x i8]* %to, i64 0, i64 %tmp, !dbg !533 ; [#uses=1 type=i8*] [debug line = 45:3]
  store i8 %from.load, i8* %to.addr, align 1, !dbg !533 ; [debug line = 45:3]
  %i.9 = add i9 %i, 1, !dbg !534                  ; [#uses=1 type=i9] [debug line = 44:22]
  call void @llvm.dbg.value(metadata !{i9 %i.9}, i64 0, metadata !535), !dbg !534 ; [debug line = 44:22] [debug variable = i]
  br label %1, !dbg !534                          ; [debug line = 44:22]

; <label>:4                                       ; preds = %1
  ret void, !dbg !536                             ; [debug line = 49:1]
}

; [#uses=8]
define internal fastcc i2 @bigint_compare([256 x i8]* nocapture %a, [256 x i8]* nocapture %b) readonly {
  %state = alloca [256 x i2], align 1             ; [#uses=5 type=[256 x i2]*]
  call void @llvm.dbg.value(metadata !{[256 x i8]* %a}, i64 0, metadata !537), !dbg !538 ; [debug line = 55:34] [debug variable = a]
  call void @llvm.dbg.value(metadata !{[256 x i8]* %b}, i64 0, metadata !539), !dbg !540 ; [debug line = 55:56] [debug variable = b]
  call void @llvm.dbg.declare(metadata !{[256 x i2]* %state}, metadata !541), !dbg !544 ; [debug line = 59:6] [debug variable = state]
  br label %1, !dbg !545                          ; [debug line = 60:6]

; <label>:1                                       ; preds = %10, %0
  %i = phi i9 [ 0, %0 ], [ %i.13, %10 ]           ; [#uses=3 type=i9]
  %exitcond = icmp eq i9 %i, -256, !dbg !545      ; [#uses=1 type=i1] [debug line = 60:6]
  %2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 256, i64 256, i64 256) ; [#uses=0 type=i32]
  br i1 %exitcond, label %11, label %3, !dbg !545 ; [debug line = 60:6]

; <label>:3                                       ; preds = %1
  %tmp. = zext i9 %i to i64, !dbg !547            ; [#uses=5 type=i64] [debug line = 61:3]
  %a.addr = getelementptr [256 x i8]* %a, i64 0, i64 %tmp., !dbg !547 ; [#uses=1 type=i8*] [debug line = 61:3]
  %a.load = load i8* %a.addr, align 1, !dbg !547  ; [#uses=3 type=i8] [debug line = 61:3]
  %b.addr = getelementptr [256 x i8]* %b, i64 0, i64 %tmp., !dbg !547 ; [#uses=1 type=i8*] [debug line = 61:3]
  %b.load = load i8* %b.addr, align 1, !dbg !547  ; [#uses=3 type=i8] [debug line = 61:3]
  %tmp.98 = icmp ugt i8 %a.load, %b.load, !dbg !547 ; [#uses=1 type=i1] [debug line = 61:3]
  br i1 %tmp.98, label %4, label %5, !dbg !547    ; [debug line = 61:3]

; <label>:4                                       ; preds = %3
  %state.addr.1 = getelementptr [256 x i2]* %state, i64 0, i64 %tmp., !dbg !549 ; [#uses=1 type=i2*] [debug line = 62:4]
  store i2 1, i2* %state.addr.1, align 1, !dbg !549 ; [debug line = 62:4]
  br label %10, !dbg !551                         ; [debug line = 63:3]

; <label>:5                                       ; preds = %3
  %tmp.99 = icmp ult i8 %a.load, %b.load, !dbg !552 ; [#uses=1 type=i1] [debug line = 63:9]
  br i1 %tmp.99, label %6, label %7, !dbg !552    ; [debug line = 63:9]

; <label>:6                                       ; preds = %5
  %state.addr.2 = getelementptr [256 x i2]* %state, i64 0, i64 %tmp., !dbg !553 ; [#uses=1 type=i2*] [debug line = 64:4]
  store i2 -1, i2* %state.addr.2, align 1, !dbg !553 ; [debug line = 64:4]
  br label %9, !dbg !555                          ; [debug line = 65:3]

; <label>:7                                       ; preds = %5
  %tmp.101 = icmp eq i8 %a.load, %b.load, !dbg !556 ; [#uses=1 type=i1] [debug line = 65:9]
  br i1 %tmp.101, label %8, label %._crit_edge, !dbg !556 ; [debug line = 65:9]

; <label>:8                                       ; preds = %7
  %state.addr.4 = getelementptr [256 x i2]* %state, i64 0, i64 %tmp., !dbg !557 ; [#uses=1 type=i2*] [debug line = 66:4]
  store i2 0, i2* %state.addr.4, align 1, !dbg !557 ; [debug line = 66:4]
  br label %._crit_edge, !dbg !559                ; [debug line = 67:3]

._crit_edge:                                      ; preds = %8, %7
  br label %9

; <label>:9                                       ; preds = %._crit_edge, %6
  br label %10

; <label>:10                                      ; preds = %9, %4
  %i.13 = add i9 %i, 1, !dbg !560                 ; [#uses=1 type=i9] [debug line = 60:22]
  call void @llvm.dbg.value(metadata !{i9 %i.13}, i64 0, metadata !561), !dbg !560 ; [debug line = 60:22] [debug variable = i]
  br label %1, !dbg !560                          ; [debug line = 60:22]

; <label>:11                                      ; preds = %1
  %state.addr = getelementptr [256 x i2]* %state, i64 0, i64 0, !dbg !562 ; [#uses=1 type=i2*] [debug line = 70:2]
  %state.load = load i2* %state.addr, align 1     ; [#uses=2 type=i2]
  %tmp = icmp eq i2 %state.load, 0, !dbg !562     ; [#uses=1 type=i1] [debug line = 70:2]
  br i1 %tmp, label %.preheader.preheader, label %.loopexit, !dbg !562 ; [debug line = 70:2]

.preheader.preheader:                             ; preds = %11
  br label %.preheader, !dbg !563                 ; [debug line = 74:6]

.preheader:                                       ; preds = %15, %.preheader.preheader
  %i.1 = phi i9 [ %i.12, %15 ], [ 0, %.preheader.preheader ] ; [#uses=3 type=i9]
  %flag = phi i32 [ %.flag, %15 ], [ 0, %.preheader.preheader ] ; [#uses=1 type=i32]
  %tmp.100 = icmp sgt i9 %i.1, -1, !dbg !563      ; [#uses=1 type=i1] [debug line = 74:6]
  %12 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1, i64 256, i64 128) ; [#uses=0 type=i32]
  br i1 %tmp.100, label %13, label %.loopexit.loopexit, !dbg !563 ; [debug line = 74:6]

; <label>:13                                      ; preds = %.preheader
  %tmp.102 = zext i9 %i.1 to i64, !dbg !565       ; [#uses=1 type=i64] [debug line = 75:4]
  %state.addr.3 = getelementptr [256 x i2]* %state, i64 0, i64 %tmp.102, !dbg !565 ; [#uses=1 type=i2*] [debug line = 75:4]
  %state.load.1 = load i2* %state.addr.3, align 1 ; [#uses=3 type=i2]
  %tmp.103 = icmp eq i2 %state.load.1, 0, !dbg !565 ; [#uses=1 type=i1] [debug line = 75:4]
  %.flag = select i1 %tmp.103, i32 1, i32 %flag, !dbg !565 ; [#uses=2 type=i32] [debug line = 75:4]
  %tmp.104 = icmp eq i2 %state.load.1, 1, !dbg !567 ; [#uses=1 type=i1] [debug line = 79:4]
  %tmp.105 = icmp eq i32 %.flag, 1, !dbg !567     ; [#uses=2 type=i1] [debug line = 79:4]
  %or.cond = and i1 %tmp.104, %tmp.105, !dbg !567 ; [#uses=1 type=i1] [debug line = 79:4]
  br i1 %or.cond, label %.loopexit.loopexit, label %14, !dbg !567 ; [debug line = 79:4]

; <label>:14                                      ; preds = %13
  %tmp.106 = icmp eq i2 %state.load.1, -1, !dbg !568 ; [#uses=1 type=i1] [debug line = 83:4]
  %or.cond1 = and i1 %tmp.106, %tmp.105, !dbg !568 ; [#uses=1 type=i1] [debug line = 83:4]
  br i1 %or.cond1, label %.loopexit.loopexit, label %15, !dbg !568 ; [debug line = 83:4]

; <label>:15                                      ; preds = %14
  %i.12 = add i9 %i.1, 1, !dbg !569               ; [#uses=1 type=i9] [debug line = 74:22]
  call void @llvm.dbg.value(metadata !{i9 %i.12}, i64 0, metadata !561), !dbg !569 ; [debug line = 74:22] [debug variable = i]
  br label %.preheader, !dbg !569                 ; [debug line = 74:22]

.loopexit.loopexit:                               ; preds = %14, %13, %.preheader
  %.0.ph = phi i2 [ -1, %14 ], [ 1, %13 ], [ 0, %.preheader ] ; [#uses=1 type=i2]
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %11
  %.0 = phi i2 [ %state.load, %11 ], [ %.0.ph, %.loopexit.loopexit ] ; [#uses=1 type=i2]
  ret i2 %.0, !dbg !570                           ; [debug line = 90:1]
}

; [#uses=2]
define internal fastcc void @bigint_add.1([256 x i8]* nocapture %out, [256 x i8]* nocapture %b) {
  %tempA = alloca [256 x i8], align 16            ; [#uses=3 type=[256 x i8]*]
  %tempB = alloca [256 x i8], align 16            ; [#uses=3 type=[256 x i8]*]
  call void @llvm.dbg.value(metadata !{[256 x i8]* %tempB}, i64 0, metadata !571), !dbg !574 ; [debug line = 41:32@198:2] [debug variable = to]
  call void @llvm.dbg.value(metadata !{[256 x i8]* %out}, i64 0, metadata !575), !dbg !576 ; [debug line = 182:31] [debug variable = out]
  call void @llvm.dbg.value(metadata !{[256 x i8]* %out}, i64 0, metadata !577), !dbg !578 ; [debug line = 182:55] [debug variable = a]
  call void @llvm.dbg.value(metadata !{[256 x i8]* %b}, i64 0, metadata !579), !dbg !580 ; [debug line = 182:77] [debug variable = b]
  call void @llvm.dbg.declare(metadata !{[256 x i8]* %tempA}, metadata !581), !dbg !582 ; [debug line = 189:16] [debug variable = tempA]
  call void @llvm.dbg.declare(metadata !{[256 x i8]* %tempB}, metadata !583), !dbg !584 ; [debug line = 190:16] [debug variable = tempB]
  call fastcc void @bigint_zero([256 x i8]* %tempA), !dbg !585 ; [debug line = 193:2]
  call fastcc void @bigint_zero([256 x i8]* %tempB), !dbg !586 ; [debug line = 194:2]
  call void @llvm.dbg.value(metadata !{[256 x i8]* %tempA}, i64 0, metadata !587), !dbg !589 ; [debug line = 41:32@197:2] [debug variable = to]
  call void @llvm.dbg.value(metadata !{[256 x i8]* %out}, i64 0, metadata !590), !dbg !591 ; [debug line = 41:55@197:2] [debug variable = from]
  br label %1, !dbg !592                          ; [debug line = 44:6@197:2]

; <label>:1                                       ; preds = %3, %0
  %i.i = phi i9 [ 0, %0 ], [ %i.14, %3 ]          ; [#uses=3 type=i9]
  %exitcond.i = icmp eq i9 %i.i, -256, !dbg !592  ; [#uses=1 type=i1] [debug line = 44:6@197:2]
  %2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 256, i64 256, i64 256) ; [#uses=0 type=i32]
  br i1 %exitcond.i, label %bigint_copy.exit.preheader, label %3, !dbg !592 ; [debug line = 44:6@197:2]

bigint_copy.exit.preheader:                       ; preds = %1
  br label %bigint_copy.exit, !dbg !593           ; [debug line = 44:6@198:2]

; <label>:3                                       ; preds = %1
  %tmp.i = zext i9 %i.i to i64, !dbg !594         ; [#uses=2 type=i64] [debug line = 45:3@197:2]
  %a.addr.4 = getelementptr [256 x i8]* %out, i64 0, i64 %tmp.i, !dbg !594 ; [#uses=1 type=i8*] [debug line = 45:3@197:2]
  %a.load.4 = load i8* %a.addr.4, align 1, !dbg !594 ; [#uses=1 type=i8] [debug line = 45:3@197:2]
  %to.assign.addr = getelementptr [256 x i8]* %tempA, i64 0, i64 %tmp.i, !dbg !594 ; [#uses=1 type=i8*] [debug line = 45:3@197:2]
  store i8 %a.load.4, i8* %to.assign.addr, align 1, !dbg !594 ; [debug line = 45:3@197:2]
  %i.14 = add i9 %i.i, 1, !dbg !595               ; [#uses=1 type=i9] [debug line = 44:22@197:2]
  call void @llvm.dbg.value(metadata !{i9 %i.14}, i64 0, metadata !596), !dbg !595 ; [debug line = 44:22@197:2] [debug variable = i]
  br label %1, !dbg !595                          ; [debug line = 44:22@197:2]

bigint_copy.exit:                                 ; preds = %5, %bigint_copy.exit.preheader
  %i.i1 = phi i9 [ %i.15, %5 ], [ 0, %bigint_copy.exit.preheader ] ; [#uses=3 type=i9]
  %exitcond.i2 = icmp eq i9 %i.i1, -256, !dbg !593 ; [#uses=1 type=i1] [debug line = 44:6@198:2]
  %4 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 256, i64 256, i64 256) ; [#uses=0 type=i32]
  br i1 %exitcond.i2, label %bigint_copy.exit8, label %5, !dbg !593 ; [debug line = 44:6@198:2]

; <label>:5                                       ; preds = %bigint_copy.exit
  %tmp.i3 = zext i9 %i.i1 to i64, !dbg !597       ; [#uses=2 type=i64] [debug line = 45:3@198:2]
  %b.addr = getelementptr [256 x i8]* %b, i64 0, i64 %tmp.i3, !dbg !597 ; [#uses=1 type=i8*] [debug line = 45:3@198:2]
  %b.load = load i8* %b.addr, align 1, !dbg !597  ; [#uses=1 type=i8] [debug line = 45:3@198:2]
  %tempB.addr.4 = getelementptr [256 x i8]* %tempB, i64 0, i64 %tmp.i3, !dbg !597 ; [#uses=1 type=i8*] [debug line = 45:3@198:2]
  store i8 %b.load, i8* %tempB.addr.4, align 1, !dbg !597 ; [debug line = 45:3@198:2]
  %i.15 = add i9 %i.i1, 1, !dbg !598              ; [#uses=1 type=i9] [debug line = 44:22@198:2]
  call void @llvm.dbg.value(metadata !{i9 %i.15}, i64 0, metadata !599), !dbg !598 ; [debug line = 44:22@198:2] [debug variable = i]
  br label %bigint_copy.exit, !dbg !598           ; [debug line = 44:22@198:2]

bigint_copy.exit8:                                ; preds = %bigint_copy.exit
  call fastcc void @bigint_zero([256 x i8]* %out), !dbg !600 ; [debug line = 200:2]
  br label %6, !dbg !601                          ; [debug line = 202:6]

; <label>:6                                       ; preds = %._crit_edge1, %bigint_copy.exit8
  %i = phi i9 [ 255, %bigint_copy.exit8 ], [ %i.16, %._crit_edge1 ] ; [#uses=5 type=i9]
  %i.cast = sext i9 %i to i32, !dbg !601          ; [#uses=1 type=i32] [debug line = 202:6]
  %tmp = icmp sgt i9 %i, -1, !dbg !601            ; [#uses=1 type=i1] [debug line = 202:6]
  %7 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 256, i64 256, i64 256) ; [#uses=0 type=i32]
  br i1 %tmp, label %8, label %11, !dbg !601      ; [debug line = 202:6]

; <label>:8                                       ; preds = %6
  %tmp. = zext i32 %i.cast to i64, !dbg !603      ; [#uses=3 type=i64] [debug line = 204:3]
  %to.assign.addr.7 = getelementptr inbounds [256 x i8]* %tempA, i64 0, i64 %tmp., !dbg !603 ; [#uses=1 type=i8*] [debug line = 204:3]
  %to.assign.load = load i8* %to.assign.addr.7, align 1, !dbg !603 ; [#uses=2 type=i8] [debug line = 204:3]
  %tempB.addr = getelementptr inbounds [256 x i8]* %tempB, i64 0, i64 %tmp., !dbg !603 ; [#uses=1 type=i8*] [debug line = 204:3]
  %tempB.load = load i8* %tempB.addr, align 1, !dbg !603 ; [#uses=2 type=i8] [debug line = 204:3]
  %sum = add i8 %tempB.load, %to.assign.load, !dbg !603 ; [#uses=2 type=i8] [debug line = 204:3]
  call void @llvm.dbg.value(metadata !{i8 %sum}, i64 0, metadata !605), !dbg !603 ; [debug line = 204:3] [debug variable = sum]
  %tmp.115.cast = zext i8 %to.assign.load to i9, !dbg !606 ; [#uses=1 type=i9] [debug line = 205:3]
  %tmp.116.cast = zext i8 %tempB.load to i9, !dbg !606 ; [#uses=1 type=i9] [debug line = 205:3]
  %tmp.107 = add i9 %tmp.116.cast, %tmp.115.cast, !dbg !606 ; [#uses=1 type=i9] [debug line = 205:3]
  %tmp.108 = lshr i9 %tmp.107, 8, !dbg !606       ; [#uses=1 type=i9] [debug line = 205:3]
  %carry = trunc i9 %tmp.108 to i8, !dbg !606     ; [#uses=2 type=i8] [debug line = 205:3]
  call void @llvm.dbg.value(metadata !{i8 %carry}, i64 0, metadata !607), !dbg !606 ; [debug line = 205:3] [debug variable = carry]
  %a.addr = getelementptr [256 x i8]* %out, i64 0, i64 %tmp., !dbg !608 ; [#uses=2 type=i8*] [debug line = 208:3]
  %a.load = load i8* %a.addr, align 1, !dbg !608  ; [#uses=2 type=i8] [debug line = 208:3]
  %tmp.119.cast = zext i8 %a.load to i9, !dbg !608 ; [#uses=1 type=i9] [debug line = 208:3]
  %tmp.120.cast = zext i8 %sum to i9, !dbg !608   ; [#uses=1 type=i9] [debug line = 208:3]
  %tmp.109 = add i9 %tmp.119.cast, %tmp.120.cast, !dbg !608 ; [#uses=2 type=i9] [debug line = 208:3]
  %tmp.110 = icmp slt i9 %tmp.109, 0, !dbg !608   ; [#uses=1 type=i1] [debug line = 208:3]
  br i1 %tmp.110, label %9, label %._crit_edge, !dbg !608 ; [debug line = 208:3]

; <label>:9                                       ; preds = %8
  %tmp.111 = lshr i9 %tmp.109, 8, !dbg !609       ; [#uses=1 type=i9] [debug line = 209:4]
  %tmp.112 = add i9 %i, -1, !dbg !609             ; [#uses=1 type=i9] [debug line = 209:4]
  %tmp.113 = sext i9 %tmp.112 to i64, !dbg !609   ; [#uses=1 type=i64] [debug line = 209:4]
  %a.addr.1 = getelementptr [256 x i8]* %out, i64 0, i64 %tmp.113, !dbg !609 ; [#uses=2 type=i8*] [debug line = 209:4]
  %a.load.1 = load i8* %a.addr.1, align 1, !dbg !609 ; [#uses=1 type=i8] [debug line = 209:4]
  %tmp.114 = trunc i9 %tmp.111 to i8, !dbg !609   ; [#uses=1 type=i8] [debug line = 209:4]
  %tmp.115 = add i8 %tmp.114, %a.load.1, !dbg !609 ; [#uses=1 type=i8] [debug line = 209:4]
  store i8 %tmp.115, i8* %a.addr.1, align 1, !dbg !609 ; [debug line = 209:4]
  br label %._crit_edge, !dbg !611                ; [debug line = 210:3]

._crit_edge:                                      ; preds = %9, %8
  %tmp.116 = add i8 %sum, %a.load, !dbg !612      ; [#uses=1 type=i8] [debug line = 211:3]
  store i8 %tmp.116, i8* %a.addr, align 1, !dbg !612 ; [debug line = 211:3]
  %i.16 = add i9 %i, -1, !dbg !613                ; [#uses=2 type=i9] [debug line = 214:3]
  %tmp.117 = sext i9 %i.16 to i64, !dbg !613      ; [#uses=1 type=i64] [debug line = 214:3]
  %a.addr.2 = getelementptr [256 x i8]* %out, i64 0, i64 %tmp.117, !dbg !613 ; [#uses=2 type=i8*] [debug line = 214:3]
  %a.load.2 = load i8* %a.addr.2, align 1, !dbg !613 ; [#uses=2 type=i8] [debug line = 214:3]
  %tmp.130.cast = zext i8 %a.load.2 to i9, !dbg !613 ; [#uses=1 type=i9] [debug line = 214:3]
  %tmp.131.cast = zext i8 %carry to i9, !dbg !613 ; [#uses=1 type=i9] [debug line = 214:3]
  %tmp.118 = add i9 %tmp.131.cast, %tmp.130.cast, !dbg !613 ; [#uses=2 type=i9] [debug line = 214:3]
  %tmp.119 = icmp slt i9 %tmp.118, 0, !dbg !613   ; [#uses=1 type=i1] [debug line = 214:3]
  br i1 %tmp.119, label %10, label %._crit_edge1, !dbg !613 ; [debug line = 214:3]

; <label>:10                                      ; preds = %._crit_edge
  %tmp.120 = lshr i9 %tmp.118, 8, !dbg !614       ; [#uses=1 type=i9] [debug line = 215:4]
  %tmp.121 = add i9 %i, -2, !dbg !614             ; [#uses=1 type=i9] [debug line = 215:4]
  %tmp.122 = sext i9 %tmp.121 to i64, !dbg !614   ; [#uses=1 type=i64] [debug line = 215:4]
  %a.addr.3 = getelementptr [256 x i8]* %out, i64 0, i64 %tmp.122, !dbg !614 ; [#uses=2 type=i8*] [debug line = 215:4]
  %a.load.3 = load i8* %a.addr.3, align 1, !dbg !614 ; [#uses=1 type=i8] [debug line = 215:4]
  %tmp.123 = trunc i9 %tmp.120 to i8, !dbg !614   ; [#uses=1 type=i8] [debug line = 215:4]
  %tmp.124 = add i8 %tmp.123, %a.load.3, !dbg !614 ; [#uses=1 type=i8] [debug line = 215:4]
  store i8 %tmp.124, i8* %a.addr.3, align 1, !dbg !614 ; [debug line = 215:4]
  br label %._crit_edge1, !dbg !616               ; [debug line = 216:3]

._crit_edge1:                                     ; preds = %10, %._crit_edge
  %tmp.125 = add i8 %carry, %a.load.2, !dbg !617  ; [#uses=1 type=i8] [debug line = 217:3]
  store i8 %tmp.125, i8* %a.addr.2, align 1, !dbg !617 ; [debug line = 217:3]
  call void @llvm.dbg.value(metadata !{i9 %i.16}, i64 0, metadata !618), !dbg !619 ; [debug line = 202:26] [debug variable = i]
  br label %6, !dbg !619                          ; [debug line = 202:26]

; <label>:11                                      ; preds = %6
  ret void, !dbg !620                             ; [debug line = 219:1]
}

; [#uses=1]
define internal fastcc void @bigint_add([256 x i8]* nocapture %out, [256 x i8]* nocapture %a, [256 x i8]* nocapture %b) {
  %tempA = alloca [256 x i8], align 16            ; [#uses=3 type=[256 x i8]*]
  %tempB = alloca [256 x i8], align 16            ; [#uses=3 type=[256 x i8]*]
  call void @llvm.dbg.value(metadata !{[256 x i8]* %tempB}, i64 0, metadata !571), !dbg !574 ; [debug line = 41:32@198:2] [debug variable = to]
  call void @llvm.dbg.value(metadata !{[256 x i8]* %out}, i64 0, metadata !575), !dbg !576 ; [debug line = 182:31] [debug variable = out]
  call void @llvm.dbg.value(metadata !{[256 x i8]* %a}, i64 0, metadata !577), !dbg !578 ; [debug line = 182:55] [debug variable = a]
  call void @llvm.dbg.value(metadata !{[256 x i8]* %b}, i64 0, metadata !579), !dbg !580 ; [debug line = 182:77] [debug variable = b]
  call void @llvm.dbg.declare(metadata !{[256 x i8]* %tempA}, metadata !581), !dbg !582 ; [debug line = 189:16] [debug variable = tempA]
  call void @llvm.dbg.declare(metadata !{[256 x i8]* %tempB}, metadata !583), !dbg !584 ; [debug line = 190:16] [debug variable = tempB]
  call fastcc void @bigint_zero([256 x i8]* %tempA), !dbg !585 ; [debug line = 193:2]
  call fastcc void @bigint_zero([256 x i8]* %tempB), !dbg !586 ; [debug line = 194:2]
  call void @llvm.dbg.value(metadata !{[256 x i8]* %tempA}, i64 0, metadata !587), !dbg !589 ; [debug line = 41:32@197:2] [debug variable = to]
  call void @llvm.dbg.value(metadata !{[256 x i8]* %a}, i64 0, metadata !590), !dbg !591 ; [debug line = 41:55@197:2] [debug variable = from]
  br label %1, !dbg !592                          ; [debug line = 44:6@197:2]

; <label>:1                                       ; preds = %3, %0
  %i.i = phi i9 [ 0, %0 ], [ %i.17, %3 ]          ; [#uses=3 type=i9]
  %exitcond.i = icmp eq i9 %i.i, -256, !dbg !592  ; [#uses=1 type=i1] [debug line = 44:6@197:2]
  %2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 256, i64 256, i64 256) ; [#uses=0 type=i32]
  br i1 %exitcond.i, label %bigint_copy.exit.preheader, label %3, !dbg !592 ; [debug line = 44:6@197:2]

bigint_copy.exit.preheader:                       ; preds = %1
  br label %bigint_copy.exit, !dbg !593           ; [debug line = 44:6@198:2]

; <label>:3                                       ; preds = %1
  %tmp.i = zext i9 %i.i to i64, !dbg !594         ; [#uses=2 type=i64] [debug line = 45:3@197:2]
  %a.addr = getelementptr [256 x i8]* %a, i64 0, i64 %tmp.i, !dbg !594 ; [#uses=1 type=i8*] [debug line = 45:3@197:2]
  %a.load = load i8* %a.addr, align 1, !dbg !594  ; [#uses=1 type=i8] [debug line = 45:3@197:2]
  %to.assign.addr = getelementptr [256 x i8]* %tempA, i64 0, i64 %tmp.i, !dbg !594 ; [#uses=1 type=i8*] [debug line = 45:3@197:2]
  store i8 %a.load, i8* %to.assign.addr, align 1, !dbg !594 ; [debug line = 45:3@197:2]
  %i.17 = add i9 %i.i, 1, !dbg !595               ; [#uses=1 type=i9] [debug line = 44:22@197:2]
  call void @llvm.dbg.value(metadata !{i9 %i.17}, i64 0, metadata !596), !dbg !595 ; [debug line = 44:22@197:2] [debug variable = i]
  br label %1, !dbg !595                          ; [debug line = 44:22@197:2]

bigint_copy.exit:                                 ; preds = %5, %bigint_copy.exit.preheader
  %i.i1 = phi i9 [ %i.18, %5 ], [ 0, %bigint_copy.exit.preheader ] ; [#uses=3 type=i9]
  %exitcond.i1 = icmp eq i9 %i.i1, -256, !dbg !593 ; [#uses=1 type=i1] [debug line = 44:6@198:2]
  %4 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 256, i64 256, i64 256) ; [#uses=0 type=i32]
  br i1 %exitcond.i1, label %bigint_copy.exit18, label %5, !dbg !593 ; [debug line = 44:6@198:2]

; <label>:5                                       ; preds = %bigint_copy.exit
  %tmp.i1 = zext i9 %i.i1 to i64, !dbg !597       ; [#uses=2 type=i64] [debug line = 45:3@198:2]
  %b.addr = getelementptr [256 x i8]* %b, i64 0, i64 %tmp.i1, !dbg !597 ; [#uses=1 type=i8*] [debug line = 45:3@198:2]
  %b.load = load i8* %b.addr, align 1, !dbg !597  ; [#uses=1 type=i8] [debug line = 45:3@198:2]
  %tempB.addr.5 = getelementptr [256 x i8]* %tempB, i64 0, i64 %tmp.i1, !dbg !597 ; [#uses=1 type=i8*] [debug line = 45:3@198:2]
  store i8 %b.load, i8* %tempB.addr.5, align 1, !dbg !597 ; [debug line = 45:3@198:2]
  %i.18 = add i9 %i.i1, 1, !dbg !598              ; [#uses=1 type=i9] [debug line = 44:22@198:2]
  call void @llvm.dbg.value(metadata !{i9 %i.18}, i64 0, metadata !599), !dbg !598 ; [debug line = 44:22@198:2] [debug variable = i]
  br label %bigint_copy.exit, !dbg !598           ; [debug line = 44:22@198:2]

bigint_copy.exit18:                               ; preds = %bigint_copy.exit
  call fastcc void @bigint_zero([256 x i8]* %out), !dbg !600 ; [debug line = 200:2]
  br label %6, !dbg !601                          ; [debug line = 202:6]

; <label>:6                                       ; preds = %._crit_edge1, %bigint_copy.exit18
  %i = phi i9 [ 255, %bigint_copy.exit18 ], [ %i.19, %._crit_edge1 ] ; [#uses=5 type=i9]
  %i.cast = sext i9 %i to i32, !dbg !601          ; [#uses=1 type=i32] [debug line = 202:6]
  %tmp = icmp sgt i9 %i, -1, !dbg !601            ; [#uses=1 type=i1] [debug line = 202:6]
  %7 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 256, i64 256, i64 256) ; [#uses=0 type=i32]
  br i1 %tmp, label %8, label %11, !dbg !601      ; [debug line = 202:6]

; <label>:8                                       ; preds = %6
  %tmp. = zext i32 %i.cast to i64, !dbg !603      ; [#uses=3 type=i64] [debug line = 204:3]
  %to.assign.addr.8 = getelementptr inbounds [256 x i8]* %tempA, i64 0, i64 %tmp., !dbg !603 ; [#uses=1 type=i8*] [debug line = 204:3]
  %to.assign.load = load i8* %to.assign.addr.8, align 1, !dbg !603 ; [#uses=2 type=i8] [debug line = 204:3]
  %tempB.addr = getelementptr inbounds [256 x i8]* %tempB, i64 0, i64 %tmp., !dbg !603 ; [#uses=1 type=i8*] [debug line = 204:3]
  %tempB.load = load i8* %tempB.addr, align 1, !dbg !603 ; [#uses=2 type=i8] [debug line = 204:3]
  %sum = add i8 %tempB.load, %to.assign.load, !dbg !603 ; [#uses=2 type=i8] [debug line = 204:3]
  call void @llvm.dbg.value(metadata !{i8 %sum}, i64 0, metadata !605), !dbg !603 ; [debug line = 204:3] [debug variable = sum]
  %tmp.118.cast = zext i8 %to.assign.load to i9, !dbg !606 ; [#uses=1 type=i9] [debug line = 205:3]
  %tmp.119.cast = zext i8 %tempB.load to i9, !dbg !606 ; [#uses=1 type=i9] [debug line = 205:3]
  %tmp.120 = add i9 %tmp.119.cast, %tmp.118.cast, !dbg !606 ; [#uses=1 type=i9] [debug line = 205:3]
  %tmp.121 = lshr i9 %tmp.120, 8, !dbg !606       ; [#uses=1 type=i9] [debug line = 205:3]
  %carry = trunc i9 %tmp.121 to i8, !dbg !606     ; [#uses=2 type=i8] [debug line = 205:3]
  call void @llvm.dbg.value(metadata !{i8 %carry}, i64 0, metadata !607), !dbg !606 ; [debug line = 205:3] [debug variable = carry]
  %out.addr = getelementptr [256 x i8]* %out, i64 0, i64 %tmp., !dbg !608 ; [#uses=2 type=i8*] [debug line = 208:3]
  %out.load = load i8* %out.addr, align 1, !dbg !608 ; [#uses=2 type=i8] [debug line = 208:3]
  %tmp.122.cast = zext i8 %out.load to i9, !dbg !608 ; [#uses=1 type=i9] [debug line = 208:3]
  %tmp.123.cast = zext i8 %sum to i9, !dbg !608   ; [#uses=1 type=i9] [debug line = 208:3]
  %tmp.124 = add i9 %tmp.122.cast, %tmp.123.cast, !dbg !608 ; [#uses=2 type=i9] [debug line = 208:3]
  %tmp.125 = icmp slt i9 %tmp.124, 0, !dbg !608   ; [#uses=1 type=i1] [debug line = 208:3]
  br i1 %tmp.125, label %9, label %._crit_edge, !dbg !608 ; [debug line = 208:3]

; <label>:9                                       ; preds = %8
  %tmp.126 = lshr i9 %tmp.124, 8, !dbg !609       ; [#uses=1 type=i9] [debug line = 209:4]
  %tmp.127 = add i9 %i, -1, !dbg !609             ; [#uses=1 type=i9] [debug line = 209:4]
  %tmp.128 = sext i9 %tmp.127 to i64, !dbg !609   ; [#uses=1 type=i64] [debug line = 209:4]
  %out.addr.3 = getelementptr [256 x i8]* %out, i64 0, i64 %tmp.128, !dbg !609 ; [#uses=2 type=i8*] [debug line = 209:4]
  %out.load.3 = load i8* %out.addr.3, align 1, !dbg !609 ; [#uses=1 type=i8] [debug line = 209:4]
  %tmp.129 = trunc i9 %tmp.126 to i8, !dbg !609   ; [#uses=1 type=i8] [debug line = 209:4]
  %tmp.130 = add i8 %tmp.129, %out.load.3, !dbg !609 ; [#uses=1 type=i8] [debug line = 209:4]
  store i8 %tmp.130, i8* %out.addr.3, align 1, !dbg !609 ; [debug line = 209:4]
  br label %._crit_edge, !dbg !611                ; [debug line = 210:3]

._crit_edge:                                      ; preds = %9, %8
  %tmp.131 = add i8 %sum, %out.load, !dbg !612    ; [#uses=1 type=i8] [debug line = 211:3]
  store i8 %tmp.131, i8* %out.addr, align 1, !dbg !612 ; [debug line = 211:3]
  %i.19 = add i9 %i, -1, !dbg !613                ; [#uses=2 type=i9] [debug line = 214:3]
  %tmp.132 = sext i9 %i.19 to i64, !dbg !613      ; [#uses=1 type=i64] [debug line = 214:3]
  %out.addr.4 = getelementptr [256 x i8]* %out, i64 0, i64 %tmp.132, !dbg !613 ; [#uses=2 type=i8*] [debug line = 214:3]
  %out.load.4 = load i8* %out.addr.4, align 1, !dbg !613 ; [#uses=2 type=i8] [debug line = 214:3]
  %tmp.133.cast = zext i8 %out.load.4 to i9, !dbg !613 ; [#uses=1 type=i9] [debug line = 214:3]
  %tmp.134.cast = zext i8 %carry to i9, !dbg !613 ; [#uses=1 type=i9] [debug line = 214:3]
  %tmp.133 = add i9 %tmp.134.cast, %tmp.133.cast, !dbg !613 ; [#uses=2 type=i9] [debug line = 214:3]
  %tmp.134 = icmp slt i9 %tmp.133, 0, !dbg !613   ; [#uses=1 type=i1] [debug line = 214:3]
  br i1 %tmp.134, label %10, label %._crit_edge1, !dbg !613 ; [debug line = 214:3]

; <label>:10                                      ; preds = %._crit_edge
  %tmp.135 = lshr i9 %tmp.133, 8, !dbg !614       ; [#uses=1 type=i9] [debug line = 215:4]
  %tmp.136 = add i9 %i, -2, !dbg !614             ; [#uses=1 type=i9] [debug line = 215:4]
  %tmp.137 = sext i9 %tmp.136 to i64, !dbg !614   ; [#uses=1 type=i64] [debug line = 215:4]
  %out.addr.5 = getelementptr [256 x i8]* %out, i64 0, i64 %tmp.137, !dbg !614 ; [#uses=2 type=i8*] [debug line = 215:4]
  %out.load.5 = load i8* %out.addr.5, align 1, !dbg !614 ; [#uses=1 type=i8] [debug line = 215:4]
  %tmp.138 = trunc i9 %tmp.135 to i8, !dbg !614   ; [#uses=1 type=i8] [debug line = 215:4]
  %tmp.139 = add i8 %tmp.138, %out.load.5, !dbg !614 ; [#uses=1 type=i8] [debug line = 215:4]
  store i8 %tmp.139, i8* %out.addr.5, align 1, !dbg !614 ; [debug line = 215:4]
  br label %._crit_edge1, !dbg !616               ; [debug line = 216:3]

._crit_edge1:                                     ; preds = %10, %._crit_edge
  %tmp.140 = add i8 %carry, %out.load.4, !dbg !617 ; [#uses=1 type=i8] [debug line = 217:3]
  store i8 %tmp.140, i8* %out.addr.4, align 1, !dbg !617 ; [debug line = 217:3]
  call void @llvm.dbg.value(metadata !{i9 %i.19}, i64 0, metadata !618), !dbg !619 ; [debug line = 202:26] [debug variable = i]
  br label %6, !dbg !619                          ; [debug line = 202:26]

; <label>:11                                      ; preds = %6
  ret void, !dbg !620                             ; [debug line = 219:1]
}

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=33]
declare i32 @_ssdm_op_SpecLoopTripCount(...)

; [#uses=5]
declare void @_ssdm_op_SpecInterface(...) nounwind

; [#uses=4]
declare void @_ssdm_op_SpecBitsMap(...)

!llvm.dbg.cu = !{!0, !23}
!opencl.kernels = !{!49, !56, !56, !62, !68, !70, !70, !76, !76, !76, !80, !80, !82}
!hls.encrypted.func = !{}
!llvm.map.gv = !{}

!0 = metadata !{i32 786449, i32 0, i32 1, metadata !"/home/linux/Documents/DLA/fw/hls/BigInt/solution1/.autopilot/db/main.pragma.2.c", metadata !"/home/linux/Documents/DLA/fw/hls", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !13} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"bigint_math", metadata !"bigint_math", metadata !"", metadata !6, i32 7, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !11, i32 7} ; [ DW_TAG_subprogram ]
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
!26 = metadata !{i32 786478, i32 0, metadata !27, metadata !"bigint_zero", metadata !"bigint_zero", metadata !"", metadata !27, i32 6, metadata !28, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !11, i32 6} ; [ DW_TAG_subprogram ]
!27 = metadata !{i32 786473, metadata !"../../bigint/bigint.c", metadata !"/home/linux/Documents/DLA/fw/hls", null} ; [ DW_TAG_file_type ]
!28 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !29, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!29 = metadata !{null, metadata !9}
!30 = metadata !{i32 786478, i32 0, metadata !27, metadata !"bigint_print", metadata !"bigint_print", metadata !"", metadata !27, i32 16, metadata !28, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !11, i32 16} ; [ DW_TAG_subprogram ]
!31 = metadata !{i32 786478, i32 0, metadata !27, metadata !"bigint_copy", metadata !"bigint_copy", metadata !"", metadata !27, i32 41, metadata !32, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !11, i32 41} ; [ DW_TAG_subprogram ]
!32 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !33, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!33 = metadata !{null, metadata !9, metadata !9}
!34 = metadata !{i32 786478, i32 0, metadata !27, metadata !"bigint_compare", metadata !"bigint_compare", metadata !"", metadata !27, i32 55, metadata !35, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !11, i32 55} ; [ DW_TAG_subprogram ]
!35 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !36, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!36 = metadata !{metadata !22, metadata !9, metadata !9}
!37 = metadata !{i32 786478, i32 0, metadata !27, metadata !"bigint_leftshift", metadata !"bigint_leftshift", metadata !"", metadata !27, i32 93, metadata !38, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !11, i32 93} ; [ DW_TAG_subprogram ]
!38 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !39, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!39 = metadata !{null, metadata !9, metadata !9, metadata !22}
!40 = metadata !{i32 786478, i32 0, metadata !27, metadata !"bigint_rightshift", metadata !"bigint_rightshift", metadata !"", metadata !27, i32 139, metadata !38, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !11, i32 139} ; [ DW_TAG_subprogram ]
!41 = metadata !{i32 786478, i32 0, metadata !27, metadata !"bigint_add", metadata !"bigint_add", metadata !"", metadata !27, i32 182, metadata !42, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !11, i32 182} ; [ DW_TAG_subprogram ]
!42 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !43, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!43 = metadata !{null, metadata !9, metadata !9, metadata !9}
!44 = metadata !{i32 786478, i32 0, metadata !27, metadata !"bigint_sub", metadata !"bigint_sub", metadata !"", metadata !27, i32 222, metadata !42, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !11, i32 222} ; [ DW_TAG_subprogram ]
!45 = metadata !{i32 786478, i32 0, metadata !27, metadata !"bigint_mul", metadata !"bigint_mul", metadata !"", metadata !27, i32 280, metadata !42, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !11, i32 280} ; [ DW_TAG_subprogram ]
!46 = metadata !{i32 786478, i32 0, metadata !27, metadata !"bigint_div", metadata !"bigint_div", metadata !"", metadata !27, i32 343, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !11, i32 343} ; [ DW_TAG_subprogram ]
!47 = metadata !{i32 786478, i32 0, metadata !27, metadata !"bigint_longdiv", metadata !"bigint_longdiv", metadata !"", metadata !27, i32 392, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !11, i32 392} ; [ DW_TAG_subprogram ]
!48 = metadata !{i32 786478, i32 0, metadata !27, metadata !"bigint_modexp", metadata !"bigint_modexp", metadata !"", metadata !27, i32 539, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !11, i32 539} ; [ DW_TAG_subprogram ]
!49 = metadata !{null, metadata !50, metadata !51, metadata !52, metadata !53, metadata !54, metadata !55}
!50 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 1, i32 1}
!51 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!52 = metadata !{metadata !"kernel_arg_type", metadata !"uchar*", metadata !"uchar*", metadata !"uchar*", metadata !"uchar*"}
!53 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !""}
!54 = metadata !{metadata !"kernel_arg_name", metadata !"a", metadata !"b", metadata !"c", metadata !"d"}
!55 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!56 = metadata !{null, metadata !57, metadata !58, metadata !59, metadata !60, metadata !61, metadata !55}
!57 = metadata !{metadata !"kernel_arg_addr_space", i32 1}
!58 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!59 = metadata !{metadata !"kernel_arg_type", metadata !"uchar*"}
!60 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!61 = metadata !{metadata !"kernel_arg_name", metadata !"in"}
!62 = metadata !{null, metadata !63, metadata !64, metadata !65, metadata !66, metadata !67, metadata !55}
!63 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1}
!64 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!65 = metadata !{metadata !"kernel_arg_type", metadata !"uchar*", metadata !"uchar*"}
!66 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!67 = metadata !{metadata !"kernel_arg_name", metadata !"to", metadata !"from"}
!68 = metadata !{null, metadata !63, metadata !64, metadata !65, metadata !66, metadata !69, metadata !55}
!69 = metadata !{metadata !"kernel_arg_name", metadata !"a", metadata !"b"}
!70 = metadata !{null, metadata !71, metadata !72, metadata !73, metadata !74, metadata !75, metadata !55}
!71 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 0}
!72 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!73 = metadata !{metadata !"kernel_arg_type", metadata !"uchar*", metadata !"uchar*", metadata !"int"}
!74 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!75 = metadata !{metadata !"kernel_arg_name", metadata !"out", metadata !"a", metadata !"shift"}
!76 = metadata !{null, metadata !77, metadata !72, metadata !78, metadata !74, metadata !79, metadata !55}
!77 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 1}
!78 = metadata !{metadata !"kernel_arg_type", metadata !"uchar*", metadata !"uchar*", metadata !"uchar*"}
!79 = metadata !{metadata !"kernel_arg_name", metadata !"out", metadata !"a", metadata !"b"}
!80 = metadata !{null, metadata !50, metadata !51, metadata !52, metadata !53, metadata !81, metadata !55}
!81 = metadata !{metadata !"kernel_arg_name", metadata !"out", metadata !"out1", metadata !"a", metadata !"b"}
!82 = metadata !{null, metadata !50, metadata !51, metadata !52, metadata !53, metadata !83, metadata !55}
!83 = metadata !{metadata !"kernel_arg_name", metadata !"out", metadata !"base", metadata !"exp", metadata !"mod"}
!84 = metadata !{i32 786689, metadata !26, metadata !"in", null, i32 6, metadata !85, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!85 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 2048, i64 8, i32 0, i32 0, metadata !10, metadata !86, i32 0, i32 0} ; [ DW_TAG_array_type ]
!86 = metadata !{metadata !87}
!87 = metadata !{i32 786465, i64 0, i64 255}      ; [ DW_TAG_subrange_type ]
!88 = metadata !{i32 6, i32 32, metadata !26, null}
!89 = metadata !{i32 8, i32 6, metadata !90, null}
!90 = metadata !{i32 786443, metadata !91, i32 8, i32 2, metadata !27, i32 1} ; [ DW_TAG_lexical_block ]
!91 = metadata !{i32 786443, metadata !26, i32 6, i32 40, metadata !27, i32 0} ; [ DW_TAG_lexical_block ]
!92 = metadata !{i32 10, i32 3, metadata !93, null}
!93 = metadata !{i32 786443, metadata !90, i32 8, i32 26, metadata !27, i32 2} ; [ DW_TAG_lexical_block ]
!94 = metadata !{i32 8, i32 22, metadata !90, null}
!95 = metadata !{i32 786688, metadata !91, metadata !"i", metadata !27, i32 7, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!96 = metadata !{i32 13, i32 1, metadata !91, null}
!97 = metadata !{i32 786689, metadata !31, metadata !"to", null, i32 41, metadata !85, i32 0, metadata !98} ; [ DW_TAG_arg_variable ]
!98 = metadata !{i32 239, i32 2, metadata !99, null}
!99 = metadata !{i32 786443, metadata !44, i32 222, i32 84, metadata !27, i32 48} ; [ DW_TAG_lexical_block ]
!100 = metadata !{i32 41, i32 32, metadata !31, metadata !98}
!101 = metadata !{i32 786689, metadata !44, metadata !"out", null, i32 222, metadata !85, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!102 = metadata !{i32 222, i32 31, metadata !44, null}
!103 = metadata !{i32 786689, metadata !44, metadata !"a", null, i32 222, metadata !85, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!104 = metadata !{i32 222, i32 55, metadata !44, null}
!105 = metadata !{i32 786689, metadata !44, metadata !"b", null, i32 222, metadata !85, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!106 = metadata !{i32 222, i32 77, metadata !44, null}
!107 = metadata !{i32 786688, metadata !99, metadata !"tempA", metadata !27, i32 228, metadata !85, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!108 = metadata !{i32 228, i32 16, metadata !99, null}
!109 = metadata !{i32 786688, metadata !99, metadata !"tempB", metadata !27, i32 229, metadata !85, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!110 = metadata !{i32 229, i32 16, metadata !99, null}
!111 = metadata !{i32 786688, metadata !99, metadata !"carry", metadata !27, i32 231, metadata !85, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!112 = metadata !{i32 231, i32 16, metadata !99, null}
!113 = metadata !{i32 233, i32 2, metadata !99, null}
!114 = metadata !{i32 234, i32 2, metadata !99, null}
!115 = metadata !{i32 236, i32 2, metadata !99, null}
!116 = metadata !{i32 786689, metadata !31, metadata !"to", null, i32 41, metadata !85, i32 0, metadata !117} ; [ DW_TAG_arg_variable ]
!117 = metadata !{i32 238, i32 2, metadata !99, null}
!118 = metadata !{i32 41, i32 32, metadata !31, metadata !117}
!119 = metadata !{i32 786689, metadata !31, metadata !"from", null, i32 41, metadata !85, i32 0, metadata !117} ; [ DW_TAG_arg_variable ]
!120 = metadata !{i32 41, i32 55, metadata !31, metadata !117}
!121 = metadata !{i32 44, i32 6, metadata !122, metadata !117}
!122 = metadata !{i32 786443, metadata !123, i32 44, i32 2, metadata !27, i32 11} ; [ DW_TAG_lexical_block ]
!123 = metadata !{i32 786443, metadata !31, i32 41, i32 65, metadata !27, i32 10} ; [ DW_TAG_lexical_block ]
!124 = metadata !{i32 44, i32 6, metadata !122, metadata !98}
!125 = metadata !{i32 45, i32 3, metadata !126, metadata !117}
!126 = metadata !{i32 786443, metadata !122, i32 44, i32 26, metadata !27, i32 12} ; [ DW_TAG_lexical_block ]
!127 = metadata !{i32 44, i32 22, metadata !122, metadata !117}
!128 = metadata !{i32 786688, metadata !123, metadata !"i", metadata !27, i32 42, metadata !22, i32 0, metadata !117} ; [ DW_TAG_auto_variable ]
!129 = metadata !{i32 45, i32 3, metadata !126, metadata !98}
!130 = metadata !{i32 44, i32 22, metadata !122, metadata !98}
!131 = metadata !{i32 786688, metadata !123, metadata !"i", metadata !27, i32 42, metadata !22, i32 0, metadata !98} ; [ DW_TAG_auto_variable ]
!132 = metadata !{i32 241, i32 2, metadata !99, null}
!133 = metadata !{i32 243, i32 5, metadata !99, null}
!134 = metadata !{i32 247, i32 6, metadata !135, null}
!135 = metadata !{i32 786443, metadata !99, i32 247, i32 2, metadata !27, i32 50} ; [ DW_TAG_lexical_block ]
!136 = metadata !{i32 248, i32 3, metadata !137, null}
!137 = metadata !{i32 786443, metadata !135, i32 247, i32 30, metadata !27, i32 51} ; [ DW_TAG_lexical_block ]
!138 = metadata !{i32 249, i32 4, metadata !139, null}
!139 = metadata !{i32 786443, metadata !137, i32 248, i32 26, metadata !27, i32 52} ; [ DW_TAG_lexical_block ]
!140 = metadata !{i32 250, i32 5, metadata !141, null}
!141 = metadata !{i32 786443, metadata !139, i32 249, i32 23, metadata !27, i32 53} ; [ DW_TAG_lexical_block ]
!142 = metadata !{i32 786688, metadata !99, metadata !"j", metadata !27, i32 226, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!143 = metadata !{i32 251, i32 5, metadata !141, null}
!144 = metadata !{i32 258, i32 5, metadata !141, null}
!145 = metadata !{i32 259, i32 5, metadata !141, null}
!146 = metadata !{i32 260, i32 5, metadata !141, null}
!147 = metadata !{i32 261, i32 6, metadata !148, null}
!148 = metadata !{i32 786443, metadata !141, i32 260, i32 20, metadata !27, i32 55} ; [ DW_TAG_lexical_block ]
!149 = metadata !{i32 262, i32 6, metadata !148, null}
!150 = metadata !{i32 263, i32 5, metadata !148, null}
!151 = metadata !{i32 265, i32 5, metadata !141, null}
!152 = metadata !{i32 266, i32 5, metadata !141, null}
!153 = metadata !{i32 268, i32 4, metadata !141, null}
!154 = metadata !{i32 269, i32 5, metadata !155, null}
!155 = metadata !{i32 786443, metadata !139, i32 268, i32 9, metadata !27, i32 56} ; [ DW_TAG_lexical_block ]
!156 = metadata !{i32 270, i32 5, metadata !155, null}
!157 = metadata !{i32 272, i32 3, metadata !139, null}
!158 = metadata !{i32 274, i32 3, metadata !137, null}
!159 = metadata !{i32 247, i32 26, metadata !135, null}
!160 = metadata !{i32 786688, metadata !99, metadata !"i", metadata !27, i32 225, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!161 = metadata !{i32 277, i32 1, metadata !99, null}
!162 = metadata !{i32 786689, metadata !40, metadata !"out", null, i32 139, metadata !85, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!163 = metadata !{i32 139, i32 38, metadata !40, null}
!164 = metadata !{i32 786689, metadata !40, metadata !"a", null, i32 139, metadata !85, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!165 = metadata !{i32 139, i32 62, metadata !40, null}
!166 = metadata !{i32 786689, metadata !26, metadata !"in", null, i32 6, metadata !85, i32 0, metadata !167} ; [ DW_TAG_arg_variable ]
!167 = metadata !{i32 155, i32 2, metadata !168, null}
!168 = metadata !{i32 786443, metadata !40, i32 139, i32 80, metadata !27, i32 34} ; [ DW_TAG_lexical_block ]
!169 = metadata !{i32 6, i32 32, metadata !26, metadata !167}
!170 = metadata !{i32 8, i32 6, metadata !90, metadata !167}
!171 = metadata !{i32 157, i32 6, metadata !172, null}
!172 = metadata !{i32 786443, metadata !168, i32 157, i32 2, metadata !27, i32 36} ; [ DW_TAG_lexical_block ]
!173 = metadata !{i32 10, i32 3, metadata !93, metadata !167}
!174 = metadata !{i32 8, i32 22, metadata !90, metadata !167}
!175 = metadata !{i32 786688, metadata !91, metadata !"i", metadata !27, i32 7, metadata !22, i32 0, metadata !167} ; [ DW_TAG_auto_variable ]
!176 = metadata !{i32 160, i32 4, metadata !177, null}
!177 = metadata !{i32 786443, metadata !178, i32 159, i32 26, metadata !27, i32 39} ; [ DW_TAG_lexical_block ]
!178 = metadata !{i32 786443, metadata !179, i32 159, i32 3, metadata !27, i32 38} ; [ DW_TAG_lexical_block ]
!179 = metadata !{i32 786443, metadata !172, i32 157, i32 26, metadata !27, i32 37} ; [ DW_TAG_lexical_block ]
!180 = metadata !{i32 159, i32 7, metadata !178, null}
!181 = metadata !{i32 786688, metadata !168, metadata !"b", metadata !27, i32 142, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!182 = metadata !{i32 163, i32 4, metadata !177, null}
!183 = metadata !{i32 164, i32 5, metadata !184, null}
!184 = metadata !{i32 786443, metadata !177, i32 163, i32 23, metadata !27, i32 40} ; [ DW_TAG_lexical_block ]
!185 = metadata !{i32 786688, metadata !168, metadata !"k", metadata !27, i32 140, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!186 = metadata !{i32 166, i32 5, metadata !184, null}
!187 = metadata !{i32 167, i32 4, metadata !184, null}
!188 = metadata !{i32 168, i32 5, metadata !189, null}
!189 = metadata !{i32 786443, metadata !177, i32 167, i32 9, metadata !27, i32 41} ; [ DW_TAG_lexical_block ]
!190 = metadata !{i32 171, i32 4, metadata !177, null}
!191 = metadata !{i32 786688, metadata !168, metadata !"outputBit", metadata !27, i32 152, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!192 = metadata !{i32 159, i32 22, metadata !178, null}
!193 = metadata !{i32 786688, metadata !168, metadata !"j", metadata !27, i32 140, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!194 = metadata !{i32 175, i32 3, metadata !179, null}
!195 = metadata !{i32 176, i32 4, metadata !196, null}
!196 = metadata !{i32 786443, metadata !179, i32 175, i32 21, metadata !27, i32 42} ; [ DW_TAG_lexical_block ]
!197 = metadata !{i32 157, i32 22, metadata !172, null}
!198 = metadata !{i32 786688, metadata !168, metadata !"i", metadata !27, i32 140, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!199 = metadata !{i32 180, i32 1, metadata !168, null}
!200 = metadata !{i32 786689, metadata !31, metadata !"to", null, i32 41, metadata !85, i32 0, metadata !201} ; [ DW_TAG_arg_variable ]
!201 = metadata !{i32 303, i32 2, metadata !202, null}
!202 = metadata !{i32 786443, metadata !45, i32 280, i32 84, metadata !27, i32 57} ; [ DW_TAG_lexical_block ]
!203 = metadata !{i32 41, i32 32, metadata !31, metadata !201}
!204 = metadata !{i32 786689, metadata !45, metadata !"out", null, i32 280, metadata !85, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!205 = metadata !{i32 280, i32 31, metadata !45, null}
!206 = metadata !{i32 786689, metadata !45, metadata !"a", null, i32 280, metadata !85, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!207 = metadata !{i32 280, i32 55, metadata !45, null}
!208 = metadata !{i32 786689, metadata !45, metadata !"b", null, i32 280, metadata !85, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!209 = metadata !{i32 280, i32 77, metadata !45, null}
!210 = metadata !{i32 786688, metadata !202, metadata !"sum", metadata !27, i32 287, metadata !85, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!211 = metadata !{i32 287, i32 16, metadata !202, null}
!212 = metadata !{i32 786688, metadata !202, metadata !"tempA", metadata !27, i32 289, metadata !85, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!213 = metadata !{i32 289, i32 16, metadata !202, null}
!214 = metadata !{i32 786688, metadata !202, metadata !"tempB", metadata !27, i32 290, metadata !85, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!215 = metadata !{i32 290, i32 16, metadata !202, null}
!216 = metadata !{i32 299, i32 2, metadata !202, null}
!217 = metadata !{i32 300, i32 2, metadata !202, null}
!218 = metadata !{i32 786689, metadata !31, metadata !"to", null, i32 41, metadata !85, i32 0, metadata !219} ; [ DW_TAG_arg_variable ]
!219 = metadata !{i32 302, i32 2, metadata !202, null}
!220 = metadata !{i32 41, i32 32, metadata !31, metadata !219}
!221 = metadata !{i32 786689, metadata !31, metadata !"from", null, i32 41, metadata !85, i32 0, metadata !219} ; [ DW_TAG_arg_variable ]
!222 = metadata !{i32 41, i32 55, metadata !31, metadata !219}
!223 = metadata !{i32 44, i32 6, metadata !122, metadata !219}
!224 = metadata !{i32 44, i32 6, metadata !122, metadata !201}
!225 = metadata !{i32 45, i32 3, metadata !126, metadata !219}
!226 = metadata !{i32 44, i32 22, metadata !122, metadata !219}
!227 = metadata !{i32 786688, metadata !123, metadata !"i", metadata !27, i32 42, metadata !22, i32 0, metadata !219} ; [ DW_TAG_auto_variable ]
!228 = metadata !{i32 45, i32 3, metadata !126, metadata !201}
!229 = metadata !{i32 44, i32 22, metadata !122, metadata !201}
!230 = metadata !{i32 786688, metadata !123, metadata !"i", metadata !27, i32 42, metadata !22, i32 0, metadata !201} ; [ DW_TAG_auto_variable ]
!231 = metadata !{i32 305, i32 2, metadata !202, null}
!232 = metadata !{i32 306, i32 2, metadata !202, null}
!233 = metadata !{i32 309, i32 6, metadata !234, null}
!234 = metadata !{i32 786443, metadata !202, i32 309, i32 2, metadata !27, i32 58} ; [ DW_TAG_lexical_block ]
!235 = metadata !{i32 312, i32 7, metadata !236, null}
!236 = metadata !{i32 786443, metadata !237, i32 312, i32 3, metadata !27, i32 60} ; [ DW_TAG_lexical_block ]
!237 = metadata !{i32 786443, metadata !234, i32 309, i32 26, metadata !27, i32 59} ; [ DW_TAG_lexical_block ]
!238 = metadata !{i32 786688, metadata !202, metadata !"k", metadata !27, i32 297, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!239 = metadata !{i32 315, i32 4, metadata !240, null}
!240 = metadata !{i32 786443, metadata !236, i32 312, i32 49, metadata !27, i32 61} ; [ DW_TAG_lexical_block ]
!241 = metadata !{i32 786688, metadata !202, metadata !"prod", metadata !27, i32 283, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!242 = metadata !{i32 316, i32 4, metadata !240, null}
!243 = metadata !{i32 786688, metadata !202, metadata !"carry", metadata !27, i32 284, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!244 = metadata !{i32 318, i32 4, metadata !240, null}
!245 = metadata !{i32 320, i32 5, metadata !246, null}
!246 = metadata !{i32 786443, metadata !240, i32 318, i32 40, metadata !27, i32 62} ; [ DW_TAG_lexical_block ]
!247 = metadata !{i32 321, i32 6, metadata !248, null}
!248 = metadata !{i32 786443, metadata !246, i32 320, i32 29, metadata !27, i32 63} ; [ DW_TAG_lexical_block ]
!249 = metadata !{i32 322, i32 5, metadata !248, null}
!250 = metadata !{i32 324, i32 5, metadata !246, null}
!251 = metadata !{i32 327, i32 5, metadata !246, null}
!252 = metadata !{i32 328, i32 6, metadata !253, null}
!253 = metadata !{i32 786443, metadata !246, i32 327, i32 32, metadata !27, i32 64} ; [ DW_TAG_lexical_block ]
!254 = metadata !{i32 329, i32 5, metadata !253, null}
!255 = metadata !{i32 331, i32 5, metadata !246, null}
!256 = metadata !{i32 332, i32 4, metadata !246, null}
!257 = metadata !{i32 312, i32 40, metadata !236, null}
!258 = metadata !{i32 786688, metadata !202, metadata !"j", metadata !27, i32 294, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!259 = metadata !{i32 337, i32 3, metadata !237, null}
!260 = metadata !{i32 309, i32 22, metadata !234, null}
!261 = metadata !{i32 786688, metadata !202, metadata !"i", metadata !27, i32 293, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!262 = metadata !{i32 340, i32 1, metadata !202, null}
!263 = metadata !{i32 786689, metadata !48, metadata !"out", null, i32 539, metadata !85, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!264 = metadata !{i32 539, i32 34, metadata !48, null}
!265 = metadata !{i32 786689, metadata !48, metadata !"base", null, i32 539, metadata !85, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!266 = metadata !{i32 539, i32 58, metadata !48, null}
!267 = metadata !{i32 786689, metadata !48, metadata !"exp", null, i32 539, metadata !85, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!268 = metadata !{i32 539, i32 83, metadata !48, null}
!269 = metadata !{i32 786689, metadata !48, metadata !"mod", null, i32 539, metadata !85, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!270 = metadata !{i32 539, i32 107, metadata !48, null}
!271 = metadata !{i32 786688, metadata !272, metadata !"zero", metadata !27, i32 542, metadata !85, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!272 = metadata !{i32 786443, metadata !48, i32 539, i32 116, metadata !27, i32 91} ; [ DW_TAG_lexical_block ]
!273 = metadata !{i32 542, i32 16, metadata !272, null}
!274 = metadata !{i32 786688, metadata !272, metadata !"one", metadata !27, i32 543, metadata !85, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!275 = metadata !{i32 543, i32 16, metadata !272, null}
!276 = metadata !{i32 786688, metadata !272, metadata !"two", metadata !27, i32 544, metadata !85, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!277 = metadata !{i32 544, i32 16, metadata !272, null}
!278 = metadata !{i32 786688, metadata !272, metadata !"temp", metadata !27, i32 546, metadata !85, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!279 = metadata !{i32 546, i32 16, metadata !272, null}
!280 = metadata !{i32 786688, metadata !272, metadata !"temp1", metadata !27, i32 547, metadata !85, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!281 = metadata !{i32 547, i32 16, metadata !272, null}
!282 = metadata !{i32 786688, metadata !272, metadata !"temp2", metadata !27, i32 548, metadata !85, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!283 = metadata !{i32 548, i32 16, metadata !272, null}
!284 = metadata !{i32 786688, metadata !272, metadata !"tempBase", metadata !27, i32 550, metadata !85, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!285 = metadata !{i32 550, i32 16, metadata !272, null}
!286 = metadata !{i32 786688, metadata !272, metadata !"tempExp", metadata !27, i32 551, metadata !85, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!287 = metadata !{i32 551, i32 16, metadata !272, null}
!288 = metadata !{i32 786688, metadata !272, metadata !"tempMod", metadata !27, i32 552, metadata !85, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!289 = metadata !{i32 552, i32 16, metadata !272, null}
!290 = metadata !{i32 554, i32 2, metadata !272, null}
!291 = metadata !{i32 555, i32 2, metadata !272, null}
!292 = metadata !{i32 556, i32 2, metadata !272, null}
!293 = metadata !{i32 558, i32 2, metadata !272, null}
!294 = metadata !{i32 559, i32 2, metadata !272, null}
!295 = metadata !{i32 560, i32 2, metadata !272, null}
!296 = metadata !{i32 562, i32 2, metadata !272, null}
!297 = metadata !{i32 563, i32 2, metadata !272, null}
!298 = metadata !{i32 564, i32 2, metadata !272, null}
!299 = metadata !{i32 566, i32 2, metadata !272, null}
!300 = metadata !{i32 567, i32 2, metadata !272, null}
!301 = metadata !{i32 568, i32 2, metadata !272, null}
!302 = metadata !{i32 570, i32 2, metadata !272, null}
!303 = metadata !{i32 571, i32 2, metadata !272, null}
!304 = metadata !{i32 572, i32 2, metadata !272, null}
!305 = metadata !{i32 574, i32 2, metadata !272, null}
!306 = metadata !{i32 575, i32 5, metadata !272, null}
!307 = metadata !{i32 786688, metadata !272, metadata !"result", metadata !27, i32 579, metadata !85, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!308 = metadata !{i32 579, i32 16, metadata !272, null}
!309 = metadata !{i32 580, i32 2, metadata !272, null}
!310 = metadata !{i32 582, i32 2, metadata !272, null}
!311 = metadata !{i32 583, i32 2, metadata !272, null}
!312 = metadata !{i32 585, i32 2, metadata !272, null}
!313 = metadata !{i32 586, i32 2, metadata !272, null}
!314 = metadata !{i32 588, i32 2, metadata !272, null}
!315 = metadata !{i32 588, i32 8, metadata !272, null}
!316 = metadata !{i32 589, i32 3, metadata !317, null}
!317 = metadata !{i32 786443, metadata !272, i32 588, i32 43, metadata !27, i32 93} ; [ DW_TAG_lexical_block ]
!318 = metadata !{i32 590, i32 3, metadata !317, null}
!319 = metadata !{i32 591, i32 3, metadata !317, null}
!320 = metadata !{i32 593, i32 6, metadata !317, null}
!321 = metadata !{i32 596, i32 4, metadata !322, null}
!322 = metadata !{i32 786443, metadata !317, i32 593, i32 38, metadata !27, i32 94} ; [ DW_TAG_lexical_block ]
!323 = metadata !{i32 598, i32 4, metadata !322, null}
!324 = metadata !{i32 600, i32 3, metadata !322, null}
!325 = metadata !{i32 602, i32 3, metadata !317, null}
!326 = metadata !{i32 603, i32 3, metadata !317, null}
!327 = metadata !{i32 605, i32 3, metadata !317, null}
!328 = metadata !{i32 608, i32 3, metadata !317, null}
!329 = metadata !{i32 609, i32 3, metadata !317, null}
!330 = metadata !{i32 610, i32 3, metadata !317, null}
!331 = metadata !{i32 612, i32 3, metadata !317, null}
!332 = metadata !{i32 613, i32 3, metadata !317, null}
!333 = metadata !{i32 614, i32 3, metadata !317, null}
!334 = metadata !{i32 615, i32 2, metadata !317, null}
!335 = metadata !{i32 617, i32 2, metadata !272, null}
!336 = metadata !{i32 619, i32 1, metadata !272, null}
!337 = metadata !{metadata !338}
!338 = metadata !{i32 0, i32 7, metadata !339}
!339 = metadata !{metadata !340}
!340 = metadata !{metadata !"a", metadata !341, metadata !"unsigned char", i32 0, i32 7}
!341 = metadata !{metadata !342}
!342 = metadata !{i32 0, i32 255, i32 1}
!343 = metadata !{metadata !344}
!344 = metadata !{i32 0, i32 7, metadata !345}
!345 = metadata !{metadata !346}
!346 = metadata !{metadata !"b", metadata !341, metadata !"unsigned char", i32 0, i32 7}
!347 = metadata !{metadata !348}
!348 = metadata !{i32 0, i32 7, metadata !349}
!349 = metadata !{metadata !350}
!350 = metadata !{metadata !"c", metadata !341, metadata !"unsigned char", i32 0, i32 7}
!351 = metadata !{metadata !352}
!352 = metadata !{i32 0, i32 7, metadata !353}
!353 = metadata !{metadata !354}
!354 = metadata !{metadata !"d", metadata !341, metadata !"unsigned char", i32 0, i32 7}
!355 = metadata !{i32 786689, metadata !5, metadata !"a", null, i32 7, metadata !85, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!356 = metadata !{i32 7, i32 32, metadata !5, null}
!357 = metadata !{i32 786689, metadata !5, metadata !"b", null, i32 7, metadata !85, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!358 = metadata !{i32 7, i32 54, metadata !5, null}
!359 = metadata !{i32 786689, metadata !5, metadata !"c", null, i32 7, metadata !85, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!360 = metadata !{i32 7, i32 76, metadata !5, null}
!361 = metadata !{i32 786689, metadata !5, metadata !"d", null, i32 7, metadata !85, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!362 = metadata !{i32 7, i32 98, metadata !5, null}
!363 = metadata !{i32 8, i32 1, metadata !364, null}
!364 = metadata !{i32 786443, metadata !5, i32 7, i32 105, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!365 = metadata !{i32 786689, metadata !26, metadata !"in", null, i32 6, metadata !85, i32 0, metadata !366} ; [ DW_TAG_arg_variable ]
!366 = metadata !{i32 14, i32 2, metadata !364, null}
!367 = metadata !{i32 6, i32 32, metadata !26, metadata !366}
!368 = metadata !{i32 8, i32 6, metadata !90, metadata !366}
!369 = metadata !{i32 10, i32 3, metadata !93, metadata !366}
!370 = metadata !{i32 8, i32 22, metadata !90, metadata !366}
!371 = metadata !{i32 786688, metadata !91, metadata !"i", metadata !27, i32 7, metadata !22, i32 0, metadata !366} ; [ DW_TAG_auto_variable ]
!372 = metadata !{i32 15, i32 2, metadata !364, null}
!373 = metadata !{i32 16, i32 1, metadata !364, null}
!374 = metadata !{i32 786689, metadata !47, metadata !"out", null, i32 392, metadata !85, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!375 = metadata !{i32 392, i32 35, metadata !47, null}
!376 = metadata !{i32 786689, metadata !47, metadata !"out1", null, i32 392, metadata !85, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!377 = metadata !{i32 392, i32 59, metadata !47, null}
!378 = metadata !{i32 786689, metadata !47, metadata !"a", null, i32 392, metadata !85, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!379 = metadata !{i32 392, i32 84, metadata !47, null}
!380 = metadata !{i32 786689, metadata !47, metadata !"b", null, i32 392, metadata !85, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!381 = metadata !{i32 392, i32 106, metadata !47, null}
!382 = metadata !{i32 786688, metadata !383, metadata !"tempA", metadata !27, i32 398, metadata !85, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!383 = metadata !{i32 786443, metadata !47, i32 392, i32 113, metadata !27, i32 69} ; [ DW_TAG_lexical_block ]
!384 = metadata !{i32 398, i32 16, metadata !383, null}
!385 = metadata !{i32 786688, metadata !383, metadata !"tempB", metadata !27, i32 399, metadata !85, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!386 = metadata !{i32 399, i32 16, metadata !383, null}
!387 = metadata !{i32 407, i32 2, metadata !383, null}
!388 = metadata !{i32 408, i32 2, metadata !383, null}
!389 = metadata !{i32 412, i32 2, metadata !383, null}
!390 = metadata !{i32 413, i32 2, metadata !383, null}
!391 = metadata !{i32 418, i32 2, metadata !383, null}
!392 = metadata !{i32 419, i32 2, metadata !383, null}
!393 = metadata !{i32 421, i32 5, metadata !383, null}
!394 = metadata !{i32 425, i32 5, metadata !383, null}
!395 = metadata !{i32 426, i32 3, metadata !396, null}
!396 = metadata !{i32 786443, metadata !383, i32 425, i32 37, metadata !27, i32 71} ; [ DW_TAG_lexical_block ]
!397 = metadata !{i32 427, i32 3, metadata !396, null}
!398 = metadata !{i32 428, i32 3, metadata !396, null}
!399 = metadata !{i32 432, i32 6, metadata !383, null}
!400 = metadata !{i32 433, i32 2, metadata !383, null}
!401 = metadata !{i32 434, i32 3, metadata !402, null}
!402 = metadata !{i32 786443, metadata !383, i32 433, i32 13, metadata !27, i32 72} ; [ DW_TAG_lexical_block ]
!403 = metadata !{i32 435, i32 3, metadata !402, null}
!404 = metadata !{i32 436, i32 3, metadata !402, null}
!405 = metadata !{i32 439, i32 2, metadata !383, null}
!406 = metadata !{i32 448, i32 6, metadata !407, null}
!407 = metadata !{i32 786443, metadata !383, i32 448, i32 2, metadata !27, i32 74} ; [ DW_TAG_lexical_block ]
!408 = metadata !{i32 440, i32 3, metadata !409, null}
!409 = metadata !{i32 786443, metadata !383, i32 439, i32 12, metadata !27, i32 73} ; [ DW_TAG_lexical_block ]
!410 = metadata !{i32 441, i32 3, metadata !409, null}
!411 = metadata !{i32 442, i32 3, metadata !409, null}
!412 = metadata !{i32 449, i32 3, metadata !413, null}
!413 = metadata !{i32 786443, metadata !407, i32 448, i32 26, metadata !27, i32 75} ; [ DW_TAG_lexical_block ]
!414 = metadata !{i32 450, i32 8, metadata !415, null}
!415 = metadata !{i32 786443, metadata !416, i32 450, i32 4, metadata !27, i32 77} ; [ DW_TAG_lexical_block ]
!416 = metadata !{i32 786443, metadata !413, i32 449, i32 16, metadata !27, i32 76} ; [ DW_TAG_lexical_block ]
!417 = metadata !{i32 451, i32 5, metadata !418, null}
!418 = metadata !{i32 786443, metadata !415, i32 450, i32 26, metadata !27, i32 78} ; [ DW_TAG_lexical_block ]
!419 = metadata !{i32 456, i32 5, metadata !418, null}
!420 = metadata !{i32 786688, metadata !383, metadata !"aMSB", metadata !27, i32 445, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!421 = metadata !{i32 450, i32 22, metadata !415, null}
!422 = metadata !{i32 786688, metadata !383, metadata !"j", metadata !27, i32 395, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!423 = metadata !{i32 460, i32 3, metadata !413, null}
!424 = metadata !{i32 465, i32 3, metadata !413, null}
!425 = metadata !{i32 448, i32 22, metadata !407, null}
!426 = metadata !{i32 786688, metadata !383, metadata !"i", metadata !27, i32 395, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!427 = metadata !{i32 471, i32 6, metadata !428, null}
!428 = metadata !{i32 786443, metadata !383, i32 471, i32 2, metadata !27, i32 81} ; [ DW_TAG_lexical_block ]
!429 = metadata !{i32 473, i32 3, metadata !430, null}
!430 = metadata !{i32 786443, metadata !428, i32 471, i32 26, metadata !27, i32 82} ; [ DW_TAG_lexical_block ]
!431 = metadata !{i32 474, i32 8, metadata !432, null}
!432 = metadata !{i32 786443, metadata !433, i32 474, i32 4, metadata !27, i32 84} ; [ DW_TAG_lexical_block ]
!433 = metadata !{i32 786443, metadata !430, i32 473, i32 16, metadata !27, i32 83} ; [ DW_TAG_lexical_block ]
!434 = metadata !{i32 475, i32 5, metadata !435, null}
!435 = metadata !{i32 786443, metadata !432, i32 474, i32 26, metadata !27, i32 85} ; [ DW_TAG_lexical_block ]
!436 = metadata !{i32 479, i32 6, metadata !435, null}
!437 = metadata !{i32 786688, metadata !383, metadata !"bMSB", metadata !27, i32 446, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!438 = metadata !{i32 474, i32 22, metadata !432, null}
!439 = metadata !{i32 482, i32 3, metadata !430, null}
!440 = metadata !{i32 485, i32 3, metadata !430, null}
!441 = metadata !{i32 471, i32 22, metadata !428, null}
!442 = metadata !{i32 786688, metadata !383, metadata !"temp", metadata !27, i32 489, metadata !85, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!443 = metadata !{i32 489, i32 16, metadata !383, null}
!444 = metadata !{i32 786688, metadata !383, metadata !"d", metadata !27, i32 492, metadata !85, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!445 = metadata !{i32 492, i32 16, metadata !383, null}
!446 = metadata !{i32 493, i32 2, metadata !383, null}
!447 = metadata !{i32 494, i32 2, metadata !383, null}
!448 = metadata !{i32 496, i32 2, metadata !383, null}
!449 = metadata !{i32 497, i32 2, metadata !383, null}
!450 = metadata !{i32 786688, metadata !383, metadata !"quot", metadata !27, i32 499, metadata !85, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!451 = metadata !{i32 499, i32 16, metadata !383, null}
!452 = metadata !{i32 500, i32 2, metadata !383, null}
!453 = metadata !{i32 786688, metadata !383, metadata !"bitPlace", metadata !27, i32 502, metadata !85, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!454 = metadata !{i32 502, i32 16, metadata !383, null}
!455 = metadata !{i32 503, i32 2, metadata !383, null}
!456 = metadata !{i32 505, i32 2, metadata !383, null}
!457 = metadata !{i32 507, i32 6, metadata !458, null}
!458 = metadata !{i32 786443, metadata !383, i32 507, i32 2, metadata !27, i32 88} ; [ DW_TAG_lexical_block ]
!459 = metadata !{i32 508, i32 7, metadata !460, null}
!460 = metadata !{i32 786443, metadata !458, i32 507, i32 34, metadata !27, i32 89} ; [ DW_TAG_lexical_block ]
!461 = metadata !{i32 510, i32 3, metadata !460, null}
!462 = metadata !{i32 512, i32 4, metadata !463, null}
!463 = metadata !{i32 786443, metadata !460, i32 510, i32 23, metadata !27, i32 90} ; [ DW_TAG_lexical_block ]
!464 = metadata !{i32 514, i32 4, metadata !463, null}
!465 = metadata !{i32 515, i32 4, metadata !463, null}
!466 = metadata !{i32 518, i32 3, metadata !463, null}
!467 = metadata !{i32 520, i32 3, metadata !460, null}
!468 = metadata !{i32 521, i32 3, metadata !460, null}
!469 = metadata !{i32 523, i32 3, metadata !460, null}
!470 = metadata !{i32 524, i32 3, metadata !460, null}
!471 = metadata !{i32 507, i32 30, metadata !458, null}
!472 = metadata !{i32 528, i32 2, metadata !383, null}
!473 = metadata !{i32 530, i32 2, metadata !383, null}
!474 = metadata !{i32 533, i32 1, metadata !383, null}
!475 = metadata !{i32 786689, metadata !37, metadata !"out", null, i32 93, metadata !85, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!476 = metadata !{i32 93, i32 37, metadata !37, null}
!477 = metadata !{i32 786689, metadata !37, metadata !"a", null, i32 93, metadata !85, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!478 = metadata !{i32 93, i32 61, metadata !37, null}
!479 = metadata !{i32 786689, metadata !37, metadata !"shift", metadata !27, i32 50331741, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!480 = metadata !{i32 93, i32 73, metadata !37, null}
!481 = metadata !{i32 101, i32 2, metadata !482, null}
!482 = metadata !{i32 786443, metadata !37, i32 93, i32 79, metadata !27, i32 25} ; [ DW_TAG_lexical_block ]
!483 = metadata !{i32 44, i32 6, metadata !122, metadata !484}
!484 = metadata !{i32 102, i32 3, metadata !485, null}
!485 = metadata !{i32 786443, metadata !482, i32 101, i32 16, metadata !27, i32 26} ; [ DW_TAG_lexical_block ]
!486 = metadata !{i32 45, i32 3, metadata !126, metadata !484}
!487 = metadata !{i32 44, i32 22, metadata !122, metadata !484}
!488 = metadata !{i32 786688, metadata !123, metadata !"i", metadata !27, i32 42, metadata !22, i32 0, metadata !484} ; [ DW_TAG_auto_variable ]
!489 = metadata !{i32 106, i32 21, metadata !482, null}
!490 = metadata !{i32 786688, metadata !482, metadata !"start", metadata !27, i32 106, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!491 = metadata !{i32 107, i32 26, metadata !482, null}
!492 = metadata !{i32 786688, metadata !482, metadata !"outputBit", metadata !27, i32 108, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!493 = metadata !{i32 114, i32 3, metadata !494, null}
!494 = metadata !{i32 786443, metadata !495, i32 113, i32 30, metadata !27, i32 28} ; [ DW_TAG_lexical_block ]
!495 = metadata !{i32 786443, metadata !482, i32 113, i32 2, metadata !27, i32 27} ; [ DW_TAG_lexical_block ]
!496 = metadata !{i32 786688, metadata !482, metadata !"bitStart", metadata !27, i32 107, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!497 = metadata !{i32 110, i32 2, metadata !482, null}
!498 = metadata !{i32 786688, metadata !482, metadata !"k", metadata !27, i32 94, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!499 = metadata !{i32 786689, metadata !26, metadata !"in", null, i32 6, metadata !85, i32 0, metadata !500} ; [ DW_TAG_arg_variable ]
!500 = metadata !{i32 111, i32 2, metadata !482, null}
!501 = metadata !{i32 6, i32 32, metadata !26, metadata !500}
!502 = metadata !{i32 8, i32 6, metadata !90, metadata !500}
!503 = metadata !{i32 113, i32 6, metadata !495, null}
!504 = metadata !{i32 10, i32 3, metadata !93, metadata !500}
!505 = metadata !{i32 8, i32 22, metadata !90, metadata !500}
!506 = metadata !{i32 786688, metadata !91, metadata !"i", metadata !27, i32 7, metadata !22, i32 0, metadata !500} ; [ DW_TAG_auto_variable ]
!507 = metadata !{i32 116, i32 4, metadata !508, null}
!508 = metadata !{i32 786443, metadata !509, i32 115, i32 25, metadata !27, i32 30} ; [ DW_TAG_lexical_block ]
!509 = metadata !{i32 786443, metadata !494, i32 115, i32 3, metadata !27, i32 29} ; [ DW_TAG_lexical_block ]
!510 = metadata !{i32 115, i32 7, metadata !509, null}
!511 = metadata !{i32 786688, metadata !482, metadata !"b", metadata !27, i32 96, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!512 = metadata !{i32 118, i32 4, metadata !508, null}
!513 = metadata !{i32 119, i32 5, metadata !514, null}
!514 = metadata !{i32 786443, metadata !508, i32 118, i32 22, metadata !27, i32 31} ; [ DW_TAG_lexical_block ]
!515 = metadata !{i32 121, i32 5, metadata !514, null}
!516 = metadata !{i32 122, i32 4, metadata !514, null}
!517 = metadata !{i32 123, i32 5, metadata !518, null}
!518 = metadata !{i32 786443, metadata !508, i32 122, i32 9, metadata !27, i32 32} ; [ DW_TAG_lexical_block ]
!519 = metadata !{i32 126, i32 4, metadata !508, null}
!520 = metadata !{i32 115, i32 21, metadata !509, null}
!521 = metadata !{i32 786688, metadata !482, metadata !"j", metadata !27, i32 94, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!522 = metadata !{i32 130, i32 3, metadata !494, null}
!523 = metadata !{i32 131, i32 4, metadata !524, null}
!524 = metadata !{i32 786443, metadata !494, i32 130, i32 21, metadata !27, i32 33} ; [ DW_TAG_lexical_block ]
!525 = metadata !{i32 113, i32 26, metadata !495, null}
!526 = metadata !{i32 786688, metadata !482, metadata !"i", metadata !27, i32 94, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!527 = metadata !{i32 136, i32 1, metadata !482, null}
!528 = metadata !{i32 786689, metadata !31, metadata !"to", null, i32 41, metadata !85, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!529 = metadata !{i32 41, i32 32, metadata !31, null}
!530 = metadata !{i32 786689, metadata !31, metadata !"from", null, i32 41, metadata !85, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!531 = metadata !{i32 41, i32 55, metadata !31, null}
!532 = metadata !{i32 44, i32 6, metadata !122, null}
!533 = metadata !{i32 45, i32 3, metadata !126, null}
!534 = metadata !{i32 44, i32 22, metadata !122, null}
!535 = metadata !{i32 786688, metadata !123, metadata !"i", metadata !27, i32 42, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!536 = metadata !{i32 49, i32 1, metadata !123, null}
!537 = metadata !{i32 786689, metadata !34, metadata !"a", null, i32 55, metadata !85, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!538 = metadata !{i32 55, i32 34, metadata !34, null}
!539 = metadata !{i32 786689, metadata !34, metadata !"b", null, i32 55, metadata !85, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!540 = metadata !{i32 55, i32 56, metadata !34, null}
!541 = metadata !{i32 786688, metadata !542, metadata !"state", metadata !27, i32 59, metadata !543, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!542 = metadata !{i32 786443, metadata !34, i32 55, i32 63, metadata !27, i32 13} ; [ DW_TAG_lexical_block ]
!543 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 8192, i64 32, i32 0, i32 0, metadata !22, metadata !86, i32 0, i32 0} ; [ DW_TAG_array_type ]
!544 = metadata !{i32 59, i32 6, metadata !542, null}
!545 = metadata !{i32 60, i32 6, metadata !546, null}
!546 = metadata !{i32 786443, metadata !542, i32 60, i32 2, metadata !27, i32 14} ; [ DW_TAG_lexical_block ]
!547 = metadata !{i32 61, i32 3, metadata !548, null}
!548 = metadata !{i32 786443, metadata !546, i32 60, i32 26, metadata !27, i32 15} ; [ DW_TAG_lexical_block ]
!549 = metadata !{i32 62, i32 4, metadata !550, null}
!550 = metadata !{i32 786443, metadata !548, i32 61, i32 18, metadata !27, i32 16} ; [ DW_TAG_lexical_block ]
!551 = metadata !{i32 63, i32 3, metadata !550, null}
!552 = metadata !{i32 63, i32 9, metadata !548, null}
!553 = metadata !{i32 64, i32 4, metadata !554, null}
!554 = metadata !{i32 786443, metadata !548, i32 63, i32 24, metadata !27, i32 17} ; [ DW_TAG_lexical_block ]
!555 = metadata !{i32 65, i32 3, metadata !554, null}
!556 = metadata !{i32 65, i32 9, metadata !548, null}
!557 = metadata !{i32 66, i32 4, metadata !558, null}
!558 = metadata !{i32 786443, metadata !548, i32 65, i32 25, metadata !27, i32 18} ; [ DW_TAG_lexical_block ]
!559 = metadata !{i32 67, i32 3, metadata !558, null}
!560 = metadata !{i32 60, i32 22, metadata !546, null}
!561 = metadata !{i32 786688, metadata !542, metadata !"i", metadata !27, i32 56, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!562 = metadata !{i32 70, i32 2, metadata !542, null}
!563 = metadata !{i32 74, i32 6, metadata !564, null}
!564 = metadata !{i32 786443, metadata !542, i32 74, i32 2, metadata !27, i32 20} ; [ DW_TAG_lexical_block ]
!565 = metadata !{i32 75, i32 4, metadata !566, null}
!566 = metadata !{i32 786443, metadata !564, i32 74, i32 26, metadata !27, i32 21} ; [ DW_TAG_lexical_block ]
!567 = metadata !{i32 79, i32 4, metadata !566, null}
!568 = metadata !{i32 83, i32 4, metadata !566, null}
!569 = metadata !{i32 74, i32 22, metadata !564, null}
!570 = metadata !{i32 90, i32 1, metadata !542, null}
!571 = metadata !{i32 786689, metadata !31, metadata !"to", null, i32 41, metadata !85, i32 0, metadata !572} ; [ DW_TAG_arg_variable ]
!572 = metadata !{i32 198, i32 2, metadata !573, null}
!573 = metadata !{i32 786443, metadata !41, i32 182, i32 84, metadata !27, i32 43} ; [ DW_TAG_lexical_block ]
!574 = metadata !{i32 41, i32 32, metadata !31, metadata !572}
!575 = metadata !{i32 786689, metadata !41, metadata !"out", null, i32 182, metadata !85, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!576 = metadata !{i32 182, i32 31, metadata !41, null}
!577 = metadata !{i32 786689, metadata !41, metadata !"a", null, i32 182, metadata !85, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!578 = metadata !{i32 182, i32 55, metadata !41, null}
!579 = metadata !{i32 786689, metadata !41, metadata !"b", null, i32 182, metadata !85, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!580 = metadata !{i32 182, i32 77, metadata !41, null}
!581 = metadata !{i32 786688, metadata !573, metadata !"tempA", metadata !27, i32 189, metadata !85, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!582 = metadata !{i32 189, i32 16, metadata !573, null}
!583 = metadata !{i32 786688, metadata !573, metadata !"tempB", metadata !27, i32 190, metadata !85, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!584 = metadata !{i32 190, i32 16, metadata !573, null}
!585 = metadata !{i32 193, i32 2, metadata !573, null}
!586 = metadata !{i32 194, i32 2, metadata !573, null}
!587 = metadata !{i32 786689, metadata !31, metadata !"to", null, i32 41, metadata !85, i32 0, metadata !588} ; [ DW_TAG_arg_variable ]
!588 = metadata !{i32 197, i32 2, metadata !573, null}
!589 = metadata !{i32 41, i32 32, metadata !31, metadata !588}
!590 = metadata !{i32 786689, metadata !31, metadata !"from", null, i32 41, metadata !85, i32 0, metadata !588} ; [ DW_TAG_arg_variable ]
!591 = metadata !{i32 41, i32 55, metadata !31, metadata !588}
!592 = metadata !{i32 44, i32 6, metadata !122, metadata !588}
!593 = metadata !{i32 44, i32 6, metadata !122, metadata !572}
!594 = metadata !{i32 45, i32 3, metadata !126, metadata !588}
!595 = metadata !{i32 44, i32 22, metadata !122, metadata !588}
!596 = metadata !{i32 786688, metadata !123, metadata !"i", metadata !27, i32 42, metadata !22, i32 0, metadata !588} ; [ DW_TAG_auto_variable ]
!597 = metadata !{i32 45, i32 3, metadata !126, metadata !572}
!598 = metadata !{i32 44, i32 22, metadata !122, metadata !572}
!599 = metadata !{i32 786688, metadata !123, metadata !"i", metadata !27, i32 42, metadata !22, i32 0, metadata !572} ; [ DW_TAG_auto_variable ]
!600 = metadata !{i32 200, i32 2, metadata !573, null}
!601 = metadata !{i32 202, i32 6, metadata !602, null}
!602 = metadata !{i32 786443, metadata !573, i32 202, i32 2, metadata !27, i32 44} ; [ DW_TAG_lexical_block ]
!603 = metadata !{i32 204, i32 3, metadata !604, null}
!604 = metadata !{i32 786443, metadata !602, i32 202, i32 30, metadata !27, i32 45} ; [ DW_TAG_lexical_block ]
!605 = metadata !{i32 786688, metadata !573, metadata !"sum", metadata !27, i32 184, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!606 = metadata !{i32 205, i32 3, metadata !604, null}
!607 = metadata !{i32 786688, metadata !573, metadata !"carry", metadata !27, i32 185, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!608 = metadata !{i32 208, i32 3, metadata !604, null}
!609 = metadata !{i32 209, i32 4, metadata !610, null}
!610 = metadata !{i32 786443, metadata !604, i32 208, i32 26, metadata !27, i32 46} ; [ DW_TAG_lexical_block ]
!611 = metadata !{i32 210, i32 3, metadata !610, null}
!612 = metadata !{i32 211, i32 3, metadata !604, null}
!613 = metadata !{i32 214, i32 3, metadata !604, null}
!614 = metadata !{i32 215, i32 4, metadata !615, null}
!615 = metadata !{i32 786443, metadata !604, i32 214, i32 30, metadata !27, i32 47} ; [ DW_TAG_lexical_block ]
!616 = metadata !{i32 216, i32 3, metadata !615, null}
!617 = metadata !{i32 217, i32 3, metadata !604, null}
!618 = metadata !{i32 786688, metadata !573, metadata !"i", metadata !27, i32 187, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!619 = metadata !{i32 202, i32 26, metadata !602, null}
!620 = metadata !{i32 219, i32 1, metadata !573, null}
