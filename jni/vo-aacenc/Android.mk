# Copyright (C) 2009 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_ARM_MODE := arm
LOCAL_CFLAGS := $(LOCAL_CFLAGS) -O3 -DLINUX
LOCAL_CPPFLAGS := $(LOCAL_CFLAGS)

ifeq ($(TARGET_ARCH_ABI),armeabi)
VOTT := v5
else
VOTT := pc
endif

# Do we also need to check on ARCH_ARM_HAVE_ARMV7A? - probably not
ifeq ($(TARGET_ARCH_ABI),armeabi-v7a)
VOTT := v7
endif


LOCAL_MODULE := VoAACEncoder
LOCAL_SRC_FILES := basic_op/basicop2.c basic_op/oper_32b.c

LOCAL_SRC_FILES += \
	src/aac_rom.c \
	src/aacenc.c \
	src/aacenc_core.c \
	src/adj_thr.c \
	src/band_nrg.c \
	src/bit_cnt.c \
	src/bitbuffer.c \
	src/bitenc.c \
	src/block_switch.c \
	src/channel_map.c \
	src/dyn_bits.c \
	src/grp_data.c \
	src/interface.c \
	src/line_pe.c \
	src/ms_stereo.c \
	src/pre_echo_control.c \
	src/psy_configuration.c \
	src/psy_main.c \
	src/qc_main.c \
	src/quantize.c \
	src/sf_estim.c \
	src/spreading.c \
	src/stat_bits.c \
	src/tns.c \
	src/transform.c \
	src/memalign.c \
	src/cmnMemory.c \
	VoAACEncoder.c

ifeq ($(VOTT), v5)
LOCAL_SRC_FILES += \
	src/asm/ARMV5E/AutoCorrelation_v5.s \
	src/asm/ARMV5E/band_nrg_v5.s \
	src/asm/ARMV5E/CalcWindowEnergy_v5.s \
	src/asm/ARMV5E/PrePostMDCT_v5.s \
	src/asm/ARMV5E/R4R8First_v5.s \
	src/asm/ARMV5E/Radix4FFT_v5.s
endif

ifeq ($(VOTT), v7)
LOCAL_SRC_FILES += \
	src/asm/ARMV5E/AutoCorrelation_v5.s \
	src/asm/ARMV5E/band_nrg_v5.s \
	src/asm/ARMV5E/CalcWindowEnergy_v5.s \
	src/asm/ARMV7/PrePostMDCT_v7.s \
	src/asm/ARMV7/R4R8First_v7.s \
	src/asm/ARMV7/Radix4FFT_v7.s
endif

LOCAL_C_INCLUDES := \
	$(LOCAL_PATH)/src \
	$(LOCAL_PATH)/inc \
	$(LOCAL_PATH)/basic_op
	
ifeq ($(VOTT), v5)
LOCAL_CFLAGS += -DARMV5E -DARM_INASM -DARMV5_INASM
LOCAL_C_INCLUDES += $(LOCAL_PATH)/src/asm/ARMV5E
endif

ifeq ($(VOTT), v7)
LOCAL_CFLAGS += -DARMV5E -DARMV7Neon -DARM_INASM -DARMV5_INASM -DARMV6_INASM  -march=armv7-a -mfpu=neon -mfloat-abi=softfp
LOCAL_C_INCLUDES += $(LOCAL_PATH)/src/asm/ARMV5E
LOCAL_C_INCLUDES += $(LOCAL_PATH)/src/asm/ARMV7
endif

LOCAL_LDLIBS := -ldl -lc -lz -lm -llog

include $(BUILD_SHARED_LIBRARY)