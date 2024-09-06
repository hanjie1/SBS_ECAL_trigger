; ModuleID = '/daqfs/home/hanjie/Desktop/GEp/SBS_ECAL_trigger/SBS_ECAL_trigger/crate2/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"struct.ap_uint<3>" = type { %"struct.ap_int_base<3, false>" }
%"struct.ap_int_base<3, false>" = type { %"struct.ssdm_int<3, false>" }
%"struct.ssdm_int<3, false>" = type { i3 }
%"struct.ap_uint<4>" = type { %"struct.ap_int_base<4, false>" }
%"struct.ap_int_base<4, false>" = type { %"struct.ssdm_int<4, false>" }
%"struct.ssdm_int<4, false>" = type { i4 }
%"class.hls::stream<fadc_hits_vxs, 0>" = type { %struct.fadc_hits_vxs }
%struct.fadc_hits_vxs = type { [10 x %struct.hit_t] }
%struct.hit_t = type { %"struct.ap_uint<13>", %"struct.ap_uint<3>" }
%"struct.ap_uint<13>" = type { %"struct.ap_int_base<13, false>" }
%"struct.ap_int_base<13, false>" = type { %"struct.ssdm_int<13, false>" }
%"struct.ssdm_int<13, false>" = type { i13 }
%"class.hls::stream<trigger_t, 0>" = type { %struct.trigger_t }
%struct.trigger_t = type { %"struct.ap_uint<8>" }
%"struct.ap_uint<8>" = type { %"struct.ap_int_base<8, false>" }
%"struct.ap_int_base<8, false>" = type { %"struct.ssdm_int<8, false>" }
%"struct.ssdm_int<8, false>" = type { i8 }

; Function Attrs: inaccessiblememonly nounwind willreturn
declare void @llvm.sideeffect() #0

; Function Attrs: noinline willreturn
define void @apatb_ecal_cosmic_hls_ir(%"struct.ap_uint<3>"* nocapture readonly %hit_width, %"struct.ap_uint<4>"* nocapture readonly %row_threshold, %"class.hls::stream<fadc_hits_vxs, 0>"* noalias nocapture nonnull dereferenceable(40) %s_fadc_hits_vxs, %"class.hls::stream<trigger_t, 0>"* noalias nocapture nonnull dereferenceable(1) %s_trigger_t) local_unnamed_addr #1 {
entry:
  %s_fadc_hits_vxs_copy = alloca i160, align 512
  call void @llvm.sideeffect() #8 [ "stream_interface"(i160* %s_fadc_hits_vxs_copy, i32 0) ]
  %s_trigger_t_copy = alloca i8, align 512
  call void @llvm.sideeffect() #9 [ "stream_interface"(i8* %s_trigger_t_copy, i32 0) ]
  call fastcc void @copy_in(%"class.hls::stream<fadc_hits_vxs, 0>"* nonnull %s_fadc_hits_vxs, i160* nonnull align 512 %s_fadc_hits_vxs_copy, %"class.hls::stream<trigger_t, 0>"* nonnull %s_trigger_t, i8* nonnull align 512 %s_trigger_t_copy)
  call void @apatb_ecal_cosmic_hls_hw(%"struct.ap_uint<3>"* %hit_width, %"struct.ap_uint<4>"* %row_threshold, i160* %s_fadc_hits_vxs_copy, i8* %s_trigger_t_copy)
  call void @copy_back(%"class.hls::stream<fadc_hits_vxs, 0>"* %s_fadc_hits_vxs, i160* %s_fadc_hits_vxs_copy, %"class.hls::stream<trigger_t, 0>"* %s_trigger_t, i8* %s_trigger_t_copy)
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @copy_in(%"class.hls::stream<fadc_hits_vxs, 0>"* noalias "unpacked"="0", i160* noalias align 512 "unpacked"="1", %"class.hls::stream<trigger_t, 0>"* noalias "unpacked"="2", i8* noalias nocapture align 512 "unpacked"="3.0") unnamed_addr #2 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<fadc_hits_vxs, 0>.25"(i160* align 512 %1, %"class.hls::stream<fadc_hits_vxs, 0>"* %0)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<trigger_t, 0>"(i8* align 512 %3, %"class.hls::stream<trigger_t, 0>"* %2)
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<fadc_hits_vxs, 0>"(%"class.hls::stream<fadc_hits_vxs, 0>"* noalias %dst, i160* noalias align 512 %src) unnamed_addr #3 {
entry:
  %0 = icmp eq %"class.hls::stream<fadc_hits_vxs, 0>"* %dst, null
  %1 = icmp eq i160* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<fadc_hits_vxs, 0>"(%"class.hls::stream<fadc_hits_vxs, 0>"* nonnull %dst, i160* nonnull align 512 %src)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<fadc_hits_vxs, 0>"(%"class.hls::stream<fadc_hits_vxs, 0>"* noalias nocapture, i160* noalias nocapture align 512) unnamed_addr #4 {
entry:
  %2 = alloca i160
  %3 = alloca %"class.hls::stream<fadc_hits_vxs, 0>"
  br label %empty

empty:                                            ; preds = %push, %entry
  %4 = bitcast i160* %1 to i8*
  %5 = call i1 @fpga_fifo_not_empty_32(i8* %4)
  br i1 %5, label %push, label %ret

