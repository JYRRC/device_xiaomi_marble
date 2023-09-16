#
# Copyright (C) 2023 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# MindGapps Core
#$(call inherit-product, vendor/gapps/arm64/arm64-vendor.mk)

# Inherit some common AlphaDroid stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)


# Inherit from marble device.
$(call inherit-product, device/xiaomi/marble/device.mk)

# Source Flags
TARGET_HAS_UDFPS := false
TARGET_ENABLE_BLUR := true
TARGET_EXCLUDES_AUDIOFX := true
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_BOOT_ANIMATION_RES := 1080

# GAPPS
WITH_GAPPS := true
TARGET_INCLUDE_GOOGLE_APP := false
TARGET_INCLUDE_GOOGLE_CALCULATOR := true
TARGET_INCLUDE_GOOGLE_CALENDAR := false
TARGET_INCLUDE_GOOGLE_CHROME := false
TARGET_INCLUDE_GOOGLE_DESKCLOCK := false
TARGET_INCLUDE_GOOGLE_DRIVE := false
TARGET_INCLUDE_GMAIL := false
TARGET_INCLUDE_GOOGLE_MAPS := false
TARGET_INCLUDE_GOOGLE_PHOTOS := true
TARGET_INCLUDE_GOOGLE_SETUP := true



# Adb
TARGET_DEFAULT_ADB_ENABLED := true

# Maintainer
ALPHA_BUILD_TYPE := Official
ALPHA_MAINTAINER := JYR_RC

# Device identifier
PRODUCT_DEVICE := marble
PRODUCT_NAME := lineage_marble
PRODUCT_MANUFACTURER := Xiaomi

# GMS
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
