#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o_mr1.mk)

# Inherit some common PixelOS stuff
$(call inherit-product, vendor/lineage/config/common-full-phone.mk)

# Inherit from X01BD device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

# Build Flags
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_USES_MINI_GAPPS := true
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_CALL_RECORDING_SUPPORTED := true

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_X01BD
PRODUCT_DEVICE := X01BD
PRODUCT_BRAND := Asus
PRODUCT_MODEL := Zenfone Max Pro M2
PRODUCT_MANUFACTURER := Asus

PRODUCT_GMS_CLIENTID_BASE := android-asus

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE=ASUS_X01BD \
    PRODUCT_NAME=WW_X01BD \
    PRIVATE_BUILD_DESC="panther-user 14 UQ1A.240205.002 11224170 release-keys"

# Build fingerprint
BUILD_FINGERPRINT := "google/panther/panther:14/UQ1A.240205.002/11224170:user/release-keys"
