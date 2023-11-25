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

## Device identifier
PRODUCT_BRAND := Xiaomi
PRODUCT_DEVICE := marble
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_NAME := cherish_marble
PRODUCT_BRAND := POCO
PRODUCT_MODEL := POCO F5

# Cherish Stuffs
USE_LEGACY_BOOTANIMATION := true
CHERISH_BUILD_TYPE := Official

# Cherish props
CHERISH_MAINTAINER := JYR_RC
CHERISH_CHIPSET := SM7475
CHERISH_BATTERY := 5000mAh
CHERISH_DISPLAY := 1080x2400

# Gapps
WITH_GMS := true
#CHERISH_VANILLA := true
TARGET_USES_MINI_GAPPS := true
#TARGET_USES_PICO_GAPPS := true
#USE_PIXEL_CHARGING := true
#TARGET_INCLUDE_CARRIER_SETTINGS := true

# Nuke AudioFX
TARGET_EXCLUDES_AUDIOFX := true

# GMS
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
