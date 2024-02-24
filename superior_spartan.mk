#
# Copyright (C) 2018 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from spartan device
$(call inherit-product, device/realme/spartan/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/superior/config/common.mk)

PRODUCT_NAME := superior_spartan
PRODUCT_DEVICE := spartan
PRODUCT_MANUFACTURER := realme
PRODUCT_BRAND := realme
PRODUCT_MODEL := RMX3371
PRODUCT_SYSTEM_NAME := RMX3371
PRODUCT_SYSTEM_DEVICE := RE54E4L1

# Device config
TARGET_HAS_UDFPS := true
TARGET_ENABLE_BLUR := true
TARGET_EXCLUDES_AUDIOFX := true
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_SUPPORTS_QUICK_TAP := true

# Debugging
TARGET_INCLUDE_MATLOG := false
TARGET_DEFAULT_ADB_ENABLED := true

#Superior Extended stuff
TARGET_BOOT_ANIMATION_RES := 1080
SUPERIOR_UDFPS_ANIMATIONS := false
SYSTEM_OPTIMIZE_JAVA := true
SYSTEMUI_OPTIMIZE_JAVA := true
BUILD_WITH_GAPPS := true
USE_DUCKDUCKGO := false
USE_ViaBrowser := true
TARGET_BUILD_VIMUSIC := true
TARGET_SUPPORTS_BLUR := true

PRODUCT_GMS_CLIENTID_BASE := android-oppo

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="RMX3371-user 13 TP1A.220905.001 S.12f3337_8494f-2 release-keys" \
    TARGET_DEVICE=$(PRODUCT_SYSTEM_DEVICE) \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)

BUILD_FINGERPRINT := realme/RMX3371/RE54E4L1:13/TP1A.220905.001/S.12f3337_8494f-2:user/release-keys

PRODUCT_PRODUCT_PROPERTIES += \
    ro.build.fingerprint=$(BUILD_FINGERPRINT)