push:                                             ; preds = %empty
  %6 = bitcast i160* %2 to i8*
  %7 = bitcast i160* %1 to i8*
  call void @fpga_fifo_pop_32(i8* %6, i8* %7)
  %8 = load volatile i160, i160* %2
  %9 = call [10 x %struct.hit_t] @"_llvm.fpga.unpack.bits.s_class.hls::stream<fadc_hits_vxs, 0>s.i160"(i160 %8)
  %oldret1 = insertvalue %struct.fadc_hits_vxs undef, [10 x %struct.hit_t] %9, 0
  %oldret = insertvalue %"class.hls::stream<fadc_hits_vxs, 0>" undef, %struct.fadc_hits_vxs %oldret1, 0
  store %"class.hls::stream<fadc_hits_vxs, 0>" %oldret, %"class.hls::stream<fadc_hits_vxs, 0>"* %3
  %10 = bitcast %"class.hls::stream<fadc_hits_vxs, 0>"* %3 to i8*
  %11 = bitcast %"class.hls::stream<fadc_hits_vxs, 0>"* %0 to i8*
  call void @fpga_fifo_push_40(i8* %10, i8* %11)
  br label %empty, !llvm.loop !5

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<trigger_t, 0>"(i8* noalias nocapture align 512 "unpacked"="0.0" %dst, %"class.hls::stream<trigger_t, 0>"* noalias "unpacked"="1" %src) unnamed_addr #3 {
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
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<trigger_t, 0>"(i8* noalias nocapture align 512 "unpacked"="0.0", %"class.hls::stream<trigger_t, 0>"* noalias nocapture "unpacked"="1") unnamed_addr #4 {
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
  br label %empty, !llvm.loop !7

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @copy_out(%"class.hls::stream<fadc_hits_vxs, 0>"* noalias "unpacked"="0", i160* noalias align 512 "unpacked"="1", %"class.hls::stream<trigger_t, 0>"* noalias "unpacked"="2", i8* noalias nocapture align 512 "unpacked"="3.0") unnamed_addr #5 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<fadc_hits_vxs, 0>"(%"class.hls::stream<fadc_hits_vxs, 0>"* %0, i160* align 512 %1)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<trigger_t, 0>.13"(%"class.hls::stream<trigger_t, 0>"* %2, i8* align 512 %3)
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<trigger_t, 0>.13"(%"class.hls::stream<trigger_t, 0>"* noalias "unpacked"="0" %dst, i8* noalias nocapture align 512 "unpacked"="1.0" %src) unnamed_addr #3 {
entry:
  %0 = icmp eq %"class.hls::stream<trigger_t, 0>"* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<trigger_t, 0>.16"(%"class.hls::stream<trigger_t, 0>"* nonnull %dst, i8* align 512 %src)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<trigger_t, 0>.16"(%"class.hls::stream<trigger_t, 0>"* noalias nocapture "unpacked"="0", i8* noalias nocapture align 512 "unpacked"="1.0") unnamed_addr #4 {
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
  br label %empty, !llvm.loop !8

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<fadc_hits_vxs, 0>.25"(i160* noalias align 512 %dst, %"class.hls::stream<fadc_hits_vxs, 0>"* noalias %src) unnamed_addr #3 {
entry:
  %0 = icmp eq i160* %dst, null
  %1 = icmp eq %"class.hls::stream<fadc_hits_vxs, 0>"* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<fadc_hits_vxs, 0>.28"(i160* nonnull align 512 %dst, %"class.hls::stream<fadc_hits_vxs, 0>"* nonnull %src)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<fadc_hits_vxs, 0>.28"(i160* noalias nocapture align 512, %"class.hls::stream<fadc_hits_vxs, 0>"* noalias nocapture) unnamed_addr #4 {
entry:
  %2 = alloca %"class.hls::stream<fadc_hits_vxs, 0>"
  %3 = alloca i160
  br label %empty

empty:                                            ; preds = %push, %entry
  %4 = bitcast %"class.hls::stream<fadc_hits_vxs, 0>"* %1 to i8*
  %5 = call i1 @fpga_fifo_not_empty_40(i8* %4)
  br i1 %5, label %push, label %ret

