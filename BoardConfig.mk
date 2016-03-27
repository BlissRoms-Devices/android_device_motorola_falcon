#
# Copyright (C) 2016 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# inherit from common msm8226-common
-include device/motorola/msm8226-common/BoardConfigCommon.mk

DEVICE_PATH := device/motorola/falcon

# Assert
TARGET_OTA_ASSERT_DEVICE := xt1031,xt1032,xt1033,xt1034,falcon_umts,falcon_umtsds,falcon_cdma,falcon_retuaws,falcon,falcon_gpe

# Board
TARGET_BOARD_INFO_FILE := $(DEVICE_PATH)/board-info.txt

# Kernel
TARGET_KERNEL_CONFIG := falcon_defconfig

# Init
TARGET_INIT_VENDOR_LIB := libinit_msm
TARGET_LIBINIT_DEFINES_FILE := $(DEVICE_PATH)/init/init_falcon.cpp
TARGET_UNIFIED_DEVICE := true

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 10485760
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 10485760
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1023410176
BOARD_USERDATAIMAGE_PARTITION_SIZE := 5930598400 # 5930614784 - 16384

# Properties
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/system.prop

# Release tools
TARGET_RELEASETOOLS_EXTENSIONS := $(DEVICE_PATH)

# inherit from the proprietary version
-include vendor/motorola/falcon/BoardConfigVendor.mk

# Block_Build
Bliss_Build_Block:=1

# Blissful building options
BLISSIFY := true
BLISS_O3 := true
BLISS_GRAPHITE := true
#BLISS_STRICT := true
BLISS_KRAIT := true
BLISS_PIPE := true
FLOOP_NEST_OPTIMIZE := true
ENABLE_GCCONLY := true
TARGET_USE_QCOM_BIONIC_OPTIMIZATION := true
FAST_MATH := true
ENABLE_MODULAR_O3 := true
ENABLE_LTO := true
LINK_TIME_OPTIMIZATIONS := true
TARGET_USE_ION_COMPAT := true
TARGET_USE_KRAIT_PLD_SET := true
TARGET_TC_ROM := 4.9-linaro
TARGET_TC_KERNEL := 4.9-linaro
TARGET_GCC_VERSION_EXP := $(TARGET_TC_ROM)
TARGET_KERNEL_CUSTOM_TOOLCHAIN := $(TARGET_TC_KERNEL)
TARGET_ENABLE_UKM := true
BLISS_DEVELOPER := Vatsal

#WITH_LZMA_OTA := true
#SaberMod
