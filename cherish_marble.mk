#
# Copyright (C) 2023 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common CherishOS stuff.
TARGET_DISABLE_EPPE := true
$(call inherit-product, vendor/cherish/config/common_full_phone.mk)

# Inherit from marble device.
$(call inherit-product, device/xiaomi/marble/device.mk)

# CherishOS stuff.
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_INCLUDE_LIVE_WALLPAPERS := true
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_ENABLE_BLUR := true


# CherishOS Build.
CHERISH_BUILD_TYPE=OFFICIAL
WITH_GMS := true
#CHERISH_VANILLA := true
#TARGET_USES_PICO_GAPPS := true
TARGET_USES_MINI_GAPPS := true
#USE_PIXEL_CHARGING := true
#TARGET_INCLUDE_CARRIER_SETTINGS := true
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.cherish.maintainer=JYR_RC

# Cherish props
CHERISH_MAINTAINER := JYR_RC
CHERISH_CHIPSET := SM7475
CHERISH_BATTERY := 5000mAh
CHERISH_DISPLAY := 1080x2400

# Nuke AudioFX
TARGET_EXCLUDES_AUDIOFX := true

# Device identifier
PRODUCT_BRAND := Xiaomi
PRODUCT_DEVICE := marble
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_NAME := cherish_marble

# GMS
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