push:                                             ; preds = %empty
  %6 = bitcast %"class.hls::stream<fadc_hits_vxs, 0>"* %2 to i8*
  %7 = bitcast %"class.hls::stream<fadc_hits_vxs, 0>"* %1 to i8*
  call void @fpga_fifo_pop_40(i8* %6, i8* %7)
  %8 = load volatile %"class.hls::stream<fadc_hits_vxs, 0>", %"class.hls::stream<fadc_hits_vxs, 0>"* %2
  %9 = call i160 @"_llvm.fpga.pack.bits.i160.s_class.hls::stream<fadc_hits_vxs, 0>s"(%"class.hls::stream<fadc_hits_vxs, 0>" %8)
  store i160 %9, i160* %3
  %10 = bitcast i160* %3 to i8*
  %11 = bitcast i160* %0 to i8*
  call void @fpga_fifo_push_32(i8* %10, i8* %11)
  br label %empty, !llvm.loop !5

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: alwaysinline nounwind readnone willreturn
define internal i160 @"_llvm.fpga.pack.bits.i160.s_class.hls::stream<fadc_hits_vxs, 0>s"(%"class.hls::stream<fadc_hits_vxs, 0>" %A) #6 {
  %A.0 = extractvalue %"class.hls::stream<fadc_hits_vxs, 0>" %A, 0
  %A.0.0 = extractvalue %struct.fadc_hits_vxs %A.0, 0
  %A.0.0.0 = extractvalue [10 x %struct.hit_t] %A.0.0, 0
  %A.0.0.0.0 = extractvalue %struct.hit_t %A.0.0.0, 0
  %A.0.0.0.0.0 = extractvalue %"struct.ap_uint<13>" %A.0.0.0.0, 0
  %A.0.0.0.0.0.0 = extractvalue %"struct.ap_int_base<13, false>" %A.0.0.0.0.0, 0
  %A.0.0.0.0.0.0.0 = extractvalue %"struct.ssdm_int<13, false>" %A.0.0.0.0.0.0, 0
  %1 = zext i13 %A.0.0.0.0.0.0.0 to i16
  %A.0.0.0.1 = extractvalue %struct.hit_t %A.0.0.0, 1
  %A.0.0.0.1.0 = extractvalue %"struct.ap_uint<3>" %A.0.0.0.1, 0
  %A.0.0.0.1.0.0 = extractvalue %"struct.ap_int_base<3, false>" %A.0.0.0.1.0, 0
  %A.0.0.0.1.0.0.0 = extractvalue %"struct.ssdm_int<3, false>" %A.0.0.0.1.0.0, 0
  %2 = zext i3 %A.0.0.0.1.0.0.0 to i16
  %3 = shl nuw i16 %2, 13
  %4 = or i16 %3, %1
  %5 = zext i16 %4 to i160
  %A.0.0.1 = extractvalue [10 x %struct.hit_t] %A.0.0, 1
  %A.0.0.1.0 = extractvalue %struct.hit_t %A.0.0.1, 0
  %A.0.0.1.0.0 = extractvalue %"struct.ap_uint<13>" %A.0.0.1.0, 0
  %A.0.0.1.0.0.0 = extractvalue %"struct.ap_int_base<13, false>" %A.0.0.1.0.0, 0
  %A.0.0.1.0.0.0.0 = extractvalue %"struct.ssdm_int<13, false>" %A.0.0.1.0.0.0, 0
  %6 = zext i13 %A.0.0.1.0.0.0.0 to i16
  %A.0.0.1.1 = extractvalue %struct.hit_t %A.0.0.1, 1
  %A.0.0.1.1.0 = extractvalue %"struct.ap_uint<3>" %A.0.0.1.1, 0
  %A.0.0.1.1.0.0 = extractvalue %"struct.ap_int_base<3, false>" %A.0.0.1.1.0, 0
  %A.0.0.1.1.0.0.0 = extractvalue %"struct.ssdm_int<3, false>" %A.0.0.1.1.0.0, 0
  %7 = zext i3 %A.0.0.1.1.0.0.0 to i16
  %8 = shl nuw i16 %7, 13
  %9 = or i16 %8, %6
  %10 = zext i16 %9 to i160
  %11 = shl nuw nsw i160 %10, 16
  %12 = or i160 %11, %5
  %A.0.0.2 = extractvalue [10 x %struct.hit_t] %A.0.0, 2
  %A.0.0.2.0 = extractvalue %struct.hit_t %A.0.0.2, 0
  %A.0.0.2.0.0 = extractvalue %"struct.ap_uint<13>" %A.0.0.2.0, 0
  %A.0.0.2.0.0.0 = extractvalue %"struct.ap_int_base<13, false>" %A.0.0.2.0.0, 0
  %A.0.0.2.0.0.0.0 = extractvalue %"struct.ssdm_int<13, false>" %A.0.0.2.0.0.0, 0
  %13 = zext i13 %A.0.0.2.0.0.0.0 to i16
  %A.0.0.2.1 = extractvalue %struct.hit_t %A.0.0.2, 1
  %A.0.0.2.1.0 = extractvalue %"struct.ap_uint<3>" %A.0.0.2.1, 0
  %A.0.0.2.1.0.0 = extractvalue %"struct.ap_int_base<3, false>" %A.0.0.2.1.0, 0
  %A.0.0.2.1.0.0.0 = extractvalue %"struct.ssdm_int<3, false>" %A.0.0.2.1.0.0, 0
  %14 = zext i3 %A.0.0.2.1.0.0.0 to i16
  %15 = shl nuw i16 %14, 13
  %16 = or i16 %15, %13
  %17 = zext i16 %16 to i160
  %18 = shl nuw nsw i160 %17, 32
  %19 = or i160 %12, %18
  %A.0.0.3 = extractvalue [10 x %struct.hit_t] %A.0.0, 3
  %A.0.0.3.0 = extractvalue %struct.hit_t %A.0.0.3, 0
  %A.0.0.3.0.0 = extractvalue %"struct.ap_uint<13>" %A.0.0.3.0, 0
  %A.0.0.3.0.0.0 = extractvalue %"struct.ap_int_base<13, false>" %A.0.0.3.0.0, 0
  %A.0.0.3.0.0.0.0 = extractvalue %"struct.ssdm_int<13, false>" %A.0.0.3.0.0.0, 0
  %20 = zext i13 %A.0.0.3.0.0.0.0 to i16
  %A.0.0.3.1 = extractvalue %struct.hit_t %A.0.0.3, 1
  %A.0.0.3.1.0 = extractvalue %"struct.ap_uint<3>" %A.0.0.3.1, 0
  %A.0.0.3.1.0.0 = extractvalue %"struct.ap_int_base<3, false>" %A.0.0.3.1.0, 0
  %A.0.0.3.1.0.0.0 = extractvalue %"struct.ssdm_int<3, false>" %A.0.0.3.1.0.0, 0
  %21 = zext i3 %A.0.0.3.1.0.0.0 to i16
  %22 = shl nuw i16 %21, 13
  %23 = or i16 %22, %20
  %24 = zext i16 %23 to i160
  %25 = shl nuw nsw i160 %24, 48
  %26 = or i160 %19, %25
  %A.0.0.4 = extractvalue [10 x %struct.hit_t] %A.0.0, 4
  %A.0.0.4.0 = extractvalue %struct.hit_t %A.0.0.4, 0
  %A.0.0.4.0.0 = extractvalue %"struct.ap_uint<13>" %A.0.0.4.0, 0
  %A.0.0.4.0.0.0 = extractvalue %"struct.ap_int_base<13, false>" %A.0.0.4.0.0, 0
  %A.0.0.4.0.0.0.0 = extractvalue %"struct.ssdm_int<13, false>" %A.0.0.4.0.0.0, 0
  %27 = zext i13 %A.0.0.4.0.0.0.0 to i16
  %A.0.0.4.1 = extractvalue %struct.hit_t %A.0.0.4, 1
  %A.0.0.4.1.0 = extractvalue %"struct.ap_uint<3>" %A.0.0.4.1, 0
  %A.0.0.4.1.0.0 = extractvalue %"struct.ap_int_base<3, false>" %A.0.0.4.1.0, 0
  %A.0.0.4.1.0.0.0 = extractvalue %"struct.ssdm_int<3, false>" %A.0.0.4.1.0.0, 0
  %28 = zext i3 %A.0.0.4.1.0.0.0 to i16
  %29 = shl nuw i16 %28, 13
  %30 = or i16 %29, %27
  %31 = zext i16 %30 to i160
  %32 = shl nuw nsw i160 %31, 64
  %A.0.0.5 = extractvalue [10 x %struct.hit_t] %A.0.0, 5
  %A.0.0.5.0 = extractvalue %struct.hit_t %A.0.0.5, 0
  %A.0.0.5.0.0 = extractvalue %"struct.ap_uint<13>" %A.0.0.5.0, 0
  %A.0.0.5.0.0.0 = extractvalue %"struct.ap_int_base<13, false>" %A.0.0.5.0.0, 0
  %A.0.0.5.0.0.0.0 = extractvalue %"struct.ssdm_int<13, false>" %A.0.0.5.0.0.0, 0
  %33 = zext i13 %A.0.0.5.0.0.0.0 to i16
  %A.0.0.5.1 = extractvalue %struct.hit_t %A.0.0.5, 1
  %A.0.0.5.1.0 = extractvalue %"struct.ap_uint<3>" %A.0.0.5.1, 0
  %A.0.0.5.1.0.0 = extractvalue %"struct.ap_int_base<3, false>" %A.0.0.5.1.0, 0
  %A.0.0.5.1.0.0.0 = extractvalue %"struct.ssdm_int<3, false>" %A.0.0.5.1.0.0, 0
  %34 = zext i3 %A.0.0.5.1.0.0.0 to i16
  %35 = shl nuw i16 %34, 13
  %36 = or i16 %35, %33
  %37 = zext i16 %36 to i160
  %38 = shl nuw nsw i160 %37, 80
  %39 = or i160 %26, %32
  %A.0.0.6 = extractvalue [10 x %struct.hit_t] %A.0.0, 6
  %A.0.0.6.0 = extractvalue %struct.hit_t %A.0.0.6, 0
  %A.0.0.6.0.0 = extractvalue %"struct.ap_uint<13>" %A.0.0.6.0, 0
  %A.0.0.6.0.0.0 = extractvalue %"struct.ap_int_base<13, false>" %A.0.0.6.0.0, 0
  %A.0.0.6.0.0.0.0 = extractvalue %"struct.ssdm_int<13, false>" %A.0.0.6.0.0.0, 0
  %40 = zext i13 %A.0.0.6.0.0.0.0 to i16
  %A.0.0.6.1 = extractvalue %struct.hit_t %A.0.0.6, 1
  %A.0.0.6.1.0 = extractvalue %"struct.ap_uint<3>" %A.0.0.6.1, 0
  %A.0.0.6.1.0.0 = extractvalue %"struct.ap_int_base<3, false>" %A.0.0.6.1.0, 0
  %A.0.0.6.1.0.0.0 = extractvalue %"struct.ssdm_int<3, false>" %A.0.0.6.1.0.0, 0
  %41 = zext i3 %A.0.0.6.1.0.0.0 to i16
  %42 = shl nuw i16 %41, 13
  %43 = or i16 %42, %40
  %44 = zext i16 %43 to i160
  %45 = shl nuw nsw i160 %44, 96
  %A.0.0.7 = extractvalue [10 x %struct.hit_t] %A.0.0, 7
  %A.0.0.7.0 = extractvalue %struct.hit_t %A.0.0.7, 0
  %A.0.0.7.0.0 = extractvalue %"struct.ap_uint<13>" %A.0.0.7.0, 0
  %A.0.0.7.0.0.0 = extractvalue %"struct.ap_int_base<13, false>" %A.0.0.7.0.0, 0
  %A.0.0.7.0.0.0.0 = extractvalue %"struct.ssdm_int<13, false>" %A.0.0.7.0.0.0, 0
  %46 = zext i13 %A.0.0.7.0.0.0.0 to i16
  %A.0.0.7.1 = extractvalue %struct.hit_t %A.0.0.7, 1
  %A.0.0.7.1.0 = extractvalue %"struct.ap_uint<3>" %A.0.0.7.1, 0
  %A.0.0.7.1.0.0 = extractvalue %"struct.ap_int_base<3, false>" %A.0.0.7.1.0, 0
  %A.0.0.7.1.0.0.0 = extractvalue %"struct.ssdm_int<3, false>" %A.0.0.7.1.0.0, 0
  %47 = zext i3 %A.0.0.7.1.0.0.0 to i16
  %48 = shl nuw i16 %47, 13
  %49 = or i16 %48, %46
  %50 = zext i16 %49 to i160
  %51 = shl nuw nsw i160 %50, 112
  %A.0.0.8 = extractvalue [10 x %struct.hit_t] %A.0.0, 8
  %A.0.0.8.0 = extractvalue %struct.hit_t %A.0.0.8, 0
  %A.0.0.8.0.0 = extractvalue %"struct.ap_uint<13>" %A.0.0.8.0, 0
  %A.0.0.8.0.0.0 = extractvalue %"struct.ap_int_base<13, false>" %A.0.0.8.0.0, 0
  %A.0.0.8.0.0.0.0 = extractvalue %"struct.ssdm_int<13, false>" %A.0.0.8.0.0.0, 0
  %52 = zext i13 %A.0.0.8.0.0.0.0 to i16
  %A.0.0.8.1 = extractvalue %struct.hit_t %A.0.0.8, 1
  %A.0.0.8.1.0 = extractvalue %"struct.ap_uint<3>" %A.0.0.8.1, 0
  %A.0.0.8.1.0.0 = extractvalue %"struct.ap_int_base<3, false>" %A.0.0.8.1.0, 0
  %A.0.0.8.1.0.0.0 = extractvalue %"struct.ssdm_int<3, false>" %A.0.0.8.1.0.0, 0
  %53 = zext i3 %A.0.0.8.1.0.0.0 to i16
  %54 = shl nuw i16 %53, 13
  %55 = or i16 %54, %52
  %56 = zext i16 %55 to i160
  %57 = shl nuw nsw i160 %56, 128
  %A.0.0.9 = extractvalue [10 x %struct.hit_t] %A.0.0, 9
  %A.0.0.9.0 = extractvalue %struct.hit_t %A.0.0.9, 0
  %A.0.0.9.0.0 = extractvalue %"struct.ap_uint<13>" %A.0.0.9.0, 0
  %A.0.0.9.0.0.0 = extractvalue %"struct.ap_int_base<13, false>" %A.0.0.9.0.0, 0
  %A.0.0.9.0.0.0.0 = extractvalue %"struct.ssdm_int<13, false>" %A.0.0.9.0.0.0, 0
  %58 = zext i13 %A.0.0.9.0.0.0.0 to i16
  %A.0.0.9.1 = extractvalue %struct.hit_t %A.0.0.9, 1
  %A.0.0.9.1.0 = extractvalue %"struct.ap_uint<3>" %A.0.0.9.1, 0
  %A.0.0.9.1.0.0 = extractvalue %"struct.ap_int_base<3, false>" %A.0.0.9.1.0, 0
  %A.0.0.9.1.0.0.0 = extractvalue %"struct.ssdm_int<3, false>" %A.0.0.9.1.0.0, 0
  %59 = zext i3 %A.0.0.9.1.0.0.0 to i16
  %60 = shl nuw i16 %59, 13
  %61 = or i16 %60, %58
  %62 = zext i16 %61 to i160
  %63 = shl nuw i160 %62, 144
  %.masked.masked.masked = or i160 %39, %38
  %.masked2.masked = or i160 %.masked.masked.masked, %45
  %.masked = or i160 %.masked2.masked, %51
  %64 = or i160 %.masked, %57
  %65 = or i160 %64, %63
  ret i160 %65
}

