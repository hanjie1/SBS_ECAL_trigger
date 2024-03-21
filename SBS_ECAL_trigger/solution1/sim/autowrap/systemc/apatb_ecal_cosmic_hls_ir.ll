; ModuleID = '/daqfs/home/hanjie/Desktop/GEp/SBS_ECAL_trigger/SBS_ECAL_trigger/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"struct.ap_uint<3>" = type { %"struct.ap_int_base<3, false>" }
%"struct.ap_int_base<3, false>" = type { %"struct.ssdm_int<3, false>" }
%"struct.ssdm_int<3, false>" = type { i3 }
%"struct.ap_uint<2>" = type { %"struct.ap_int_base<2, false>" }
%"struct.ap_int_base<2, false>" = type { %"struct.ssdm_int<2, false>" }
%"struct.ssdm_int<2, false>" = type { i2 }
%"struct.ap_uint<4>" = type { %"struct.ap_int_base<4, false>" }
%"struct.ap_int_base<4, false>" = type { %"struct.ssdm_int<4, false>" }
%"struct.ssdm_int<4, false>" = type { i4 }
%"class.hls::stream<fadc_vxs_hits_t, 0>" = type { %struct.fadc_vxs_hits_t }
%struct.fadc_vxs_hits_t = type { [27 x %struct.fadc_hit_t] }
%struct.fadc_hit_t = type { %"struct.ap_uint<8>" }
%"struct.ap_uint<8>" = type { %"struct.ap_int_base<8, false>" }
%"struct.ap_int_base<8, false>" = type { %"struct.ssdm_int<8, false>" }
%"struct.ssdm_int<8, false>" = type { i8 }
%"class.hls::stream<smo_trig_t, 0>" = type { %struct.smo_trig_t }
%struct.smo_trig_t = type { %"struct.ap_uint<16>" }
%"struct.ap_uint<16>" = type { %"struct.ap_int_base<16, false>" }
%"struct.ap_int_base<16, false>" = type { %"struct.ssdm_int<16, false>" }
%"struct.ssdm_int<16, false>" = type { i16 }
%"class.hls::stream<trigger_t, 0>" = type { %struct.fadc_hit_t }

; Function Attrs: inaccessiblememonly nounwind willreturn
declare void @llvm.sideeffect() #0

; Function Attrs: noinline willreturn
define void @apatb_ecal_cosmic_hls_ir(%"struct.ap_uint<3>"* nocapture readonly %hit_dt, %"struct.ap_uint<3>"* nocapture readonly %smo_dt, %"struct.ap_uint<2>"* nocapture readonly %nsmo_threshold, %"struct.ap_uint<4>"* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="3" %mltp_threshold, %"class.hls::stream<fadc_vxs_hits_t, 0>"* noalias nocapture nonnull dereferenceable(27) %s_fadc_vxs_hits, [3 x %"class.hls::stream<smo_trig_t, 0>"]* noalias nocapture nonnull dereferenceable(6) %s_smo_trig_t, %"class.hls::stream<trigger_t, 0>"* noalias nocapture nonnull dereferenceable(1) %s_trigger_t) local_unnamed_addr #1 {
entry:
  %mltp_threshold_copy = alloca [3 x i4], align 512
  %s_fadc_vxs_hits_copy = alloca i216, align 512
  call void @llvm.sideeffect() #12 [ "stream_interface"(i216* %s_fadc_vxs_hits_copy, i32 0) ]
  %s_smo_trig_t_copy_0 = alloca i16, align 512
  %s_smo_trig_t_copy_1 = alloca i16, align 512
  %s_smo_trig_t_copy_2 = alloca i16, align 512
  call void @llvm.sideeffect() #13 [ "stream_interface"(i16* %s_smo_trig_t_copy_2, i32 0) ]
  call void @llvm.sideeffect() #13 [ "stream_interface"(i16* %s_smo_trig_t_copy_1, i32 0) ]
  call void @llvm.sideeffect() #13 [ "stream_interface"(i16* %s_smo_trig_t_copy_0, i32 0) ]
  %s_trigger_t_copy = alloca i8, align 512
  call void @llvm.sideeffect() #14 [ "stream_interface"(i8* %s_trigger_t_copy, i32 0) ]
  %0 = bitcast %"struct.ap_uint<4>"* %mltp_threshold to [3 x %"struct.ap_uint<4>"]*
  call void @copy_in([3 x %"struct.ap_uint<4>"]* nonnull %0, [3 x i4]* nonnull align 512 %mltp_threshold_copy, %"class.hls::stream<fadc_vxs_hits_t, 0>"* nonnull %s_fadc_vxs_hits, i216* nonnull align 512 %s_fadc_vxs_hits_copy, [3 x %"class.hls::stream<smo_trig_t, 0>"]* nonnull %s_smo_trig_t, i16* nonnull align 512 %s_smo_trig_t_copy_0, i16* nonnull align 512 %s_smo_trig_t_copy_1, i16* nonnull align 512 %s_smo_trig_t_copy_2, %"class.hls::stream<trigger_t, 0>"* nonnull %s_trigger_t, i8* nonnull align 512 %s_trigger_t_copy)
  call void @apatb_ecal_cosmic_hls_hw(%"struct.ap_uint<3>"* %hit_dt, %"struct.ap_uint<3>"* %smo_dt, %"struct.ap_uint<2>"* %nsmo_threshold, [3 x i4]* %mltp_threshold_copy, i216* %s_fadc_vxs_hits_copy, i16* %s_smo_trig_t_copy_0, i16* %s_smo_trig_t_copy_1, i16* %s_smo_trig_t_copy_2, i8* %s_trigger_t_copy)
  call void @copy_back([3 x %"struct.ap_uint<4>"]* %0, [3 x i4]* %mltp_threshold_copy, %"class.hls::stream<fadc_vxs_hits_t, 0>"* %s_fadc_vxs_hits, i216* %s_fadc_vxs_hits_copy, [3 x %"class.hls::stream<smo_trig_t, 0>"]* %s_smo_trig_t, i16* %s_smo_trig_t_copy_0, i16* %s_smo_trig_t_copy_1, i16* %s_smo_trig_t_copy_2, %"class.hls::stream<trigger_t, 0>"* %s_trigger_t, i8* %s_trigger_t_copy)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0a3struct.ap_uint<4>"([3 x %"struct.ap_uint<4>"]* noalias "unpacked"="0" %dst, [3 x i4]* noalias nocapture readonly align 512 "unpacked"="1.0" %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [3 x %"struct.ap_uint<4>"]* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a3struct.ap_uint<4>"([3 x %"struct.ap_uint<4>"]* nonnull %dst, [3 x i4]* %src, i64 3)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a3struct.ap_uint<4>"([3 x %"struct.ap_uint<4>"]* "unpacked"="0" %dst, [3 x i4]* nocapture readonly "unpacked"="1.0" %src, i64 "unpacked"="2" %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [3 x %"struct.ap_uint<4>"]* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [3 x i4], [3 x i4]* %src, i64 0, i64 %for.loop.idx2
  %dst.addr.0.0.06 = getelementptr [3 x %"struct.ap_uint<4>"], [3 x %"struct.ap_uint<4>"]* %dst, i64 0, i64 %for.loop.idx2, i32 0, i32 0, i32 0
  %1 = bitcast i4* %src.addr.0.0.05 to i8*
  %2 = load i8, i8* %1
  %3 = trunc i8 %2 to i4
  store i4 %3, i4* %dst.addr.0.0.06, align 1
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<fadc_vxs_hits_t, 0>"(%"class.hls::stream<fadc_vxs_hits_t, 0>"* noalias %dst, i216* noalias align 512 %src) unnamed_addr #4 {
entry:
  %0 = icmp eq %"class.hls::stream<fadc_vxs_hits_t, 0>"* %dst, null
  %1 = icmp eq i216* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<fadc_vxs_hits_t, 0>"(%"class.hls::stream<fadc_vxs_hits_t, 0>"* nonnull %dst, i216* nonnull align 512 %src)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<fadc_vxs_hits_t, 0>"(%"class.hls::stream<fadc_vxs_hits_t, 0>"* noalias nocapture, i216* noalias nocapture align 512) unnamed_addr #5 {
entry:
  %2 = alloca i216
  %3 = alloca %"class.hls::stream<fadc_vxs_hits_t, 0>"
  br label %empty

empty:                                            ; preds = %push, %entry
  %4 = bitcast i216* %1 to i8*
  %5 = call i1 @fpga_fifo_not_empty_32(i8* %4)
  br i1 %5, label %push, label %ret

