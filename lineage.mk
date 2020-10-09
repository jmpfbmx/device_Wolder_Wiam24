# Release name
PRODUCT_RELEASE_NAME := wiam_24

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/wolder/wiam_24/lineage_wiam_24.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := wiam_24
PRODUCT_NAME := lineage_wiam_24
PRODUCT_BRAND := wolder
PRODUCT_MODEL := wolder Wiam 24
PRODUCT_MANUFACTURER := wolder

PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT=Wolder/full_aeon6580_we_m/aeon6580_we_m:6.0/MRA58K/1466685788:user/dev-keys \
    PRIVATE_BUILD_DESC="full_aeon6580_we_m-user 6.0 MRA58K 1466685788 dev-keys"

# SuperUser
WITH_SU := false
WITH_ROOT := false