; Function Attrs: alwaysinline nounwind readnone willreturn
define internal [10 x %struct.hit_t] @"_llvm.fpga.unpack.bits.s_class.hls::stream<fadc_hits_vxs, 0>s.i160"(i160 %A) #6 {
  %1 = trunc i160 %A to i16
  %2 = trunc i16 %1 to i13
  %.0 = insertvalue %"struct.ssdm_int<13, false>" undef, i13 %2, 0
  %.01 = insertvalue %"struct.ap_int_base<13, false>" undef, %"struct.ssdm_int<13, false>" %.0, 0
  %.02 = insertvalue %"struct.ap_uint<13>" undef, %"struct.ap_int_base<13, false>" %.01, 0
  %.03 = insertvalue %struct.hit_t undef, %"struct.ap_uint<13>" %.02, 0
  %3 = lshr i16 %1, 13
  %4 = trunc i16 %3 to i3
  %.04 = insertvalue %"struct.ssdm_int<3, false>" undef, i3 %4, 0
  %.05 = insertvalue %"struct.ap_int_base<3, false>" undef, %"struct.ssdm_int<3, false>" %.04, 0
  %.06 = insertvalue %"struct.ap_uint<3>" undef, %"struct.ap_int_base<3, false>" %.05, 0
  %.1 = insertvalue %struct.hit_t %.03, %"struct.ap_uint<3>" %.06, 1
  %.07 = insertvalue [10 x %struct.hit_t] undef, %struct.hit_t %.1, 0
  %5 = lshr i160 %A, 16
  %6 = trunc i160 %5 to i16
  %7 = trunc i16 %6 to i13
  %.08 = insertvalue %"struct.ssdm_int<13, false>" undef, i13 %7, 0
  %.09 = insertvalue %"struct.ap_int_base<13, false>" undef, %"struct.ssdm_int<13, false>" %.08, 0
  %.010 = insertvalue %"struct.ap_uint<13>" undef, %"struct.ap_int_base<13, false>" %.09, 0
  %.011 = insertvalue %struct.hit_t undef, %"struct.ap_uint<13>" %.010, 0
  %8 = lshr i16 %6, 13
  %9 = trunc i16 %8 to i3
  %.012 = insertvalue %"struct.ssdm_int<3, false>" undef, i3 %9, 0
  %.013 = insertvalue %"struct.ap_int_base<3, false>" undef, %"struct.ssdm_int<3, false>" %.012, 0
  %.014 = insertvalue %"struct.ap_uint<3>" undef, %"struct.ap_int_base<3, false>" %.013, 0
  %.115 = insertvalue %struct.hit_t %.011, %"struct.ap_uint<3>" %.014, 1
  %.116 = insertvalue [10 x %struct.hit_t] %.07, %struct.hit_t %.115, 1
  %10 = lshr i160 %A, 32
  %11 = trunc i160 %10 to i16
  %12 = trunc i16 %11 to i13
  %.017 = insertvalue %"struct.ssdm_int<13, false>" undef, i13 %12, 0
  %.018 = insertvalue %"struct.ap_int_base<13, false>" undef, %"struct.ssdm_int<13, false>" %.017, 0
  %.019 = insertvalue %"struct.ap_uint<13>" undef, %"struct.ap_int_base<13, false>" %.018, 0
  %.020 = insertvalue %struct.hit_t undef, %"struct.ap_uint<13>" %.019, 0
  %13 = lshr i16 %11, 13
  %14 = trunc i16 %13 to i3
  %.021 = insertvalue %"struct.ssdm_int<3, false>" undef, i3 %14, 0
  %.022 = insertvalue %"struct.ap_int_base<3, false>" undef, %"struct.ssdm_int<3, false>" %.021, 0
  %.023 = insertvalue %"struct.ap_uint<3>" undef, %"struct.ap_int_base<3, false>" %.022, 0
  %.124 = insertvalue %struct.hit_t %.020, %"struct.ap_uint<3>" %.023, 1
  %.2 = insertvalue [10 x %struct.hit_t] %.116, %struct.hit_t %.124, 2
  %15 = lshr i160 %A, 48
  %16 = trunc i160 %15 to i16
  %17 = trunc i16 %16 to i13
  %.025 = insertvalue %"struct.ssdm_int<13, false>" undef, i13 %17, 0
  %.026 = insertvalue %"struct.ap_int_base<13, false>" undef, %"struct.ssdm_int<13, false>" %.025, 0
  %.027 = insertvalue %"struct.ap_uint<13>" undef, %"struct.ap_int_base<13, false>" %.026, 0
  %.028 = insertvalue %struct.hit_t undef, %"struct.ap_uint<13>" %.027, 0
  %18 = lshr i16 %16, 13
  %19 = trunc i16 %18 to i3
  %.029 = insertvalue %"struct.ssdm_int<3, false>" undef, i3 %19, 0
  %.030 = insertvalue %"struct.ap_int_base<3, false>" undef, %"struct.ssdm_int<3, false>" %.029, 0
  %.031 = insertvalue %"struct.ap_uint<3>" undef, %"struct.ap_int_base<3, false>" %.030, 0
  %.132 = insertvalue %struct.hit_t %.028, %"struct.ap_uint<3>" %.031, 1
  %.3 = insertvalue [10 x %struct.hit_t] %.2, %struct.hit_t %.132, 3
  %20 = lshr i160 %A, 64
  %21 = trunc i160 %20 to i16
  %22 = trunc i16 %21 to i13
  %.033 = insertvalue %"struct.ssdm_int<13, false>" undef, i13 %22, 0
  %.034 = insertvalue %"struct.ap_int_base<13, false>" undef, %"struct.ssdm_int<13, false>" %.033, 0
  %.035 = insertvalue %"struct.ap_uint<13>" undef, %"struct.ap_int_base<13, false>" %.034, 0
  %.036 = insertvalue %struct.hit_t undef, %"struct.ap_uint<13>" %.035, 0
  %23 = lshr i16 %21, 13
  %24 = trunc i16 %23 to i3
  %.037 = insertvalue %"struct.ssdm_int<3, false>" undef, i3 %24, 0
  %.038 = insertvalue %"struct.ap_int_base<3, false>" undef, %"struct.ssdm_int<3, false>" %.037, 0
  %.039 = insertvalue %"struct.ap_uint<3>" undef, %"struct.ap_int_base<3, false>" %.038, 0
  %.140 = insertvalue %struct.hit_t %.036, %"struct.ap_uint<3>" %.039, 1
  %.4 = insertvalue [10 x %struct.hit_t] %.3, %struct.hit_t %.140, 4
  %25 = lshr i160 %A, 80
  %26 = trunc i160 %25 to i16
  %27 = trunc i16 %26 to i13
  %.041 = insertvalue %"struct.ssdm_int<13, false>" undef, i13 %27, 0
  %.042 = insertvalue %"struct.ap_int_base<13, false>" undef, %"struct.ssdm_int<13, false>" %.041, 0
  %.043 = insertvalue %"struct.ap_uint<13>" undef, %"struct.ap_int_base<13, false>" %.042, 0
  %.044 = insertvalue %struct.hit_t undef, %"struct.ap_uint<13>" %.043, 0
  %28 = lshr i16 %26, 13
  %29 = trunc i16 %28 to i3
  %.045 = insertvalue %"struct.ssdm_int<3, false>" undef, i3 %29, 0
  %.046 = insertvalue %"struct.ap_int_base<3, false>" undef, %"struct.ssdm_int<3, false>" %.045, 0
  %.047 = insertvalue %"struct.ap_uint<3>" undef, %"struct.ap_int_base<3, false>" %.046, 0
  %.148 = insertvalue %struct.hit_t %.044, %"struct.ap_uint<3>" %.047, 1
  %.5 = insertvalue [10 x %struct.hit_t] %.4, %struct.hit_t %.148, 5
  %30 = lshr i160 %A, 96
  %31 = trunc i160 %30 to i16
  %32 = trunc i16 %31 to i13
  %.049 = insertvalue %"struct.ssdm_int<13, false>" undef, i13 %32, 0
  %.050 = insertvalue %"struct.ap_int_base<13, false>" undef, %"struct.ssdm_int<13, false>" %.049, 0
  %.051 = insertvalue %"struct.ap_uint<13>" undef, %"struct.ap_int_base<13, false>" %.050, 0
  %.052 = insertvalue %struct.hit_t undef, %"struct.ap_uint<13>" %.051, 0
  %33 = lshr i16 %31, 13
  %34 = trunc i16 %33 to i3
  %.053 = insertvalue %"struct.ssdm_int<3, false>" undef, i3 %34, 0
  %.054 = insertvalue %"struct.ap_int_base<3, false>" undef, %"struct.ssdm_int<3, false>" %.053, 0
  %.055 = insertvalue %"struct.ap_uint<3>" undef, %"struct.ap_int_base<3, false>" %.054, 0
  %.156 = insertvalue %struct.hit_t %.052, %"struct.ap_uint<3>" %.055, 1
  %.6 = insertvalue [10 x %struct.hit_t] %.5, %struct.hit_t %.156, 6
  %35 = lshr i160 %A, 112
  %36 = trunc i160 %35 to i16
  %37 = trunc i16 %36 to i13
  %.057 = insertvalue %"struct.ssdm_int<13, false>" undef, i13 %37, 0
  %.058 = insertvalue %"struct.ap_int_base<13, false>" undef, %"struct.ssdm_int<13, false>" %.057, 0
  %.059 = insertvalue %"struct.ap_uint<13>" undef, %"struct.ap_int_base<13, false>" %.058, 0
  %.060 = insertvalue %struct.hit_t undef, %"struct.ap_uint<13>" %.059, 0
  %38 = lshr i16 %36, 13
  %39 = trunc i16 %38 to i3
  %.061 = insertvalue %"struct.ssdm_int<3, false>" undef, i3 %39, 0
  %.062 = insertvalue %"struct.ap_int_base<3, false>" undef, %"struct.ssdm_int<3, false>" %.061, 0
  %.063 = insertvalue %"struct.ap_uint<3>" undef, %"struct.ap_int_base<3, false>" %.062, 0
  %.164 = insertvalue %struct.hit_t %.060, %"struct.ap_uint<3>" %.063, 1
  %.7 = insertvalue [10 x %struct.hit_t] %.6, %struct.hit_t %.164, 7
  %40 = lshr i160 %A, 128
  %41 = trunc i160 %40 to i16
  %42 = trunc i16 %41 to i13
  %.065 = insertvalue %"struct.ssdm_int<13, false>" undef, i13 %42, 0
  %.066 = insertvalue %"struct.ap_int_base<13, false>" undef, %"struct.ssdm_int<13, false>" %.065, 0
  %.067 = insertvalue %"struct.ap_uint<13>" undef, %"struct.ap_int_base<13, false>" %.066, 0
  %.068 = insertvalue %struct.hit_t undef, %"struct.ap_uint<13>" %.067, 0
  %43 = lshr i16 %41, 13
  %44 = trunc i16 %43 to i3
  %.069 = insertvalue %"struct.ssdm_int<3, false>" undef, i3 %44, 0
  %.070 = insertvalue %"struct.ap_int_base<3, false>" undef, %"struct.ssdm_int<3, false>" %.069, 0
  %.071 = insertvalue %"struct.ap_uint<3>" undef, %"struct.ap_int_base<3, false>" %.070, 0
  %.172 = insertvalue %struct.hit_t %.068, %"struct.ap_uint<3>" %.071, 1
  %.8 = insertvalue [10 x %struct.hit_t] %.7, %struct.hit_t %.172, 8
  %45 = lshr i160 %A, 144
  %46 = trunc i160 %45 to i16
  %47 = trunc i16 %46 to i13
  %.073 = insertvalue %"struct.ssdm_int<13, false>" undef, i13 %47, 0
  %.074 = insertvalue %"struct.ap_int_base<13, false>" undef, %"struct.ssdm_int<13, false>" %.073, 0
  %.075 = insertvalue %"struct.ap_uint<13>" undef, %"struct.ap_int_base<13, false>" %.074, 0
  %.076 = insertvalue %struct.hit_t undef, %"struct.ap_uint<13>" %.075, 0
  %48 = lshr i16 %46, 13
  %49 = trunc i16 %48 to i3
  %.077 = insertvalue %"struct.ssdm_int<3, false>" undef, i3 %49, 0
  %.078 = insertvalue %"struct.ap_int_base<3, false>" undef, %"struct.ssdm_int<3, false>" %.077, 0
  %.079 = insertvalue %"struct.ap_uint<3>" undef, %"struct.ap_int_base<3, false>" %.078, 0
  %.180 = insertvalue %struct.hit_t %.076, %"struct.ap_uint<3>" %.079, 1
  %.9 = insertvalue [10 x %struct.hit_t] %.8, %struct.hit_t %.180, 9
  ret [10 x %struct.hit_t] %.9
}