push:                                             ; preds = %empty
  %6 = bitcast i216* %2 to i8*
  %7 = bitcast i216* %1 to i8*
  call void @fpga_fifo_pop_32(i8* %6, i8* %7)
  %8 = load volatile i216, i216* %2
  %9 = call [27 x %struct.fadc_hit_t] @"_llvm.fpga.unpack.bits.s_class.hls::stream<fadc_vxs_hits_t, 0>s.i216"(i216 %8)
  %oldret1 = insertvalue %struct.fadc_vxs_hits_t undef, [27 x %struct.fadc_hit_t] %9, 0
  %oldret = insertvalue %"class.hls::stream<fadc_vxs_hits_t, 0>" undef, %struct.fadc_vxs_hits_t %oldret1, 0
  store %"class.hls::stream<fadc_vxs_hits_t, 0>" %oldret, %"class.hls::stream<fadc_vxs_hits_t, 0>"* %3
  %10 = bitcast %"class.hls::stream<fadc_vxs_hits_t, 0>"* %3 to i8*
  %11 = bitcast %"class.hls::stream<fadc_vxs_hits_t, 0>"* %0 to i8*
  call void @fpga_fifo_push_27(i8* %10, i8* %11)
  br label %empty, !llvm.loop !14

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define void @"arraycpy_hls.p0a3class.hls::stream<smo_trig_t, 0>"([3 x %"class.hls::stream<smo_trig_t, 0>"]* "orig.arg.no"="0" %dst, [3 x %"class.hls::stream<smo_trig_t, 0>"]* "orig.arg.no"="1" %src, i64 "orig.arg.no"="2" %num) local_unnamed_addr #6 {
entry:
  %0 = icmp eq [3 x %"class.hls::stream<smo_trig_t, 0>"]* %src, null
  %1 = icmp eq [3 x %"class.hls::stream<smo_trig_t, 0>"]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond3 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond3, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx4 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.01 = getelementptr [3 x %"class.hls::stream<smo_trig_t, 0>"], [3 x %"class.hls::stream<smo_trig_t, 0>"]* %src, i64 0, i64 %for.loop.idx4, i32 0
  %dst.addr.02 = getelementptr [3 x %"class.hls::stream<smo_trig_t, 0>"], [3 x %"class.hls::stream<smo_trig_t, 0>"]* %dst, i64 0, i64 %for.loop.idx4, i32 0
  call fastcc void @streamcpy_hls.p0struct.smo_trig_t(%struct.smo_trig_t* %dst.addr.02, %struct.smo_trig_t* %src.addr.01)
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx4, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @streamcpy_hls.p0struct.smo_trig_t(%struct.smo_trig_t* nocapture, %struct.smo_trig_t* nocapture) unnamed_addr #5 {
entry:
  %2 = alloca %struct.smo_trig_t
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.smo_trig_t* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_2(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.smo_trig_t* %2 to i8*
  %6 = bitcast %struct.smo_trig_t* %1 to i8*
  call void @fpga_fifo_pop_2(i8* %5, i8* %6)
  %7 = load volatile %struct.smo_trig_t, %struct.smo_trig_t* %2
  %8 = bitcast %struct.smo_trig_t* %2 to i8*
  %9 = bitcast %struct.smo_trig_t* %0 to i8*
  call void @fpga_fifo_push_2(i8* %8, i8* %9)
  br label %empty, !llvm.loop !16

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<trigger_t, 0>"(i8* noalias nocapture align 512 "unpacked"="0.0" %dst, %"class.hls::stream<trigger_t, 0>"* noalias "unpacked"="1" %src) unnamed_addr #4 {
entry:
  %0 = icmp eq %"class.hls::stream<trigger_t, 0>"* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<trigger_t, 0>"(i8* align 512 %dst, %"class.hls::stream<trigger_t, 0>"* nonnull %src)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<trigger_t, 0>"(i8* noalias nocapture align 512 "unpacked"="0.0", %"class.hls::stream<trigger_t, 0>"* noalias nocapture "unpacked"="1") unnamed_addr #5 {
entry:
  %2 = alloca %"class.hls::stream<trigger_t, 0>"
  %3 = alloca i8
  br label %empty

empty:                                            ; preds = %push, %entry
  %4 = bitcast %"class.hls::stream<trigger_t, 0>"* %1 to i8*
  %5 = call i1 @fpga_fifo_not_empty_1(i8* %4)
  br i1 %5, label %push, label %ret

push:                                             ; preds = %empty
  %6 = bitcast %"class.hls::stream<trigger_t, 0>"* %2 to i8*
  %7 = bitcast %"class.hls::stream<trigger_t, 0>"* %1 to i8*
  call void @fpga_fifo_pop_1(i8* %6, i8* %7)
  %8 = load volatile %"class.hls::stream<trigger_t, 0>", %"class.hls::stream<trigger_t, 0>"* %2
  %.evi = extractvalue %"class.hls::stream<trigger_t, 0>" %8, 0, 0, 0, 0, 0
  store i8 %.evi, i8* %3
  call void @fpga_fifo_push_1(i8* %3, i8* %0)
  br label %empty, !llvm.loop !17

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<trigger_t, 0>.28"(%"class.hls::stream<trigger_t, 0>"* noalias "unpacked"="0" %dst, i8* noalias nocapture align 512 "unpacked"="1.0" %src) unnamed_addr #4 {
entry:
  %0 = icmp eq %"class.hls::stream<trigger_t, 0>"* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<trigger_t, 0>.31"(%"class.hls::stream<trigger_t, 0>"* nonnull %dst, i8* align 512 %src)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<trigger_t, 0>.31"(%"class.hls::stream<trigger_t, 0>"* noalias nocapture "unpacked"="0", i8* noalias nocapture align 512 "unpacked"="1.0") unnamed_addr #5 {
entry:
  %2 = alloca i8
  %3 = alloca %"class.hls::stream<trigger_t, 0>"
  br label %empty

empty:                                            ; preds = %push, %entry
  %4 = call i1 @fpga_fifo_not_empty_1(i8* %1)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  call void @fpga_fifo_pop_1(i8* %2, i8* %1)
  %5 = load volatile i8, i8* %2
  %.ivi = insertvalue %"class.hls::stream<trigger_t, 0>" undef, i8 %5, 0, 0, 0, 0, 0
  store %"class.hls::stream<trigger_t, 0>" %.ivi, %"class.hls::stream<trigger_t, 0>"* %3
  %6 = bitcast %"class.hls::stream<trigger_t, 0>"* %3 to i8*
  %7 = bitcast %"class.hls::stream<trigger_t, 0>"* %0 to i8*
  call void @fpga_fifo_push_1(i8* %6, i8* %7)
  br label %empty, !llvm.loop !18

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0a3struct.ap_uint<4>.39"([3 x i4]* noalias nocapture align 512 "unpacked"="0.0" %dst, [3 x %"struct.ap_uint<4>"]* noalias readonly "unpacked"="1" %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [3 x %"struct.ap_uint<4>"]* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a3struct.ap_uint<4>.42"([3 x i4]* %dst, [3 x %"struct.ap_uint<4>"]* nonnull %src, i64 3)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a3struct.ap_uint<4>.42"([3 x i4]* nocapture "unpacked"="0.0" %dst, [3 x %"struct.ap_uint<4>"]* readonly "unpacked"="1" %src, i64 "unpacked"="2" %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [3 x %"struct.ap_uint<4>"]* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [3 x %"struct.ap_uint<4>"], [3 x %"struct.ap_uint<4>"]* %src, i64 0, i64 %for.loop.idx2, i32 0, i32 0, i32 0
  %dst.addr.0.0.06 = getelementptr [3 x i4], [3 x i4]* %dst, i64 0, i64 %for.loop.idx2
  %1 = bitcast i4* %src.addr.0.0.05 to i8*
  %2 = load i8, i8* %1
  %3 = trunc i8 %2 to i4
  store i4 %3, i4* %dst.addr.0.0.06, align 1
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #7

; Function Attrs: argmemonly noinline willreturn
define void @"arraycpy_hls.p0a3class.hls::stream<smo_trig_t, 0>.50.51"(i16* "orig.arg.no"="0" "unpacked"="0.0" %dst_0, i16* "orig.arg.no"="0" "unpacked"="0.1" %dst_1, i16* "orig.arg.no"="0" "unpacked"="0.2" %dst_2, [3 x %"class.hls::stream<smo_trig_t, 0>"]* "orig.arg.no"="1" %src, i64 "orig.arg.no"="2" %num) #6 {
entry:
  %0 = icmp eq [3 x %"class.hls::stream<smo_trig_t, 0>"]* %src, null
  %1 = icmp eq i16* %dst_0, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond3 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond3, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %dst.addr.02.exit, %for.loop.lr.ph
  %for.loop.idx4 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %dst.addr.02.exit ]
  %3 = trunc i64 %for.loop.idx4 to i2
  %src.addr.01 = getelementptr [3 x %"class.hls::stream<smo_trig_t, 0>"], [3 x %"class.hls::stream<smo_trig_t, 0>"]* %src, i64 0, i64 %for.loop.idx4, i32 0
  switch i2 %3, label %dst.addr.02.case.2 [
    i2 0, label %dst.addr.02.case.0
    i2 1, label %dst.addr.02.case.1
  ]

dst.addr.02.case.0:                               ; preds = %for.loop
  call void @streamcpy_hls.p0struct.smo_trig_t.74(i16* %dst_0, %struct.smo_trig_t* %src.addr.01)
  br label %dst.addr.02.exit

dst.addr.02.case.1:                               ; preds = %for.loop
  call void @streamcpy_hls.p0struct.smo_trig_t.74(i16* %dst_1, %struct.smo_trig_t* %src.addr.01)
  br label %dst.addr.02.exit

dst.addr.02.case.2:                               ; preds = %for.loop
  %4 = icmp eq i2 %3, -2
  call void @llvm.assume(i1 %4)
  call void @streamcpy_hls.p0struct.smo_trig_t.74(i16* %dst_2, %struct.smo_trig_t* %src.addr.01)
  br label %dst.addr.02.exit

dst.addr.02.exit:                                 ; preds = %dst.addr.02.case.2, %dst.addr.02.case.1, %dst.addr.02.case.0
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx4, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %dst.addr.02.exit, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal void @"onebyonecpy_hls.p0a3class.hls::stream<smo_trig_t, 0>.49.52"(i16* noalias align 512 "orig.arg.no"="0" "unpacked"="0.0" %dst_0, i16* noalias align 512 "orig.arg.no"="0" "unpacked"="0.1" %dst_1, i16* noalias align 512 "orig.arg.no"="0" "unpacked"="0.2" %dst_2, [3 x %"class.hls::stream<smo_trig_t, 0>"]* noalias "orig.arg.no"="1" %src) #4 {
entry:
  %0 = icmp eq i16* %dst_0, null
  %1 = icmp eq [3 x %"class.hls::stream<smo_trig_t, 0>"]* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a3class.hls::stream<smo_trig_t, 0>.50.51"(i16* nonnull %dst_0, i16* %dst_1, i16* %dst_2, [3 x %"class.hls::stream<smo_trig_t, 0>"]* nonnull %src, i64 3)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal void @copy_in([3 x %"struct.ap_uint<4>"]* noalias readonly "orig.arg.no"="0" "unpacked"="0", [3 x i4]* noalias nocapture align 512 "orig.arg.no"="1" "unpacked"="1.0", %"class.hls::stream<fadc_vxs_hits_t, 0>"* noalias "orig.arg.no"="2" "unpacked"="2", i216* noalias align 512 "orig.arg.no"="3" "unpacked"="3", [3 x %"class.hls::stream<smo_trig_t, 0>"]* noalias "orig.arg.no"="4" "unpacked"="4", i16* noalias align 512 "orig.arg.no"="5" "unpacked"="5.0" %_0, i16* noalias align 512 "orig.arg.no"="5" "unpacked"="5.1" %_1, i16* noalias align 512 "orig.arg.no"="5" "unpacked"="5.2" %_2, %"class.hls::stream<trigger_t, 0>"* noalias "orig.arg.no"="6" "unpacked"="6", i8* noalias nocapture align 512 "orig.arg.no"="7" "unpacked"="7.0") #8 {
