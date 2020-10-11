#
# Copyright 2014 The Android Open-Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Sample: This is where we'd set a backup provider if we had one
# $(call inherit-product, device/sample/products/backup_overlay.mk)

# Get the long list of APNs
PRODUCT_COPY_FILES := device/sample/etc/apns-full-conf.xml:system/etc/apns-conf.xml

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Release name
PRODUCT_RELEASE_NAME := wiam_24

# Inherit some common CM stuff.
$(call inherit-product, vendor/aosp/common.mk)

# BootAnimation
TARGET_BOOT_ANIMATION_RES := 480

# Inherit device configuration
$(call inherit-product, device/wolder/wiam_24/device_wiam_24.mk)
$(call inherit-product-if-exists, vendor/wolder/wiam_24/device-vendor.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := wiam_24
PRODUCT_NAME := aosp_wiam_24
PRODUCT_BRAND := wolder
PRODUCT_MODEL := wolder Wiam 24
PRODUCT_MANUFACTURER := wolder

PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT=Wolder/full_aeon6580_we_m/aeon6580_we_m:6.0/MRA58K/1466685788:user/dev-keys \
    PRIVATE_BUILD_DESC="full_aeon6580_we_m-user 6.0 MRA58K 1466685788 dev-keys"

# SuperUser
WITH_SU := false
WITH_ROOT := false