declare void @apatb_ecal_cosmic_hls_hw(%"struct.ap_uint<3>"*, %"struct.ap_uint<4>"*, i160*, i8*)

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @copy_back(%"class.hls::stream<fadc_hits_vxs, 0>"* noalias "unpacked"="0", i160* noalias align 512 "unpacked"="1", %"class.hls::stream<trigger_t, 0>"* noalias "unpacked"="2", i8* noalias nocapture align 512 "unpacked"="3.0") unnamed_addr #5 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<fadc_hits_vxs, 0>"(%"class.hls::stream<fadc_hits_vxs, 0>"* %0, i160* align 512 %1)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<trigger_t, 0>.13"(%"class.hls::stream<trigger_t, 0>"* %2, i8* align 512 %3)
  ret void
}

define void @ecal_cosmic_hls_hw_stub_wrapper(%"struct.ap_uint<3>"*, %"struct.ap_uint<4>"*, i160*, i8*) #7 {
entry:
  %4 = alloca %"class.hls::stream<fadc_hits_vxs, 0>"
  %5 = alloca %"class.hls::stream<trigger_t, 0>"
  call void @copy_out(%"class.hls::stream<fadc_hits_vxs, 0>"* %4, i160* %2, %"class.hls::stream<trigger_t, 0>"* %5, i8* %3)
  call void @ecal_cosmic_hls_hw_stub(%"struct.ap_uint<3>"* %0, %"struct.ap_uint<4>"* %1, %"class.hls::stream<fadc_hits_vxs, 0>"* %4, %"class.hls::stream<trigger_t, 0>"* %5)
  call void @copy_in(%"class.hls::stream<fadc_hits_vxs, 0>"* %4, i160* %2, %"class.hls::stream<trigger_t, 0>"* %5, i8* %3)
  ret void
}

