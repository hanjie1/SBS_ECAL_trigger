# ==============================================================
# Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.2 (64-bit)
# Tool Version Limit: 2023.10
# Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
# Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
# 
# ==============================================================
CSIM_DESIGN = 1

__SIM_FPO__ = 1

__SIM_MATHHLS__ = 1

__SIM_FFT__ = 1

__SIM_FIR__ = 1

__SIM_DDS__ = 1

__USE_CLANG__ = 1

ObjDir = obj

HLS_SOURCES = ../../../../ecal_cosmic_hls_tb.cpp ../../../../ecal_cosmic_hls.cpp

override TARGET := csim.exe

AUTOPILOT_ROOT := /daqfs/Xilinx/Vitis_HLS/2023.2
AUTOPILOT_MACH := lnx64
ifdef AP_GCC_M32
  AUTOPILOT_MACH := Linux_x86
  IFLAG += -m32
endif
IFLAG += -fPIC
ifndef AP_GCC_PATH
  AP_GCC_PATH := /daqfs/Xilinx/Vitis_HLS/2023.2/tps/lnx64/gcc-8.3.0/bin
endif
AUTOPILOT_TOOL := ${AUTOPILOT_ROOT}/${AUTOPILOT_MACH}/tools
AP_CLANG_PATH := ${AUTOPILOT_TOOL}/clang-3.9-csynth/bin
AUTOPILOT_TECH := ${AUTOPILOT_ROOT}/common/technology


IFLAG += -I "${AUTOPILOT_ROOT}/include"
IFLAG += -I "${AUTOPILOT_ROOT}/include/ap_sysc"
IFLAG += -I "${AUTOPILOT_TECH}/generic/SystemC"
IFLAG += -I "${AUTOPILOT_TECH}/generic/SystemC/AESL_FP_comp"
IFLAG += -I "${AUTOPILOT_TECH}/generic/SystemC/AESL_comp"
IFLAG += -I "${AUTOPILOT_TOOL}/auto_cc/include"
IFLAG += -D__HLS_COSIM__

IFLAG += -D__HLS_CSIM__

IFLAG += -D__VITIS_HLS__

IFLAG += -D__SIM_FPO__

IFLAG += -D__SIM_FFT__

IFLAG += -D__SIM_FIR__

IFLAG += -D__SIM_DDS__

IFLAG += -D__DSP48E1__
LFLAG += -lpthread
IFLAG += -g
DFLAG += -D__xilinx_ip_top= -DAESL_TB
CCFLAG += -Werror=return-type
CCFLAG += -Wno-abi
TOOLCHAIN += 
CCFLAG += -gcc-toolchain /daqfs/Xilinx/Vitis_HLS/2023.2/tps/lnx64/gcc-8.3.0
LFLAG += -gcc-toolchain /daqfs/Xilinx/Vitis_HLS/2023.2/tps/lnx64/gcc-8.3.0
CCFLAG += -fno-exceptions
LFLAG += -fno-exceptions
CCFLAG += -fprofile-instr-generate="code-%m.profraw"
LFLAG += -fprofile-instr-generate="code-%m.profraw"
CCFLAG += -Wno-c++11-narrowing
CCFLAG += -Werror=uninitialized
CCFLAG += -std=c++11
LFLAG += -std=c++11



include ./Makefile.rules

all: $(TARGET)



$(ObjDir)/ecal_cosmic_hls_tb.o: ../../../../ecal_cosmic_hls_tb.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling ../../../../ecal_cosmic_hls_tb.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CXX) ${CCFLAG} -c -MMD -Wno-unknown-pragmas -Wno-unknown-pragmas  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/ecal_cosmic_hls_tb.d

$(ObjDir)/ecal_cosmic_hls.o: ../../../../ecal_cosmic_hls.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling ../../../../ecal_cosmic_hls.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CXX) ${CCFLAG} -c -MMD  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/ecal_cosmic_hls.d
pObjDir=pobj
POBJECTS := $(basename $(notdir $(HLS_SOURCES)))
POBJECTS := $(POBJECTS:%=$(pObjDir)/%.bc)