entry:
  call fastcc void @"onebyonecpy_hls.p0a3struct.ap_uint<4>.39"([3 x i4]* align 512 %1, [3 x %"struct.ap_uint<4>"]* %0)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<fadc_vxs_hits_t, 0>.92"(i216* align 512 %3, %"class.hls::stream<fadc_vxs_hits_t, 0>"* %2)
  call void @"onebyonecpy_hls.p0a3class.hls::stream<smo_trig_t, 0>.49.52"(i16* align 512 %_0, i16* align 512 %_1, i16* align 512 %_2, [3 x %"class.hls::stream<smo_trig_t, 0>"]* %4)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<trigger_t, 0>"(i8* align 512 %6, %"class.hls::stream<trigger_t, 0>"* %5)
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define void @"arraycpy_hls.p0a3class.hls::stream<smo_trig_t, 0>.58.59"([3 x %"class.hls::stream<smo_trig_t, 0>"]* "orig.arg.no"="0" %dst, i16* "orig.arg.no"="1" "unpacked"="1.0" %src_0, i16* "orig.arg.no"="1" "unpacked"="1.1" %src_1, i16* "orig.arg.no"="1" "unpacked"="1.2" %src_2, i64 "orig.arg.no"="2" %num) #6 {
entry:
  %0 = icmp eq i16* %src_0, null
  %1 = icmp eq [3 x %"class.hls::stream<smo_trig_t, 0>"]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond3 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond3, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %src.addr.01.exit, %for.loop.lr.ph
  %for.loop.idx4 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %src.addr.01.exit ]
  %3 = trunc i64 %for.loop.idx4 to i2
  %dst.addr.02 = getelementptr [3 x %"class.hls::stream<smo_trig_t, 0>"], [3 x %"class.hls::stream<smo_trig_t, 0>"]* %dst, i64 0, i64 %for.loop.idx4, i32 0
  switch i2 %3, label %src.addr.01.case.2 [
    i2 0, label %src.addr.01.case.0
    i2 1, label %src.addr.01.case.1
  ]

src.addr.01.case.0:                               ; preds = %for.loop
  call void @streamcpy_hls.p0struct.smo_trig_t.67(%struct.smo_trig_t* %dst.addr.02, i16* %src_0)
  br label %src.addr.01.exit

src.addr.01.case.1:                               ; preds = %for.loop
  call void @streamcpy_hls.p0struct.smo_trig_t.67(%struct.smo_trig_t* %dst.addr.02, i16* %src_1)
  br label %src.addr.01.exit

src.addr.01.case.2:                               ; preds = %for.loop
  %4 = icmp eq i2 %3, -2
  call void @llvm.assume(i1 %4)
  call void @streamcpy_hls.p0struct.smo_trig_t.67(%struct.smo_trig_t* %dst.addr.02, i16* %src_2)
  br label %src.addr.01.exit

src.addr.01.exit:                                 ; preds = %src.addr.01.case.2, %src.addr.01.case.1, %src.addr.01.case.0
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx4, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %src.addr.01.exit, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal void @"onebyonecpy_hls.p0a3class.hls::stream<smo_trig_t, 0>.57.60"([3 x %"class.hls::stream<smo_trig_t, 0>"]* noalias "orig.arg.no"="0" %dst, i16* noalias align 512 "orig.arg.no"="1" "unpacked"="1.0" %src_0, i16* noalias align 512 "orig.arg.no"="1" "unpacked"="1.1" %src_1, i16* noalias align 512 "orig.arg.no"="1" "unpacked"="1.2" %src_2) #4 {
entry:
  %0 = icmp eq [3 x %"class.hls::stream<smo_trig_t, 0>"]* %dst, null
  %1 = icmp eq i16* %src_0, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a3class.hls::stream<smo_trig_t, 0>.58.59"([3 x %"class.hls::stream<smo_trig_t, 0>"]* nonnull %dst, i16* nonnull %src_0, i16* %src_1, i16* %src_2, i64 3)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal void @copy_out([3 x %"struct.ap_uint<4>"]* noalias "orig.arg.no"="0" "unpacked"="0", [3 x i4]* noalias nocapture readonly align 512 "orig.arg.no"="1" "unpacked"="1.0", %"class.hls::stream<fadc_vxs_hits_t, 0>"* noalias "orig.arg.no"="2" "unpacked"="2", i216* noalias align 512 "orig.arg.no"="3" "unpacked"="3", [3 x %"class.hls::stream<smo_trig_t, 0>"]* noalias "orig.arg.no"="4" "unpacked"="4", i16* noalias align 512 "orig.arg.no"="5" "unpacked"="5.0" %_0, i16* noalias align 512 "orig.arg.no"="5" "unpacked"="5.1" %_1, i16* noalias align 512 "orig.arg.no"="5" "unpacked"="5.2" %_2, %"class.hls::stream<trigger_t, 0>"* noalias "orig.arg.no"="6" "unpacked"="6", i8* noalias nocapture align 512 "orig.arg.no"="7" "unpacked"="7.0") #9 {
entry:
  call fastcc void @"onebyonecpy_hls.p0a3struct.ap_uint<4>"([3 x %"struct.ap_uint<4>"]* %0, [3 x i4]* align 512 %1)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<fadc_vxs_hits_t, 0>"(%"class.hls::stream<fadc_vxs_hits_t, 0>"* %2, i216* align 512 %3)
  call void @"onebyonecpy_hls.p0a3class.hls::stream<smo_trig_t, 0>.57.60"([3 x %"class.hls::stream<smo_trig_t, 0>"]* %4, i16* align 512 %_0, i16* align 512 %_1, i16* align 512 %_2)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<trigger_t, 0>.28"(%"class.hls::stream<trigger_t, 0>"* %5, i8* align 512 %6)
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @streamcpy_hls.p0struct.smo_trig_t.67(%struct.smo_trig_t* nocapture, i16* nocapture) unnamed_addr #5 {
entry:
  %2 = alloca i16
  %3 = alloca %struct.smo_trig_t
  br label %empty

empty:                                            ; preds = %push, %entry
  %4 = bitcast i16* %1 to i8*
  %5 = call i1 @fpga_fifo_not_empty_2(i8* %4)
  br i1 %5, label %push, label %ret

push:                                             ; preds = %empty
  %6 = bitcast i16* %2 to i8*
  %7 = bitcast i16* %1 to i8*
  call void @fpga_fifo_pop_2(i8* %6, i8* %7)
  %8 = load volatile i16, i16* %2
  %9 = call i16 @_llvm.fpga.unpack.bits.s_struct.smo_trig_ts.i16(i16 %8)
  %oldret3 = insertvalue %"struct.ssdm_int<16, false>" undef, i16 %9, 0
  %oldret2 = insertvalue %"struct.ap_int_base<16, false>" undef, %"struct.ssdm_int<16, false>" %oldret3, 0
  %oldret1 = insertvalue %"struct.ap_uint<16>" undef, %"struct.ap_int_base<16, false>" %oldret2, 0
  %oldret = insertvalue %struct.smo_trig_t undef, %"struct.ap_uint<16>" %oldret1, 0
  store %struct.smo_trig_t %oldret, %struct.smo_trig_t* %3
  %10 = bitcast %struct.smo_trig_t* %3 to i8*
  %11 = bitcast %struct.smo_trig_t* %0 to i8*
  call void @fpga_fifo_push_2(i8* %10, i8* %11)
  br label %empty, !llvm.loop !16

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: alwaysinline nounwind readnone willreturn
define internal i16 @_llvm.fpga.unpack.bits.s_struct.smo_trig_ts.i16(i16 %A) #10 {
  %.0 = insertvalue %"struct.ssdm_int<16, false>" undef, i16 %A, 0
  %oldret = extractvalue %"struct.ssdm_int<16, false>" %.0, 0
  ret i16 %oldret
}

; Function Attrs: alwaysinline nounwind readnone willreturn
define internal i16 @_llvm.fpga.pack.bits.i16.s_struct.smo_trig_ts(%struct.smo_trig_t %A) #10 {
  %A.0 = extractvalue %struct.smo_trig_t %A, 0
  %A.0.0 = extractvalue %"struct.ap_uint<16>" %A.0, 0
  %A.0.0.0 = extractvalue %"struct.ap_int_base<16, false>" %A.0.0, 0
  %A.0.0.0.0 = extractvalue %"struct.ssdm_int<16, false>" %A.0.0.0, 0
  ret i16 %A.0.0.0.0
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @streamcpy_hls.p0struct.smo_trig_t.74(i16* nocapture, %struct.smo_trig_t* nocapture) unnamed_addr #5 {
entry:
  %2 = alloca %struct.smo_trig_t
  %3 = alloca i16
  br label %empty

empty:                                            ; preds = %push, %entry
  %4 = bitcast %struct.smo_trig_t* %1 to i8*
  %5 = call i1 @fpga_fifo_not_empty_2(i8* %4)
  br i1 %5, label %push, label %ret

