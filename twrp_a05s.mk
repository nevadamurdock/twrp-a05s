#
# Copyright (C) 2026 The Android Open Source Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit TWRP common configuration
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/a05s/device.mk)

# Inherit Touch Driver Board configuration (FIX TOUCHSCREEN)
$(call inherit-product, device/samsung/a05s/touch_driver_board.mk)

# Device identifier
PRODUCT_DEVICE := a05s
PRODUCT_NAME := twrp_a05s
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-A057F
PRODUCT_MANUFACTURER := samsung
PRODUCT_GMS_CLIENTID_BASE := android-samsung-ss
