#
# Copyright (C) 2026 The Android Open Source Project
# Copyright (C) 2026 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/samsung/a05s

# Architecture / CPU
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := generic
TARGET_CPU_VARIANT_RUNTIME := kryo300

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := generic
TARGET_2ND_CPU_VARIANT_RUNTIME := kryo300

# Bootloader / Platform
TARGET_BOOTLOADER_BOARD_NAME := bengal
TARGET_BOARD_PLATFORM := bengal
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_SYSTEMSDK_VERSIONS := 32

# Kernel Configuration
BOARD_BOOTIMG_HEADER_VERSION := 2
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_PAGESIZE := 4096
BOARD_RAMDISK_OFFSET := 0x02000000
BOARD_KERNEL_TAGS_OFFSET := 0x01e00000

# Kernel Cmdline
BOARD_KERNEL_CMDLINE := video=vfb:640x400,bpp=32,memsize=3072000 firmware_class.path=/vendor/firmware,/vendor/firmware_mnt/image console=ttyMSM0,115200n8 androidboot.hardware=qcom service_notifier.ready=1 androidboot.memcg=1

# Prebuilt Kernel & Modules Path
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/kernel
BOARD_VENDOR_RAMDISK_KERNEL_MODULES := $(wildcard $(DEVICE_PATH)/prebuilt/*.ko)

# Dynamic Partitions / File System
BOARD_SUPER_PARTITION_SIZE := 9126805504
BOARD_SUPER_PARTITION_GROUPS := samsung_dynamic_partitions
BOARD_SAMSUNG_DYNAMIC_PARTITIONS_SIZE := 9122611200
BOARD_SAMSUNG_DYNAMIC_PARTITIONS_PARTITION_LIST := system system_ext product vendor vendor_dlkm odm

# Recovery & Graphics
TARGET_RECOVERY_PIXEL_FORMAT := RGBX_8888
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
RECOVERY_GRAPHICS_USE_HEADER_2 := true

# TWRP Core & Input/Touchscreen Configuration
TW_THEME := portrait_hdpi
TW_EXTRA_PYTHON_INPUTS := true
TW_SUPPORT_INPUT_1_2 := true
TW_INPUT_BLACKLIST := "hbtp_vm"
TW_BRIGHTNESS_PATH := "/sys/class/backlight/panel/brightness"
TW_MAX_BRIGHTNESS := 500
TW_DEFAULT_BRIGHTNESS := 300
TW_HAS_EDL_MODE := true
TW_INCLUDE_RESETPROP := true
TW_INCLUDE_LIBRESETPROP := true
TW_ALLOW_EXFAT := true
TW_SCREEN_BLANK_ON_BOOT := true
TW_EXCLUDE_SUPERSU := true
TW_EXCLUDE_TWRP_APP := true

# Automatic Vendor & DLKM Touchscreen Module Loading
TW_LOAD_VENDOR_MODULES := "tp_info.ko lct_tp.ko cmd.ko ilitek.ko icnl9922c.ko hx83112f.ko goodix_ts.ko atmel_mxt_ts.ko synaptics_tcm_ts.ko nt36xxx-i2c.ko pt_ts.ko pt_i2c.ko pt_device_access.ko raydium_ts.ko sdhci-msm-sec.ko"
TW_LOAD_VENDOR_DLKM_MODULES := "tp_info.ko lct_tp.ko cmd.ko ilitek.ko icnl9922c.ko hx83112f.ko goodix_ts.ko atmel_mxt_ts.ko synaptics_tcm_ts.ko nt36xxx-i2c.ko pt_ts.ko pt_i2c.ko pt_device_access.ko raydium_ts.ko sdhci-msm-sec.ko"

# OrangeFox Recovery (OFRP) Flags
OF_KEEP_DM_VERITY_FORCED_ENCRYPTION := 1
OF_SKIP_DECRYPTED_ADOPTED_STORAGE := 1
OF_FIX_DECRYPTION_ON_DATA_MEDIA := 1
OF_UNBIND_SDCARD_F2FS := 1
OF_USE_GREEN_LED := 0
OF_SCREEN_H := 2400
OF_STATUS_INDENT_LEFT := 48
OF_STATUS_INDENT_RIGHT := 48

# Skyhawk Recovery (SHRP) Flags
SHRP_DARK := true
SHRP_FLASH_MAX_BRIGHTNESS := 500
SHRP_DEVICE_CODE := a05s
SHRP_PATH_TORCH := /sys/class/leds/vibrator/brightness
SHRP_EXCLUDE_IN_THEME := ""

# PitchBlack Recovery (PBRP) Flags
PB_TORCH_PATH := "/sys/class/leds/vibrator/brightness"
PB_TORCH_MAX_BRIGHTNESS := 255

# Maintainer & Versioning Info
TW_DEVICE_VERSION := SavedByLight_ravindu644
SHRP_MAINTAINER := SavedByLight_ravindu644
OF_MAINTAINER := SavedByLight_ravindu644
MAINTAINER := SavedByLight_ravindu644
BETA_BUILD := true

# Force Building Recovery Image & Ramdisk Packaging
BOARD_USES_RECOVERY_AS_BOOT := false
TARGET_NO_KERNEL := false
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_RECOVERY_UPDATER_LIBS :=

# Force Generate recovery.img Target
TARGET_NO_RECOVERY := false
BOARD_USES_RECOVERY_AS_BOOT := false

# Force Recovery Image Generation Flags (Fix recovery.img Missing)
TARGET_NO_RECOVERY := false
BOARD_USES_RECOVERY_AS_BOOT := false
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 100663296
BOARD_HAS_LARGE_FILESYSTEM := true

# Fix Symlink Conflict for vendor directory
BOARD_RECOVERY_RAMDISK_SYMLINKS := false