push:                                             ; preds = %empty
  %6 = bitcast %struct.smo_trig_t* %2 to i8*
  %7 = bitcast %struct.smo_trig_t* %1 to i8*
  call void @fpga_fifo_pop_2(i8* %6, i8* %7)
  %8 = load volatile %struct.smo_trig_t, %struct.smo_trig_t* %2
  %9 = call i16 @_llvm.fpga.pack.bits.i16.s_struct.smo_trig_ts(%struct.smo_trig_t %8)
  store i16 %9, i16* %3
  %10 = bitcast i16* %3 to i8*
  %11 = bitcast i16* %0 to i8*
  call void @fpga_fifo_push_2(i8* %10, i8* %11)
  br label %empty, !llvm.loop !16

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<fadc_vxs_hits_t, 0>.92"(i216* noalias align 512 %dst, %"class.hls::stream<fadc_vxs_hits_t, 0>"* noalias %src) unnamed_addr #4 {
entry:
  %0 = icmp eq i216* %dst, null
  %1 = icmp eq %"class.hls::stream<fadc_vxs_hits_t, 0>"* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<fadc_vxs_hits_t, 0>.95"(i216* nonnull align 512 %dst, %"class.hls::stream<fadc_vxs_hits_t, 0>"* nonnull %src)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<fadc_vxs_hits_t, 0>.95"(i216* noalias nocapture align 512, %"class.hls::stream<fadc_vxs_hits_t, 0>"* noalias nocapture) unnamed_addr #5 {
entry:
  %2 = alloca %"class.hls::stream<fadc_vxs_hits_t, 0>"
  %3 = alloca i216
  br label %empty

empty:                                            ; preds = %push, %entry
  %4 = bitcast %"class.hls::stream<fadc_vxs_hits_t, 0>"* %1 to i8*
  %5 = call i1 @fpga_fifo_not_empty_27(i8* %4)
  br i1 %5, label %push, label %ret

