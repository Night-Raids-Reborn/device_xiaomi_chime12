#
# Copyright (C) 2022 The sparkOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from chime device
$(call inherit-product, device/xiaomi/chime/device.mk)

# Inherit some common spark stuff.
$(call inherit-product, vendor/spark/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := spark_chime
PRODUCT_DEVICE := chime
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi 9T
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_INCLUDE_LIVE_WALLPAPERS := false

# GApps
WITH_GAPPS := true
TARGET_GAPPS_ARCH := arm64

# Maintainer
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.spark.maintainer=Darknius