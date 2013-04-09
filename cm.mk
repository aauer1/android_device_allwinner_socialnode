# Release name
PRODUCT_RELEASE_NAME := SocialNode

# Boot animation
TARGET_BOOTANIMATION_NAME := horizontal-1024x768

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_tablet_wifionly.mk)

# Inherit device configuration
$(call inherit-product, device/allwinner/socialnode/full_socialnode.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := socialnode
PRODUCT_NAME := cm_socialnode
PRODUCT_BRAND := Android
PRODUCT_MODEL := SocialNode
PRODUCT_MANUFACTURER := Allwinner

#Set build fingerprint / ID / Product Name etc
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=socialnode BUILD_FINGERPRINT="allwinner/socialnode/socialnode:4.0.4/IMM76I/330937:user/release-keys" PRIVATE_BUILD_DESC="socialnode-user 4.0.4 IMM76I 330937 release-keys"