push:                                             ; preds = %empty
  %6 = bitcast %"class.hls::stream<fadc_vxs_hits_t, 0>"* %2 to i8*
  %7 = bitcast %"class.hls::stream<fadc_vxs_hits_t, 0>"* %1 to i8*
  call void @fpga_fifo_pop_27(i8* %6, i8* %7)
  %8 = load volatile %"class.hls::stream<fadc_vxs_hits_t, 0>", %"class.hls::stream<fadc_vxs_hits_t, 0>"* %2
  %9 = call i216 @"_llvm.fpga.pack.bits.i216.s_class.hls::stream<fadc_vxs_hits_t, 0>s"(%"class.hls::stream<fadc_vxs_hits_t, 0>" %8)
  store i216 %9, i216* %3
  %10 = bitcast i216* %3 to i8*
  %11 = bitcast i216* %0 to i8*
  call void @fpga_fifo_push_32(i8* %10, i8* %11)
  br label %empty, !llvm.loop !14

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: alwaysinline nounwind readnone willreturn
define internal i216 @"_llvm.fpga.pack.bits.i216.s_class.hls::stream<fadc_vxs_hits_t, 0>s"(%"class.hls::stream<fadc_vxs_hits_t, 0>" %A) #10 {
  %A.0 = extractvalue %"class.hls::stream<fadc_vxs_hits_t, 0>" %A, 0
  %A.0.0 = extractvalue %struct.fadc_vxs_hits_t %A.0, 0
  %A.0.0.0 = extractvalue [27 x %struct.fadc_hit_t] %A.0.0, 0
  %A.0.0.0.0 = extractvalue %struct.fadc_hit_t %A.0.0.0, 0
  %A.0.0.0.0.0 = extractvalue %"struct.ap_uint<8>" %A.0.0.0.0, 0
  %A.0.0.0.0.0.0 = extractvalue %"struct.ap_int_base<8, false>" %A.0.0.0.0.0, 0
  %A.0.0.0.0.0.0.0 = extractvalue %"struct.ssdm_int<8, false>" %A.0.0.0.0.0.0, 0
  %1 = zext i8 %A.0.0.0.0.0.0.0 to i216
  %A.0.0.1 = extractvalue [27 x %struct.fadc_hit_t] %A.0.0, 1
  %A.0.0.1.0 = extractvalue %struct.fadc_hit_t %A.0.0.1, 0
  %A.0.0.1.0.0 = extractvalue %"struct.ap_uint<8>" %A.0.0.1.0, 0
  %A.0.0.1.0.0.0 = extractvalue %"struct.ap_int_base<8, false>" %A.0.0.1.0.0, 0
  %A.0.0.1.0.0.0.0 = extractvalue %"struct.ssdm_int<8, false>" %A.0.0.1.0.0.0, 0
  %2 = zext i8 %A.0.0.1.0.0.0.0 to i216
  %3 = shl nuw nsw i216 %2, 8
  %4 = or i216 %3, %1
  %A.0.0.2 = extractvalue [27 x %struct.fadc_hit_t] %A.0.0, 2
  %A.0.0.2.0 = extractvalue %struct.fadc_hit_t %A.0.0.2, 0
  %A.0.0.2.0.0 = extractvalue %"struct.ap_uint<8>" %A.0.0.2.0, 0
  %A.0.0.2.0.0.0 = extractvalue %"struct.ap_int_base<8, false>" %A.0.0.2.0.0, 0
  %A.0.0.2.0.0.0.0 = extractvalue %"struct.ssdm_int<8, false>" %A.0.0.2.0.0.0, 0
  %5 = zext i8 %A.0.0.2.0.0.0.0 to i216
  %6 = shl nuw nsw i216 %5, 16
  %7 = or i216 %4, %6
  %A.0.0.3 = extractvalue [27 x %struct.fadc_hit_t] %A.0.0, 3
  %A.0.0.3.0 = extractvalue %struct.fadc_hit_t %A.0.0.3, 0
  %A.0.0.3.0.0 = extractvalue %"struct.ap_uint<8>" %A.0.0.3.0, 0
  %A.0.0.3.0.0.0 = extractvalue %"struct.ap_int_base<8, false>" %A.0.0.3.0.0, 0
  %A.0.0.3.0.0.0.0 = extractvalue %"struct.ssdm_int<8, false>" %A.0.0.3.0.0.0, 0
  %8 = zext i8 %A.0.0.3.0.0.0.0 to i216
  %9 = shl nuw nsw i216 %8, 24
  %10 = or i216 %7, %9
  %A.0.0.4 = extractvalue [27 x %struct.fadc_hit_t] %A.0.0, 4
  %A.0.0.4.0 = extractvalue %struct.fadc_hit_t %A.0.0.4, 0
  %A.0.0.4.0.0 = extractvalue %"struct.ap_uint<8>" %A.0.0.4.0, 0
  %A.0.0.4.0.0.0 = extractvalue %"struct.ap_int_base<8, false>" %A.0.0.4.0.0, 0
  %A.0.0.4.0.0.0.0 = extractvalue %"struct.ssdm_int<8, false>" %A.0.0.4.0.0.0, 0
  %11 = zext i8 %A.0.0.4.0.0.0.0 to i216
  %12 = shl nuw nsw i216 %11, 32
  %A.0.0.5 = extractvalue [27 x %struct.fadc_hit_t] %A.0.0, 5
  %A.0.0.5.0 = extractvalue %struct.fadc_hit_t %A.0.0.5, 0
  %A.0.0.5.0.0 = extractvalue %"struct.ap_uint<8>" %A.0.0.5.0, 0
  %A.0.0.5.0.0.0 = extractvalue %"struct.ap_int_base<8, false>" %A.0.0.5.0.0, 0
  %A.0.0.5.0.0.0.0 = extractvalue %"struct.ssdm_int<8, false>" %A.0.0.5.0.0.0, 0
  %13 = zext i8 %A.0.0.5.0.0.0.0 to i216
  %14 = shl nuw nsw i216 %13, 40
  %15 = or i216 %10, %12
  %A.0.0.6 = extractvalue [27 x %struct.fadc_hit_t] %A.0.0, 6
  %A.0.0.6.0 = extractvalue %struct.fadc_hit_t %A.0.0.6, 0
  %A.0.0.6.0.0 = extractvalue %"struct.ap_uint<8>" %A.0.0.6.0, 0
  %A.0.0.6.0.0.0 = extractvalue %"struct.ap_int_base<8, false>" %A.0.0.6.0.0, 0
  %A.0.0.6.0.0.0.0 = extractvalue %"struct.ssdm_int<8, false>" %A.0.0.6.0.0.0, 0
  %16 = zext i8 %A.0.0.6.0.0.0.0 to i216
  %17 = shl nuw nsw i216 %16, 48
  %A.0.0.7 = extractvalue [27 x %struct.fadc_hit_t] %A.0.0, 7
  %A.0.0.7.0 = extractvalue %struct.fadc_hit_t %A.0.0.7, 0
  %A.0.0.7.0.0 = extractvalue %"struct.ap_uint<8>" %A.0.0.7.0, 0
  %A.0.0.7.0.0.0 = extractvalue %"struct.ap_int_base<8, false>" %A.0.0.7.0.0, 0
  %A.0.0.7.0.0.0.0 = extractvalue %"struct.ssdm_int<8, false>" %A.0.0.7.0.0.0, 0
  %18 = zext i8 %A.0.0.7.0.0.0.0 to i216
  %19 = shl nuw nsw i216 %18, 56
  %A.0.0.8 = extractvalue [27 x %struct.fadc_hit_t] %A.0.0, 8
  %A.0.0.8.0 = extractvalue %struct.fadc_hit_t %A.0.0.8, 0
  %A.0.0.8.0.0 = extractvalue %"struct.ap_uint<8>" %A.0.0.8.0, 0
  %A.0.0.8.0.0.0 = extractvalue %"struct.ap_int_base<8, false>" %A.0.0.8.0.0, 0
  %A.0.0.8.0.0.0.0 = extractvalue %"struct.ssdm_int<8, false>" %A.0.0.8.0.0.0, 0
  %20 = zext i8 %A.0.0.8.0.0.0.0 to i216
  %21 = shl nuw nsw i216 %20, 64
  %A.0.0.9 = extractvalue [27 x %struct.fadc_hit_t] %A.0.0, 9
  %A.0.0.9.0 = extractvalue %struct.fadc_hit_t %A.0.0.9, 0
  %A.0.0.9.0.0 = extractvalue %"struct.ap_uint<8>" %A.0.0.9.0, 0
  %A.0.0.9.0.0.0 = extractvalue %"struct.ap_int_base<8, false>" %A.0.0.9.0.0, 0
  %A.0.0.9.0.0.0.0 = extractvalue %"struct.ssdm_int<8, false>" %A.0.0.9.0.0.0, 0
  %22 = zext i8 %A.0.0.9.0.0.0.0 to i216
  %23 = shl nuw nsw i216 %22, 72
  %A.0.0.10 = extractvalue [27 x %struct.fadc_hit_t] %A.0.0, 10
  %A.0.0.10.0 = extractvalue %struct.fadc_hit_t %A.0.0.10, 0
  %A.0.0.10.0.0 = extractvalue %"struct.ap_uint<8>" %A.0.0.10.0, 0
  %A.0.0.10.0.0.0 = extractvalue %"struct.ap_int_base<8, false>" %A.0.0.10.0.0, 0
  %A.0.0.10.0.0.0.0 = extractvalue %"struct.ssdm_int<8, false>" %A.0.0.10.0.0.0, 0
  %24 = zext i8 %A.0.0.10.0.0.0.0 to i216
  %25 = shl nuw nsw i216 %24, 80
  %A.0.0.11 = extractvalue [27 x %struct.fadc_hit_t] %A.0.0, 11
  %A.0.0.11.0 = extractvalue %struct.fadc_hit_t %A.0.0.11, 0
  %A.0.0.11.0.0 = extractvalue %"struct.ap_uint<8>" %A.0.0.11.0, 0
  %A.0.0.11.0.0.0 = extractvalue %"struct.ap_int_base<8, false>" %A.0.0.11.0.0, 0
  %A.0.0.11.0.0.0.0 = extractvalue %"struct.ssdm_int<8, false>" %A.0.0.11.0.0.0, 0
  %26 = zext i8 %A.0.0.11.0.0.0.0 to i216
  %27 = shl nuw nsw i216 %26, 88
  %A.0.0.12 = extractvalue [27 x %struct.fadc_hit_t] %A.0.0, 12
  %A.0.0.12.0 = extractvalue %struct.fadc_hit_t %A.0.0.12, 0
  %A.0.0.12.0.0 = extractvalue %"struct.ap_uint<8>" %A.0.0.12.0, 0
  %A.0.0.12.0.0.0 = extractvalue %"struct.ap_int_base<8, false>" %A.0.0.12.0.0, 0
  %A.0.0.12.0.0.0.0 = extractvalue %"struct.ssdm_int<8, false>" %A.0.0.12.0.0.0, 0
  %28 = zext i8 %A.0.0.12.0.0.0.0 to i216
  %29 = shl nuw nsw i216 %28, 96
  %A.0.0.13 = extractvalue [27 x %struct.fadc_hit_t] %A.0.0, 13
  %A.0.0.13.0 = extractvalue %struct.fadc_hit_t %A.0.0.13, 0
  %A.0.0.13.0.0 = extractvalue %"struct.ap_uint<8>" %A.0.0.13.0, 0
  %A.0.0.13.0.0.0 = extractvalue %"struct.ap_int_base<8, false>" %A.0.0.13.0.0, 0
  %A.0.0.13.0.0.0.0 = extractvalue %"struct.ssdm_int<8, false>" %A.0.0.13.0.0.0, 0
  %30 = zext i8 %A.0.0.13.0.0.0.0 to i216
  %31 = shl nuw nsw i216 %30, 104
  %A.0.0.14 = extractvalue [27 x %struct.fadc_hit_t] %A.0.0, 14
  %A.0.0.14.0 = extractvalue %struct.fadc_hit_t %A.0.0.14, 0
  %A.0.0.14.0.0 = extractvalue %"struct.ap_uint<8>" %A.0.0.14.0, 0
  %A.0.0.14.0.0.0 = extractvalue %"struct.ap_int_base<8, false>" %A.0.0.14.0.0, 0
  %A.0.0.14.0.0.0.0 = extractvalue %"struct.ssdm_int<8, false>" %A.0.0.14.0.0.0, 0
  %32 = zext i8 %A.0.0.14.0.0.0.0 to i216
  %33 = shl nuw nsw i216 %32, 112
  %A.0.0.15 = extractvalue [27 x %struct.fadc_hit_t] %A.0.0, 15
  %A.0.0.15.0 = extractvalue %struct.fadc_hit_t %A.0.0.15, 0
  %A.0.0.15.0.0 = extractvalue %"struct.ap_uint<8>" %A.0.0.15.0, 0
  %A.0.0.15.0.0.0 = extractvalue %"struct.ap_int_base<8, false>" %A.0.0.15.0.0, 0
  %A.0.0.15.0.0.0.0 = extractvalue %"struct.ssdm_int<8, false>" %A.0.0.15.0.0.0, 0
  %34 = zext i8 %A.0.0.15.0.0.0.0 to i216
  %35 = shl nuw nsw i216 %34, 120
  %A.0.0.16 = extractvalue [27 x %struct.fadc_hit_t] %A.0.0, 16
  %A.0.0.16.0 = extractvalue %struct.fadc_hit_t %A.0.0.16, 0
  %A.0.0.16.0.0 = extractvalue %"struct.ap_uint<8>" %A.0.0.16.0, 0
  %A.0.0.16.0.0.0 = extractvalue %"struct.ap_int_base<8, false>" %A.0.0.16.0.0, 0
  %A.0.0.16.0.0.0.0 = extractvalue %"struct.ssdm_int<8, false>" %A.0.0.16.0.0.0, 0
  %36 = zext i8 %A.0.0.16.0.0.0.0 to i216
  %37 = shl nuw nsw i216 %36, 128
  %A.0.0.17 = extractvalue [27 x %struct.fadc_hit_t] %A.0.0, 17
  %A.0.0.17.0 = extractvalue %struct.fadc_hit_t %A.0.0.17, 0
  %A.0.0.17.0.0 = extractvalue %"struct.ap_uint<8>" %A.0.0.17.0, 0
  %A.0.0.17.0.0.0 = extractvalue %"struct.ap_int_base<8, false>" %A.0.0.17.0.0, 0
  %A.0.0.17.0.0.0.0 = extractvalue %"struct.ssdm_int<8, false>" %A.0.0.17.0.0.0, 0
  %38 = zext i8 %A.0.0.17.0.0.0.0 to i216
  %39 = shl nuw nsw i216 %38, 136
  %A.0.0.18 = extractvalue [27 x %struct.fadc_hit_t] %A.0.0, 18
  %A.0.0.18.0 = extractvalue %struct.fadc_hit_t %A.0.0.18, 0
  %A.0.0.18.0.0 = extractvalue %"struct.ap_uint<8>" %A.0.0.18.0, 0
  %A.0.0.18.0.0.0 = extractvalue %"struct.ap_int_base<8, false>" %A.0.0.18.0.0, 0
  %A.0.0.18.0.0.0.0 = extractvalue %"struct.ssdm_int<8, false>" %A.0.0.18.0.0.0, 0
  %40 = zext i8 %A.0.0.18.0.0.0.0 to i216
  %41 = shl nuw nsw i216 %40, 144
  %A.0.0.19 = extractvalue [27 x %struct.fadc_hit_t] %A.0.0, 19
  %A.0.0.19.0 = extractvalue %struct.fadc_hit_t %A.0.0.19, 0
  %A.0.0.19.0.0 = extractvalue %"struct.ap_uint<8>" %A.0.0.19.0, 0
  %A.0.0.19.0.0.0 = extractvalue %"struct.ap_int_base<8, false>" %A.0.0.19.0.0, 0
  %A.0.0.19.0.0.0.0 = extractvalue %"struct.ssdm_int<8, false>" %A.0.0.19.0.0.0, 0
  %42 = zext i8 %A.0.0.19.0.0.0.0 to i216
  %43 = shl nuw nsw i216 %42, 152
  %A.0.0.20 = extractvalue [27 x %struct.fadc_hit_t] %A.0.0, 20
  %A.0.0.20.0 = extractvalue %struct.fadc_hit_t %A.0.0.20, 0
  %A.0.0.20.0.0 = extractvalue %"struct.ap_uint<8>" %A.0.0.20.0, 0
  %A.0.0.20.0.0.0 = extractvalue %"struct.ap_int_base<8, false>" %A.0.0.20.0.0, 0
  %A.0.0.20.0.0.0.0 = extractvalue %"struct.ssdm_int<8, false>" %A.0.0.20.0.0.0, 0
  %44 = zext i8 %A.0.0.20.0.0.0.0 to i216
  %45 = shl nuw nsw i216 %44, 160
  %A.0.0.21 = extractvalue [27 x %struct.fadc_hit_t] %A.0.0, 21
  %A.0.0.21.0 = extractvalue %struct.fadc_hit_t %A.0.0.21, 0
  %A.0.0.21.0.0 = extractvalue %"struct.ap_uint<8>" %A.0.0.21.0, 0
  %A.0.0.21.0.0.0 = extractvalue %"struct.ap_int_base<8, false>" %A.0.0.21.0.0, 0
  %A.0.0.21.0.0.0.0 = extractvalue %"struct.ssdm_int<8, false>" %A.0.0.21.0.0.0, 0
  %46 = zext i8 %A.0.0.21.0.0.0.0 to i216
  %47 = shl nuw nsw i216 %46, 168
  %A.0.0.22 = extractvalue [27 x %struct.fadc_hit_t] %A.0.0, 22
  %A.0.0.22.0 = extractvalue %struct.fadc_hit_t %A.0.0.22, 0
  %A.0.0.22.0.0 = extractvalue %"struct.ap_uint<8>" %A.0.0.22.0, 0
  %A.0.0.22.0.0.0 = extractvalue %"struct.ap_int_base<8, false>" %A.0.0.22.0.0, 0
  %A.0.0.22.0.0.0.0 = extractvalue %"struct.ssdm_int<8, false>" %A.0.0.22.0.0.0, 0
  %48 = zext i8 %A.0.0.22.0.0.0.0 to i216
  %49 = shl nuw nsw i216 %48, 176
  %A.0.0.23 = extractvalue [27 x %struct.fadc_hit_t] %A.0.0, 23
  %A.0.0.23.0 = extractvalue %struct.fadc_hit_t %A.0.0.23, 0
  %A.0.0.23.0.0 = extractvalue %"struct.ap_uint<8>" %A.0.0.23.0, 0
  %A.0.0.23.0.0.0 = extractvalue %"struct.ap_int_base<8, false>" %A.0.0.23.0.0, 0
  %A.0.0.23.0.0.0.0 = extractvalue %"struct.ssdm_int<8, false>" %A.0.0.23.0.0.0, 0
  %50 = zext i8 %A.0.0.23.0.0.0.0 to i216
  %51 = shl nuw nsw i216 %50, 184
  %A.0.0.24 = extractvalue [27 x %struct.fadc_hit_t] %A.0.0, 24
  %A.0.0.24.0 = extractvalue %struct.fadc_hit_t %A.0.0.24, 0
  %A.0.0.24.0.0 = extractvalue %"struct.ap_uint<8>" %A.0.0.24.0, 0
  %A.0.0.24.0.0.0 = extractvalue %"struct.ap_int_base<8, false>" %A.0.0.24.0.0, 0
  %A.0.0.24.0.0.0.0 = extractvalue %"struct.ssdm_int<8, false>" %A.0.0.24.0.0.0, 0
  %52 = zext i8 %A.0.0.24.0.0.0.0 to i216
  %53 = shl nuw nsw i216 %52, 192
  %A.0.0.25 = extractvalue [27 x %struct.fadc_hit_t] %A.0.0, 25
  %A.0.0.25.0 = extractvalue %struct.fadc_hit_t %A.0.0.25, 0
  %A.0.0.25.0.0 = extractvalue %"struct.ap_uint<8>" %A.0.0.25.0, 0
  %A.0.0.25.0.0.0 = extractvalue %"struct.ap_int_base<8, false>" %A.0.0.25.0.0, 0
  %A.0.0.25.0.0.0.0 = extractvalue %"struct.ssdm_int<8, false>" %A.0.0.25.0.0.0, 0
  %54 = zext i8 %A.0.0.25.0.0.0.0 to i216
  %55 = shl nuw nsw i216 %54, 200
  %A.0.0.26 = extractvalue [27 x %struct.fadc_hit_t] %A.0.0, 26
  %A.0.0.26.0 = extractvalue %struct.fadc_hit_t %A.0.0.26, 0
  %A.0.0.26.0.0 = extractvalue %"struct.ap_uint<8>" %A.0.0.26.0, 0
  %A.0.0.26.0.0.0 = extractvalue %"struct.ap_int_base<8, false>" %A.0.0.26.0.0, 0
  %A.0.0.26.0.0.0.0 = extractvalue %"struct.ssdm_int<8, false>" %A.0.0.26.0.0.0, 0
  %56 = zext i8 %A.0.0.26.0.0.0.0 to i216
  %57 = shl nuw i216 %56, 208
  %.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked = or i216 %15, %14
  %.masked2.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked = or i216 %.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked, %17
  %.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked = or i216 %.masked2.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked, %19
  %.masked5.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked = or i216 %.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked, %21
  %.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked = or i216 %.masked5.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked, %23
  %.masked7.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked = or i216 %.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked, %25
  %.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked = or i216 %.masked7.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked, %27
  %.masked9.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked = or i216 %.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked, %29
  %.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked = or i216 %.masked9.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked, %31
  %.masked11.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked = or i216 %.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked, %33
  %.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked = or i216 %.masked11.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked, %35
  %.masked13.masked.masked.masked.masked.masked.masked.masked.masked = or i216 %.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked, %37
  %.masked.masked.masked.masked.masked.masked.masked.masked = or i216 %.masked13.masked.masked.masked.masked.masked.masked.masked.masked, %39
  %.masked15.masked.masked.masked.masked.masked.masked = or i216 %.masked.masked.masked.masked.masked.masked.masked.masked, %41
  %.masked.masked.masked.masked.masked.masked = or i216 %.masked15.masked.masked.masked.masked.masked.masked, %43
  %.masked17.masked.masked.masked.masked = or i216 %.masked.masked.masked.masked.masked.masked, %45
  %.masked.masked.masked.masked = or i216 %.masked17.masked.masked.masked.masked, %47
  %.masked19.masked.masked = or i216 %.masked.masked.masked.masked, %49
  %.masked.masked = or i216 %.masked19.masked.masked, %51
  %.masked21 = or i216 %.masked.masked, %53
  %58 = or i216 %.masked21, %55
  %59 = or i216 %58, %57
  ret i216 %59
}

