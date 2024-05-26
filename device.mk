#
# Copyright (C) 2022-2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Include priv keys
-include vendor/lineage-priv/keys/keys.mk

# Inherit from xiaomi sm8450-common
$(call inherit-product, device/xiaomi/sm8450-common/common.mk)

# Inherit from the proprietary version
$(call inherit-product, vendor/xiaomi/mondrian/mondrian-vendor.mk)

# Google Camera
$(call inherit-product-if-exists, vendor/Gcam/config.mk)

# BCR
$(call inherit-product, vendor/bcr/bcr.mk)

# Overlay
PRODUCT_PACKAGES += \
    ApertureResMondrian \
    FrameworksResMondrian \
    FrameworksResMondrianGlobal \
    SettingsProviderResMondrian \
    SettingsResMondrian \
    SystemUIResMondrian \
    WifiResMondrian

# Sensors
PRODUCT_PACKAGES += \
    sensors.xiaomi

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/sensors/hals.conf:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/hals.conf

# Remove unwanted packages
PRODUCT_PACKAGES += \
    RemovePackages

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)
