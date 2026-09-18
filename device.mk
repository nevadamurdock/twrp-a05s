#
# Copyright (C) 2026 The Android Open Source Project
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := device/samsung/a05s

# Enable APEX updates
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)

# Shipping API level & Dynamic Partitions (TWRP 12.1 uses API 32)
PRODUCT_SHIPPING_API_LEVEL := 32
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# Fastbootd & Health HAL
PRODUCT_PACKAGES += \
    android.hardware.fastboot@1.1-impl-mock \
    fastbootd \
    android.hardware.health@2.1-impl \
    android.hardware.health@2.1-service \
    android.hardware.boot@1.1-impl \
    android.hardware.gatekeeper@1.0-service

# Recovery Additional Binary & Libraries
TARGET_RECOVERY_DEVICE_MODULES += \
    libion \
    libxml2 \
    libkeymaster4 \
    libpuresoftkeymasterdevice

# Qualcomm Decryption Support
PRODUCT_PACKAGES += \
    qcom_decrypt \
    qcom_decrypt_fbe
