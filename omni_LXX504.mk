#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from LXX504 device
$(call inherit-product, device/lava/LXX504/device.mk)

PRODUCT_DEVICE := LXX504
PRODUCT_NAME := omni_LXX504
PRODUCT_BRAND := LAVA
PRODUCT_MODEL := LAVA LXX504
PRODUCT_MANUFACTURER := lava

PRODUCT_GMS_CLIENTID_BASE := android-lava

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="LXX504-user 12 SP1A.210812.016 1695303641 release-keys"

BUILD_FINGERPRINT := LAVA/LXX504/LXX504:13/TP1A.220624.014/1695303641:user/release-keys