; Function Attrs: alwaysinline nounwind readnone willreturn
define internal [27 x %struct.fadc_hit_t] @"_llvm.fpga.unpack.bits.s_class.hls::stream<fadc_vxs_hits_t, 0>s.i216"(i216 %A) #10 {
  %1 = trunc i216 %A to i8
  %.0 = insertvalue %"struct.ssdm_int<8, false>" undef, i8 %1, 0
  %.01 = insertvalue %"struct.ap_int_base<8, false>" undef, %"struct.ssdm_int<8, false>" %.0, 0
  %.02 = insertvalue %"struct.ap_uint<8>" undef, %"struct.ap_int_base<8, false>" %.01, 0
  %.03 = insertvalue %struct.fadc_hit_t undef, %"struct.ap_uint<8>" %.02, 0
  %.04 = insertvalue [27 x %struct.fadc_hit_t] undef, %struct.fadc_hit_t %.03, 0
  %2 = lshr i216 %A, 8
  %3 = trunc i216 %2 to i8
  %.05 = insertvalue %"struct.ssdm_int<8, false>" undef, i8 %3, 0
  %.06 = insertvalue %"struct.ap_int_base<8, false>" undef, %"struct.ssdm_int<8, false>" %.05, 0
  %.07 = insertvalue %"struct.ap_uint<8>" undef, %"struct.ap_int_base<8, false>" %.06, 0
  %.08 = insertvalue %struct.fadc_hit_t undef, %"struct.ap_uint<8>" %.07, 0
  %.1 = insertvalue [27 x %struct.fadc_hit_t] %.04, %struct.fadc_hit_t %.08, 1
  %4 = lshr i216 %A, 16
  %5 = trunc i216 %4 to i8
  %.09 = insertvalue %"struct.ssdm_int<8, false>" undef, i8 %5, 0
  %.010 = insertvalue %"struct.ap_int_base<8, false>" undef, %"struct.ssdm_int<8, false>" %.09, 0
  %.011 = insertvalue %"struct.ap_uint<8>" undef, %"struct.ap_int_base<8, false>" %.010, 0
  %.012 = insertvalue %struct.fadc_hit_t undef, %"struct.ap_uint<8>" %.011, 0
  %.2 = insertvalue [27 x %struct.fadc_hit_t] %.1, %struct.fadc_hit_t %.012, 2
  %6 = lshr i216 %A, 24
  %7 = trunc i216 %6 to i8
  %.013 = insertvalue %"struct.ssdm_int<8, false>" undef, i8 %7, 0
  %.014 = insertvalue %"struct.ap_int_base<8, false>" undef, %"struct.ssdm_int<8, false>" %.013, 0
  %.015 = insertvalue %"struct.ap_uint<8>" undef, %"struct.ap_int_base<8, false>" %.014, 0
  %.016 = insertvalue %struct.fadc_hit_t undef, %"struct.ap_uint<8>" %.015, 0
  %.3 = insertvalue [27 x %struct.fadc_hit_t] %.2, %struct.fadc_hit_t %.016, 3
  %8 = lshr i216 %A, 32
  %9 = trunc i216 %8 to i8
  %.017 = insertvalue %"struct.ssdm_int<8, false>" undef, i8 %9, 0
  %.018 = insertvalue %"struct.ap_int_base<8, false>" undef, %"struct.ssdm_int<8, false>" %.017, 0
  %.019 = insertvalue %"struct.ap_uint<8>" undef, %"struct.ap_int_base<8, false>" %.018, 0
  %.020 = insertvalue %struct.fadc_hit_t undef, %"struct.ap_uint<8>" %.019, 0
  %.4 = insertvalue [27 x %struct.fadc_hit_t] %.3, %struct.fadc_hit_t %.020, 4
  %10 = lshr i216 %A, 40
  %11 = trunc i216 %10 to i8
  %.021 = insertvalue %"struct.ssdm_int<8, false>" undef, i8 %11, 0
  %.022 = insertvalue %"struct.ap_int_base<8, false>" undef, %"struct.ssdm_int<8, false>" %.021, 0
  %.023 = insertvalue %"struct.ap_uint<8>" undef, %"struct.ap_int_base<8, false>" %.022, 0
  %.024 = insertvalue %struct.fadc_hit_t undef, %"struct.ap_uint<8>" %.023, 0
  %.5 = insertvalue [27 x %struct.fadc_hit_t] %.4, %struct.fadc_hit_t %.024, 5
  %12 = lshr i216 %A, 48
  %13 = trunc i216 %12 to i8
  %.025 = insertvalue %"struct.ssdm_int<8, false>" undef, i8 %13, 0
  %.026 = insertvalue %"struct.ap_int_base<8, false>" undef, %"struct.ssdm_int<8, false>" %.025, 0
  %.027 = insertvalue %"struct.ap_uint<8>" undef, %"struct.ap_int_base<8, false>" %.026, 0
  %.028 = insertvalue %struct.fadc_hit_t undef, %"struct.ap_uint<8>" %.027, 0
  %.6 = insertvalue [27 x %struct.fadc_hit_t] %.5, %struct.fadc_hit_t %.028, 6
  %14 = lshr i216 %A, 56
  %15 = trunc i216 %14 to i8
  %.029 = insertvalue %"struct.ssdm_int<8, false>" undef, i8 %15, 0
  %.030 = insertvalue %"struct.ap_int_base<8, false>" undef, %"struct.ssdm_int<8, false>" %.029, 0
  %.031 = insertvalue %"struct.ap_uint<8>" undef, %"struct.ap_int_base<8, false>" %.030, 0
  %.032 = insertvalue %struct.fadc_hit_t undef, %"struct.ap_uint<8>" %.031, 0
  %.7 = insertvalue [27 x %struct.fadc_hit_t] %.6, %struct.fadc_hit_t %.032, 7
  %16 = lshr i216 %A, 64
  %17 = trunc i216 %16 to i8
  %.033 = insertvalue %"struct.ssdm_int<8, false>" undef, i8 %17, 0
  %.034 = insertvalue %"struct.ap_int_base<8, false>" undef, %"struct.ssdm_int<8, false>" %.033, 0
  %.035 = insertvalue %"struct.ap_uint<8>" undef, %"struct.ap_int_base<8, false>" %.034, 0
  %.036 = insertvalue %struct.fadc_hit_t undef, %"struct.ap_uint<8>" %.035, 0
  %.8 = insertvalue [27 x %struct.fadc_hit_t] %.7, %struct.fadc_hit_t %.036, 8
  %18 = lshr i216 %A, 72
  %19 = trunc i216 %18 to i8
  %.037 = insertvalue %"struct.ssdm_int<8, false>" undef, i8 %19, 0
  %.038 = insertvalue %"struct.ap_int_base<8, false>" undef, %"struct.ssdm_int<8, false>" %.037, 0
  %.039 = insertvalue %"struct.ap_uint<8>" undef, %"struct.ap_int_base<8, false>" %.038, 0
  %.040 = insertvalue %struct.fadc_hit_t undef, %"struct.ap_uint<8>" %.039, 0
  %.9 = insertvalue [27 x %struct.fadc_hit_t] %.8, %struct.fadc_hit_t %.040, 9
  %20 = lshr i216 %A, 80
  %21 = trunc i216 %20 to i8
  %.041 = insertvalue %"struct.ssdm_int<8, false>" undef, i8 %21, 0
  %.042 = insertvalue %"struct.ap_int_base<8, false>" undef, %"struct.ssdm_int<8, false>" %.041, 0
  %.043 = insertvalue %"struct.ap_uint<8>" undef, %"struct.ap_int_base<8, false>" %.042, 0
  %.044 = insertvalue %struct.fadc_hit_t undef, %"struct.ap_uint<8>" %.043, 0
  %.10 = insertvalue [27 x %struct.fadc_hit_t] %.9, %struct.fadc_hit_t %.044, 10
  %22 = lshr i216 %A, 88
  %23 = trunc i216 %22 to i8
  %.045 = insertvalue %"struct.ssdm_int<8, false>" undef, i8 %23, 0
  %.046 = insertvalue %"struct.ap_int_base<8, false>" undef, %"struct.ssdm_int<8, false>" %.045, 0
  %.047 = insertvalue %"struct.ap_uint<8>" undef, %"struct.ap_int_base<8, false>" %.046, 0
  %.048 = insertvalue %struct.fadc_hit_t undef, %"struct.ap_uint<8>" %.047, 0
  %.11 = insertvalue [27 x %struct.fadc_hit_t] %.10, %struct.fadc_hit_t %.048, 11
  %24 = lshr i216 %A, 96
  %25 = trunc i216 %24 to i8
  %.049 = insertvalue %"struct.ssdm_int<8, false>" undef, i8 %25, 0
  %.050 = insertvalue %"struct.ap_int_base<8, false>" undef, %"struct.ssdm_int<8, false>" %.049, 0
  %.051 = insertvalue %"struct.ap_uint<8>" undef, %"struct.ap_int_base<8, false>" %.050, 0
  %.052 = insertvalue %struct.fadc_hit_t undef, %"struct.ap_uint<8>" %.051, 0
  %.12 = insertvalue [27 x %struct.fadc_hit_t] %.11, %struct.fadc_hit_t %.052, 12
  %26 = lshr i216 %A, 104
  %27 = trunc i216 %26 to i8
  %.053 = insertvalue %"struct.ssdm_int<8, false>" undef, i8 %27, 0
  %.054 = insertvalue %"struct.ap_int_base<8, false>" undef, %"struct.ssdm_int<8, false>" %.053, 0
  %.055 = insertvalue %"struct.ap_uint<8>" undef, %"struct.ap_int_base<8, false>" %.054, 0
  %.056 = insertvalue %struct.fadc_hit_t undef, %"struct.ap_uint<8>" %.055, 0
  %.13 = insertvalue [27 x %struct.fadc_hit_t] %.12, %struct.fadc_hit_t %.056, 13
  %28 = lshr i216 %A, 112
  %29 = trunc i216 %28 to i8
  %.057 = insertvalue %"struct.ssdm_int<8, false>" undef, i8 %29, 0
  %.058 = insertvalue %"struct.ap_int_base<8, false>" undef, %"struct.ssdm_int<8, false>" %.057, 0
  %.059 = insertvalue %"struct.ap_uint<8>" undef, %"struct.ap_int_base<8, false>" %.058, 0
  %.060 = insertvalue %struct.fadc_hit_t undef, %"struct.ap_uint<8>" %.059, 0
  %.14 = insertvalue [27 x %struct.fadc_hit_t] %.13, %struct.fadc_hit_t %.060, 14
  %30 = lshr i216 %A, 120
  %31 = trunc i216 %30 to i8
  %.061 = insertvalue %"struct.ssdm_int<8, false>" undef, i8 %31, 0
  %.062 = insertvalue %"struct.ap_int_base<8, false>" undef, %"struct.ssdm_int<8, false>" %.061, 0
  %.063 = insertvalue %"struct.ap_uint<8>" undef, %"struct.ap_int_base<8, false>" %.062, 0
  %.064 = insertvalue %struct.fadc_hit_t undef, %"struct.ap_uint<8>" %.063, 0
  %.15 = insertvalue [27 x %struct.fadc_hit_t] %.14, %struct.fadc_hit_t %.064, 15
  %32 = lshr i216 %A, 128
  %33 = trunc i216 %32 to i8
  %.065 = insertvalue %"struct.ssdm_int<8, false>" undef, i8 %33, 0
  %.066 = insertvalue %"struct.ap_int_base<8, false>" undef, %"struct.ssdm_int<8, false>" %.065, 0
  %.067 = insertvalue %"struct.ap_uint<8>" undef, %"struct.ap_int_base<8, false>" %.066, 0
  %.068 = insertvalue %struct.fadc_hit_t undef, %"struct.ap_uint<8>" %.067, 0
  %.16 = insertvalue [27 x %struct.fadc_hit_t] %.15, %struct.fadc_hit_t %.068, 16
  %34 = lshr i216 %A, 136
  %35 = trunc i216 %34 to i8
  %.069 = insertvalue %"struct.ssdm_int<8, false>" undef, i8 %35, 0
  %.070 = insertvalue %"struct.ap_int_base<8, false>" undef, %"struct.ssdm_int<8, false>" %.069, 0
  %.071 = insertvalue %"struct.ap_uint<8>" undef, %"struct.ap_int_base<8, false>" %.070, 0
  %.072 = insertvalue %struct.fadc_hit_t undef, %"struct.ap_uint<8>" %.071, 0
  %.17 = insertvalue [27 x %struct.fadc_hit_t] %.16, %struct.fadc_hit_t %.072, 17
  %36 = lshr i216 %A, 144
  %37 = trunc i216 %36 to i8
  %.073 = insertvalue %"struct.ssdm_int<8, false>" undef, i8 %37, 0
  %.074 = insertvalue %"struct.ap_int_base<8, false>" undef, %"struct.ssdm_int<8, false>" %.073, 0
  %.075 = insertvalue %"struct.ap_uint<8>" undef, %"struct.ap_int_base<8, false>" %.074, 0
  %.076 = insertvalue %struct.fadc_hit_t undef, %"struct.ap_uint<8>" %.075, 0
  %.18 = insertvalue [27 x %struct.fadc_hit_t] %.17, %struct.fadc_hit_t %.076, 18
  %38 = lshr i216 %A, 152
  %39 = trunc i216 %38 to i8
  %.077 = insertvalue %"struct.ssdm_int<8, false>" undef, i8 %39, 0
  %.078 = insertvalue %"struct.ap_int_base<8, false>" undef, %"struct.ssdm_int<8, false>" %.077, 0
  %.079 = insertvalue %"struct.ap_uint<8>" undef, %"struct.ap_int_base<8, false>" %.078, 0
  %.080 = insertvalue %struct.fadc_hit_t undef, %"struct.ap_uint<8>" %.079, 0
  %.19 = insertvalue [27 x %struct.fadc_hit_t] %.18, %struct.fadc_hit_t %.080, 19
  %40 = lshr i216 %A, 160
  %41 = trunc i216 %40 to i8
  %.081 = insertvalue %"struct.ssdm_int<8, false>" undef, i8 %41, 0
  %.082 = insertvalue %"struct.ap_int_base<8, false>" undef, %"struct.ssdm_int<8, false>" %.081, 0
  %.083 = insertvalue %"struct.ap_uint<8>" undef, %"struct.ap_int_base<8, false>" %.082, 0
  %.084 = insertvalue %struct.fadc_hit_t undef, %"struct.ap_uint<8>" %.083, 0
  %.20 = insertvalue [27 x %struct.fadc_hit_t] %.19, %struct.fadc_hit_t %.084, 20
  %42 = lshr i216 %A, 168
  %43 = trunc i216 %42 to i8
  %.085 = insertvalue %"struct.ssdm_int<8, false>" undef, i8 %43, 0
  %.086 = insertvalue %"struct.ap_int_base<8, false>" undef, %"struct.ssdm_int<8, false>" %.085, 0
  %.087 = insertvalue %"struct.ap_uint<8>" undef, %"struct.ap_int_base<8, false>" %.086, 0
  %.088 = insertvalue %struct.fadc_hit_t undef, %"struct.ap_uint<8>" %.087, 0
  %.21 = insertvalue [27 x %struct.fadc_hit_t] %.20, %struct.fadc_hit_t %.088, 21
  %44 = lshr i216 %A, 176
  %45 = trunc i216 %44 to i8
  %.089 = insertvalue %"struct.ssdm_int<8, false>" undef, i8 %45, 0
  %.090 = insertvalue %"struct.ap_int_base<8, false>" undef, %"struct.ssdm_int<8, false>" %.089, 0
  %.091 = insertvalue %"struct.ap_uint<8>" undef, %"struct.ap_int_base<8, false>" %.090, 0
  %.092 = insertvalue %struct.fadc_hit_t undef, %"struct.ap_uint<8>" %.091, 0
  %.22 = insertvalue [27 x %struct.fadc_hit_t] %.21, %struct.fadc_hit_t %.092, 22
  %46 = lshr i216 %A, 184
  %47 = trunc i216 %46 to i8
  %.093 = insertvalue %"struct.ssdm_int<8, false>" undef, i8 %47, 0
  %.094 = insertvalue %"struct.ap_int_base<8, false>" undef, %"struct.ssdm_int<8, false>" %.093, 0
  %.095 = insertvalue %"struct.ap_uint<8>" undef, %"struct.ap_int_base<8, false>" %.094, 0
  %.096 = insertvalue %struct.fadc_hit_t undef, %"struct.ap_uint<8>" %.095, 0
  %.23 = insertvalue [27 x %struct.fadc_hit_t] %.22, %struct.fadc_hit_t %.096, 23
  %48 = lshr i216 %A, 192
  %49 = trunc i216 %48 to i8
  %.097 = insertvalue %"struct.ssdm_int<8, false>" undef, i8 %49, 0
  %.098 = insertvalue %"struct.ap_int_base<8, false>" undef, %"struct.ssdm_int<8, false>" %.097, 0
  %.099 = insertvalue %"struct.ap_uint<8>" undef, %"struct.ap_int_base<8, false>" %.098, 0
  %.0100 = insertvalue %struct.fadc_hit_t undef, %"struct.ap_uint<8>" %.099, 0
  %.24 = insertvalue [27 x %struct.fadc_hit_t] %.23, %struct.fadc_hit_t %.0100, 24
  %50 = lshr i216 %A, 200
  %51 = trunc i216 %50 to i8
  %.0101 = insertvalue %"struct.ssdm_int<8, false>" undef, i8 %51, 0
  %.0102 = insertvalue %"struct.ap_int_base<8, false>" undef, %"struct.ssdm_int<8, false>" %.0101, 0
  %.0103 = insertvalue %"struct.ap_uint<8>" undef, %"struct.ap_int_base<8, false>" %.0102, 0
  %.0104 = insertvalue %struct.fadc_hit_t undef, %"struct.ap_uint<8>" %.0103, 0
  %.25 = insertvalue [27 x %struct.fadc_hit_t] %.24, %struct.fadc_hit_t %.0104, 25
  %52 = lshr i216 %A, 208
  %53 = trunc i216 %52 to i8
  %.0105 = insertvalue %"struct.ssdm_int<8, false>" undef, i8 %53, 0
  %.0106 = insertvalue %"struct.ap_int_base<8, false>" undef, %"struct.ssdm_int<8, false>" %.0105, 0
  %.0107 = insertvalue %"struct.ap_uint<8>" undef, %"struct.ap_int_base<8, false>" %.0106, 0
  %.0108 = insertvalue %struct.fadc_hit_t undef, %"struct.ap_uint<8>" %.0107, 0
  %.26 = insertvalue [27 x %struct.fadc_hit_t] %.25, %struct.fadc_hit_t %.0108, 26
  ret [27 x %struct.fadc_hit_t] %.26
}