declare void @ecal_cosmic_hls_hw_stub(%"struct.ap_uint<3>"*, %"struct.ap_uint<4>"*, %"class.hls::stream<fadc_hits_vxs, 0>"*, %"class.hls::stream<trigger_t, 0>"*)

declare i1 @fpga_fifo_not_empty_40(i8*)

declare i1 @fpga_fifo_not_empty_1(i8*)

declare i1 @fpga_fifo_not_empty_32(i8*)

declare void @fpga_fifo_pop_40(i8*, i8*)

declare void @fpga_fifo_pop_1(i8*, i8*)

declare void @fpga_fifo_pop_32(i8*, i8*)

declare void @fpga_fifo_push_40(i8*, i8*)

declare void @fpga_fifo_push_1(i8*, i8*)

declare void @fpga_fifo_push_32(i8*, i8*)

attributes #0 = { inaccessiblememonly nounwind willreturn }
attributes #1 = { noinline willreturn "fpga.wrapper.func"="wrapper" }
attributes #2 = { argmemonly noinline willreturn "fpga.wrapper.func"="copyin" }
attributes #3 = { argmemonly noinline willreturn "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #4 = { argmemonly noinline willreturn "fpga.wrapper.func"="streamcpy_hls" }
attributes #5 = { argmemonly noinline willreturn "fpga.wrapper.func"="copyout" }
attributes #6 = { alwaysinline nounwind readnone willreturn }
attributes #7 = { "fpga.wrapper.func"="stub" }
attributes #8 = { inaccessiblememonly nounwind willreturn "xlx.port.bitwidth"="256" "xlx.source"="user" }
attributes #9 = { inaccessiblememonly nounwind willreturn "xlx.port.bitwidth"="8" "xlx.source"="user" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.rotate.disable"}
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6}