$(pObjDir)/ecal_cosmic_hls_tb.bc: ../../../../ecal_cosmic_hls_tb.cpp $(pObjDir)/.dir
	$(Echo) $(CXX)  -gcc-toolchain /daqfs/Xilinx/Vitis_HLS/2023.2/tps/lnx64/gcc-8.3.0 -fno-exceptions -fprofile-instr-use=code.profdata -emit-llvm -c -Wno-unknown-pragmas -Wno-unknown-pragmas  $(IFLAG) $(DFLAG) $< -o $@ ;
	$(Verb) $(CXX)  -gcc-toolchain /daqfs/Xilinx/Vitis_HLS/2023.2/tps/lnx64/gcc-8.3.0 -fno-exceptions -fprofile-instr-use=code.profdata -emit-llvm -c -Wno-unknown-pragmas -Wno-unknown-pragmas  $(IFLAG) $(DFLAG) $< -o $@ ;

$(pObjDir)/ecal_cosmic_hls.bc: ../../../../ecal_cosmic_hls.cpp $(pObjDir)/.dir
	$(Echo) $(CXX)  -gcc-toolchain /daqfs/Xilinx/Vitis_HLS/2023.2/tps/lnx64/gcc-8.3.0 -fno-exceptions -fprofile-instr-use=code.profdata -emit-llvm -c  $(IFLAG) $(DFLAG) $< -o $@ ;
	$(Verb) $(CXX)  -gcc-toolchain /daqfs/Xilinx/Vitis_HLS/2023.2/tps/lnx64/gcc-8.3.0 -fno-exceptions -fprofile-instr-use=code.profdata -emit-llvm -c  $(IFLAG) $(DFLAG) $< -o $@ ;

profile_data: *.profraw
	${AP_CLANG_PATH}/llvm-profdata merge -output=code.profdata *.profraw

profile_all: profile_data $(POBJECTS)
	${AP_CLANG_PATH}/llvm-link -o LinkFile.bc ${POBJECTS} -f; \
	${MKDIR} /daqfs/home/hanjie/Desktop/GEp/SBS_ECAL_trigger/SBS_ECAL_trigger/solution1/.autopilot/db/dot ; \
	${CP} -r ${pObjDir} /daqfs/home/hanjie/Desktop/GEp/SBS_ECAL_trigger/SBS_ECAL_trigger/solution1/.autopilot/db/dot ; \
	${CP} LinkFile.bc /daqfs/home/hanjie/Desktop/GEp/SBS_ECAL_trigger/SBS_ECAL_trigger/solution1/.autopilot/db/dot ; \
	${CD} /daqfs/home/hanjie/Desktop/GEp/SBS_ECAL_trigger/SBS_ECAL_trigger/solution1/.autopilot/db/dot ; \
	${AP_CLANG_PATH}/opt -dot-callgraph-hls -cfg-hier-userfilelist "/daqfs/home/hanjie/Desktop/GEp/SBS_ECAL_trigger/ecal_cosmic_hls.cpp /daqfs/home/hanjie/Desktop/GEp/SBS_ECAL_trigger/ecal_cosmic_hls_tb.cpp" -csim-top-function-name=ecal_cosmic_hls LinkFile.bc -o LinkFile_fid.bc ; \
	${AP_CLANG_PATH}/opt -dot-cfg-hier-only -cfg-hier-userfilelist "/daqfs/home/hanjie/Desktop/GEp/SBS_ECAL_trigger/ecal_cosmic_hls.cpp /daqfs/home/hanjie/Desktop/GEp/SBS_ECAL_trigger/ecal_cosmic_hls_tb.cpp" -cfg-hier-type csim LinkFile_fid.bc -o LinkFile_pp.bc ; 