declare void @apatb_ecal_cosmic_hls_hw(%"struct.ap_uint<3>"*, %"struct.ap_uint<3>"*, %"struct.ap_uint<2>"*, [3 x i4]*, i216*, i16*, i16*, i16*, i8*)

; Function Attrs: argmemonly noinline willreturn
define internal void @copy_back([3 x %"struct.ap_uint<4>"]* noalias "orig.arg.no"="0" "unpacked"="0", [3 x i4]* noalias nocapture readonly align 512 "orig.arg.no"="1" "unpacked"="1.0", %"class.hls::stream<fadc_vxs_hits_t, 0>"* noalias "orig.arg.no"="2" "unpacked"="2", i216* noalias align 512 "orig.arg.no"="3" "unpacked"="3", [3 x %"class.hls::stream<smo_trig_t, 0>"]* noalias "orig.arg.no"="4" "unpacked"="4", i16* noalias align 512 "orig.arg.no"="5" "unpacked"="5.0" %_0, i16* noalias align 512 "orig.arg.no"="5" "unpacked"="5.1" %_1, i16* noalias align 512 "orig.arg.no"="5" "unpacked"="5.2" %_2, %"class.hls::stream<trigger_t, 0>"* noalias "orig.arg.no"="6" "unpacked"="6", i8* noalias nocapture align 512 "orig.arg.no"="7" "unpacked"="7.0") #9 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<fadc_vxs_hits_t, 0>"(%"class.hls::stream<fadc_vxs_hits_t, 0>"* %2, i216* align 512 %3)
  call void @"onebyonecpy_hls.p0a3class.hls::stream<smo_trig_t, 0>.57.60"([3 x %"class.hls::stream<smo_trig_t, 0>"]* %4, i16* align 512 %_0, i16* align 512 %_1, i16* align 512 %_2)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<trigger_t, 0>.28"(%"class.hls::stream<trigger_t, 0>"* %5, i8* align 512 %6)
  ret void
}

define void @ecal_cosmic_hls_hw_stub_wrapper(%"struct.ap_uint<3>"*, %"struct.ap_uint<3>"*, %"struct.ap_uint<2>"*, [3 x i4]*, i216*, i16*, i16*, i16*, i8*) #11 {
entry:
  %9 = alloca [3 x %"struct.ap_uint<4>"]
  %10 = alloca %"class.hls::stream<fadc_vxs_hits_t, 0>"
  %11 = alloca [3 x %"class.hls::stream<smo_trig_t, 0>"]
  %12 = alloca %"class.hls::stream<trigger_t, 0>"
  call void @copy_out([3 x %"struct.ap_uint<4>"]* %9, [3 x i4]* %3, %"class.hls::stream<fadc_vxs_hits_t, 0>"* %10, i216* %4, [3 x %"class.hls::stream<smo_trig_t, 0>"]* %11, i16* %5, i16* %6, i16* %7, %"class.hls::stream<trigger_t, 0>"* %12, i8* %8)
  %13 = bitcast [3 x %"struct.ap_uint<4>"]* %9 to %"struct.ap_uint<4>"*
  call void @ecal_cosmic_hls_hw_stub(%"struct.ap_uint<3>"* %0, %"struct.ap_uint<3>"* %1, %"struct.ap_uint<2>"* %2, %"struct.ap_uint<4>"* %13, %"class.hls::stream<fadc_vxs_hits_t, 0>"* %10, [3 x %"class.hls::stream<smo_trig_t, 0>"]* %11, %"class.hls::stream<trigger_t, 0>"* %12)
  call void @copy_in([3 x %"struct.ap_uint<4>"]* %9, [3 x i4]* %3, %"class.hls::stream<fadc_vxs_hits_t, 0>"* %10, i216* %4, [3 x %"class.hls::stream<smo_trig_t, 0>"]* %11, i16* %5, i16* %6, i16* %7, %"class.hls::stream<trigger_t, 0>"* %12, i8* %8)
  ret void
}

declare void @ecal_cosmic_hls_hw_stub(%"struct.ap_uint<3>"*, %"struct.ap_uint<3>"*, %"struct.ap_uint<2>"*, %"struct.ap_uint<4>"*, %"class.hls::stream<fadc_vxs_hits_t, 0>"*, [3 x %"class.hls::stream<smo_trig_t, 0>"]*, %"class.hls::stream<trigger_t, 0>"*)

declare i1 @fpga_fifo_not_empty_27(i8*)

declare i1 @fpga_fifo_not_empty_2(i8*)

declare i1 @fpga_fifo_not_empty_1(i8*)

declare i1 @fpga_fifo_not_empty_32(i8*)

declare void @fpga_fifo_pop_27(i8*, i8*)

declare void @fpga_fifo_pop_2(i8*, i8*)

declare void @fpga_fifo_pop_1(i8*, i8*)

declare void @fpga_fifo_pop_32(i8*, i8*)

declare void @fpga_fifo_push_2(i8*, i8*)

declare void @fpga_fifo_push_27(i8*, i8*)

declare void @fpga_fifo_push_1(i8*, i8*)

declare void @fpga_fifo_push_32(i8*, i8*)

attributes #0 = { inaccessiblememonly nounwind willreturn }
attributes #1 = { noinline willreturn "fpga.wrapper.func"="wrapper" }
attributes #2 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #3 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="arraycpy_hls" }
attributes #4 = { argmemonly noinline willreturn "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #5 = { argmemonly noinline willreturn "fpga.wrapper.func"="streamcpy_hls" }
attributes #6 = { argmemonly noinline willreturn "fpga.wrapper.func"="arraycpy_hls" }
attributes #7 = { nounwind willreturn }
attributes #8 = { argmemonly noinline willreturn "fpga.wrapper.func"="copyin" }
attributes #9 = { argmemonly noinline willreturn "fpga.wrapper.func"="copyout" }
attributes #10 = { alwaysinline nounwind readnone willreturn }
attributes #11 = { "fpga.wrapper.func"="stub" }
attributes #12 = { inaccessiblememonly nounwind willreturn "xlx.port.bitwidth"="256" "xlx.source"="user" }
attributes #13 = { inaccessiblememonly nounwind willreturn "xlx.port.bitwidth"="16" "xlx.source"="infer-from-design" }
attributes #14 = { inaccessiblememonly nounwind willreturn "xlx.port.bitwidth"="8" "xlx.source"="user" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}
!datalayout.transforms.on.top = !{!5}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
!5 = !{!6, !8, !10}
!6 = !{!7}
!7 = !{!"5", [3 x %"class.hls::stream<smo_trig_t, 0>"]* null}
!8 = !{!9}
!9 = !{!"array_partition", !"type=Complete", !"dim=1"}
!10 = !{!11, !12, !13}
!11 = !{!"5.0", %"class.hls::stream<smo_trig_t, 0>"* null}
!12 = !{!"5.1", %"class.hls::stream<smo_trig_t, 0>"* null}
!13 = !{!"5.2", %"class.hls::stream<smo_trig_t, 0>"* null}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.rotate.disable"}
!16 = distinct !{!16, !15}
!17 = distinct !{!17, !15}
!18 = distinct !{!18, !15}
